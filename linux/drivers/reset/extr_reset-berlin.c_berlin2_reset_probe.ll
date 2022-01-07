; ModuleID = '/home/carl/AnghaBench/linux/drivers/reset/extr_reset-berlin.c_berlin2_reset_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/reset/extr_reset-berlin.c_berlin2_reset_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.device_node = type { i32 }
%struct.berlin_reset_priv = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@berlin_reset_ops = common dso_local global i32 0, align 4
@berlin_reset_xlate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @berlin2_reset_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @berlin2_reset_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.berlin_reset_priv*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.device_node* @of_get_parent(i32 %9)
  store %struct.device_node* %10, %struct.device_node** %4, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.berlin_reset_priv* @devm_kzalloc(%struct.TYPE_4__* %12, i32 40, i32 %13)
  store %struct.berlin_reset_priv* %14, %struct.berlin_reset_priv** %5, align 8
  %15 = load %struct.berlin_reset_priv*, %struct.berlin_reset_priv** %5, align 8
  %16 = icmp ne %struct.berlin_reset_priv* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %62

20:                                               ; preds = %1
  %21 = load %struct.device_node*, %struct.device_node** %4, align 8
  %22 = call i32 @syscon_node_to_regmap(%struct.device_node* %21)
  %23 = load %struct.berlin_reset_priv*, %struct.berlin_reset_priv** %5, align 8
  %24 = getelementptr inbounds %struct.berlin_reset_priv, %struct.berlin_reset_priv* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 8
  %25 = load %struct.device_node*, %struct.device_node** %4, align 8
  %26 = call i32 @of_node_put(%struct.device_node* %25)
  %27 = load %struct.berlin_reset_priv*, %struct.berlin_reset_priv** %5, align 8
  %28 = getelementptr inbounds %struct.berlin_reset_priv, %struct.berlin_reset_priv* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @IS_ERR(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %20
  %33 = load %struct.berlin_reset_priv*, %struct.berlin_reset_priv** %5, align 8
  %34 = getelementptr inbounds %struct.berlin_reset_priv, %struct.berlin_reset_priv* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @PTR_ERR(i32 %35)
  store i32 %36, i32* %2, align 4
  br label %62

37:                                               ; preds = %20
  %38 = load i32, i32* @THIS_MODULE, align 4
  %39 = load %struct.berlin_reset_priv*, %struct.berlin_reset_priv** %5, align 8
  %40 = getelementptr inbounds %struct.berlin_reset_priv, %struct.berlin_reset_priv* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 4
  store i32 %38, i32* %41, align 8
  %42 = load %struct.berlin_reset_priv*, %struct.berlin_reset_priv** %5, align 8
  %43 = getelementptr inbounds %struct.berlin_reset_priv, %struct.berlin_reset_priv* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 3
  store i32* @berlin_reset_ops, i32** %44, align 8
  %45 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %46 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.berlin_reset_priv*, %struct.berlin_reset_priv** %5, align 8
  %50 = getelementptr inbounds %struct.berlin_reset_priv, %struct.berlin_reset_priv* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 2
  store i32 %48, i32* %51, align 8
  %52 = load %struct.berlin_reset_priv*, %struct.berlin_reset_priv** %5, align 8
  %53 = getelementptr inbounds %struct.berlin_reset_priv, %struct.berlin_reset_priv* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  store i32 2, i32* %54, align 8
  %55 = load i32, i32* @berlin_reset_xlate, align 4
  %56 = load %struct.berlin_reset_priv*, %struct.berlin_reset_priv** %5, align 8
  %57 = getelementptr inbounds %struct.berlin_reset_priv, %struct.berlin_reset_priv* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  store i32 %55, i32* %58, align 4
  %59 = load %struct.berlin_reset_priv*, %struct.berlin_reset_priv** %5, align 8
  %60 = getelementptr inbounds %struct.berlin_reset_priv, %struct.berlin_reset_priv* %59, i32 0, i32 0
  %61 = call i32 @reset_controller_register(%struct.TYPE_3__* %60)
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %37, %32, %17
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local %struct.device_node* @of_get_parent(i32) #1

declare dso_local %struct.berlin_reset_priv* @devm_kzalloc(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @syscon_node_to_regmap(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @reset_controller_register(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
