; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/lantiq/extr_phy-lantiq-rcu-usb2.c_ltq_rcu_usb2_phy_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/lantiq/extr_phy-lantiq-rcu-usb2.c_ltq_rcu_usb2_phy_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.ltq_rcu_usb2_priv = type { %struct.device*, %struct.phy_provider*, i32, i32 }
%struct.phy_provider = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ltq_rcu_usb2_phy_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"failed to create PHY\0A\00", align 1
@of_phy_simple_xlate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ltq_rcu_usb2_phy_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltq_rcu_usb2_phy_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.ltq_rcu_usb2_priv*, align 8
  %6 = alloca %struct.phy_provider*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.ltq_rcu_usb2_priv* @devm_kzalloc(%struct.device* %10, i32 24, i32 %11)
  store %struct.ltq_rcu_usb2_priv* %12, %struct.ltq_rcu_usb2_priv** %5, align 8
  %13 = load %struct.ltq_rcu_usb2_priv*, %struct.ltq_rcu_usb2_priv** %5, align 8
  %14 = icmp ne %struct.ltq_rcu_usb2_priv* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %78

18:                                               ; preds = %1
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = load %struct.ltq_rcu_usb2_priv*, %struct.ltq_rcu_usb2_priv** %5, align 8
  %21 = getelementptr inbounds %struct.ltq_rcu_usb2_priv, %struct.ltq_rcu_usb2_priv* %20, i32 0, i32 0
  store %struct.device* %19, %struct.device** %21, align 8
  %22 = load %struct.ltq_rcu_usb2_priv*, %struct.ltq_rcu_usb2_priv** %5, align 8
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = call i32 @ltq_rcu_usb2_of_parse(%struct.ltq_rcu_usb2_priv* %22, %struct.platform_device* %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %18
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %2, align 4
  br label %78

29:                                               ; preds = %18
  %30 = load %struct.ltq_rcu_usb2_priv*, %struct.ltq_rcu_usb2_priv** %5, align 8
  %31 = getelementptr inbounds %struct.ltq_rcu_usb2_priv, %struct.ltq_rcu_usb2_priv* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @reset_control_deassert(i32 %32)
  %34 = load %struct.ltq_rcu_usb2_priv*, %struct.ltq_rcu_usb2_priv** %5, align 8
  %35 = getelementptr inbounds %struct.ltq_rcu_usb2_priv, %struct.ltq_rcu_usb2_priv* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @reset_control_assert(i32 %36)
  %38 = load %struct.device*, %struct.device** %4, align 8
  %39 = load %struct.device*, %struct.device** %4, align 8
  %40 = getelementptr inbounds %struct.device, %struct.device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call %struct.phy_provider* @devm_phy_create(%struct.device* %38, i32 %41, i32* @ltq_rcu_usb2_phy_ops)
  %43 = load %struct.ltq_rcu_usb2_priv*, %struct.ltq_rcu_usb2_priv** %5, align 8
  %44 = getelementptr inbounds %struct.ltq_rcu_usb2_priv, %struct.ltq_rcu_usb2_priv* %43, i32 0, i32 1
  store %struct.phy_provider* %42, %struct.phy_provider** %44, align 8
  %45 = load %struct.ltq_rcu_usb2_priv*, %struct.ltq_rcu_usb2_priv** %5, align 8
  %46 = getelementptr inbounds %struct.ltq_rcu_usb2_priv, %struct.ltq_rcu_usb2_priv* %45, i32 0, i32 1
  %47 = load %struct.phy_provider*, %struct.phy_provider** %46, align 8
  %48 = call i64 @IS_ERR(%struct.phy_provider* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %29
  %51 = load %struct.device*, %struct.device** %4, align 8
  %52 = call i32 @dev_err(%struct.device* %51, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %53 = load %struct.ltq_rcu_usb2_priv*, %struct.ltq_rcu_usb2_priv** %5, align 8
  %54 = getelementptr inbounds %struct.ltq_rcu_usb2_priv, %struct.ltq_rcu_usb2_priv* %53, i32 0, i32 1
  %55 = load %struct.phy_provider*, %struct.phy_provider** %54, align 8
  %56 = call i32 @PTR_ERR(%struct.phy_provider* %55)
  store i32 %56, i32* %2, align 4
  br label %78

57:                                               ; preds = %29
  %58 = load %struct.ltq_rcu_usb2_priv*, %struct.ltq_rcu_usb2_priv** %5, align 8
  %59 = getelementptr inbounds %struct.ltq_rcu_usb2_priv, %struct.ltq_rcu_usb2_priv* %58, i32 0, i32 1
  %60 = load %struct.phy_provider*, %struct.phy_provider** %59, align 8
  %61 = load %struct.ltq_rcu_usb2_priv*, %struct.ltq_rcu_usb2_priv** %5, align 8
  %62 = call i32 @phy_set_drvdata(%struct.phy_provider* %60, %struct.ltq_rcu_usb2_priv* %61)
  %63 = load %struct.device*, %struct.device** %4, align 8
  %64 = load i32, i32* @of_phy_simple_xlate, align 4
  %65 = call %struct.phy_provider* @devm_of_phy_provider_register(%struct.device* %63, i32 %64)
  store %struct.phy_provider* %65, %struct.phy_provider** %6, align 8
  %66 = load %struct.phy_provider*, %struct.phy_provider** %6, align 8
  %67 = call i64 @IS_ERR(%struct.phy_provider* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %57
  %70 = load %struct.phy_provider*, %struct.phy_provider** %6, align 8
  %71 = call i32 @PTR_ERR(%struct.phy_provider* %70)
  store i32 %71, i32* %2, align 4
  br label %78

72:                                               ; preds = %57
  %73 = load %struct.ltq_rcu_usb2_priv*, %struct.ltq_rcu_usb2_priv** %5, align 8
  %74 = getelementptr inbounds %struct.ltq_rcu_usb2_priv, %struct.ltq_rcu_usb2_priv* %73, i32 0, i32 0
  %75 = load %struct.device*, %struct.device** %74, align 8
  %76 = load %struct.ltq_rcu_usb2_priv*, %struct.ltq_rcu_usb2_priv** %5, align 8
  %77 = call i32 @dev_set_drvdata(%struct.device* %75, %struct.ltq_rcu_usb2_priv* %76)
  store i32 0, i32* %2, align 4
  br label %78

78:                                               ; preds = %72, %69, %50, %27, %15
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local %struct.ltq_rcu_usb2_priv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @ltq_rcu_usb2_of_parse(%struct.ltq_rcu_usb2_priv*, %struct.platform_device*) #1

declare dso_local i32 @reset_control_deassert(i32) #1

declare dso_local i32 @reset_control_assert(i32) #1

declare dso_local %struct.phy_provider* @devm_phy_create(%struct.device*, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.phy_provider*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.phy_provider*) #1

declare dso_local i32 @phy_set_drvdata(%struct.phy_provider*, %struct.ltq_rcu_usb2_priv*) #1

declare dso_local %struct.phy_provider* @devm_of_phy_provider_register(%struct.device*, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.ltq_rcu_usb2_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
