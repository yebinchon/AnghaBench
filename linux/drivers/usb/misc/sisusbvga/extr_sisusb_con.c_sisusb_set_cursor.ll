; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb_con.c_sisusb_set_cursor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb_con.c_sisusb_set_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sisusb_usb_data = type { i32, i32 }

@SISCR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sisusb_set_cursor(%struct.sisusb_usb_data* %0, i32 %1) #0 {
  %3 = alloca %struct.sisusb_usb_data*, align 8
  %4 = alloca i32, align 4
  store %struct.sisusb_usb_data* %0, %struct.sisusb_usb_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %3, align 8
  %6 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %58

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %3, align 8
  %14 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* %4, align 4
  %16 = and i32 %15, 7
  %17 = icmp eq i32 %16, 7
  br i1 %17, label %18, label %29

18:                                               ; preds = %11
  %19 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %3, align 8
  %20 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %19, i32 0, i32 1
  store i32 1, i32* %20, align 4
  %21 = load i32, i32* %4, align 4
  %22 = add i32 %21, -1
  store i32 %22, i32* %4, align 4
  %23 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %3, align 8
  %24 = load i32, i32* @SISCR, align 4
  %25 = call i64 @sisusb_setidxregandor(%struct.sisusb_usb_data* %23, i32 %24, i32 11, i32 31, i32 32)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  br label %58

28:                                               ; preds = %18
  br label %44

29:                                               ; preds = %11
  %30 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %3, align 8
  %31 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %29
  %35 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %3, align 8
  %36 = load i32, i32* @SISCR, align 4
  %37 = call i64 @sisusb_setidxregand(%struct.sisusb_usb_data* %35, i32 %36, i32 11, i32 31)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %58

40:                                               ; preds = %34
  %41 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %3, align 8
  %42 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %41, i32 0, i32 1
  store i32 0, i32* %42, align 4
  br label %43

43:                                               ; preds = %40, %29
  br label %44

44:                                               ; preds = %43, %28
  %45 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %3, align 8
  %46 = load i32, i32* @SISCR, align 4
  %47 = load i32, i32* %4, align 4
  %48 = lshr i32 %47, 8
  %49 = call i64 @sisusb_setidxreg(%struct.sisusb_usb_data* %45, i32 %46, i32 14, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  br label %58

52:                                               ; preds = %44
  %53 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %3, align 8
  %54 = load i32, i32* @SISCR, align 4
  %55 = load i32, i32* %4, align 4
  %56 = and i32 %55, 255
  %57 = call i64 @sisusb_setidxreg(%struct.sisusb_usb_data* %53, i32 %54, i32 15, i32 %56)
  br label %58

58:                                               ; preds = %52, %51, %39, %27, %10
  ret void
}

declare dso_local i64 @sisusb_setidxregandor(%struct.sisusb_usb_data*, i32, i32, i32, i32) #1

declare dso_local i64 @sisusb_setidxregand(%struct.sisusb_usb_data*, i32, i32, i32) #1

declare dso_local i64 @sisusb_setidxreg(%struct.sisusb_usb_data*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
