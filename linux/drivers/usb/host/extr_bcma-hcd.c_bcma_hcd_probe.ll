; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_bcma-hcd.c_bcma_hcd_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_bcma-hcd.c_bcma_hcd_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_device = type { %struct.TYPE_4__, %struct.TYPE_5__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.bcma_hcd_device = type { i32, %struct.bcma_device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"vcc\00", align 1
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@CONFIG_ARM = common dso_local global i32 0, align 4
@CONFIG_MIPS = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcma_device*)* @bcma_hcd_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcma_hcd_probe(%struct.bcma_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bcma_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bcma_hcd_device*, align 8
  store %struct.bcma_device* %0, %struct.bcma_device** %3, align 8
  %6 = load %struct.bcma_device*, %struct.bcma_device** %3, align 8
  %7 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %6, i32 0, i32 1
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.bcma_hcd_device* @devm_kzalloc(%struct.TYPE_5__* %7, i32 16, i32 %8)
  store %struct.bcma_hcd_device* %9, %struct.bcma_hcd_device** %5, align 8
  %10 = load %struct.bcma_hcd_device*, %struct.bcma_hcd_device** %5, align 8
  %11 = icmp ne %struct.bcma_hcd_device* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %73

15:                                               ; preds = %1
  %16 = load %struct.bcma_device*, %struct.bcma_device** %3, align 8
  %17 = load %struct.bcma_hcd_device*, %struct.bcma_hcd_device** %5, align 8
  %18 = getelementptr inbounds %struct.bcma_hcd_device, %struct.bcma_hcd_device* %17, i32 0, i32 1
  store %struct.bcma_device* %16, %struct.bcma_device** %18, align 8
  %19 = load %struct.bcma_device*, %struct.bcma_device** %3, align 8
  %20 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %15
  %25 = load %struct.bcma_device*, %struct.bcma_device** %3, align 8
  %26 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %25, i32 0, i32 1
  %27 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %28 = call i32 @devm_gpiod_get(%struct.TYPE_5__* %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load %struct.bcma_hcd_device*, %struct.bcma_hcd_device** %5, align 8
  %30 = getelementptr inbounds %struct.bcma_hcd_device, %struct.bcma_hcd_device* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  br label %31

31:                                               ; preds = %24, %15
  %32 = load %struct.bcma_device*, %struct.bcma_device** %3, align 8
  %33 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  switch i32 %35, label %61 [
    i32 128, label %36
    i32 130, label %55
    i32 129, label %58
  ]

36:                                               ; preds = %31
  %37 = load i32, i32* @CONFIG_ARM, align 4
  %38 = call i32 @IS_ENABLED(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load %struct.bcma_hcd_device*, %struct.bcma_hcd_device** %5, align 8
  %42 = call i32 @bcma_hcd_usb20_old_arm_init(%struct.bcma_hcd_device* %41)
  store i32 %42, i32* %4, align 4
  br label %54

43:                                               ; preds = %36
  %44 = load i32, i32* @CONFIG_MIPS, align 4
  %45 = call i32 @IS_ENABLED(i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load %struct.bcma_hcd_device*, %struct.bcma_hcd_device** %5, align 8
  %49 = call i32 @bcma_hcd_usb20_init(%struct.bcma_hcd_device* %48)
  store i32 %49, i32* %4, align 4
  br label %53

50:                                               ; preds = %43
  %51 = load i32, i32* @ENOTSUPP, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %50, %47
  br label %54

54:                                               ; preds = %53, %40
  br label %64

55:                                               ; preds = %31
  %56 = load %struct.bcma_hcd_device*, %struct.bcma_hcd_device** %5, align 8
  %57 = call i32 @bcma_hcd_usb20_ns_init(%struct.bcma_hcd_device* %56)
  store i32 %57, i32* %4, align 4
  br label %64

58:                                               ; preds = %31
  %59 = load %struct.bcma_hcd_device*, %struct.bcma_hcd_device** %5, align 8
  %60 = call i32 @bcma_hcd_usb30_init(%struct.bcma_hcd_device* %59)
  store i32 %60, i32* %4, align 4
  br label %64

61:                                               ; preds = %31
  %62 = load i32, i32* @ENODEV, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  br label %73

64:                                               ; preds = %58, %55, %54
  %65 = load i32, i32* %4, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = load i32, i32* %4, align 4
  store i32 %68, i32* %2, align 4
  br label %73

69:                                               ; preds = %64
  %70 = load %struct.bcma_device*, %struct.bcma_device** %3, align 8
  %71 = load %struct.bcma_hcd_device*, %struct.bcma_hcd_device** %5, align 8
  %72 = call i32 @bcma_set_drvdata(%struct.bcma_device* %70, %struct.bcma_hcd_device* %71)
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %69, %67, %61, %12
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local %struct.bcma_hcd_device* @devm_kzalloc(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @devm_gpiod_get(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i32 @bcma_hcd_usb20_old_arm_init(%struct.bcma_hcd_device*) #1

declare dso_local i32 @bcma_hcd_usb20_init(%struct.bcma_hcd_device*) #1

declare dso_local i32 @bcma_hcd_usb20_ns_init(%struct.bcma_hcd_device*) #1

declare dso_local i32 @bcma_hcd_usb30_init(%struct.bcma_hcd_device*) #1

declare dso_local i32 @bcma_set_drvdata(%struct.bcma_device*, %struct.bcma_hcd_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
