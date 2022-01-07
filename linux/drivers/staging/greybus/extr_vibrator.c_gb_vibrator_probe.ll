; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_vibrator.c_gb_vibrator_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_vibrator.c_gb_vibrator_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_bundle = type { i32, i32, %struct.greybus_descriptor_cport* }
%struct.greybus_descriptor_cport = type { i64, i32 }
%struct.greybus_bundle_id = type { i32 }
%struct.gb_connection = type { i32 }
%struct.gb_vibrator_device = type { i32, i32, %struct.gb_connection*, %struct.gb_connection* }
%struct.device = type opaque

@ENODEV = common dso_local global i32 0, align 4
@GREYBUS_PROTOCOL_VIBRATOR = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@minors = common dso_local global i32 0, align 4
@vibrator_class = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"vibrator%d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@gb_vibrator_worker = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_bundle*, %struct.greybus_bundle_id*)* @gb_vibrator_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_vibrator_probe(%struct.gb_bundle* %0, %struct.greybus_bundle_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gb_bundle*, align 8
  %5 = alloca %struct.greybus_bundle_id*, align 8
  %6 = alloca %struct.greybus_descriptor_cport*, align 8
  %7 = alloca %struct.gb_connection*, align 8
  %8 = alloca %struct.gb_vibrator_device*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca i32, align 4
  store %struct.gb_bundle* %0, %struct.gb_bundle** %4, align 8
  store %struct.greybus_bundle_id* %1, %struct.greybus_bundle_id** %5, align 8
  %11 = load %struct.gb_bundle*, %struct.gb_bundle** %4, align 8
  %12 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 1
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %123

18:                                               ; preds = %2
  %19 = load %struct.gb_bundle*, %struct.gb_bundle** %4, align 8
  %20 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %19, i32 0, i32 2
  %21 = load %struct.greybus_descriptor_cport*, %struct.greybus_descriptor_cport** %20, align 8
  %22 = getelementptr inbounds %struct.greybus_descriptor_cport, %struct.greybus_descriptor_cport* %21, i64 0
  store %struct.greybus_descriptor_cport* %22, %struct.greybus_descriptor_cport** %6, align 8
  %23 = load %struct.greybus_descriptor_cport*, %struct.greybus_descriptor_cport** %6, align 8
  %24 = getelementptr inbounds %struct.greybus_descriptor_cport, %struct.greybus_descriptor_cport* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @GREYBUS_PROTOCOL_VIBRATOR, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %18
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %123

31:                                               ; preds = %18
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.gb_vibrator_device* @kzalloc(i32 24, i32 %32)
  store %struct.gb_vibrator_device* %33, %struct.gb_vibrator_device** %8, align 8
  %34 = load %struct.gb_vibrator_device*, %struct.gb_vibrator_device** %8, align 8
  %35 = icmp ne %struct.gb_vibrator_device* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %123

39:                                               ; preds = %31
  %40 = load %struct.gb_bundle*, %struct.gb_bundle** %4, align 8
  %41 = load %struct.greybus_descriptor_cport*, %struct.greybus_descriptor_cport** %6, align 8
  %42 = getelementptr inbounds %struct.greybus_descriptor_cport, %struct.greybus_descriptor_cport* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @le16_to_cpu(i32 %43)
  %45 = call %struct.gb_connection* @gb_connection_create(%struct.gb_bundle* %40, i32 %44, i32* null)
  store %struct.gb_connection* %45, %struct.gb_connection** %7, align 8
  %46 = load %struct.gb_connection*, %struct.gb_connection** %7, align 8
  %47 = call i64 @IS_ERR(%struct.gb_connection* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %39
  %50 = load %struct.gb_connection*, %struct.gb_connection** %7, align 8
  %51 = call i32 @PTR_ERR(%struct.gb_connection* %50)
  store i32 %51, i32* %10, align 4
  br label %119

52:                                               ; preds = %39
  %53 = load %struct.gb_connection*, %struct.gb_connection** %7, align 8
  %54 = load %struct.gb_vibrator_device*, %struct.gb_vibrator_device** %8, align 8
  %55 = call i32 @gb_connection_set_data(%struct.gb_connection* %53, %struct.gb_vibrator_device* %54)
  %56 = load %struct.gb_connection*, %struct.gb_connection** %7, align 8
  %57 = load %struct.gb_vibrator_device*, %struct.gb_vibrator_device** %8, align 8
  %58 = getelementptr inbounds %struct.gb_vibrator_device, %struct.gb_vibrator_device* %57, i32 0, i32 3
  store %struct.gb_connection* %56, %struct.gb_connection** %58, align 8
  %59 = load %struct.gb_bundle*, %struct.gb_bundle** %4, align 8
  %60 = load %struct.gb_vibrator_device*, %struct.gb_vibrator_device** %8, align 8
  %61 = call i32 @greybus_set_drvdata(%struct.gb_bundle* %59, %struct.gb_vibrator_device* %60)
  %62 = load %struct.gb_connection*, %struct.gb_connection** %7, align 8
  %63 = call i32 @gb_connection_enable(%struct.gb_connection* %62)
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %52
  br label %116

67:                                               ; preds = %52
  %68 = load i32, i32* @GFP_KERNEL, align 4
  %69 = call i32 @ida_simple_get(i32* @minors, i32 0, i32 0, i32 %68)
  %70 = load %struct.gb_vibrator_device*, %struct.gb_vibrator_device** %8, align 8
  %71 = getelementptr inbounds %struct.gb_vibrator_device, %struct.gb_vibrator_device* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load %struct.gb_vibrator_device*, %struct.gb_vibrator_device** %8, align 8
  %73 = getelementptr inbounds %struct.gb_vibrator_device, %struct.gb_vibrator_device* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %67
  %77 = load %struct.gb_vibrator_device*, %struct.gb_vibrator_device** %8, align 8
  %78 = getelementptr inbounds %struct.gb_vibrator_device, %struct.gb_vibrator_device* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  store i32 %79, i32* %10, align 4
  br label %113

80:                                               ; preds = %67
  %81 = load %struct.gb_bundle*, %struct.gb_bundle** %4, align 8
  %82 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %81, i32 0, i32 1
  %83 = call i32 @MKDEV(i32 0, i32 0)
  %84 = load %struct.gb_vibrator_device*, %struct.gb_vibrator_device** %8, align 8
  %85 = load %struct.gb_vibrator_device*, %struct.gb_vibrator_device** %8, align 8
  %86 = getelementptr inbounds %struct.gb_vibrator_device, %struct.gb_vibrator_device* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call %struct.gb_connection* @device_create(i32* @vibrator_class, i32* %82, i32 %83, %struct.gb_vibrator_device* %84, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %87)
  %89 = bitcast %struct.gb_connection* %88 to %struct.device*
  store %struct.device* %89, %struct.device** %9, align 8
  %90 = load %struct.device*, %struct.device** %9, align 8
  %91 = bitcast %struct.device* %90 to %struct.gb_connection*
  %92 = call i64 @IS_ERR(%struct.gb_connection* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %80
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %10, align 4
  br label %108

97:                                               ; preds = %80
  %98 = load %struct.device*, %struct.device** %9, align 8
  %99 = bitcast %struct.device* %98 to %struct.gb_connection*
  %100 = load %struct.gb_vibrator_device*, %struct.gb_vibrator_device** %8, align 8
  %101 = getelementptr inbounds %struct.gb_vibrator_device, %struct.gb_vibrator_device* %100, i32 0, i32 2
  store %struct.gb_connection* %99, %struct.gb_connection** %101, align 8
  %102 = load %struct.gb_vibrator_device*, %struct.gb_vibrator_device** %8, align 8
  %103 = getelementptr inbounds %struct.gb_vibrator_device, %struct.gb_vibrator_device* %102, i32 0, i32 1
  %104 = load i32, i32* @gb_vibrator_worker, align 4
  %105 = call i32 @INIT_DELAYED_WORK(i32* %103, i32 %104)
  %106 = load %struct.gb_bundle*, %struct.gb_bundle** %4, align 8
  %107 = call i32 @gb_pm_runtime_put_autosuspend(%struct.gb_bundle* %106)
  store i32 0, i32* %3, align 4
  br label %123

108:                                              ; preds = %94
  %109 = load %struct.gb_vibrator_device*, %struct.gb_vibrator_device** %8, align 8
  %110 = getelementptr inbounds %struct.gb_vibrator_device, %struct.gb_vibrator_device* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @ida_simple_remove(i32* @minors, i32 %111)
  br label %113

113:                                              ; preds = %108, %76
  %114 = load %struct.gb_connection*, %struct.gb_connection** %7, align 8
  %115 = call i32 @gb_connection_disable(%struct.gb_connection* %114)
  br label %116

116:                                              ; preds = %113, %66
  %117 = load %struct.gb_connection*, %struct.gb_connection** %7, align 8
  %118 = call i32 @gb_connection_destroy(%struct.gb_connection* %117)
  br label %119

119:                                              ; preds = %116, %49
  %120 = load %struct.gb_vibrator_device*, %struct.gb_vibrator_device** %8, align 8
  %121 = call i32 @kfree(%struct.gb_vibrator_device* %120)
  %122 = load i32, i32* %10, align 4
  store i32 %122, i32* %3, align 4
  br label %123

123:                                              ; preds = %119, %97, %36, %28, %15
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local %struct.gb_vibrator_device* @kzalloc(i32, i32) #1

declare dso_local %struct.gb_connection* @gb_connection_create(%struct.gb_bundle*, i32, i32*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @IS_ERR(%struct.gb_connection*) #1

declare dso_local i32 @PTR_ERR(%struct.gb_connection*) #1

declare dso_local i32 @gb_connection_set_data(%struct.gb_connection*, %struct.gb_vibrator_device*) #1

declare dso_local i32 @greybus_set_drvdata(%struct.gb_bundle*, %struct.gb_vibrator_device*) #1

declare dso_local i32 @gb_connection_enable(%struct.gb_connection*) #1

declare dso_local i32 @ida_simple_get(i32*, i32, i32, i32) #1

declare dso_local %struct.gb_connection* @device_create(i32*, i32*, i32, %struct.gb_vibrator_device*, i8*, i32) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @gb_pm_runtime_put_autosuspend(%struct.gb_bundle*) #1

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

declare dso_local i32 @gb_connection_disable(%struct.gb_connection*) #1

declare dso_local i32 @gb_connection_destroy(%struct.gb_connection*) #1

declare dso_local i32 @kfree(%struct.gb_vibrator_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
