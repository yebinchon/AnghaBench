; ModuleID = '/home/carl/AnghaBench/linux/drivers/reset/extr_reset-scmi.c_scmi_reset_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/reset/extr_reset-scmi.c_scmi_reset_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scmi_device = type { %struct.scmi_handle*, %struct.device }
%struct.scmi_handle = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.scmi_handle*)* }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.scmi_reset_data = type { %struct.TYPE_4__, %struct.scmi_handle* }
%struct.TYPE_4__ = type { i32, %struct.device_node*, i32, i32* }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@scmi_reset_ops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scmi_device*)* @scmi_reset_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scmi_reset_probe(%struct.scmi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scmi_device*, align 8
  %4 = alloca %struct.scmi_reset_data*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.scmi_handle*, align 8
  store %struct.scmi_device* %0, %struct.scmi_device** %3, align 8
  %8 = load %struct.scmi_device*, %struct.scmi_device** %3, align 8
  %9 = getelementptr inbounds %struct.scmi_device, %struct.scmi_device* %8, i32 0, i32 1
  store %struct.device* %9, %struct.device** %5, align 8
  %10 = load %struct.device*, %struct.device** %5, align 8
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 0
  %12 = load %struct.device_node*, %struct.device_node** %11, align 8
  store %struct.device_node* %12, %struct.device_node** %6, align 8
  %13 = load %struct.scmi_device*, %struct.scmi_device** %3, align 8
  %14 = getelementptr inbounds %struct.scmi_device, %struct.scmi_device* %13, i32 0, i32 0
  %15 = load %struct.scmi_handle*, %struct.scmi_handle** %14, align 8
  store %struct.scmi_handle* %15, %struct.scmi_handle** %7, align 8
  %16 = load %struct.scmi_handle*, %struct.scmi_handle** %7, align 8
  %17 = icmp ne %struct.scmi_handle* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load %struct.scmi_handle*, %struct.scmi_handle** %7, align 8
  %20 = getelementptr inbounds %struct.scmi_handle, %struct.scmi_handle* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = icmp ne %struct.TYPE_3__* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %18, %1
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %64

26:                                               ; preds = %18
  %27 = load %struct.device*, %struct.device** %5, align 8
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.scmi_reset_data* @devm_kzalloc(%struct.device* %27, i32 40, i32 %28)
  store %struct.scmi_reset_data* %29, %struct.scmi_reset_data** %4, align 8
  %30 = load %struct.scmi_reset_data*, %struct.scmi_reset_data** %4, align 8
  %31 = icmp ne %struct.scmi_reset_data* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %64

35:                                               ; preds = %26
  %36 = load %struct.scmi_reset_data*, %struct.scmi_reset_data** %4, align 8
  %37 = getelementptr inbounds %struct.scmi_reset_data, %struct.scmi_reset_data* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 3
  store i32* @scmi_reset_ops, i32** %38, align 8
  %39 = load i32, i32* @THIS_MODULE, align 4
  %40 = load %struct.scmi_reset_data*, %struct.scmi_reset_data** %4, align 8
  %41 = getelementptr inbounds %struct.scmi_reset_data, %struct.scmi_reset_data* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  store i32 %39, i32* %42, align 8
  %43 = load %struct.device_node*, %struct.device_node** %6, align 8
  %44 = load %struct.scmi_reset_data*, %struct.scmi_reset_data** %4, align 8
  %45 = getelementptr inbounds %struct.scmi_reset_data, %struct.scmi_reset_data* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  store %struct.device_node* %43, %struct.device_node** %46, align 8
  %47 = load %struct.scmi_handle*, %struct.scmi_handle** %7, align 8
  %48 = getelementptr inbounds %struct.scmi_handle, %struct.scmi_handle* %47, i32 0, i32 0
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32 (%struct.scmi_handle*)*, i32 (%struct.scmi_handle*)** %50, align 8
  %52 = load %struct.scmi_handle*, %struct.scmi_handle** %7, align 8
  %53 = call i32 %51(%struct.scmi_handle* %52)
  %54 = load %struct.scmi_reset_data*, %struct.scmi_reset_data** %4, align 8
  %55 = getelementptr inbounds %struct.scmi_reset_data, %struct.scmi_reset_data* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store i32 %53, i32* %56, align 8
  %57 = load %struct.scmi_handle*, %struct.scmi_handle** %7, align 8
  %58 = load %struct.scmi_reset_data*, %struct.scmi_reset_data** %4, align 8
  %59 = getelementptr inbounds %struct.scmi_reset_data, %struct.scmi_reset_data* %58, i32 0, i32 1
  store %struct.scmi_handle* %57, %struct.scmi_handle** %59, align 8
  %60 = load %struct.device*, %struct.device** %5, align 8
  %61 = load %struct.scmi_reset_data*, %struct.scmi_reset_data** %4, align 8
  %62 = getelementptr inbounds %struct.scmi_reset_data, %struct.scmi_reset_data* %61, i32 0, i32 0
  %63 = call i32 @devm_reset_controller_register(%struct.device* %60, %struct.TYPE_4__* %62)
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %35, %32, %23
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local %struct.scmi_reset_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @devm_reset_controller_register(%struct.device*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
