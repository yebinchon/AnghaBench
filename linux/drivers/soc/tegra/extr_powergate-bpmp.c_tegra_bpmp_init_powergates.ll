; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/tegra/extr_powergate-bpmp.c_tegra_bpmp_init_powergates.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/tegra/extr_powergate-bpmp.c_tegra_bpmp_init_powergates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_bpmp = type { %struct.TYPE_2__, %struct.device* }
%struct.TYPE_2__ = type { i32 }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.tegra_powergate_info = type { %struct.tegra_powergate_info* }

@.str = private unnamed_addr constant [25 x i8] c"%u power domains probed\0A\00", align 1
@tegra_powergate_xlate = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"failed to add power domain provider: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tegra_bpmp_init_powergates(%struct.tegra_bpmp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tegra_bpmp*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.tegra_powergate_info*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.tegra_bpmp* %0, %struct.tegra_bpmp** %3, align 8
  %10 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %3, align 8
  %11 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %10, i32 0, i32 1
  %12 = load %struct.device*, %struct.device** %11, align 8
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 0
  %14 = load %struct.device_node*, %struct.device_node** %13, align 8
  store %struct.device_node* %14, %struct.device_node** %4, align 8
  %15 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %3, align 8
  %16 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %15, i32 0, i32 1
  %17 = load %struct.device*, %struct.device** %16, align 8
  store %struct.device* %17, %struct.device** %6, align 8
  %18 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %3, align 8
  %19 = call i32 @tegra_bpmp_probe_powergates(%struct.tegra_bpmp* %18, %struct.tegra_powergate_info** %5)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* %9, align 4
  store i32 %23, i32* %2, align 4
  br label %74

24:                                               ; preds = %1
  %25 = load i32, i32* %9, align 4
  store i32 %25, i32* %7, align 4
  %26 = load %struct.device*, %struct.device** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @dev_dbg(%struct.device* %26, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %3, align 8
  %30 = load %struct.tegra_powergate_info*, %struct.tegra_powergate_info** %5, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @tegra_bpmp_add_powergates(%struct.tegra_bpmp* %29, %struct.tegra_powergate_info* %30, i32 %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %24
  br label %54

36:                                               ; preds = %24
  %37 = load i32, i32* @tegra_powergate_xlate, align 4
  %38 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %3, align 8
  %39 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 8
  %41 = load %struct.device_node*, %struct.device_node** %4, align 8
  %42 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %3, align 8
  %43 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %42, i32 0, i32 0
  %44 = call i32 @of_genpd_add_provider_onecell(%struct.device_node* %41, %struct.TYPE_2__* %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %36
  %48 = load %struct.device*, %struct.device** %6, align 8
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @dev_err(%struct.device* %48, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %3, align 8
  %52 = call i32 @tegra_bpmp_remove_powergates(%struct.tegra_bpmp* %51)
  br label %53

53:                                               ; preds = %47, %36
  br label %54

54:                                               ; preds = %53, %35
  store i32 0, i32* %8, align 4
  br label %55

55:                                               ; preds = %67, %54
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ult i32 %56, %57
  br i1 %58, label %59, label %70

59:                                               ; preds = %55
  %60 = load %struct.tegra_powergate_info*, %struct.tegra_powergate_info** %5, align 8
  %61 = load i32, i32* %8, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.tegra_powergate_info, %struct.tegra_powergate_info* %60, i64 %62
  %64 = getelementptr inbounds %struct.tegra_powergate_info, %struct.tegra_powergate_info* %63, i32 0, i32 0
  %65 = load %struct.tegra_powergate_info*, %struct.tegra_powergate_info** %64, align 8
  %66 = call i32 @kfree(%struct.tegra_powergate_info* %65)
  br label %67

67:                                               ; preds = %59
  %68 = load i32, i32* %8, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %8, align 4
  br label %55

70:                                               ; preds = %55
  %71 = load %struct.tegra_powergate_info*, %struct.tegra_powergate_info** %5, align 8
  %72 = call i32 @kfree(%struct.tegra_powergate_info* %71)
  %73 = load i32, i32* %9, align 4
  store i32 %73, i32* %2, align 4
  br label %74

74:                                               ; preds = %70, %22
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @tegra_bpmp_probe_powergates(%struct.tegra_bpmp*, %struct.tegra_powergate_info**) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @tegra_bpmp_add_powergates(%struct.tegra_bpmp*, %struct.tegra_powergate_info*, i32) #1

declare dso_local i32 @of_genpd_add_provider_onecell(%struct.device_node*, %struct.TYPE_2__*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @tegra_bpmp_remove_powergates(%struct.tegra_bpmp*) #1

declare dso_local i32 @kfree(%struct.tegra_powergate_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
