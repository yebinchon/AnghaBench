; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/tegra/extr_pmc.c_tegra_pmc_parse_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/tegra/extr_pmc.c_tegra_pmc_parse_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_pmc = type { i64, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8* }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"nvidia,suspend-mode\00", align 1
@TEGRA_SUSPEND_LP0 = common dso_local global i64 0, align 8
@TEGRA_SUSPEND_LP1 = common dso_local global i8* null, align 8
@TEGRA_SUSPEND_LP2 = common dso_local global i64 0, align 8
@TEGRA_SUSPEND_NONE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"nvidia,cpu-pwr-good-time\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"nvidia,cpu-pwr-off-time\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"nvidia,core-pwr-good-time\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"nvidia,core-pwr-off-time\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"nvidia,core-power-req-active-high\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"nvidia,sys-clock-req-active-high\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"nvidia,combined-power-req\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"nvidia,cpu-pwr-good-en\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"nvidia,lp0-vec\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_pmc*, %struct.device_node*)* @tegra_pmc_parse_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_pmc_parse_dt(%struct.tegra_pmc* %0, %struct.device_node* %1) #0 {
  %3 = alloca %struct.tegra_pmc*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [2 x i32], align 4
  store %struct.tegra_pmc* %0, %struct.tegra_pmc** %3, align 8
  store %struct.device_node* %1, %struct.device_node** %4, align 8
  %7 = load %struct.device_node*, %struct.device_node** %4, align 8
  %8 = call i64 @of_property_read_u32(%struct.device_node* %7, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32* %5)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %32

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %26 [
    i32 0, label %13
    i32 1, label %17
    i32 2, label %22
  ]

13:                                               ; preds = %11
  %14 = load i64, i64* @TEGRA_SUSPEND_LP0, align 8
  %15 = load %struct.tegra_pmc*, %struct.tegra_pmc** %3, align 8
  %16 = getelementptr inbounds %struct.tegra_pmc, %struct.tegra_pmc* %15, i32 0, i32 0
  store i64 %14, i64* %16, align 8
  br label %31

17:                                               ; preds = %11
  %18 = load i8*, i8** @TEGRA_SUSPEND_LP1, align 8
  %19 = ptrtoint i8* %18 to i64
  %20 = load %struct.tegra_pmc*, %struct.tegra_pmc** %3, align 8
  %21 = getelementptr inbounds %struct.tegra_pmc, %struct.tegra_pmc* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  br label %31

22:                                               ; preds = %11
  %23 = load i64, i64* @TEGRA_SUSPEND_LP2, align 8
  %24 = load %struct.tegra_pmc*, %struct.tegra_pmc** %3, align 8
  %25 = getelementptr inbounds %struct.tegra_pmc, %struct.tegra_pmc* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  br label %31

26:                                               ; preds = %11
  %27 = load i8*, i8** @TEGRA_SUSPEND_NONE, align 8
  %28 = ptrtoint i8* %27 to i64
  %29 = load %struct.tegra_pmc*, %struct.tegra_pmc** %3, align 8
  %30 = getelementptr inbounds %struct.tegra_pmc, %struct.tegra_pmc* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  br label %31

31:                                               ; preds = %26, %22, %17, %13
  br label %32

32:                                               ; preds = %31, %10
  %33 = load %struct.tegra_pmc*, %struct.tegra_pmc** %3, align 8
  %34 = getelementptr inbounds %struct.tegra_pmc, %struct.tegra_pmc* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i64 @tegra_pm_validate_suspend_mode(i64 %35)
  %37 = load %struct.tegra_pmc*, %struct.tegra_pmc** %3, align 8
  %38 = getelementptr inbounds %struct.tegra_pmc, %struct.tegra_pmc* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = load %struct.device_node*, %struct.device_node** %4, align 8
  %40 = call i64 @of_property_read_u32(%struct.device_node* %39, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32* %5)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %32
  %43 = load i8*, i8** @TEGRA_SUSPEND_NONE, align 8
  %44 = ptrtoint i8* %43 to i64
  %45 = load %struct.tegra_pmc*, %struct.tegra_pmc** %3, align 8
  %46 = getelementptr inbounds %struct.tegra_pmc, %struct.tegra_pmc* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  br label %47

47:                                               ; preds = %42, %32
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.tegra_pmc*, %struct.tegra_pmc** %3, align 8
  %50 = getelementptr inbounds %struct.tegra_pmc, %struct.tegra_pmc* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 8
  %51 = load %struct.device_node*, %struct.device_node** %4, align 8
  %52 = call i64 @of_property_read_u32(%struct.device_node* %51, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32* %5)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %47
  %55 = load i8*, i8** @TEGRA_SUSPEND_NONE, align 8
  %56 = ptrtoint i8* %55 to i64
  %57 = load %struct.tegra_pmc*, %struct.tegra_pmc** %3, align 8
  %58 = getelementptr inbounds %struct.tegra_pmc, %struct.tegra_pmc* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  br label %59

59:                                               ; preds = %54, %47
  %60 = load i32, i32* %5, align 4
  %61 = load %struct.tegra_pmc*, %struct.tegra_pmc** %3, align 8
  %62 = getelementptr inbounds %struct.tegra_pmc, %struct.tegra_pmc* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 4
  %63 = load %struct.device_node*, %struct.device_node** %4, align 8
  %64 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %65 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %66 = call i32 @ARRAY_SIZE(i32* %65)
  %67 = call i64 @of_property_read_u32_array(%struct.device_node* %63, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32* %64, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %59
  %70 = load i8*, i8** @TEGRA_SUSPEND_NONE, align 8
  %71 = ptrtoint i8* %70 to i64
  %72 = load %struct.tegra_pmc*, %struct.tegra_pmc** %3, align 8
  %73 = getelementptr inbounds %struct.tegra_pmc, %struct.tegra_pmc* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  br label %74

74:                                               ; preds = %69, %59
  %75 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.tegra_pmc*, %struct.tegra_pmc** %3, align 8
  %78 = getelementptr inbounds %struct.tegra_pmc, %struct.tegra_pmc* %77, i32 0, i32 3
  store i32 %76, i32* %78, align 8
  %79 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.tegra_pmc*, %struct.tegra_pmc** %3, align 8
  %82 = getelementptr inbounds %struct.tegra_pmc, %struct.tegra_pmc* %81, i32 0, i32 4
  store i32 %80, i32* %82, align 4
  %83 = load %struct.device_node*, %struct.device_node** %4, align 8
  %84 = call i64 @of_property_read_u32(%struct.device_node* %83, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32* %5)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %74
  %87 = load i8*, i8** @TEGRA_SUSPEND_NONE, align 8
  %88 = ptrtoint i8* %87 to i64
  %89 = load %struct.tegra_pmc*, %struct.tegra_pmc** %3, align 8
  %90 = getelementptr inbounds %struct.tegra_pmc, %struct.tegra_pmc* %89, i32 0, i32 0
  store i64 %88, i64* %90, align 8
  br label %91

91:                                               ; preds = %86, %74
  %92 = load i32, i32* %5, align 4
  %93 = load %struct.tegra_pmc*, %struct.tegra_pmc** %3, align 8
  %94 = getelementptr inbounds %struct.tegra_pmc, %struct.tegra_pmc* %93, i32 0, i32 5
  store i32 %92, i32* %94, align 8
  %95 = load %struct.device_node*, %struct.device_node** %4, align 8
  %96 = call i8* @of_property_read_bool(%struct.device_node* %95, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  %97 = load %struct.tegra_pmc*, %struct.tegra_pmc** %3, align 8
  %98 = getelementptr inbounds %struct.tegra_pmc, %struct.tegra_pmc* %97, i32 0, i32 11
  store i8* %96, i8** %98, align 8
  %99 = load %struct.device_node*, %struct.device_node** %4, align 8
  %100 = call i8* @of_property_read_bool(%struct.device_node* %99, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  %101 = load %struct.tegra_pmc*, %struct.tegra_pmc** %3, align 8
  %102 = getelementptr inbounds %struct.tegra_pmc, %struct.tegra_pmc* %101, i32 0, i32 10
  store i8* %100, i8** %102, align 8
  %103 = load %struct.device_node*, %struct.device_node** %4, align 8
  %104 = call i8* @of_property_read_bool(%struct.device_node* %103, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  %105 = load %struct.tegra_pmc*, %struct.tegra_pmc** %3, align 8
  %106 = getelementptr inbounds %struct.tegra_pmc, %struct.tegra_pmc* %105, i32 0, i32 9
  store i8* %104, i8** %106, align 8
  %107 = load %struct.device_node*, %struct.device_node** %4, align 8
  %108 = call i8* @of_property_read_bool(%struct.device_node* %107, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0))
  %109 = load %struct.tegra_pmc*, %struct.tegra_pmc** %3, align 8
  %110 = getelementptr inbounds %struct.tegra_pmc, %struct.tegra_pmc* %109, i32 0, i32 8
  store i8* %108, i8** %110, align 8
  %111 = load %struct.device_node*, %struct.device_node** %4, align 8
  %112 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %113 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %114 = call i32 @ARRAY_SIZE(i32* %113)
  %115 = call i64 @of_property_read_u32_array(%struct.device_node* %111, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i32* %112, i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %129

117:                                              ; preds = %91
  %118 = load %struct.tegra_pmc*, %struct.tegra_pmc** %3, align 8
  %119 = getelementptr inbounds %struct.tegra_pmc, %struct.tegra_pmc* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @TEGRA_SUSPEND_LP0, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %128

123:                                              ; preds = %117
  %124 = load i8*, i8** @TEGRA_SUSPEND_LP1, align 8
  %125 = ptrtoint i8* %124 to i64
  %126 = load %struct.tegra_pmc*, %struct.tegra_pmc** %3, align 8
  %127 = getelementptr inbounds %struct.tegra_pmc, %struct.tegra_pmc* %126, i32 0, i32 0
  store i64 %125, i64* %127, align 8
  br label %128

128:                                              ; preds = %123, %117
  br label %129

129:                                              ; preds = %128, %91
  %130 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.tegra_pmc*, %struct.tegra_pmc** %3, align 8
  %133 = getelementptr inbounds %struct.tegra_pmc, %struct.tegra_pmc* %132, i32 0, i32 6
  store i32 %131, i32* %133, align 4
  %134 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.tegra_pmc*, %struct.tegra_pmc** %3, align 8
  %137 = getelementptr inbounds %struct.tegra_pmc, %struct.tegra_pmc* %136, i32 0, i32 7
  store i32 %135, i32* %137, align 8
  ret i32 0
}

declare dso_local i64 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i64 @tegra_pm_validate_suspend_mode(i64) #1

declare dso_local i64 @of_property_read_u32_array(%struct.device_node*, i8*, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i8* @of_property_read_bool(%struct.device_node*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
