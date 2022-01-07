; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_xgene_pmu.c_fdt_pmu_probe_active_mcb_mcu_l3c.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_xgene_pmu.c_fdt_pmu_probe_active_mcb_mcu_l3c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgene_pmu = type { i32, i32, i32 }
%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.regmap = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"regmap-csw\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"unable to get syscon regmap csw\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"regmap-mcba\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"unable to get syscon regmap mcba\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"regmap-mcbb\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"unable to get syscon regmap mcbb\0A\00", align 1
@CSW_CSWCR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CSW_CSWCR_DUALMCB_MASK = common dso_local global i32 0, align 4
@MCBADDRMR = common dso_local global i32 0, align 4
@MCBADDRMR_DUALMCU_MODE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgene_pmu*, %struct.platform_device*)* @fdt_pmu_probe_active_mcb_mcu_l3c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fdt_pmu_probe_active_mcb_mcu_l3c(%struct.xgene_pmu* %0, %struct.platform_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xgene_pmu*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.regmap*, align 8
  %7 = alloca %struct.regmap*, align 8
  %8 = alloca %struct.regmap*, align 8
  %9 = alloca %struct.device_node*, align 8
  %10 = alloca i32, align 4
  store %struct.xgene_pmu* %0, %struct.xgene_pmu** %4, align 8
  store %struct.platform_device* %1, %struct.platform_device** %5, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.device_node*, %struct.device_node** %13, align 8
  store %struct.device_node* %14, %struct.device_node** %9, align 8
  %15 = load %struct.device_node*, %struct.device_node** %9, align 8
  %16 = call %struct.regmap* @syscon_regmap_lookup_by_phandle(%struct.device_node* %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store %struct.regmap* %16, %struct.regmap** %6, align 8
  %17 = load %struct.regmap*, %struct.regmap** %6, align 8
  %18 = call i64 @IS_ERR(%struct.regmap* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = call i32 @dev_err(%struct.TYPE_2__* %22, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %24 = load %struct.regmap*, %struct.regmap** %6, align 8
  %25 = call i32 @PTR_ERR(%struct.regmap* %24)
  store i32 %25, i32* %3, align 4
  br label %100

26:                                               ; preds = %2
  %27 = load %struct.device_node*, %struct.device_node** %9, align 8
  %28 = call %struct.regmap* @syscon_regmap_lookup_by_phandle(%struct.device_node* %27, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  store %struct.regmap* %28, %struct.regmap** %7, align 8
  %29 = load %struct.regmap*, %struct.regmap** %7, align 8
  %30 = call i64 @IS_ERR(%struct.regmap* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %26
  %33 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = call i32 @dev_err(%struct.TYPE_2__* %34, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %36 = load %struct.regmap*, %struct.regmap** %7, align 8
  %37 = call i32 @PTR_ERR(%struct.regmap* %36)
  store i32 %37, i32* %3, align 4
  br label %100

38:                                               ; preds = %26
  %39 = load %struct.device_node*, %struct.device_node** %9, align 8
  %40 = call %struct.regmap* @syscon_regmap_lookup_by_phandle(%struct.device_node* %39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  store %struct.regmap* %40, %struct.regmap** %8, align 8
  %41 = load %struct.regmap*, %struct.regmap** %8, align 8
  %42 = call i64 @IS_ERR(%struct.regmap* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %38
  %45 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %46 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %45, i32 0, i32 0
  %47 = call i32 @dev_err(%struct.TYPE_2__* %46, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  %48 = load %struct.regmap*, %struct.regmap** %8, align 8
  %49 = call i32 @PTR_ERR(%struct.regmap* %48)
  store i32 %49, i32* %3, align 4
  br label %100

50:                                               ; preds = %38
  %51 = load %struct.xgene_pmu*, %struct.xgene_pmu** %4, align 8
  %52 = getelementptr inbounds %struct.xgene_pmu, %struct.xgene_pmu* %51, i32 0, i32 0
  store i32 1, i32* %52, align 4
  %53 = load %struct.regmap*, %struct.regmap** %6, align 8
  %54 = load i32, i32* @CSW_CSWCR, align 4
  %55 = call i64 @regmap_read(%struct.regmap* %53, i32 %54, i32* %10)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %100

60:                                               ; preds = %50
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* @CSW_CSWCR_DUALMCB_MASK, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %82

65:                                               ; preds = %60
  %66 = load %struct.xgene_pmu*, %struct.xgene_pmu** %4, align 8
  %67 = getelementptr inbounds %struct.xgene_pmu, %struct.xgene_pmu* %66, i32 0, i32 1
  store i32 3, i32* %67, align 4
  %68 = load %struct.regmap*, %struct.regmap** %8, align 8
  %69 = load i32, i32* @MCBADDRMR, align 4
  %70 = call i64 @regmap_read(%struct.regmap* %68, i32 %69, i32* %10)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  store i32 0, i32* %3, align 4
  br label %100

73:                                               ; preds = %65
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* @MCBADDRMR_DUALMCU_MODE_MASK, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i32 15, i32 5
  %80 = load %struct.xgene_pmu*, %struct.xgene_pmu** %4, align 8
  %81 = getelementptr inbounds %struct.xgene_pmu, %struct.xgene_pmu* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 4
  br label %99

82:                                               ; preds = %60
  %83 = load %struct.xgene_pmu*, %struct.xgene_pmu** %4, align 8
  %84 = getelementptr inbounds %struct.xgene_pmu, %struct.xgene_pmu* %83, i32 0, i32 1
  store i32 1, i32* %84, align 4
  %85 = load %struct.regmap*, %struct.regmap** %7, align 8
  %86 = load i32, i32* @MCBADDRMR, align 4
  %87 = call i64 @regmap_read(%struct.regmap* %85, i32 %86, i32* %10)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %82
  store i32 0, i32* %3, align 4
  br label %100

90:                                               ; preds = %82
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* @MCBADDRMR_DUALMCU_MODE_MASK, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  %95 = zext i1 %94 to i64
  %96 = select i1 %94, i32 3, i32 1
  %97 = load %struct.xgene_pmu*, %struct.xgene_pmu** %4, align 8
  %98 = getelementptr inbounds %struct.xgene_pmu, %struct.xgene_pmu* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 4
  br label %99

99:                                               ; preds = %90, %73
  store i32 0, i32* %3, align 4
  br label %100

100:                                              ; preds = %99, %89, %72, %57, %44, %32, %20
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local %struct.regmap* @syscon_regmap_lookup_by_phandle(%struct.device_node*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @dev_err(%struct.TYPE_2__*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local i64 @regmap_read(%struct.regmap*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
