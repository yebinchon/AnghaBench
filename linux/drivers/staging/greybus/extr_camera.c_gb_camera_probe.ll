; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_camera.c_gb_camera_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_camera.c_gb_camera_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_bundle = type { i32, %struct.greybus_descriptor_cport* }
%struct.greybus_descriptor_cport = type { i32, i32 }
%struct.greybus_bundle_id = type { i32 }
%struct.gb_connection = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.gb_camera = type { %struct.gb_bundle*, %struct.TYPE_4__, %struct.gb_connection*, i64, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32*, %struct.gb_camera* }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GB_CAMERA_STATE_UNCONFIGURED = common dso_local global i32 0, align 4
@gb_camera_request_handler = common dso_local global i32 0, align 4
@gb_cam_ops = common dso_local global i32 0, align 4
@gb_camera_release_module = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_bundle*, %struct.greybus_bundle_id*)* @gb_camera_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_camera_probe(%struct.gb_bundle* %0, %struct.greybus_bundle_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gb_bundle*, align 8
  %5 = alloca %struct.greybus_bundle_id*, align 8
  %6 = alloca %struct.gb_connection*, align 8
  %7 = alloca %struct.gb_camera*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.greybus_descriptor_cport*, align 8
  store %struct.gb_bundle* %0, %struct.gb_bundle** %4, align 8
  store %struct.greybus_bundle_id* %1, %struct.greybus_bundle_id** %5, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %13 = load %struct.gb_bundle*, %struct.gb_bundle** %4, align 8
  %14 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 2
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %154

20:                                               ; preds = %2
  store i32 0, i32* %10, align 4
  br label %21

21:                                               ; preds = %51, %20
  %22 = load i32, i32* %10, align 4
  %23 = load %struct.gb_bundle*, %struct.gb_bundle** %4, align 8
  %24 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ult i32 %22, %25
  br i1 %26, label %27, label %54

27:                                               ; preds = %21
  %28 = load %struct.gb_bundle*, %struct.gb_bundle** %4, align 8
  %29 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %28, i32 0, i32 1
  %30 = load %struct.greybus_descriptor_cport*, %struct.greybus_descriptor_cport** %29, align 8
  %31 = load i32, i32* %10, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.greybus_descriptor_cport, %struct.greybus_descriptor_cport* %30, i64 %32
  store %struct.greybus_descriptor_cport* %33, %struct.greybus_descriptor_cport** %12, align 8
  %34 = load %struct.greybus_descriptor_cport*, %struct.greybus_descriptor_cport** %12, align 8
  %35 = getelementptr inbounds %struct.greybus_descriptor_cport, %struct.greybus_descriptor_cport* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %47 [
    i32 128, label %37
    i32 129, label %42
  ]

37:                                               ; preds = %27
  %38 = load %struct.greybus_descriptor_cport*, %struct.greybus_descriptor_cport** %12, align 8
  %39 = getelementptr inbounds %struct.greybus_descriptor_cport, %struct.greybus_descriptor_cport* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @le16_to_cpu(i32 %40)
  store i64 %41, i64* %8, align 8
  br label %50

42:                                               ; preds = %27
  %43 = load %struct.greybus_descriptor_cport*, %struct.greybus_descriptor_cport** %12, align 8
  %44 = getelementptr inbounds %struct.greybus_descriptor_cport, %struct.greybus_descriptor_cport* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @le16_to_cpu(i32 %45)
  store i64 %46, i64* %9, align 8
  br label %50

47:                                               ; preds = %27
  %48 = load i32, i32* @ENODEV, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %154

50:                                               ; preds = %42, %37
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %10, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %10, align 4
  br label %21

54:                                               ; preds = %21
  %55 = load i64, i64* %8, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i64, i64* %9, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %57, %54
  %61 = load i32, i32* @ENODEV, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %154

63:                                               ; preds = %57
  %64 = load i32, i32* @GFP_KERNEL, align 4
  %65 = call %struct.gb_camera* @kzalloc(i32 56, i32 %64)
  store %struct.gb_camera* %65, %struct.gb_camera** %7, align 8
  %66 = load %struct.gb_camera*, %struct.gb_camera** %7, align 8
  %67 = icmp ne %struct.gb_camera* %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %63
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %154

71:                                               ; preds = %63
  %72 = load %struct.gb_camera*, %struct.gb_camera** %7, align 8
  %73 = getelementptr inbounds %struct.gb_camera, %struct.gb_camera* %72, i32 0, i32 5
  %74 = call i32 @mutex_init(i32* %73)
  %75 = load %struct.gb_bundle*, %struct.gb_bundle** %4, align 8
  %76 = load %struct.gb_camera*, %struct.gb_camera** %7, align 8
  %77 = getelementptr inbounds %struct.gb_camera, %struct.gb_camera* %76, i32 0, i32 0
  store %struct.gb_bundle* %75, %struct.gb_bundle** %77, align 8
  %78 = load i32, i32* @GB_CAMERA_STATE_UNCONFIGURED, align 4
  %79 = load %struct.gb_camera*, %struct.gb_camera** %7, align 8
  %80 = getelementptr inbounds %struct.gb_camera, %struct.gb_camera* %79, i32 0, i32 4
  store i32 %78, i32* %80, align 8
  %81 = load i64, i64* %9, align 8
  %82 = load %struct.gb_camera*, %struct.gb_camera** %7, align 8
  %83 = getelementptr inbounds %struct.gb_camera, %struct.gb_camera* %82, i32 0, i32 3
  store i64 %81, i64* %83, align 8
  %84 = load %struct.gb_bundle*, %struct.gb_bundle** %4, align 8
  %85 = load i64, i64* %8, align 8
  %86 = load i32, i32* @gb_camera_request_handler, align 4
  %87 = call %struct.gb_connection* @gb_connection_create(%struct.gb_bundle* %84, i64 %85, i32 %86)
  store %struct.gb_connection* %87, %struct.gb_connection** %6, align 8
  %88 = load %struct.gb_connection*, %struct.gb_connection** %6, align 8
  %89 = call i64 @IS_ERR(%struct.gb_connection* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %71
  %92 = load %struct.gb_connection*, %struct.gb_connection** %6, align 8
  %93 = call i32 @PTR_ERR(%struct.gb_connection* %92)
  store i32 %93, i32* %11, align 4
  br label %148

94:                                               ; preds = %71
  %95 = load %struct.gb_connection*, %struct.gb_connection** %6, align 8
  %96 = load %struct.gb_camera*, %struct.gb_camera** %7, align 8
  %97 = getelementptr inbounds %struct.gb_camera, %struct.gb_camera* %96, i32 0, i32 2
  store %struct.gb_connection* %95, %struct.gb_connection** %97, align 8
  %98 = load %struct.gb_connection*, %struct.gb_connection** %6, align 8
  %99 = load %struct.gb_camera*, %struct.gb_camera** %7, align 8
  %100 = call i32 @gb_connection_set_data(%struct.gb_connection* %98, %struct.gb_camera* %99)
  %101 = load %struct.gb_connection*, %struct.gb_connection** %6, align 8
  %102 = call i32 @gb_connection_enable(%struct.gb_connection* %101)
  store i32 %102, i32* %11, align 4
  %103 = load i32, i32* %11, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %94
  br label %148

106:                                              ; preds = %94
  %107 = load %struct.gb_camera*, %struct.gb_camera** %7, align 8
  %108 = call i32 @gb_camera_debugfs_init(%struct.gb_camera* %107)
  store i32 %108, i32* %11, align 4
  %109 = load i32, i32* %11, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %106
  br label %148

112:                                              ; preds = %106
  %113 = load %struct.gb_camera*, %struct.gb_camera** %7, align 8
  %114 = load %struct.gb_camera*, %struct.gb_camera** %7, align 8
  %115 = getelementptr inbounds %struct.gb_camera, %struct.gb_camera* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 3
  store %struct.gb_camera* %113, %struct.gb_camera** %116, align 8
  %117 = load %struct.gb_camera*, %struct.gb_camera** %7, align 8
  %118 = getelementptr inbounds %struct.gb_camera, %struct.gb_camera* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 2
  store i32* @gb_cam_ops, i32** %119, align 8
  %120 = load %struct.gb_camera*, %struct.gb_camera** %7, align 8
  %121 = getelementptr inbounds %struct.gb_camera, %struct.gb_camera* %120, i32 0, i32 2
  %122 = load %struct.gb_connection*, %struct.gb_connection** %121, align 8
  %123 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %122, i32 0, i32 0
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.gb_camera*, %struct.gb_camera** %7, align 8
  %128 = getelementptr inbounds %struct.gb_camera, %struct.gb_camera* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 1
  store i32 %126, i32* %129, align 4
  %130 = load i32, i32* @gb_camera_release_module, align 4
  %131 = load %struct.gb_camera*, %struct.gb_camera** %7, align 8
  %132 = getelementptr inbounds %struct.gb_camera, %struct.gb_camera* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  store i32 %130, i32* %133, align 8
  %134 = load %struct.gb_camera*, %struct.gb_camera** %7, align 8
  %135 = getelementptr inbounds %struct.gb_camera, %struct.gb_camera* %134, i32 0, i32 1
  %136 = call i32 @gb_camera_register(%struct.TYPE_4__* %135)
  store i32 %136, i32* %11, align 4
  %137 = load i32, i32* %11, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %112
  br label %148

140:                                              ; preds = %112
  %141 = load %struct.gb_bundle*, %struct.gb_bundle** %4, align 8
  %142 = load %struct.gb_camera*, %struct.gb_camera** %7, align 8
  %143 = call i32 @greybus_set_drvdata(%struct.gb_bundle* %141, %struct.gb_camera* %142)
  %144 = load %struct.gb_camera*, %struct.gb_camera** %7, align 8
  %145 = getelementptr inbounds %struct.gb_camera, %struct.gb_camera* %144, i32 0, i32 0
  %146 = load %struct.gb_bundle*, %struct.gb_bundle** %145, align 8
  %147 = call i32 @gb_pm_runtime_put_autosuspend(%struct.gb_bundle* %146)
  store i32 0, i32* %3, align 4
  br label %154

148:                                              ; preds = %139, %111, %105, %91
  %149 = load %struct.gb_camera*, %struct.gb_camera** %7, align 8
  %150 = call i32 @gb_camera_cleanup(%struct.gb_camera* %149)
  %151 = load %struct.gb_camera*, %struct.gb_camera** %7, align 8
  %152 = call i32 @kfree(%struct.gb_camera* %151)
  %153 = load i32, i32* %11, align 4
  store i32 %153, i32* %3, align 4
  br label %154

154:                                              ; preds = %148, %140, %68, %60, %47, %17
  %155 = load i32, i32* %3, align 4
  ret i32 %155
}

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local %struct.gb_camera* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local %struct.gb_connection* @gb_connection_create(%struct.gb_bundle*, i64, i32) #1

declare dso_local i64 @IS_ERR(%struct.gb_connection*) #1

declare dso_local i32 @PTR_ERR(%struct.gb_connection*) #1

declare dso_local i32 @gb_connection_set_data(%struct.gb_connection*, %struct.gb_camera*) #1

declare dso_local i32 @gb_connection_enable(%struct.gb_connection*) #1

declare dso_local i32 @gb_camera_debugfs_init(%struct.gb_camera*) #1

declare dso_local i32 @gb_camera_register(%struct.TYPE_4__*) #1

declare dso_local i32 @greybus_set_drvdata(%struct.gb_bundle*, %struct.gb_camera*) #1

declare dso_local i32 @gb_pm_runtime_put_autosuspend(%struct.gb_bundle*) #1

declare dso_local i32 @gb_camera_cleanup(%struct.gb_camera*) #1

declare dso_local i32 @kfree(%struct.gb_camera*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
