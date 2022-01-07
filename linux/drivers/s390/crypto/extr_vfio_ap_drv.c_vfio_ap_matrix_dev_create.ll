; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_vfio_ap_drv.c_vfio_ap_matrix_dev_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_vfio_ap_drv.c_vfio_ap_matrix_dev_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__, i32*, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32*, %struct.device* }
%struct.device = type { i32 }

@VFIO_AP_ROOT_NAME = common dso_local global i32 0, align 4
@matrix_bus = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@matrix_dev = common dso_local global %struct.TYPE_8__* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@VFIO_AP_DEV_NAME = common dso_local global i32 0, align 4
@vfio_ap_matrix_dev_release = common dso_local global i32 0, align 4
@vfio_ap_drv = common dso_local global i32 0, align 4
@matrix_driver = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @vfio_ap_matrix_dev_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfio_ap_matrix_dev_create() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = load i32, i32* @VFIO_AP_ROOT_NAME, align 4
  %5 = call %struct.device* @root_device_register(i32 %4)
  store %struct.device* %5, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call i64 @IS_ERR(%struct.device* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %0
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = call i32 @PTR_ERR(%struct.device* %10)
  store i32 %11, i32* %1, align 4
  br label %86

12:                                               ; preds = %0
  %13 = call i32 @bus_register(i32* @matrix_bus)
  store i32 %13, i32* %2, align 4
  %14 = load i32, i32* %2, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  br label %82

17:                                               ; preds = %12
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.TYPE_8__* @kzalloc(i32 48, i32 %18)
  store %struct.TYPE_8__* %19, %struct.TYPE_8__** @matrix_dev, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** @matrix_dev, align 8
  %21 = icmp ne %struct.TYPE_8__* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %80

25:                                               ; preds = %17
  %26 = call i64 @test_facility(i32 12)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %25
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** @matrix_dev, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 4
  %31 = call i32 @ap_qci(i32* %30)
  store i32 %31, i32* %2, align 4
  %32 = load i32, i32* %2, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %80

35:                                               ; preds = %28
  br label %36

36:                                               ; preds = %35, %25
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** @matrix_dev, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 3
  %39 = call i32 @mutex_init(i32* %38)
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** @matrix_dev, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 2
  %42 = call i32 @INIT_LIST_HEAD(i32* %41)
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** @matrix_dev, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i32, i32* @VFIO_AP_DEV_NAME, align 4
  %46 = call i32 @dev_set_name(%struct.TYPE_7__* %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load %struct.device*, %struct.device** %3, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** @matrix_dev, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 2
  store %struct.device* %47, %struct.device** %50, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** @matrix_dev, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  store i32* @matrix_bus, i32** %53, align 8
  %54 = load i32, i32* @vfio_ap_matrix_dev_release, align 4
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** @matrix_dev, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  store i32 %54, i32* %57, align 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** @matrix_dev, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  store i32* @vfio_ap_drv, i32** %59, align 8
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** @matrix_dev, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = call i32 @device_register(%struct.TYPE_7__* %61)
  store i32 %62, i32* %2, align 4
  %63 = load i32, i32* %2, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %36
  br label %76

66:                                               ; preds = %36
  %67 = call i32 @driver_register(i32* @matrix_driver)
  store i32 %67, i32* %2, align 4
  %68 = load i32, i32* %2, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  br label %72

71:                                               ; preds = %66
  store i32 0, i32* %1, align 4
  br label %86

72:                                               ; preds = %70
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** @matrix_dev, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = call i32 @device_unregister(%struct.TYPE_7__* %74)
  br label %76

76:                                               ; preds = %72, %65
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** @matrix_dev, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = call i32 @put_device(%struct.TYPE_7__* %78)
  br label %80

80:                                               ; preds = %76, %34, %22
  %81 = call i32 @bus_unregister(i32* @matrix_bus)
  br label %82

82:                                               ; preds = %80, %16
  %83 = load %struct.device*, %struct.device** %3, align 8
  %84 = call i32 @root_device_unregister(%struct.device* %83)
  %85 = load i32, i32* %2, align 4
  store i32 %85, i32* %1, align 4
  br label %86

86:                                               ; preds = %82, %71, %9
  %87 = load i32, i32* %1, align 4
  ret i32 %87
}

declare dso_local %struct.device* @root_device_register(i32) #1

declare dso_local i64 @IS_ERR(%struct.device*) #1

declare dso_local i32 @PTR_ERR(%struct.device*) #1

declare dso_local i32 @bus_register(i32*) #1

declare dso_local %struct.TYPE_8__* @kzalloc(i32, i32) #1

declare dso_local i64 @test_facility(i32) #1

declare dso_local i32 @ap_qci(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i32 @device_register(%struct.TYPE_7__*) #1

declare dso_local i32 @driver_register(i32*) #1

declare dso_local i32 @device_unregister(%struct.TYPE_7__*) #1

declare dso_local i32 @put_device(%struct.TYPE_7__*) #1

declare dso_local i32 @bus_unregister(i32*) #1

declare dso_local i32 @root_device_unregister(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
