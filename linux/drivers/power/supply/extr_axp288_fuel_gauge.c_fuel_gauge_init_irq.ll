; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_axp288_fuel_gauge.c_fuel_gauge_init_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_axp288_fuel_gauge.c_fuel_gauge_init_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axp288_fg_info = type { i32*, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@AXP288_FG_INTR_NUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"regmap_irq get virq failed for IRQ %d: %d\0A\00", align 1
@fuel_gauge_thread_handler = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@DEV_NAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"request irq failed for IRQ %d: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"HW IRQ %d -> VIRQ %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.axp288_fg_info*)* @fuel_gauge_init_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fuel_gauge_init_irq(%struct.axp288_fg_info* %0) #0 {
  %2 = alloca %struct.axp288_fg_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.axp288_fg_info* %0, %struct.axp288_fg_info** %2, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %105, %1
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @AXP288_FG_INTR_NUM, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %108

10:                                               ; preds = %6
  %11 = load %struct.axp288_fg_info*, %struct.axp288_fg_info** %2, align 8
  %12 = getelementptr inbounds %struct.axp288_fg_info, %struct.axp288_fg_info* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @platform_get_irq(%struct.TYPE_2__* %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.axp288_fg_info*, %struct.axp288_fg_info** %2, align 8
  %17 = getelementptr inbounds %struct.axp288_fg_info, %struct.axp288_fg_info* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @regmap_irq_get_virq(i32 %18, i32 %19)
  %21 = load %struct.axp288_fg_info*, %struct.axp288_fg_info** %2, align 8
  %22 = getelementptr inbounds %struct.axp288_fg_info, %struct.axp288_fg_info* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  store i32 %20, i32* %26, align 4
  %27 = load %struct.axp288_fg_info*, %struct.axp288_fg_info** %2, align 8
  %28 = getelementptr inbounds %struct.axp288_fg_info, %struct.axp288_fg_info* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %55

35:                                               ; preds = %10
  %36 = load %struct.axp288_fg_info*, %struct.axp288_fg_info** %2, align 8
  %37 = getelementptr inbounds %struct.axp288_fg_info, %struct.axp288_fg_info* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.axp288_fg_info*, %struct.axp288_fg_info** %2, align 8
  %42 = getelementptr inbounds %struct.axp288_fg_info, %struct.axp288_fg_info* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @dev_warn(i32* %39, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %47)
  %49 = load %struct.axp288_fg_info*, %struct.axp288_fg_info** %2, align 8
  %50 = getelementptr inbounds %struct.axp288_fg_info, %struct.axp288_fg_info* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  store i32 -1, i32* %54, align 4
  br label %109

55:                                               ; preds = %10
  %56 = load %struct.axp288_fg_info*, %struct.axp288_fg_info** %2, align 8
  %57 = getelementptr inbounds %struct.axp288_fg_info, %struct.axp288_fg_info* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %4, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @fuel_gauge_thread_handler, align 4
  %64 = load i32, i32* @IRQF_ONESHOT, align 4
  %65 = load i32, i32* @DEV_NAME, align 4
  %66 = load %struct.axp288_fg_info*, %struct.axp288_fg_info** %2, align 8
  %67 = call i32 @request_threaded_irq(i32 %62, i32* null, i32 %63, i32 %64, i32 %65, %struct.axp288_fg_info* %66)
  store i32 %67, i32* %3, align 4
  %68 = load i32, i32* %3, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %90

70:                                               ; preds = %55
  %71 = load %struct.axp288_fg_info*, %struct.axp288_fg_info** %2, align 8
  %72 = getelementptr inbounds %struct.axp288_fg_info, %struct.axp288_fg_info* %71, i32 0, i32 1
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %5, align 4
  %76 = load %struct.axp288_fg_info*, %struct.axp288_fg_info** %2, align 8
  %77 = getelementptr inbounds %struct.axp288_fg_info, %struct.axp288_fg_info* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %4, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @dev_warn(i32* %74, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %75, i32 %82)
  %84 = load %struct.axp288_fg_info*, %struct.axp288_fg_info** %2, align 8
  %85 = getelementptr inbounds %struct.axp288_fg_info, %struct.axp288_fg_info* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %4, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  store i32 -1, i32* %89, align 4
  br label %109

90:                                               ; preds = %55
  %91 = load %struct.axp288_fg_info*, %struct.axp288_fg_info** %2, align 8
  %92 = getelementptr inbounds %struct.axp288_fg_info, %struct.axp288_fg_info* %91, i32 0, i32 1
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32, i32* %5, align 4
  %96 = load %struct.axp288_fg_info*, %struct.axp288_fg_info** %2, align 8
  %97 = getelementptr inbounds %struct.axp288_fg_info, %struct.axp288_fg_info* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %4, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @dev_info(i32* %94, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %95, i32 %102)
  br label %104

104:                                              ; preds = %90
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %4, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %4, align 4
  br label %6

108:                                              ; preds = %6
  br label %134

109:                                              ; preds = %70, %35
  br label %110

110:                                              ; preds = %131, %109
  %111 = load i32, i32* %4, align 4
  %112 = icmp sgt i32 %111, 0
  br i1 %112, label %113, label %134

113:                                              ; preds = %110
  %114 = load %struct.axp288_fg_info*, %struct.axp288_fg_info** %2, align 8
  %115 = getelementptr inbounds %struct.axp288_fg_info, %struct.axp288_fg_info* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %4, align 4
  %118 = sub nsw i32 %117, 1
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %116, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.axp288_fg_info*, %struct.axp288_fg_info** %2, align 8
  %123 = call i32 @free_irq(i32 %121, %struct.axp288_fg_info* %122)
  %124 = load %struct.axp288_fg_info*, %struct.axp288_fg_info** %2, align 8
  %125 = getelementptr inbounds %struct.axp288_fg_info, %struct.axp288_fg_info* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %4, align 4
  %128 = sub nsw i32 %127, 1
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %126, i64 %129
  store i32 -1, i32* %130, align 4
  br label %131

131:                                              ; preds = %113
  %132 = load i32, i32* %4, align 4
  %133 = add nsw i32 %132, -1
  store i32 %133, i32* %4, align 4
  br label %110

134:                                              ; preds = %108, %110
  ret void
}

declare dso_local i32 @platform_get_irq(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @regmap_irq_get_virq(i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32, i32) #1

declare dso_local i32 @request_threaded_irq(i32, i32*, i32, i32, i32, %struct.axp288_fg_info*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32) #1

declare dso_local i32 @free_irq(i32, %struct.axp288_fg_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
