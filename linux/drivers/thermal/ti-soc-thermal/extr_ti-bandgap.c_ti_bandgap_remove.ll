; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/ti-soc-thermal/extr_ti-bandgap.c_ti_bandgap_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/ti-soc-thermal/extr_ti-bandgap.c_ti_bandgap_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.ti_bandgap = type { i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 (%struct.ti_bandgap*, i32)*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.ti_bandgap*, i32)* }

@CLK_CTRL = common dso_local global i32 0, align 4
@TALERT = common dso_local global i32 0, align 4
@TSHUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ti_bandgap_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_bandgap_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.ti_bandgap*, align 8
  %4 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.ti_bandgap* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.ti_bandgap* %6, %struct.ti_bandgap** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %58, %1
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.ti_bandgap*, %struct.ti_bandgap** %3, align 8
  %10 = getelementptr inbounds %struct.ti_bandgap, %struct.ti_bandgap* %9, i32 0, i32 4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %8, %13
  br i1 %14, label %15, label %61

15:                                               ; preds = %7
  %16 = load %struct.ti_bandgap*, %struct.ti_bandgap** %3, align 8
  %17 = getelementptr inbounds %struct.ti_bandgap, %struct.ti_bandgap* %16, i32 0, i32 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32 (%struct.ti_bandgap*, i32)*, i32 (%struct.ti_bandgap*, i32)** %24, align 8
  %26 = icmp ne i32 (%struct.ti_bandgap*, i32)* %25, null
  br i1 %26, label %27, label %41

27:                                               ; preds = %15
  %28 = load %struct.ti_bandgap*, %struct.ti_bandgap** %3, align 8
  %29 = getelementptr inbounds %struct.ti_bandgap, %struct.ti_bandgap* %28, i32 0, i32 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32 (%struct.ti_bandgap*, i32)*, i32 (%struct.ti_bandgap*, i32)** %36, align 8
  %38 = load %struct.ti_bandgap*, %struct.ti_bandgap** %3, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i32 %37(%struct.ti_bandgap* %38, i32 %39)
  br label %41

41:                                               ; preds = %27, %15
  %42 = load %struct.ti_bandgap*, %struct.ti_bandgap** %3, align 8
  %43 = getelementptr inbounds %struct.ti_bandgap, %struct.ti_bandgap* %42, i32 0, i32 4
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i32 (%struct.ti_bandgap*, i32)*, i32 (%struct.ti_bandgap*, i32)** %45, align 8
  %47 = icmp ne i32 (%struct.ti_bandgap*, i32)* %46, null
  br i1 %47, label %48, label %57

48:                                               ; preds = %41
  %49 = load %struct.ti_bandgap*, %struct.ti_bandgap** %3, align 8
  %50 = getelementptr inbounds %struct.ti_bandgap, %struct.ti_bandgap* %49, i32 0, i32 4
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i32 (%struct.ti_bandgap*, i32)*, i32 (%struct.ti_bandgap*, i32)** %52, align 8
  %54 = load %struct.ti_bandgap*, %struct.ti_bandgap** %3, align 8
  %55 = load i32, i32* %4, align 4
  %56 = call i32 %53(%struct.ti_bandgap* %54, i32 %55)
  br label %57

57:                                               ; preds = %48, %41
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %4, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %4, align 4
  br label %7

61:                                               ; preds = %7
  %62 = load %struct.ti_bandgap*, %struct.ti_bandgap** %3, align 8
  %63 = call i32 @ti_bandgap_power(%struct.ti_bandgap* %62, i32 0)
  %64 = load %struct.ti_bandgap*, %struct.ti_bandgap** %3, align 8
  %65 = load i32, i32* @CLK_CTRL, align 4
  %66 = call i64 @TI_BANDGAP_HAS(%struct.ti_bandgap* %64, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %61
  %69 = load %struct.ti_bandgap*, %struct.ti_bandgap** %3, align 8
  %70 = getelementptr inbounds %struct.ti_bandgap, %struct.ti_bandgap* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @clk_disable_unprepare(i32 %71)
  br label %73

73:                                               ; preds = %68, %61
  %74 = load %struct.ti_bandgap*, %struct.ti_bandgap** %3, align 8
  %75 = getelementptr inbounds %struct.ti_bandgap, %struct.ti_bandgap* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @clk_put(i32 %76)
  %78 = load %struct.ti_bandgap*, %struct.ti_bandgap** %3, align 8
  %79 = getelementptr inbounds %struct.ti_bandgap, %struct.ti_bandgap* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @clk_put(i32 %80)
  %82 = load %struct.ti_bandgap*, %struct.ti_bandgap** %3, align 8
  %83 = load i32, i32* @TALERT, align 4
  %84 = call i64 @TI_BANDGAP_HAS(%struct.ti_bandgap* %82, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %73
  %87 = load %struct.ti_bandgap*, %struct.ti_bandgap** %3, align 8
  %88 = getelementptr inbounds %struct.ti_bandgap, %struct.ti_bandgap* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.ti_bandgap*, %struct.ti_bandgap** %3, align 8
  %91 = call i32 @free_irq(i32 %89, %struct.ti_bandgap* %90)
  br label %92

92:                                               ; preds = %86, %73
  %93 = load %struct.ti_bandgap*, %struct.ti_bandgap** %3, align 8
  %94 = load i32, i32* @TSHUT, align 4
  %95 = call i64 @TI_BANDGAP_HAS(%struct.ti_bandgap* %93, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %107

97:                                               ; preds = %92
  %98 = load %struct.ti_bandgap*, %struct.ti_bandgap** %3, align 8
  %99 = getelementptr inbounds %struct.ti_bandgap, %struct.ti_bandgap* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @gpio_to_irq(i32 %100)
  %102 = call i32 @free_irq(i32 %101, %struct.ti_bandgap* null)
  %103 = load %struct.ti_bandgap*, %struct.ti_bandgap** %3, align 8
  %104 = getelementptr inbounds %struct.ti_bandgap, %struct.ti_bandgap* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @gpio_free(i32 %105)
  br label %107

107:                                              ; preds = %97, %92
  ret i32 0
}

declare dso_local %struct.ti_bandgap* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @ti_bandgap_power(%struct.ti_bandgap*, i32) #1

declare dso_local i64 @TI_BANDGAP_HAS(%struct.ti_bandgap*, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @clk_put(i32) #1

declare dso_local i32 @free_irq(i32, %struct.ti_bandgap*) #1

declare dso_local i32 @gpio_to_irq(i32) #1

declare dso_local i32 @gpio_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
