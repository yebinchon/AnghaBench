; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/rockchip/extr_pm_domains.c_rockchip_pmu_restore_qos.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/rockchip/extr_pm_domains.c_rockchip_pmu_restore_qos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rockchip_pm_domain = type { i32, i32**, i32* }

@QOS_PRIORITY = common dso_local global i32 0, align 4
@QOS_MODE = common dso_local global i32 0, align 4
@QOS_BANDWIDTH = common dso_local global i32 0, align 4
@QOS_SATURATION = common dso_local global i32 0, align 4
@QOS_EXTCONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rockchip_pm_domain*)* @rockchip_pmu_restore_qos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_pmu_restore_qos(%struct.rockchip_pm_domain* %0) #0 {
  %2 = alloca %struct.rockchip_pm_domain*, align 8
  %3 = alloca i32, align 4
  store %struct.rockchip_pm_domain* %0, %struct.rockchip_pm_domain** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %101, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.rockchip_pm_domain*, %struct.rockchip_pm_domain** %2, align 8
  %7 = getelementptr inbounds %struct.rockchip_pm_domain, %struct.rockchip_pm_domain* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp slt i32 %5, %8
  br i1 %9, label %10, label %104

10:                                               ; preds = %4
  %11 = load %struct.rockchip_pm_domain*, %struct.rockchip_pm_domain** %2, align 8
  %12 = getelementptr inbounds %struct.rockchip_pm_domain, %struct.rockchip_pm_domain* %11, i32 0, i32 2
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @QOS_PRIORITY, align 4
  %19 = load %struct.rockchip_pm_domain*, %struct.rockchip_pm_domain** %2, align 8
  %20 = getelementptr inbounds %struct.rockchip_pm_domain, %struct.rockchip_pm_domain* %19, i32 0, i32 1
  %21 = load i32**, i32*** %20, align 8
  %22 = getelementptr inbounds i32*, i32** %21, i64 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @regmap_write(i32 %17, i32 %18, i32 %27)
  %29 = load %struct.rockchip_pm_domain*, %struct.rockchip_pm_domain** %2, align 8
  %30 = getelementptr inbounds %struct.rockchip_pm_domain, %struct.rockchip_pm_domain* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @QOS_MODE, align 4
  %37 = load %struct.rockchip_pm_domain*, %struct.rockchip_pm_domain** %2, align 8
  %38 = getelementptr inbounds %struct.rockchip_pm_domain, %struct.rockchip_pm_domain* %37, i32 0, i32 1
  %39 = load i32**, i32*** %38, align 8
  %40 = getelementptr inbounds i32*, i32** %39, i64 1
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @regmap_write(i32 %35, i32 %36, i32 %45)
  %47 = load %struct.rockchip_pm_domain*, %struct.rockchip_pm_domain** %2, align 8
  %48 = getelementptr inbounds %struct.rockchip_pm_domain, %struct.rockchip_pm_domain* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @QOS_BANDWIDTH, align 4
  %55 = load %struct.rockchip_pm_domain*, %struct.rockchip_pm_domain** %2, align 8
  %56 = getelementptr inbounds %struct.rockchip_pm_domain, %struct.rockchip_pm_domain* %55, i32 0, i32 1
  %57 = load i32**, i32*** %56, align 8
  %58 = getelementptr inbounds i32*, i32** %57, i64 2
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %3, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @regmap_write(i32 %53, i32 %54, i32 %63)
  %65 = load %struct.rockchip_pm_domain*, %struct.rockchip_pm_domain** %2, align 8
  %66 = getelementptr inbounds %struct.rockchip_pm_domain, %struct.rockchip_pm_domain* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %3, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @QOS_SATURATION, align 4
  %73 = load %struct.rockchip_pm_domain*, %struct.rockchip_pm_domain** %2, align 8
  %74 = getelementptr inbounds %struct.rockchip_pm_domain, %struct.rockchip_pm_domain* %73, i32 0, i32 1
  %75 = load i32**, i32*** %74, align 8
  %76 = getelementptr inbounds i32*, i32** %75, i64 3
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %3, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @regmap_write(i32 %71, i32 %72, i32 %81)
  %83 = load %struct.rockchip_pm_domain*, %struct.rockchip_pm_domain** %2, align 8
  %84 = getelementptr inbounds %struct.rockchip_pm_domain, %struct.rockchip_pm_domain* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %3, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @QOS_EXTCONTROL, align 4
  %91 = load %struct.rockchip_pm_domain*, %struct.rockchip_pm_domain** %2, align 8
  %92 = getelementptr inbounds %struct.rockchip_pm_domain, %struct.rockchip_pm_domain* %91, i32 0, i32 1
  %93 = load i32**, i32*** %92, align 8
  %94 = getelementptr inbounds i32*, i32** %93, i64 4
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %3, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @regmap_write(i32 %89, i32 %90, i32 %99)
  br label %101

101:                                              ; preds = %10
  %102 = load i32, i32* %3, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %3, align 4
  br label %4

104:                                              ; preds = %4
  ret i32 0
}

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
