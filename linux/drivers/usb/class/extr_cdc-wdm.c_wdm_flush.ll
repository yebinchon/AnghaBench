; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/class/extr_cdc-wdm.c_wdm_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/class/extr_cdc-wdm.c_wdm_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.wdm_device* }
%struct.wdm_device = type { i64, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@WDM_IN_USE = common dso_local global i32 0, align 4
@WDM_DISCONNECTING = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Error in flush path: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32)* @wdm_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wdm_flush(%struct.file* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wdm_device*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.file*, %struct.file** %4, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 0
  %9 = load %struct.wdm_device*, %struct.wdm_device** %8, align 8
  store %struct.wdm_device* %9, %struct.wdm_device** %6, align 8
  %10 = load %struct.wdm_device*, %struct.wdm_device** %6, align 8
  %11 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @WDM_IN_USE, align 4
  %14 = load %struct.wdm_device*, %struct.wdm_device** %6, align 8
  %15 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %14, i32 0, i32 2
  %16 = call i64 @test_bit(i32 %13, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load i32, i32* @WDM_DISCONNECTING, align 4
  %20 = load %struct.wdm_device*, %struct.wdm_device** %6, align 8
  %21 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %20, i32 0, i32 2
  %22 = call i64 @test_bit(i32 %19, i32* %21)
  %23 = icmp ne i64 %22, 0
  br label %24

24:                                               ; preds = %18, %2
  %25 = phi i1 [ true, %2 ], [ %23, %18 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @wait_event(i32 %12, i32 %26)
  %28 = load i32, i32* @WDM_DISCONNECTING, align 4
  %29 = load %struct.wdm_device*, %struct.wdm_device** %6, align 8
  %30 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %29, i32 0, i32 2
  %31 = call i64 @test_bit(i32 %28, i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %24
  %34 = load i32, i32* @ENODEV, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %55

36:                                               ; preds = %24
  %37 = load %struct.wdm_device*, %struct.wdm_device** %6, align 8
  %38 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %36
  %42 = load %struct.wdm_device*, %struct.wdm_device** %6, align 8
  %43 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load %struct.wdm_device*, %struct.wdm_device** %6, align 8
  %47 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @dev_err(i32* %45, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %48)
  br label %50

50:                                               ; preds = %41, %36
  %51 = load %struct.wdm_device*, %struct.wdm_device** %6, align 8
  %52 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @usb_translate_errors(i64 %53)
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %50, %33
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i64) #1

declare dso_local i32 @usb_translate_errors(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
