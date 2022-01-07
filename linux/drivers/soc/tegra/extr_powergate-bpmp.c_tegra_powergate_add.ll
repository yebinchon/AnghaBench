; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/tegra/extr_powergate-bpmp.c_tegra_powergate_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/tegra/extr_powergate-bpmp.c_tegra_powergate_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_powergate = type { %struct.TYPE_2__, %struct.tegra_bpmp*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.tegra_bpmp = type { i32 }
%struct.tegra_powergate_info = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@tegra_powergate_power_on = common dso_local global i32 0, align 4
@tegra_powergate_power_off = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tegra_powergate* (%struct.tegra_bpmp*, %struct.tegra_powergate_info*)* @tegra_powergate_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tegra_powergate* @tegra_powergate_add(%struct.tegra_bpmp* %0, %struct.tegra_powergate_info* %1) #0 {
  %3 = alloca %struct.tegra_powergate*, align 8
  %4 = alloca %struct.tegra_bpmp*, align 8
  %5 = alloca %struct.tegra_powergate_info*, align 8
  %6 = alloca %struct.tegra_powergate*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.tegra_bpmp* %0, %struct.tegra_bpmp** %4, align 8
  store %struct.tegra_powergate_info* %1, %struct.tegra_powergate_info** %5, align 8
  %9 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %4, align 8
  %10 = load %struct.tegra_powergate_info*, %struct.tegra_powergate_info** %5, align 8
  %11 = getelementptr inbounds %struct.tegra_powergate_info, %struct.tegra_powergate_info* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @tegra_bpmp_powergate_is_powered(%struct.tegra_bpmp* %9, i32 %12)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %7, align 4
  %17 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %4, align 8
  %18 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.tegra_powergate* @devm_kzalloc(i32 %19, i32 32, i32 %20)
  store %struct.tegra_powergate* %21, %struct.tegra_powergate** %6, align 8
  %22 = load %struct.tegra_powergate*, %struct.tegra_powergate** %6, align 8
  %23 = icmp ne %struct.tegra_powergate* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  %27 = call %struct.tegra_powergate* @ERR_PTR(i32 %26)
  store %struct.tegra_powergate* %27, %struct.tegra_powergate** %3, align 8
  br label %69

28:                                               ; preds = %2
  %29 = load %struct.tegra_powergate_info*, %struct.tegra_powergate_info** %5, align 8
  %30 = getelementptr inbounds %struct.tegra_powergate_info, %struct.tegra_powergate_info* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.tegra_powergate*, %struct.tegra_powergate** %6, align 8
  %33 = getelementptr inbounds %struct.tegra_powergate, %struct.tegra_powergate* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  %34 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %4, align 8
  %35 = load %struct.tegra_powergate*, %struct.tegra_powergate** %6, align 8
  %36 = getelementptr inbounds %struct.tegra_powergate, %struct.tegra_powergate* %35, i32 0, i32 1
  store %struct.tegra_bpmp* %34, %struct.tegra_bpmp** %36, align 8
  %37 = load %struct.tegra_powergate_info*, %struct.tegra_powergate_info** %5, align 8
  %38 = getelementptr inbounds %struct.tegra_powergate_info, %struct.tegra_powergate_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call i32 @kstrdup(i32 %39, i32 %40)
  %42 = load %struct.tegra_powergate*, %struct.tegra_powergate** %6, align 8
  %43 = getelementptr inbounds %struct.tegra_powergate, %struct.tegra_powergate* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 8
  %45 = load i32, i32* @tegra_powergate_power_on, align 4
  %46 = load %struct.tegra_powergate*, %struct.tegra_powergate** %6, align 8
  %47 = getelementptr inbounds %struct.tegra_powergate, %struct.tegra_powergate* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  store i32 %45, i32* %48, align 8
  %49 = load i32, i32* @tegra_powergate_power_off, align 4
  %50 = load %struct.tegra_powergate*, %struct.tegra_powergate** %6, align 8
  %51 = getelementptr inbounds %struct.tegra_powergate, %struct.tegra_powergate* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  store i32 %49, i32* %52, align 4
  %53 = load %struct.tegra_powergate*, %struct.tegra_powergate** %6, align 8
  %54 = getelementptr inbounds %struct.tegra_powergate, %struct.tegra_powergate* %53, i32 0, i32 0
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @pm_genpd_init(%struct.TYPE_2__* %54, i32* null, i32 %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %28
  %60 = load %struct.tegra_powergate*, %struct.tegra_powergate** %6, align 8
  %61 = getelementptr inbounds %struct.tegra_powergate, %struct.tegra_powergate* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @kfree(i32 %63)
  %65 = load i32, i32* %8, align 4
  %66 = call %struct.tegra_powergate* @ERR_PTR(i32 %65)
  store %struct.tegra_powergate* %66, %struct.tegra_powergate** %3, align 8
  br label %69

67:                                               ; preds = %28
  %68 = load %struct.tegra_powergate*, %struct.tegra_powergate** %6, align 8
  store %struct.tegra_powergate* %68, %struct.tegra_powergate** %3, align 8
  br label %69

69:                                               ; preds = %67, %59, %24
  %70 = load %struct.tegra_powergate*, %struct.tegra_powergate** %3, align 8
  ret %struct.tegra_powergate* %70
}

declare dso_local i32 @tegra_bpmp_powergate_is_powered(%struct.tegra_bpmp*, i32) #1

declare dso_local %struct.tegra_powergate* @devm_kzalloc(i32, i32, i32) #1

declare dso_local %struct.tegra_powergate* @ERR_PTR(i32) #1

declare dso_local i32 @kstrdup(i32, i32) #1

declare dso_local i32 @pm_genpd_init(%struct.TYPE_2__*, i32*, i32) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
