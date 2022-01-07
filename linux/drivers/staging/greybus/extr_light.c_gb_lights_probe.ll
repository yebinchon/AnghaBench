; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_light.c_gb_lights_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_light.c_gb_lights_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_bundle = type { i32, %struct.greybus_descriptor_cport* }
%struct.greybus_descriptor_cport = type { i64, i32 }
%struct.greybus_bundle_id = type { i32 }
%struct.gb_connection = type { i32 }
%struct.gb_lights = type { %struct.gb_connection*, i32 }

@ENODEV = common dso_local global i32 0, align 4
@GREYBUS_PROTOCOL_LIGHTS = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@gb_lights_request_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_bundle*, %struct.greybus_bundle_id*)* @gb_lights_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_lights_probe(%struct.gb_bundle* %0, %struct.greybus_bundle_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gb_bundle*, align 8
  %5 = alloca %struct.greybus_bundle_id*, align 8
  %6 = alloca %struct.greybus_descriptor_cport*, align 8
  %7 = alloca %struct.gb_connection*, align 8
  %8 = alloca %struct.gb_lights*, align 8
  %9 = alloca i32, align 4
  store %struct.gb_bundle* %0, %struct.gb_bundle** %4, align 8
  store %struct.greybus_bundle_id* %1, %struct.greybus_bundle_id** %5, align 8
  %10 = load %struct.gb_bundle*, %struct.gb_bundle** %4, align 8
  %11 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 1
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %101

17:                                               ; preds = %2
  %18 = load %struct.gb_bundle*, %struct.gb_bundle** %4, align 8
  %19 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %18, i32 0, i32 1
  %20 = load %struct.greybus_descriptor_cport*, %struct.greybus_descriptor_cport** %19, align 8
  %21 = getelementptr inbounds %struct.greybus_descriptor_cport, %struct.greybus_descriptor_cport* %20, i64 0
  store %struct.greybus_descriptor_cport* %21, %struct.greybus_descriptor_cport** %6, align 8
  %22 = load %struct.greybus_descriptor_cport*, %struct.greybus_descriptor_cport** %6, align 8
  %23 = getelementptr inbounds %struct.greybus_descriptor_cport, %struct.greybus_descriptor_cport* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @GREYBUS_PROTOCOL_LIGHTS, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %17
  %28 = load i32, i32* @ENODEV, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %101

30:                                               ; preds = %17
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.gb_lights* @kzalloc(i32 16, i32 %31)
  store %struct.gb_lights* %32, %struct.gb_lights** %8, align 8
  %33 = load %struct.gb_lights*, %struct.gb_lights** %8, align 8
  %34 = icmp ne %struct.gb_lights* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %101

38:                                               ; preds = %30
  %39 = load %struct.gb_lights*, %struct.gb_lights** %8, align 8
  %40 = getelementptr inbounds %struct.gb_lights, %struct.gb_lights* %39, i32 0, i32 1
  %41 = call i32 @mutex_init(i32* %40)
  %42 = load %struct.gb_bundle*, %struct.gb_bundle** %4, align 8
  %43 = load %struct.greybus_descriptor_cport*, %struct.greybus_descriptor_cport** %6, align 8
  %44 = getelementptr inbounds %struct.greybus_descriptor_cport, %struct.greybus_descriptor_cport* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @le16_to_cpu(i32 %45)
  %47 = load i32, i32* @gb_lights_request_handler, align 4
  %48 = call %struct.gb_connection* @gb_connection_create(%struct.gb_bundle* %42, i32 %46, i32 %47)
  store %struct.gb_connection* %48, %struct.gb_connection** %7, align 8
  %49 = load %struct.gb_connection*, %struct.gb_connection** %7, align 8
  %50 = call i64 @IS_ERR(%struct.gb_connection* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %38
  %53 = load %struct.gb_connection*, %struct.gb_connection** %7, align 8
  %54 = call i32 @PTR_ERR(%struct.gb_connection* %53)
  store i32 %54, i32* %9, align 4
  br label %97

55:                                               ; preds = %38
  %56 = load %struct.gb_connection*, %struct.gb_connection** %7, align 8
  %57 = load %struct.gb_lights*, %struct.gb_lights** %8, align 8
  %58 = getelementptr inbounds %struct.gb_lights, %struct.gb_lights* %57, i32 0, i32 0
  store %struct.gb_connection* %56, %struct.gb_connection** %58, align 8
  %59 = load %struct.gb_connection*, %struct.gb_connection** %7, align 8
  %60 = load %struct.gb_lights*, %struct.gb_lights** %8, align 8
  %61 = call i32 @gb_connection_set_data(%struct.gb_connection* %59, %struct.gb_lights* %60)
  %62 = load %struct.gb_bundle*, %struct.gb_bundle** %4, align 8
  %63 = load %struct.gb_lights*, %struct.gb_lights** %8, align 8
  %64 = call i32 @greybus_set_drvdata(%struct.gb_bundle* %62, %struct.gb_lights* %63)
  %65 = load %struct.gb_connection*, %struct.gb_connection** %7, align 8
  %66 = call i32 @gb_connection_enable_tx(%struct.gb_connection* %65)
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %55
  br label %94

70:                                               ; preds = %55
  %71 = load %struct.gb_lights*, %struct.gb_lights** %8, align 8
  %72 = call i32 @gb_lights_create_all(%struct.gb_lights* %71)
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %9, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  br label %91

76:                                               ; preds = %70
  %77 = load %struct.gb_connection*, %struct.gb_connection** %7, align 8
  %78 = call i32 @gb_connection_enable(%struct.gb_connection* %77)
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  br label %91

82:                                               ; preds = %76
  %83 = load %struct.gb_lights*, %struct.gb_lights** %8, align 8
  %84 = call i32 @gb_lights_register_all(%struct.gb_lights* %83)
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %9, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  br label %91

88:                                               ; preds = %82
  %89 = load %struct.gb_bundle*, %struct.gb_bundle** %4, align 8
  %90 = call i32 @gb_pm_runtime_put_autosuspend(%struct.gb_bundle* %89)
  store i32 0, i32* %3, align 4
  br label %101

91:                                               ; preds = %87, %81, %75
  %92 = load %struct.gb_connection*, %struct.gb_connection** %7, align 8
  %93 = call i32 @gb_connection_disable(%struct.gb_connection* %92)
  br label %94

94:                                               ; preds = %91, %69
  %95 = load %struct.gb_connection*, %struct.gb_connection** %7, align 8
  %96 = call i32 @gb_connection_destroy(%struct.gb_connection* %95)
  br label %97

97:                                               ; preds = %94, %52
  %98 = load %struct.gb_lights*, %struct.gb_lights** %8, align 8
  %99 = call i32 @gb_lights_release(%struct.gb_lights* %98)
  %100 = load i32, i32* %9, align 4
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %97, %88, %35, %27, %14
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local %struct.gb_lights* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local %struct.gb_connection* @gb_connection_create(%struct.gb_bundle*, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @IS_ERR(%struct.gb_connection*) #1

declare dso_local i32 @PTR_ERR(%struct.gb_connection*) #1

declare dso_local i32 @gb_connection_set_data(%struct.gb_connection*, %struct.gb_lights*) #1

declare dso_local i32 @greybus_set_drvdata(%struct.gb_bundle*, %struct.gb_lights*) #1

declare dso_local i32 @gb_connection_enable_tx(%struct.gb_connection*) #1

declare dso_local i32 @gb_lights_create_all(%struct.gb_lights*) #1

declare dso_local i32 @gb_connection_enable(%struct.gb_connection*) #1

declare dso_local i32 @gb_lights_register_all(%struct.gb_lights*) #1

declare dso_local i32 @gb_pm_runtime_put_autosuspend(%struct.gb_bundle*) #1

declare dso_local i32 @gb_connection_disable(%struct.gb_connection*) #1

declare dso_local i32 @gb_connection_destroy(%struct.gb_connection*) #1

declare dso_local i32 @gb_lights_release(%struct.gb_lights*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
