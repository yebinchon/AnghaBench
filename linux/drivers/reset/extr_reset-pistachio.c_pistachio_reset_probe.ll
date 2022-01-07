; ModuleID = '/home/carl/AnghaBench/linux/drivers/reset/extr_reset-pistachio.c_pistachio_reset_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/reset/extr_reset-pistachio.c_pistachio_reset_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.pistachio_reset_data = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.device_node*, i32*, i64, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@PISTACHIO_RESET_MAX = common dso_local global i64 0, align 8
@pistachio_reset_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pistachio_reset_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pistachio_reset_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.pistachio_reset_data*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_node*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %5, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 0
  %12 = load %struct.device_node*, %struct.device_node** %11, align 8
  store %struct.device_node* %12, %struct.device_node** %6, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.pistachio_reset_data* @devm_kzalloc(%struct.device* %13, i32 40, i32 %14)
  store %struct.pistachio_reset_data* %15, %struct.pistachio_reset_data** %4, align 8
  %16 = load %struct.pistachio_reset_data*, %struct.pistachio_reset_data** %4, align 8
  %17 = icmp ne %struct.pistachio_reset_data* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %59

21:                                               ; preds = %1
  %22 = load %struct.device_node*, %struct.device_node** %6, align 8
  %23 = getelementptr inbounds %struct.device_node, %struct.device_node* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @syscon_node_to_regmap(i32 %24)
  %26 = load %struct.pistachio_reset_data*, %struct.pistachio_reset_data** %4, align 8
  %27 = getelementptr inbounds %struct.pistachio_reset_data, %struct.pistachio_reset_data* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 8
  %28 = load %struct.pistachio_reset_data*, %struct.pistachio_reset_data** %4, align 8
  %29 = getelementptr inbounds %struct.pistachio_reset_data, %struct.pistachio_reset_data* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @IS_ERR(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %21
  %34 = load %struct.pistachio_reset_data*, %struct.pistachio_reset_data** %4, align 8
  %35 = getelementptr inbounds %struct.pistachio_reset_data, %struct.pistachio_reset_data* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @PTR_ERR(i32 %36)
  store i32 %37, i32* %2, align 4
  br label %59

38:                                               ; preds = %21
  %39 = load i32, i32* @THIS_MODULE, align 4
  %40 = load %struct.pistachio_reset_data*, %struct.pistachio_reset_data** %4, align 8
  %41 = getelementptr inbounds %struct.pistachio_reset_data, %struct.pistachio_reset_data* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 3
  store i32 %39, i32* %42, align 8
  %43 = load i64, i64* @PISTACHIO_RESET_MAX, align 8
  %44 = add nsw i64 %43, 1
  %45 = load %struct.pistachio_reset_data*, %struct.pistachio_reset_data** %4, align 8
  %46 = getelementptr inbounds %struct.pistachio_reset_data, %struct.pistachio_reset_data* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 2
  store i64 %44, i64* %47, align 8
  %48 = load %struct.pistachio_reset_data*, %struct.pistachio_reset_data** %4, align 8
  %49 = getelementptr inbounds %struct.pistachio_reset_data, %struct.pistachio_reset_data* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  store i32* @pistachio_reset_ops, i32** %50, align 8
  %51 = load %struct.device_node*, %struct.device_node** %6, align 8
  %52 = load %struct.pistachio_reset_data*, %struct.pistachio_reset_data** %4, align 8
  %53 = getelementptr inbounds %struct.pistachio_reset_data, %struct.pistachio_reset_data* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store %struct.device_node* %51, %struct.device_node** %54, align 8
  %55 = load %struct.device*, %struct.device** %5, align 8
  %56 = load %struct.pistachio_reset_data*, %struct.pistachio_reset_data** %4, align 8
  %57 = getelementptr inbounds %struct.pistachio_reset_data, %struct.pistachio_reset_data* %56, i32 0, i32 0
  %58 = call i32 @devm_reset_controller_register(%struct.device* %55, %struct.TYPE_2__* %57)
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %38, %33, %18
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local %struct.pistachio_reset_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @syscon_node_to_regmap(i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_reset_controller_register(%struct.device*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
