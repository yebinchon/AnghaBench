; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_abx500_chargalg.c_abx500_chargalg_check_charger_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_abx500_chargalg.c_abx500_chargalg_check_charger_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.abx500_chargalg = type { i32, %struct.TYPE_12__*, %struct.TYPE_13__*, %struct.TYPE_9__, %struct.TYPE_14__* }
%struct.TYPE_12__ = type { i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_13__*, i32, i32)* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_14__*, i32, i32)* }

@USB_CHG = common dso_local global i32 0, align 4
@AC_CHG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.abx500_chargalg*)* @abx500_chargalg_check_charger_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @abx500_chargalg_check_charger_enable(%struct.abx500_chargalg* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.abx500_chargalg*, align 8
  store %struct.abx500_chargalg* %0, %struct.abx500_chargalg** %3, align 8
  %4 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %3, align 8
  %5 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  switch i32 %6, label %8 [
    i32 128, label %7
    i32 130, label %7
    i32 129, label %7
  ]

7:                                                ; preds = %1, %1, %1
  br label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %108

9:                                                ; preds = %7
  %10 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %3, align 8
  %11 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @USB_CHG, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %54

17:                                               ; preds = %9
  %18 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %3, align 8
  %19 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %18, i32 0, i32 4
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32 (%struct.TYPE_14__*, i32, i32)*, i32 (%struct.TYPE_14__*, i32, i32)** %22, align 8
  %24 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %3, align 8
  %25 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %24, i32 0, i32 4
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %25, align 8
  %27 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %3, align 8
  %28 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %27, i32 0, i32 1
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  %32 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %3, align 8
  %33 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %32, i32 0, i32 1
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %3, align 8
  %41 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %40, i32 0, i32 1
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %43, align 8
  %45 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %3, align 8
  %46 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %45, i32 0, i32 1
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 %23(%struct.TYPE_14__* %26, i32 %39, i32 %52)
  store i32 %53, i32* %2, align 4
  br label %108

54:                                               ; preds = %9
  %55 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %3, align 8
  %56 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @AC_CHG, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %106

62:                                               ; preds = %54
  %63 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %3, align 8
  %64 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %63, i32 0, i32 2
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %106, label %69

69:                                               ; preds = %62
  %70 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %3, align 8
  %71 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %70, i32 0, i32 2
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load i32 (%struct.TYPE_13__*, i32, i32)*, i32 (%struct.TYPE_13__*, i32, i32)** %74, align 8
  %76 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %3, align 8
  %77 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %76, i32 0, i32 2
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %77, align 8
  %79 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %3, align 8
  %80 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %79, i32 0, i32 1
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %82, align 8
  %84 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %3, align 8
  %85 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %84, i32 0, i32 1
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %3, align 8
  %93 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %92, i32 0, i32 1
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %95, align 8
  %97 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %3, align 8
  %98 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %97, i32 0, i32 1
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 %75(%struct.TYPE_13__* %78, i32 %91, i32 %104)
  store i32 %105, i32* %2, align 4
  br label %108

106:                                              ; preds = %62, %54
  br label %107

107:                                              ; preds = %106
  store i32 0, i32* %2, align 4
  br label %108

108:                                              ; preds = %107, %69, %17, %8
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
