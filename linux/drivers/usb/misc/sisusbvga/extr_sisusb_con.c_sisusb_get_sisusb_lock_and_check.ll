; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb_con.c_sisusb_get_sisusb_lock_and_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb_con.c_sisusb_get_sisusb_lock_and_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sisusb_usb_data = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sisusb_usb_data* (i16)* @sisusb_get_sisusb_lock_and_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sisusb_usb_data* @sisusb_get_sisusb_lock_and_check(i16 zeroext %0) #0 {
  %2 = alloca %struct.sisusb_usb_data*, align 8
  %3 = alloca i16, align 2
  %4 = alloca %struct.sisusb_usb_data*, align 8
  store i16 %0, i16* %3, align 2
  %5 = call i64 (...) @in_atomic()
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store %struct.sisusb_usb_data* null, %struct.sisusb_usb_data** %2, align 8
  br label %36

8:                                                ; preds = %1
  %9 = load i16, i16* %3, align 2
  %10 = call %struct.sisusb_usb_data* @sisusb_get_sisusb(i16 zeroext %9)
  store %struct.sisusb_usb_data* %10, %struct.sisusb_usb_data** %4, align 8
  %11 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %4, align 8
  %12 = icmp ne %struct.sisusb_usb_data* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  store %struct.sisusb_usb_data* null, %struct.sisusb_usb_data** %2, align 8
  br label %36

14:                                               ; preds = %8
  %15 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %4, align 8
  %16 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %4, align 8
  %19 = call i32 @sisusb_sisusb_valid(%struct.sisusb_usb_data* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %14
  %22 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %4, align 8
  %23 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load i16, i16* %3, align 2
  %26 = zext i16 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %21, %14
  %31 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %4, align 8
  %32 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %31, i32 0, i32 0
  %33 = call i32 @mutex_unlock(i32* %32)
  store %struct.sisusb_usb_data* null, %struct.sisusb_usb_data** %2, align 8
  br label %36

34:                                               ; preds = %21
  %35 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %4, align 8
  store %struct.sisusb_usb_data* %35, %struct.sisusb_usb_data** %2, align 8
  br label %36

36:                                               ; preds = %34, %30, %13, %7
  %37 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %2, align 8
  ret %struct.sisusb_usb_data* %37
}

declare dso_local i64 @in_atomic(...) #1

declare dso_local %struct.sisusb_usb_data* @sisusb_get_sisusb(i16 zeroext) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @sisusb_sisusb_valid(%struct.sisusb_usb_data*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
