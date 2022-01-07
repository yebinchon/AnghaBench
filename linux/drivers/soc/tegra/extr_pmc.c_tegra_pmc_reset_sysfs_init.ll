; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/tegra/extr_pmc.c_tegra_pmc_reset_sysfs_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/tegra/extr_pmc.c_tegra_pmc_reset_sysfs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_pmc = type { %struct.TYPE_2__*, %struct.device* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.device = type { i32 }

@dev_attr_reset_reason = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"failed to create attr \22reset_reason\22: %d\0A\00", align 1
@dev_attr_reset_level = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"failed to create attr \22reset_level\22: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_pmc*)* @tegra_pmc_reset_sysfs_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_pmc_reset_sysfs_init(%struct.tegra_pmc* %0) #0 {
  %2 = alloca %struct.tegra_pmc*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  store %struct.tegra_pmc* %0, %struct.tegra_pmc** %2, align 8
  %5 = load %struct.tegra_pmc*, %struct.tegra_pmc** %2, align 8
  %6 = getelementptr inbounds %struct.tegra_pmc, %struct.tegra_pmc* %5, i32 0, i32 1
  %7 = load %struct.device*, %struct.device** %6, align 8
  store %struct.device* %7, %struct.device** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.tegra_pmc*, %struct.tegra_pmc** %2, align 8
  %9 = getelementptr inbounds %struct.tegra_pmc, %struct.tegra_pmc* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %1
  %15 = load %struct.device*, %struct.device** %3, align 8
  %16 = call i32 @device_create_file(%struct.device* %15, i32* @dev_attr_reset_reason)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load %struct.device*, %struct.device** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @dev_warn(%struct.device* %20, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %19, %14
  br label %24

24:                                               ; preds = %23, %1
  %25 = load %struct.tegra_pmc*, %struct.tegra_pmc** %2, align 8
  %26 = getelementptr inbounds %struct.tegra_pmc, %struct.tegra_pmc* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %24
  %32 = load %struct.device*, %struct.device** %3, align 8
  %33 = call i32 @device_create_file(%struct.device* %32, i32* @dev_attr_reset_level)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load %struct.device*, %struct.device** %3, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @dev_warn(%struct.device* %37, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %36, %31
  br label %41

41:                                               ; preds = %40, %24
  ret void
}

declare dso_local i32 @device_create_file(%struct.device*, i32*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
