; ModuleID = '/home/carl/AnghaBench/linux/drivers/reset/extr_reset-lantiq.c_lantiq_rcu_reset_of_parse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/reset/extr_reset-lantiq.c_lantiq_rcu_reset_of_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.lantiq_rcu_reset_priv = type { i8*, i8*, i32 }

@.str = private unnamed_addr constant [29 x i8] c"Failed to lookup RCU regmap\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to get RCU reset offset\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Failed to get RCU status offset\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.lantiq_rcu_reset_priv*)* @lantiq_rcu_reset_of_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lantiq_rcu_reset_of_parse(%struct.platform_device* %0, %struct.lantiq_rcu_reset_priv* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.lantiq_rcu_reset_priv*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.lantiq_rcu_reset_priv* %1, %struct.lantiq_rcu_reset_priv** %5, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %6, align 8
  %10 = load %struct.device*, %struct.device** %6, align 8
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @syscon_node_to_regmap(i32 %14)
  %16 = load %struct.lantiq_rcu_reset_priv*, %struct.lantiq_rcu_reset_priv** %5, align 8
  %17 = getelementptr inbounds %struct.lantiq_rcu_reset_priv, %struct.lantiq_rcu_reset_priv* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 8
  %18 = load %struct.lantiq_rcu_reset_priv*, %struct.lantiq_rcu_reset_priv** %5, align 8
  %19 = getelementptr inbounds %struct.lantiq_rcu_reset_priv, %struct.lantiq_rcu_reset_priv* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @IS_ERR(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %2
  %24 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 0
  %26 = call i32 @dev_err(%struct.device* %25, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.lantiq_rcu_reset_priv*, %struct.lantiq_rcu_reset_priv** %5, align 8
  %28 = getelementptr inbounds %struct.lantiq_rcu_reset_priv, %struct.lantiq_rcu_reset_priv* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @PTR_ERR(i32 %29)
  store i32 %30, i32* %3, align 4
  br label %68

31:                                               ; preds = %2
  %32 = load %struct.device*, %struct.device** %6, align 8
  %33 = getelementptr inbounds %struct.device, %struct.device* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = call i32* @of_get_address(%struct.TYPE_2__* %34, i32 0, i32* null, i32* null)
  store i32* %35, i32** %7, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %44, label %38

38:                                               ; preds = %31
  %39 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 0
  %41 = call i32 @dev_err(%struct.device* %40, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* @ENOENT, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %68

44:                                               ; preds = %31
  %45 = load i32*, i32** %7, align 8
  %46 = load i32, i32* %45, align 4
  %47 = call i8* @__be32_to_cpu(i32 %46)
  %48 = load %struct.lantiq_rcu_reset_priv*, %struct.lantiq_rcu_reset_priv** %5, align 8
  %49 = getelementptr inbounds %struct.lantiq_rcu_reset_priv, %struct.lantiq_rcu_reset_priv* %48, i32 0, i32 1
  store i8* %47, i8** %49, align 8
  %50 = load %struct.device*, %struct.device** %6, align 8
  %51 = getelementptr inbounds %struct.device, %struct.device* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = call i32* @of_get_address(%struct.TYPE_2__* %52, i32 1, i32* null, i32* null)
  store i32* %53, i32** %7, align 8
  %54 = load i32*, i32** %7, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %62, label %56

56:                                               ; preds = %44
  %57 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %58 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %57, i32 0, i32 0
  %59 = call i32 @dev_err(%struct.device* %58, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %60 = load i32, i32* @ENOENT, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %68

62:                                               ; preds = %44
  %63 = load i32*, i32** %7, align 8
  %64 = load i32, i32* %63, align 4
  %65 = call i8* @__be32_to_cpu(i32 %64)
  %66 = load %struct.lantiq_rcu_reset_priv*, %struct.lantiq_rcu_reset_priv** %5, align 8
  %67 = getelementptr inbounds %struct.lantiq_rcu_reset_priv, %struct.lantiq_rcu_reset_priv* %66, i32 0, i32 0
  store i8* %65, i8** %67, align 8
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %62, %56, %38, %23
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @syscon_node_to_regmap(i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32* @of_get_address(%struct.TYPE_2__*, i32, i32*, i32*) #1

declare dso_local i8* @__be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
