; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/rockchip/extr_pm_domains.c_rockchip_do_pmu_set_power_domain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/rockchip/extr_pm_domains.c_rockchip_do_pmu_set_power_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rockchip_pm_domain = type { %struct.TYPE_4__*, %struct.generic_pm_domain, %struct.rockchip_pmu* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.generic_pm_domain = type { i32 }
%struct.rockchip_pmu = type { i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@sy = common dso_local global i32 0, align 4
@rockchip_pmu_domain_is_on = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"failed to set domain '%s', val=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rockchip_pm_domain*, i32)* @rockchip_do_pmu_set_power_domain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rockchip_do_pmu_set_power_domain(%struct.rockchip_pm_domain* %0, i32 %1) #0 {
  %3 = alloca %struct.rockchip_pm_domain*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rockchip_pmu*, align 8
  %6 = alloca %struct.generic_pm_domain*, align 8
  %7 = alloca i32, align 4
  store %struct.rockchip_pm_domain* %0, %struct.rockchip_pm_domain** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.rockchip_pm_domain*, %struct.rockchip_pm_domain** %3, align 8
  %9 = getelementptr inbounds %struct.rockchip_pm_domain, %struct.rockchip_pm_domain* %8, i32 0, i32 2
  %10 = load %struct.rockchip_pmu*, %struct.rockchip_pmu** %9, align 8
  store %struct.rockchip_pmu* %10, %struct.rockchip_pmu** %5, align 8
  %11 = load %struct.rockchip_pm_domain*, %struct.rockchip_pm_domain** %3, align 8
  %12 = getelementptr inbounds %struct.rockchip_pm_domain, %struct.rockchip_pm_domain* %11, i32 0, i32 1
  store %struct.generic_pm_domain* %12, %struct.generic_pm_domain** %6, align 8
  %13 = load %struct.rockchip_pm_domain*, %struct.rockchip_pm_domain** %3, align 8
  %14 = getelementptr inbounds %struct.rockchip_pm_domain, %struct.rockchip_pm_domain* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %100

20:                                               ; preds = %2
  %21 = load %struct.rockchip_pm_domain*, %struct.rockchip_pm_domain** %3, align 8
  %22 = getelementptr inbounds %struct.rockchip_pm_domain, %struct.rockchip_pm_domain* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %59

27:                                               ; preds = %20
  %28 = load %struct.rockchip_pmu*, %struct.rockchip_pmu** %5, align 8
  %29 = getelementptr inbounds %struct.rockchip_pmu, %struct.rockchip_pmu* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.rockchip_pmu*, %struct.rockchip_pmu** %5, align 8
  %32 = getelementptr inbounds %struct.rockchip_pmu, %struct.rockchip_pmu* %31, i32 0, i32 1
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %27
  %39 = load %struct.rockchip_pm_domain*, %struct.rockchip_pm_domain** %3, align 8
  %40 = getelementptr inbounds %struct.rockchip_pm_domain, %struct.rockchip_pm_domain* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  br label %56

44:                                               ; preds = %27
  %45 = load %struct.rockchip_pm_domain*, %struct.rockchip_pm_domain** %3, align 8
  %46 = getelementptr inbounds %struct.rockchip_pm_domain, %struct.rockchip_pm_domain* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.rockchip_pm_domain*, %struct.rockchip_pm_domain** %3, align 8
  %51 = getelementptr inbounds %struct.rockchip_pm_domain, %struct.rockchip_pm_domain* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %49, %54
  br label %56

56:                                               ; preds = %44, %38
  %57 = phi i32 [ %43, %38 ], [ %55, %44 ]
  %58 = call i32 @regmap_write(i32 %30, i32 %35, i32 %57)
  br label %78

59:                                               ; preds = %20
  %60 = load %struct.rockchip_pmu*, %struct.rockchip_pmu** %5, align 8
  %61 = getelementptr inbounds %struct.rockchip_pmu, %struct.rockchip_pmu* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.rockchip_pmu*, %struct.rockchip_pmu** %5, align 8
  %64 = getelementptr inbounds %struct.rockchip_pmu, %struct.rockchip_pmu* %63, i32 0, i32 1
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.rockchip_pm_domain*, %struct.rockchip_pm_domain** %3, align 8
  %69 = getelementptr inbounds %struct.rockchip_pm_domain, %struct.rockchip_pm_domain* %68, i32 0, i32 0
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %4, align 4
  %74 = icmp ne i32 %73, 0
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i32 0, i32 -1
  %77 = call i32 @regmap_update_bits(i32 %62, i32 %67, i32 %72, i32 %76)
  br label %78

78:                                               ; preds = %59, %56
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* @sy, align 4
  %81 = call i32 @dsb(i32 %80)
  %82 = load i32, i32* @rockchip_pmu_domain_is_on, align 4
  %83 = load %struct.rockchip_pm_domain*, %struct.rockchip_pm_domain** %3, align 8
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* %4, align 4
  %87 = icmp eq i32 %85, %86
  %88 = zext i1 %87 to i32
  %89 = call i64 @readx_poll_timeout_atomic(i32 %82, %struct.rockchip_pm_domain* %83, i32 %84, i32 %88, i32 0, i32 10000)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %100

91:                                               ; preds = %79
  %92 = load %struct.rockchip_pmu*, %struct.rockchip_pmu** %5, align 8
  %93 = getelementptr inbounds %struct.rockchip_pmu, %struct.rockchip_pmu* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %6, align 8
  %96 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %7, align 4
  %99 = call i32 @dev_err(i32 %94, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %97, i32 %98)
  br label %100

100:                                              ; preds = %19, %91, %79
  ret void
}

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dsb(i32) #1

declare dso_local i64 @readx_poll_timeout_atomic(i32, %struct.rockchip_pm_domain*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
