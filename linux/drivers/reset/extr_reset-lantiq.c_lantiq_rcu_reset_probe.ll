; ModuleID = '/home/carl/AnghaBench/linux/drivers/reset/extr_reset-lantiq.c_lantiq_rcu_reset_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/reset/extr_reset-lantiq.c_lantiq_rcu_reset_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.lantiq_rcu_reset_priv = type { %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@lantiq_rcu_reset_ops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@lantiq_rcu_reset_xlate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @lantiq_rcu_reset_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lantiq_rcu_reset_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.lantiq_rcu_reset_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.lantiq_rcu_reset_priv* @devm_kzalloc(%struct.TYPE_4__* %7, i32 40, i32 %8)
  store %struct.lantiq_rcu_reset_priv* %9, %struct.lantiq_rcu_reset_priv** %4, align 8
  %10 = load %struct.lantiq_rcu_reset_priv*, %struct.lantiq_rcu_reset_priv** %4, align 8
  %11 = icmp ne %struct.lantiq_rcu_reset_priv* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %58

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = load %struct.lantiq_rcu_reset_priv*, %struct.lantiq_rcu_reset_priv** %4, align 8
  %19 = getelementptr inbounds %struct.lantiq_rcu_reset_priv, %struct.lantiq_rcu_reset_priv* %18, i32 0, i32 1
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %19, align 8
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = load %struct.lantiq_rcu_reset_priv*, %struct.lantiq_rcu_reset_priv** %4, align 8
  %22 = call i32 @platform_set_drvdata(%struct.platform_device* %20, %struct.lantiq_rcu_reset_priv* %21)
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = load %struct.lantiq_rcu_reset_priv*, %struct.lantiq_rcu_reset_priv** %4, align 8
  %25 = call i32 @lantiq_rcu_reset_of_parse(%struct.platform_device* %23, %struct.lantiq_rcu_reset_priv* %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %15
  %29 = load i32, i32* %5, align 4
  store i32 %29, i32* %2, align 4
  br label %58

30:                                               ; preds = %15
  %31 = load %struct.lantiq_rcu_reset_priv*, %struct.lantiq_rcu_reset_priv** %4, align 8
  %32 = getelementptr inbounds %struct.lantiq_rcu_reset_priv, %struct.lantiq_rcu_reset_priv* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 5
  store i32* @lantiq_rcu_reset_ops, i32** %33, align 8
  %34 = load i32, i32* @THIS_MODULE, align 4
  %35 = load %struct.lantiq_rcu_reset_priv*, %struct.lantiq_rcu_reset_priv** %4, align 8
  %36 = getelementptr inbounds %struct.lantiq_rcu_reset_priv, %struct.lantiq_rcu_reset_priv* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 4
  store i32 %34, i32* %37, align 8
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.lantiq_rcu_reset_priv*, %struct.lantiq_rcu_reset_priv** %4, align 8
  %43 = getelementptr inbounds %struct.lantiq_rcu_reset_priv, %struct.lantiq_rcu_reset_priv* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 3
  store i32 %41, i32* %44, align 4
  %45 = load %struct.lantiq_rcu_reset_priv*, %struct.lantiq_rcu_reset_priv** %4, align 8
  %46 = getelementptr inbounds %struct.lantiq_rcu_reset_priv, %struct.lantiq_rcu_reset_priv* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  store i32 32, i32* %47, align 8
  %48 = load i32, i32* @lantiq_rcu_reset_xlate, align 4
  %49 = load %struct.lantiq_rcu_reset_priv*, %struct.lantiq_rcu_reset_priv** %4, align 8
  %50 = getelementptr inbounds %struct.lantiq_rcu_reset_priv, %struct.lantiq_rcu_reset_priv* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 2
  store i32 %48, i32* %51, align 8
  %52 = load %struct.lantiq_rcu_reset_priv*, %struct.lantiq_rcu_reset_priv** %4, align 8
  %53 = getelementptr inbounds %struct.lantiq_rcu_reset_priv, %struct.lantiq_rcu_reset_priv* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  store i32 2, i32* %54, align 4
  %55 = load %struct.lantiq_rcu_reset_priv*, %struct.lantiq_rcu_reset_priv** %4, align 8
  %56 = getelementptr inbounds %struct.lantiq_rcu_reset_priv, %struct.lantiq_rcu_reset_priv* %55, i32 0, i32 0
  %57 = call i32 @reset_controller_register(%struct.TYPE_3__* %56)
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %30, %28, %12
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local %struct.lantiq_rcu_reset_priv* @devm_kzalloc(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.lantiq_rcu_reset_priv*) #1

declare dso_local i32 @lantiq_rcu_reset_of_parse(%struct.platform_device*, %struct.lantiq_rcu_reset_priv*) #1

declare dso_local i32 @reset_controller_register(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
