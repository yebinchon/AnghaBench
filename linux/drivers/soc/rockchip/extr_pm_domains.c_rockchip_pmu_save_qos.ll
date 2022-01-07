; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/rockchip/extr_pm_domains.c_rockchip_pmu_save_qos.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/rockchip/extr_pm_domains.c_rockchip_pmu_save_qos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rockchip_pm_domain = type { i32, i32**, i32* }

@QOS_PRIORITY = common dso_local global i32 0, align 4
@QOS_MODE = common dso_local global i32 0, align 4
@QOS_BANDWIDTH = common dso_local global i32 0, align 4
@QOS_SATURATION = common dso_local global i32 0, align 4
@QOS_EXTCONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rockchip_pm_domain*)* @rockchip_pmu_save_qos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_pmu_save_qos(%struct.rockchip_pm_domain* %0) #0 {
  %2 = alloca %struct.rockchip_pm_domain*, align 8
  %3 = alloca i32, align 4
  store %struct.rockchip_pm_domain* %0, %struct.rockchip_pm_domain** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %96, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.rockchip_pm_domain*, %struct.rockchip_pm_domain** %2, align 8
  %7 = getelementptr inbounds %struct.rockchip_pm_domain, %struct.rockchip_pm_domain* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp slt i32 %5, %8
  br i1 %9, label %10, label %99

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
  %27 = call i32 @regmap_read(i32 %17, i32 %18, i32* %26)
  %28 = load %struct.rockchip_pm_domain*, %struct.rockchip_pm_domain** %2, align 8
  %29 = getelementptr inbounds %struct.rockchip_pm_domain, %struct.rockchip_pm_domain* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @QOS_MODE, align 4
  %36 = load %struct.rockchip_pm_domain*, %struct.rockchip_pm_domain** %2, align 8
  %37 = getelementptr inbounds %struct.rockchip_pm_domain, %struct.rockchip_pm_domain* %36, i32 0, i32 1
  %38 = load i32**, i32*** %37, align 8
  %39 = getelementptr inbounds i32*, i32** %38, i64 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = call i32 @regmap_read(i32 %34, i32 %35, i32* %43)
  %45 = load %struct.rockchip_pm_domain*, %struct.rockchip_pm_domain** %2, align 8
  %46 = getelementptr inbounds %struct.rockchip_pm_domain, %struct.rockchip_pm_domain* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %3, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @QOS_BANDWIDTH, align 4
  %53 = load %struct.rockchip_pm_domain*, %struct.rockchip_pm_domain** %2, align 8
  %54 = getelementptr inbounds %struct.rockchip_pm_domain, %struct.rockchip_pm_domain* %53, i32 0, i32 1
  %55 = load i32**, i32*** %54, align 8
  %56 = getelementptr inbounds i32*, i32** %55, i64 2
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %3, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = call i32 @regmap_read(i32 %51, i32 %52, i32* %60)
  %62 = load %struct.rockchip_pm_domain*, %struct.rockchip_pm_domain** %2, align 8
  %63 = getelementptr inbounds %struct.rockchip_pm_domain, %struct.rockchip_pm_domain* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %3, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @QOS_SATURATION, align 4
  %70 = load %struct.rockchip_pm_domain*, %struct.rockchip_pm_domain** %2, align 8
  %71 = getelementptr inbounds %struct.rockchip_pm_domain, %struct.rockchip_pm_domain* %70, i32 0, i32 1
  %72 = load i32**, i32*** %71, align 8
  %73 = getelementptr inbounds i32*, i32** %72, i64 3
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %3, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = call i32 @regmap_read(i32 %68, i32 %69, i32* %77)
  %79 = load %struct.rockchip_pm_domain*, %struct.rockchip_pm_domain** %2, align 8
  %80 = getelementptr inbounds %struct.rockchip_pm_domain, %struct.rockchip_pm_domain* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %3, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @QOS_EXTCONTROL, align 4
  %87 = load %struct.rockchip_pm_domain*, %struct.rockchip_pm_domain** %2, align 8
  %88 = getelementptr inbounds %struct.rockchip_pm_domain, %struct.rockchip_pm_domain* %87, i32 0, i32 1
  %89 = load i32**, i32*** %88, align 8
  %90 = getelementptr inbounds i32*, i32** %89, i64 4
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %3, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = call i32 @regmap_read(i32 %85, i32 %86, i32* %94)
  br label %96

96:                                               ; preds = %10
  %97 = load i32, i32* %3, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %3, align 4
  br label %4

99:                                               ; preds = %4
  ret i32 0
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
