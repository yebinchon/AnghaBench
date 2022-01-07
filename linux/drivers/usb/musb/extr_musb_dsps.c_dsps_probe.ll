; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_dsps.c_dsps_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_dsps.c_dsps_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.platform_device = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.of_device_id = type { %struct.dsps_musb_wrapper* }
%struct.dsps_musb_wrapper = type { i32 }
%struct.dsps_glue = type { i32, %struct.dsps_musb_wrapper*, %struct.TYPE_9__* }

@.str = private unnamed_addr constant [10 x i8] c"musb-hdrc\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@musb_dsps_of_match = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"fail to get matching of_match struct\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"ti,musb-dm816\00", align 1
@dsps_read_fifo32 = common dso_local global i32 0, align 4
@dsps_ops = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@USB_DR_MODE_PERIPHERAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @dsps_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsps_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.of_device_id*, align 8
  %5 = alloca %struct.dsps_musb_wrapper*, align 8
  %6 = alloca %struct.dsps_glue*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @strcmp(i32 %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %115

16:                                               ; preds = %1
  %17 = load i32, i32* @musb_dsps_of_match, align 4
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.of_device_id* @of_match_node(i32 %17, i32 %21)
  store %struct.of_device_id* %22, %struct.of_device_id** %4, align 8
  %23 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %24 = icmp ne %struct.of_device_id* %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %16
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = call i32 @dev_err(%struct.TYPE_9__* %27, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %115

31:                                               ; preds = %16
  %32 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %33 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %32, i32 0, i32 0
  %34 = load %struct.dsps_musb_wrapper*, %struct.dsps_musb_wrapper** %33, align 8
  store %struct.dsps_musb_wrapper* %34, %struct.dsps_musb_wrapper** %5, align 8
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @of_device_is_compatible(i32 %38, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %31
  %42 = load i32, i32* @dsps_read_fifo32, align 4
  store i32 %42, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @dsps_ops, i32 0, i32 0), align 4
  br label %43

43:                                               ; preds = %41, %31
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %44, i32 0, i32 0
  %46 = load i32, i32* @GFP_KERNEL, align 4
  %47 = call %struct.dsps_glue* @devm_kzalloc(%struct.TYPE_9__* %45, i32 24, i32 %46)
  store %struct.dsps_glue* %47, %struct.dsps_glue** %6, align 8
  %48 = load %struct.dsps_glue*, %struct.dsps_glue** %6, align 8
  %49 = icmp ne %struct.dsps_glue* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %43
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %115

53:                                               ; preds = %43
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %54, i32 0, i32 0
  %56 = load %struct.dsps_glue*, %struct.dsps_glue** %6, align 8
  %57 = getelementptr inbounds %struct.dsps_glue, %struct.dsps_glue* %56, i32 0, i32 2
  store %struct.TYPE_9__* %55, %struct.TYPE_9__** %57, align 8
  %58 = load %struct.dsps_musb_wrapper*, %struct.dsps_musb_wrapper** %5, align 8
  %59 = load %struct.dsps_glue*, %struct.dsps_glue** %6, align 8
  %60 = getelementptr inbounds %struct.dsps_glue, %struct.dsps_glue* %59, i32 0, i32 1
  store %struct.dsps_musb_wrapper* %58, %struct.dsps_musb_wrapper** %60, align 8
  %61 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %62 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @of_iomap(i32 %66, i32 0)
  %68 = load %struct.dsps_glue*, %struct.dsps_glue** %6, align 8
  %69 = getelementptr inbounds %struct.dsps_glue, %struct.dsps_glue* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load %struct.dsps_glue*, %struct.dsps_glue** %6, align 8
  %71 = getelementptr inbounds %struct.dsps_glue, %struct.dsps_glue* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %53
  %75 = load i32, i32* @ENXIO, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %2, align 4
  br label %115

77:                                               ; preds = %53
  %78 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %79 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %78, i32 0, i32 0
  %80 = call i64 @usb_get_dr_mode(%struct.TYPE_9__* %79)
  %81 = load i64, i64* @USB_DR_MODE_PERIPHERAL, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %91

83:                                               ; preds = %77
  %84 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %85 = load %struct.dsps_glue*, %struct.dsps_glue** %6, align 8
  %86 = call i32 @dsps_setup_optional_vbus_irq(%struct.platform_device* %84, %struct.dsps_glue* %85)
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* %7, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  br label %109

90:                                               ; preds = %83
  br label %91

91:                                               ; preds = %90, %77
  %92 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %93 = load %struct.dsps_glue*, %struct.dsps_glue** %6, align 8
  %94 = call i32 @platform_set_drvdata(%struct.platform_device* %92, %struct.dsps_glue* %93)
  %95 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %96 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %95, i32 0, i32 0
  %97 = call i32 @pm_runtime_enable(%struct.TYPE_9__* %96)
  %98 = load %struct.dsps_glue*, %struct.dsps_glue** %6, align 8
  %99 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %100 = call i32 @dsps_create_musb_pdev(%struct.dsps_glue* %98, %struct.platform_device* %99)
  store i32 %100, i32* %7, align 4
  %101 = load i32, i32* %7, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %91
  br label %105

104:                                              ; preds = %91
  store i32 0, i32* %2, align 4
  br label %115

105:                                              ; preds = %103
  %106 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %107 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %106, i32 0, i32 0
  %108 = call i32 @pm_runtime_disable(%struct.TYPE_9__* %107)
  br label %109

109:                                              ; preds = %105, %89
  %110 = load %struct.dsps_glue*, %struct.dsps_glue** %6, align 8
  %111 = getelementptr inbounds %struct.dsps_glue, %struct.dsps_glue* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @iounmap(i32 %112)
  %114 = load i32, i32* %7, align 4
  store i32 %114, i32* %2, align 4
  br label %115

115:                                              ; preds = %109, %104, %74, %50, %25, %13
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local %struct.of_device_id* @of_match_node(i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_9__*, i8*) #1

declare dso_local i64 @of_device_is_compatible(i32, i8*) #1

declare dso_local %struct.dsps_glue* @devm_kzalloc(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @of_iomap(i32, i32) #1

declare dso_local i64 @usb_get_dr_mode(%struct.TYPE_9__*) #1

declare dso_local i32 @dsps_setup_optional_vbus_irq(%struct.platform_device*, %struct.dsps_glue*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.dsps_glue*) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_9__*) #1

declare dso_local i32 @dsps_create_musb_pdev(%struct.dsps_glue*, %struct.platform_device*) #1

declare dso_local i32 @pm_runtime_disable(%struct.TYPE_9__*) #1

declare dso_local i32 @iounmap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
