; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_abx500_chargalg.c_abx500_chargalg_kick_watchdog.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_abx500_chargalg.c_abx500_chargalg_kick_watchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.abx500_chargalg = type { %struct.TYPE_10__*, %struct.TYPE_8__, %struct.TYPE_11__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 (%struct.TYPE_10__*)* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_7__, i64 }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_11__*)* }

@AC_CHG = common dso_local global i32 0, align 4
@USB_CHG = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.abx500_chargalg*)* @abx500_chargalg_kick_watchdog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @abx500_chargalg_kick_watchdog(%struct.abx500_chargalg* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.abx500_chargalg*, align 8
  store %struct.abx500_chargalg* %0, %struct.abx500_chargalg** %3, align 8
  %4 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %3, align 8
  %5 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %4, i32 0, i32 2
  %6 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %7 = icmp ne %struct.TYPE_11__* %6, null
  br i1 %7, label %8, label %66

8:                                                ; preds = %1
  %9 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %3, align 8
  %10 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %9, i32 0, i32 2
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*)** %13, align 8
  %15 = icmp ne i32 (%struct.TYPE_11__*)* %14, null
  br i1 %15, label %16, label %66

16:                                               ; preds = %8
  %17 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %3, align 8
  %18 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @AC_CHG, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %66

24:                                               ; preds = %16
  %25 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %3, align 8
  %26 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %25, i32 0, i32 2
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %55

31:                                               ; preds = %24
  %32 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %3, align 8
  %33 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %32, i32 0, i32 0
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %33, align 8
  %35 = icmp ne %struct.TYPE_10__* %34, null
  br i1 %35, label %36, label %55

36:                                               ; preds = %31
  %37 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %3, align 8
  %38 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %37, i32 0, i32 0
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i32 (%struct.TYPE_10__*)*, i32 (%struct.TYPE_10__*)** %41, align 8
  %43 = icmp ne i32 (%struct.TYPE_10__*)* %42, null
  br i1 %43, label %44, label %55

44:                                               ; preds = %36
  %45 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %3, align 8
  %46 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %45, i32 0, i32 0
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load i32 (%struct.TYPE_10__*)*, i32 (%struct.TYPE_10__*)** %49, align 8
  %51 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %3, align 8
  %52 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %51, i32 0, i32 0
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %52, align 8
  %54 = call i32 %50(%struct.TYPE_10__* %53)
  br label %55

55:                                               ; preds = %44, %36, %31, %24
  %56 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %3, align 8
  %57 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %56, i32 0, i32 2
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*)** %60, align 8
  %62 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %3, align 8
  %63 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %62, i32 0, i32 2
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %63, align 8
  %65 = call i32 %61(%struct.TYPE_11__* %64)
  store i32 %65, i32* %2, align 4
  br label %102

66:                                               ; preds = %16, %8, %1
  %67 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %3, align 8
  %68 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %67, i32 0, i32 0
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %68, align 8
  %70 = icmp ne %struct.TYPE_10__* %69, null
  br i1 %70, label %71, label %98

71:                                               ; preds = %66
  %72 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %3, align 8
  %73 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %72, i32 0, i32 0
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load i32 (%struct.TYPE_10__*)*, i32 (%struct.TYPE_10__*)** %76, align 8
  %78 = icmp ne i32 (%struct.TYPE_10__*)* %77, null
  br i1 %78, label %79, label %98

79:                                               ; preds = %71
  %80 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %3, align 8
  %81 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @USB_CHG, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %98

87:                                               ; preds = %79
  %88 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %3, align 8
  %89 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %88, i32 0, i32 0
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = load i32 (%struct.TYPE_10__*)*, i32 (%struct.TYPE_10__*)** %92, align 8
  %94 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %3, align 8
  %95 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %94, i32 0, i32 0
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %95, align 8
  %97 = call i32 %93(%struct.TYPE_10__* %96)
  store i32 %97, i32* %2, align 4
  br label %102

98:                                               ; preds = %79, %71, %66
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* @ENXIO, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %2, align 4
  br label %102

102:                                              ; preds = %99, %87, %55
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
