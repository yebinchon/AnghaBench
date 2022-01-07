; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/rockchip/extr_pm_domains.c_rockchip_pmu_set_idle_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/rockchip/extr_pm_domains.c_rockchip_pmu_set_idle_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rockchip_pm_domain = type { i32, %struct.rockchip_domain_info*, i32, %struct.rockchip_pm_domain*, %struct.generic_pm_domain }
%struct.rockchip_domain_info = type { i32, i32, i32, i32 }
%struct.generic_pm_domain = type { i32 }
%struct.rockchip_pmu = type { i32, %struct.rockchip_domain_info*, i32, %struct.rockchip_pmu*, %struct.generic_pm_domain }

@sy = common dso_local global i32 0, align 4
@rockchip_pmu_read_ack = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"failed to get ack on domain '%s', val=0x%x\0A\00", align 1
@rockchip_pmu_domain_is_idle = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"failed to set idle on domain '%s', val=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rockchip_pm_domain*, i32)* @rockchip_pmu_set_idle_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_pmu_set_idle_request(%struct.rockchip_pm_domain* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rockchip_pm_domain*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rockchip_domain_info*, align 8
  %7 = alloca %struct.generic_pm_domain*, align 8
  %8 = alloca %struct.rockchip_pmu*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.rockchip_pm_domain* %0, %struct.rockchip_pm_domain** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.rockchip_pm_domain*, %struct.rockchip_pm_domain** %4, align 8
  %14 = getelementptr inbounds %struct.rockchip_pm_domain, %struct.rockchip_pm_domain* %13, i32 0, i32 1
  %15 = load %struct.rockchip_domain_info*, %struct.rockchip_domain_info** %14, align 8
  store %struct.rockchip_domain_info* %15, %struct.rockchip_domain_info** %6, align 8
  %16 = load %struct.rockchip_pm_domain*, %struct.rockchip_pm_domain** %4, align 8
  %17 = getelementptr inbounds %struct.rockchip_pm_domain, %struct.rockchip_pm_domain* %16, i32 0, i32 4
  store %struct.generic_pm_domain* %17, %struct.generic_pm_domain** %7, align 8
  %18 = load %struct.rockchip_pm_domain*, %struct.rockchip_pm_domain** %4, align 8
  %19 = getelementptr inbounds %struct.rockchip_pm_domain, %struct.rockchip_pm_domain* %18, i32 0, i32 3
  %20 = load %struct.rockchip_pm_domain*, %struct.rockchip_pm_domain** %19, align 8
  %21 = bitcast %struct.rockchip_pm_domain* %20 to %struct.rockchip_pmu*
  store %struct.rockchip_pmu* %21, %struct.rockchip_pmu** %8, align 8
  %22 = load %struct.rockchip_domain_info*, %struct.rockchip_domain_info** %6, align 8
  %23 = getelementptr inbounds %struct.rockchip_domain_info, %struct.rockchip_domain_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %135

27:                                               ; preds = %2
  %28 = load %struct.rockchip_domain_info*, %struct.rockchip_domain_info** %6, align 8
  %29 = getelementptr inbounds %struct.rockchip_domain_info, %struct.rockchip_domain_info* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %58

32:                                               ; preds = %27
  %33 = load %struct.rockchip_pmu*, %struct.rockchip_pmu** %8, align 8
  %34 = getelementptr inbounds %struct.rockchip_pmu, %struct.rockchip_pmu* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.rockchip_pmu*, %struct.rockchip_pmu** %8, align 8
  %37 = getelementptr inbounds %struct.rockchip_pmu, %struct.rockchip_pmu* %36, i32 0, i32 1
  %38 = load %struct.rockchip_domain_info*, %struct.rockchip_domain_info** %37, align 8
  %39 = getelementptr inbounds %struct.rockchip_domain_info, %struct.rockchip_domain_info* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %32
  %44 = load %struct.rockchip_domain_info*, %struct.rockchip_domain_info** %6, align 8
  %45 = getelementptr inbounds %struct.rockchip_domain_info, %struct.rockchip_domain_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.rockchip_domain_info*, %struct.rockchip_domain_info** %6, align 8
  %48 = getelementptr inbounds %struct.rockchip_domain_info, %struct.rockchip_domain_info* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %46, %49
  br label %55

51:                                               ; preds = %32
  %52 = load %struct.rockchip_domain_info*, %struct.rockchip_domain_info** %6, align 8
  %53 = getelementptr inbounds %struct.rockchip_domain_info, %struct.rockchip_domain_info* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  br label %55

55:                                               ; preds = %51, %43
  %56 = phi i32 [ %50, %43 ], [ %54, %51 ]
  %57 = call i32 @regmap_write(i32 %35, i32 %40, i32 %56)
  br label %75

58:                                               ; preds = %27
  %59 = load %struct.rockchip_pmu*, %struct.rockchip_pmu** %8, align 8
  %60 = getelementptr inbounds %struct.rockchip_pmu, %struct.rockchip_pmu* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.rockchip_pmu*, %struct.rockchip_pmu** %8, align 8
  %63 = getelementptr inbounds %struct.rockchip_pmu, %struct.rockchip_pmu* %62, i32 0, i32 1
  %64 = load %struct.rockchip_domain_info*, %struct.rockchip_domain_info** %63, align 8
  %65 = getelementptr inbounds %struct.rockchip_domain_info, %struct.rockchip_domain_info* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.rockchip_domain_info*, %struct.rockchip_domain_info** %6, align 8
  %68 = getelementptr inbounds %struct.rockchip_domain_info, %struct.rockchip_domain_info* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %5, align 4
  %71 = icmp ne i32 %70, 0
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i32 -1, i32 0
  %74 = call i32 @regmap_update_bits(i32 %61, i32 %66, i32 %69, i32 %73)
  br label %75

75:                                               ; preds = %58, %55
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* @sy, align 4
  %78 = call i32 @dsb(i32 %77)
  %79 = load i32, i32* %5, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %76
  %82 = load %struct.rockchip_domain_info*, %struct.rockchip_domain_info** %6, align 8
  %83 = getelementptr inbounds %struct.rockchip_domain_info, %struct.rockchip_domain_info* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  br label %86

85:                                               ; preds = %76
  br label %86

86:                                               ; preds = %85, %81
  %87 = phi i32 [ %84, %81 ], [ 0, %85 ]
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* @rockchip_pmu_read_ack, align 4
  %89 = load %struct.rockchip_pmu*, %struct.rockchip_pmu** %8, align 8
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* %10, align 4
  %92 = load %struct.rockchip_domain_info*, %struct.rockchip_domain_info** %6, align 8
  %93 = getelementptr inbounds %struct.rockchip_domain_info, %struct.rockchip_domain_info* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = and i32 %91, %94
  %96 = load i32, i32* %9, align 4
  %97 = icmp eq i32 %95, %96
  %98 = zext i1 %97 to i32
  %99 = call i32 @readx_poll_timeout_atomic(i32 %88, %struct.rockchip_pmu* %89, i32 %90, i32 %98, i32 0, i32 10000)
  store i32 %99, i32* %12, align 4
  %100 = load i32, i32* %12, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %112

102:                                              ; preds = %86
  %103 = load %struct.rockchip_pmu*, %struct.rockchip_pmu** %8, align 8
  %104 = getelementptr inbounds %struct.rockchip_pmu, %struct.rockchip_pmu* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %7, align 8
  %107 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %10, align 4
  %110 = call i32 @dev_err(i32 %105, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %108, i32 %109)
  %111 = load i32, i32* %12, align 4
  store i32 %111, i32* %3, align 4
  br label %135

112:                                              ; preds = %86
  %113 = load i32, i32* @rockchip_pmu_domain_is_idle, align 4
  %114 = load %struct.rockchip_pm_domain*, %struct.rockchip_pm_domain** %4, align 8
  %115 = bitcast %struct.rockchip_pm_domain* %114 to %struct.rockchip_pmu*
  %116 = load i32, i32* %11, align 4
  %117 = load i32, i32* %11, align 4
  %118 = load i32, i32* %5, align 4
  %119 = icmp eq i32 %117, %118
  %120 = zext i1 %119 to i32
  %121 = call i32 @readx_poll_timeout_atomic(i32 %113, %struct.rockchip_pmu* %115, i32 %116, i32 %120, i32 0, i32 10000)
  store i32 %121, i32* %12, align 4
  %122 = load i32, i32* %12, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %134

124:                                              ; preds = %112
  %125 = load %struct.rockchip_pmu*, %struct.rockchip_pmu** %8, align 8
  %126 = getelementptr inbounds %struct.rockchip_pmu, %struct.rockchip_pmu* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %7, align 8
  %129 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %11, align 4
  %132 = call i32 @dev_err(i32 %127, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %130, i32 %131)
  %133 = load i32, i32* %12, align 4
  store i32 %133, i32* %3, align 4
  br label %135

134:                                              ; preds = %112
  store i32 0, i32* %3, align 4
  br label %135

135:                                              ; preds = %134, %124, %102, %26
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dsb(i32) #1

declare dso_local i32 @readx_poll_timeout_atomic(i32, %struct.rockchip_pmu*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
