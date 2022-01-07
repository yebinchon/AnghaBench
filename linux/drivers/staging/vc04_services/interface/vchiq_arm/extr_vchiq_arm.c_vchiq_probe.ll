; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vc04_services/interface/vchiq_arm/extr_vchiq_arm.c_vchiq_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vc04_services/interface/vchiq_arm/extr_vchiq_arm.c_vchiq_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.platform_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.device_node = type { i32 }
%struct.of_device_id = type { i64 }
%struct.vchiq_drvdata = type { i32 }
%struct.device = type { i32 }

@vchiq_of_match = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"raspberrypi,bcm2835-firmware\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Missing firmware node\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@g_state = common dso_local global i32 0, align 4
@vchiq_cdev = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@vchiq_fops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@vchiq_devid = common dso_local global i32 0, align 4
@vchiq_arm_log_level = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Unable to register device\00", align 1
@vchiq_class = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"vchiq\00", align 1
@.str.4 = private unnamed_addr constant [55 x i8] c"vchiq: initialised - version %d (min %d), device %d.%d\00", align 1
@VCHIQ_VERSION = common dso_local global i32 0, align 4
@VCHIQ_VERSION_MIN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"bcm2835-camera\00", align 1
@bcm2835_camera = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [14 x i8] c"bcm2835_audio\00", align 1
@bcm2835_audio = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [21 x i8] c"could not load vchiq\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @vchiq_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vchiq_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.of_device_id*, align 8
  %6 = alloca %struct.vchiq_drvdata*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load i32, i32* @vchiq_of_match, align 4
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.of_device_id* @of_match_node(i32 %9, i32 %13)
  store %struct.of_device_id* %14, %struct.of_device_id** %5, align 8
  %15 = load %struct.of_device_id*, %struct.of_device_id** %5, align 8
  %16 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.vchiq_drvdata*
  store %struct.vchiq_drvdata* %18, %struct.vchiq_drvdata** %6, align 8
  %19 = load %struct.vchiq_drvdata*, %struct.vchiq_drvdata** %6, align 8
  %20 = icmp ne %struct.vchiq_drvdata* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %99

24:                                               ; preds = %1
  %25 = call %struct.device_node* @of_find_compatible_node(i32* null, i32* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %25, %struct.device_node** %4, align 8
  %26 = load %struct.device_node*, %struct.device_node** %4, align 8
  %27 = icmp ne %struct.device_node* %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %24
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = call i32 @dev_err(%struct.TYPE_8__* %30, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @ENOENT, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %99

34:                                               ; preds = %24
  %35 = load %struct.device_node*, %struct.device_node** %4, align 8
  %36 = call i32 @rpi_firmware_get(%struct.device_node* %35)
  %37 = load %struct.vchiq_drvdata*, %struct.vchiq_drvdata** %6, align 8
  %38 = getelementptr inbounds %struct.vchiq_drvdata, %struct.vchiq_drvdata* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.device_node*, %struct.device_node** %4, align 8
  %40 = call i32 @of_node_put(%struct.device_node* %39)
  %41 = load %struct.vchiq_drvdata*, %struct.vchiq_drvdata** %6, align 8
  %42 = getelementptr inbounds %struct.vchiq_drvdata, %struct.vchiq_drvdata* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %34
  %46 = load i32, i32* @EPROBE_DEFER, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %99

48:                                               ; preds = %34
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = load %struct.vchiq_drvdata*, %struct.vchiq_drvdata** %6, align 8
  %51 = call i32 @platform_set_drvdata(%struct.platform_device* %49, %struct.vchiq_drvdata* %50)
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = call i32 @vchiq_platform_init(%struct.platform_device* %52, i32* @g_state)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  br label %95

57:                                               ; preds = %48
  %58 = call i32 @cdev_init(%struct.TYPE_7__* @vchiq_cdev, i32* @vchiq_fops)
  %59 = load i32, i32* @THIS_MODULE, align 4
  store i32 %59, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @vchiq_cdev, i32 0, i32 0), align 4
  %60 = load i32, i32* @vchiq_devid, align 4
  %61 = call i32 @cdev_add(%struct.TYPE_7__* @vchiq_cdev, i32 %60, i32 1)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %57
  %65 = load i32, i32* @vchiq_arm_log_level, align 4
  %66 = call i32 @vchiq_log_error(i32 %65, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %95

67:                                               ; preds = %57
  %68 = load i32, i32* @vchiq_class, align 4
  %69 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %70 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %69, i32 0, i32 0
  %71 = load i32, i32* @vchiq_devid, align 4
  %72 = call %struct.device* @device_create(i32 %68, %struct.TYPE_8__* %70, i32 %71, i32* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  store %struct.device* %72, %struct.device** %7, align 8
  %73 = load %struct.device*, %struct.device** %7, align 8
  %74 = call i64 @IS_ERR(%struct.device* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %67
  %77 = load %struct.device*, %struct.device** %7, align 8
  %78 = call i32 @PTR_ERR(%struct.device* %77)
  store i32 %78, i32* %8, align 4
  br label %93

79:                                               ; preds = %67
  %80 = call i32 (...) @vchiq_debugfs_init()
  %81 = load i32, i32* @vchiq_arm_log_level, align 4
  %82 = load i32, i32* @VCHIQ_VERSION, align 4
  %83 = load i32, i32* @VCHIQ_VERSION_MIN, align 4
  %84 = load i32, i32* @vchiq_devid, align 4
  %85 = call i32 @MAJOR(i32 %84)
  %86 = load i32, i32* @vchiq_devid, align 4
  %87 = call i32 @MINOR(i32 %86)
  %88 = call i32 @vchiq_log_info(i32 %81, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0), i32 %82, i32 %83, i32 %85, i32 %87)
  %89 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %90 = call i8* @vchiq_register_child(%struct.platform_device* %89, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  store i8* %90, i8** @bcm2835_camera, align 8
  %91 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %92 = call i8* @vchiq_register_child(%struct.platform_device* %91, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  store i8* %92, i8** @bcm2835_audio, align 8
  store i32 0, i32* %2, align 4
  br label %99

93:                                               ; preds = %76
  %94 = call i32 @cdev_del(%struct.TYPE_7__* @vchiq_cdev)
  br label %95

95:                                               ; preds = %93, %64, %56
  %96 = load i32, i32* @vchiq_arm_log_level, align 4
  %97 = call i32 @vchiq_log_warning(i32 %96, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  %98 = load i32, i32* %8, align 4
  store i32 %98, i32* %2, align 4
  br label %99

99:                                               ; preds = %95, %79, %45, %28, %21
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local %struct.of_device_id* @of_match_node(i32, i32) #1

declare dso_local %struct.device_node* @of_find_compatible_node(i32*, i32*, i8*) #1

declare dso_local i32 @dev_err(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @rpi_firmware_get(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.vchiq_drvdata*) #1

declare dso_local i32 @vchiq_platform_init(%struct.platform_device*, i32*) #1

declare dso_local i32 @cdev_init(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @cdev_add(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @vchiq_log_error(i32, i8*) #1

declare dso_local %struct.device* @device_create(i32, %struct.TYPE_8__*, i32, i32*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.device*) #1

declare dso_local i32 @PTR_ERR(%struct.device*) #1

declare dso_local i32 @vchiq_debugfs_init(...) #1

declare dso_local i32 @vchiq_log_info(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @MAJOR(i32) #1

declare dso_local i32 @MINOR(i32) #1

declare dso_local i8* @vchiq_register_child(%struct.platform_device*, i8*) #1

declare dso_local i32 @cdev_del(%struct.TYPE_7__*) #1

declare dso_local i32 @vchiq_log_warning(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
