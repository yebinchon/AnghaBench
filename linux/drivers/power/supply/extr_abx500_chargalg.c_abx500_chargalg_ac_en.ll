; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_abx500_chargalg.c_abx500_chargalg_ac_en.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_abx500_chargalg.c_abx500_chargalg_ac_en.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.abx500_chargalg = type { %struct.TYPE_6__*, i32, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i64, i64, i64 }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_6__*, i32, i32, i32)* }
%struct.TYPE_4__ = type { i32, i32 }

@abx500_chargalg_ac_en.abx500_chargalg_ex_ac_enable_toggle = internal global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@charger_notifier_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.abx500_chargalg*, i32, i32, i32)* @abx500_chargalg_ac_en to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @abx500_chargalg_ac_en(%struct.abx500_chargalg* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.abx500_chargalg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.abx500_chargalg* %0, %struct.abx500_chargalg** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %6, align 8
  %11 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = icmp ne %struct.TYPE_6__* %12, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %4
  %15 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %6, align 8
  %16 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32 (%struct.TYPE_6__*, i32, i32, i32)*, i32 (%struct.TYPE_6__*, i32, i32, i32)** %19, align 8
  %21 = icmp ne i32 (%struct.TYPE_6__*, i32, i32, i32)* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %14, %4
  %23 = load i32, i32* @ENXIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %97

25:                                               ; preds = %14
  %26 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %6, align 8
  %27 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %26, i32 0, i32 0
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %25
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %6, align 8
  %35 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @min(i32 %33, i64 %38)
  store i32 %39, i32* %8, align 4
  br label %40

40:                                               ; preds = %32, %25
  %41 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %6, align 8
  %42 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %41, i32 0, i32 0
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %40
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %6, align 8
  %50 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %49, i32 0, i32 0
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @min(i32 %48, i64 %53)
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %47, %40
  %56 = load i32, i32* %9, align 4
  %57 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %6, align 8
  %58 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %6, align 8
  %62 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  store i32 %60, i32* %63, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %83

66:                                               ; preds = %55
  %67 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %6, align 8
  %68 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %67, i32 0, i32 0
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %66
  %74 = load i32, i32* @abx500_chargalg_ac_en.abx500_chargalg_ex_ac_enable_toggle, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %83, label %76

76:                                               ; preds = %73
  %77 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %6, align 8
  %78 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @blocking_notifier_call_chain(i32* @charger_notifier_list, i32 0, i32 %79)
  %81 = load i32, i32* @abx500_chargalg_ac_en.abx500_chargalg_ex_ac_enable_toggle, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* @abx500_chargalg_ac_en.abx500_chargalg_ex_ac_enable_toggle, align 4
  br label %83

83:                                               ; preds = %76, %73, %66, %55
  %84 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %6, align 8
  %85 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %84, i32 0, i32 0
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load i32 (%struct.TYPE_6__*, i32, i32, i32)*, i32 (%struct.TYPE_6__*, i32, i32, i32)** %88, align 8
  %90 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %6, align 8
  %91 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %90, i32 0, i32 0
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* %9, align 4
  %96 = call i32 %89(%struct.TYPE_6__* %92, i32 %93, i32 %94, i32 %95)
  store i32 %96, i32* %5, align 4
  br label %97

97:                                               ; preds = %83, %22
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

declare dso_local i32 @min(i32, i64) #1

declare dso_local i32 @blocking_notifier_call_chain(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
