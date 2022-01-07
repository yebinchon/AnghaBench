; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb_con.c_sisusb_console_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb_con.c_sisusb_console_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sisusb_usb_data = type { i8*, i64, i64, i64* }

@MAX_NR_CONSOLES = common dso_local global i32 0, align 4
@sisusb_dummy_con = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sisusb_console_exit(%struct.sisusb_usb_data* %0) #0 {
  %2 = alloca %struct.sisusb_usb_data*, align 8
  %3 = alloca i32, align 4
  store %struct.sisusb_usb_data* %0, %struct.sisusb_usb_data** %2, align 8
  %4 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %2, align 8
  %5 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %4, i32 0, i32 2
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %35

8:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %29, %8
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @MAX_NR_CONSOLES, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %32

13:                                               ; preds = %9
  %14 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %2, align 8
  %15 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %14, i32 0, i32 3
  %16 = load i64*, i64** %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i64, i64* %16, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %13
  %23 = call i32 (...) @console_lock()
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @do_take_over_console(i32* @sisusb_dummy_con, i32 %24, i32 %25, i32 0)
  %27 = call i32 (...) @console_unlock()
  br label %28

28:                                               ; preds = %22, %13
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  br label %9

32:                                               ; preds = %9
  %33 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %2, align 8
  %34 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %33, i32 0, i32 2
  store i64 0, i64* %34, align 8
  br label %35

35:                                               ; preds = %32, %1
  %36 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %2, align 8
  %37 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to i8*
  %40 = call i32 @vfree(i8* %39)
  %41 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %2, align 8
  %42 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %41, i32 0, i32 1
  store i64 0, i64* %42, align 8
  %43 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %2, align 8
  %44 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @vfree(i8* %45)
  %47 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %2, align 8
  %48 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %47, i32 0, i32 0
  store i8* null, i8** %48, align 8
  ret void
}

declare dso_local i32 @console_lock(...) #1

declare dso_local i32 @do_take_over_console(i32*, i32, i32, i32) #1

declare dso_local i32 @console_unlock(...) #1

declare dso_local i32 @vfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
