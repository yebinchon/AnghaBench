; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_abx500_chargalg.c_abx500_chargalg_update_chg_curr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_abx500_chargalg.c_abx500_chargalg_update_chg_curr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.abx500_chargalg = type { %struct.TYPE_9__*, %struct.TYPE_7__, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_9__*, i32)* }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_10__*, i32)* }

@AC_CHG = common dso_local global i32 0, align 4
@USB_CHG = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.abx500_chargalg*, i32)* @abx500_chargalg_update_chg_curr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @abx500_chargalg_update_chg_curr(%struct.abx500_chargalg* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.abx500_chargalg*, align 8
  %5 = alloca i32, align 4
  store %struct.abx500_chargalg* %0, %struct.abx500_chargalg** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %4, align 8
  %7 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %6, i32 0, i32 2
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %9 = icmp ne %struct.TYPE_10__* %8, null
  br i1 %9, label %10, label %57

10:                                               ; preds = %2
  %11 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %4, align 8
  %12 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %11, i32 0, i32 2
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32 (%struct.TYPE_10__*, i32)*, i32 (%struct.TYPE_10__*, i32)** %15, align 8
  %17 = icmp ne i32 (%struct.TYPE_10__*, i32)* %16, null
  br i1 %17, label %18, label %57

18:                                               ; preds = %10
  %19 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %4, align 8
  %20 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @AC_CHG, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %57

26:                                               ; preds = %18
  %27 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %4, align 8
  %28 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %27, i32 0, i32 2
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %26
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %4, align 8
  %36 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %35, i32 0, i32 2
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @min(i32 %34, i64 %39)
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %33, %26
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %4, align 8
  %44 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  store i32 %42, i32* %45, align 4
  %46 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %4, align 8
  %47 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %46, i32 0, i32 2
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32 (%struct.TYPE_10__*, i32)*, i32 (%struct.TYPE_10__*, i32)** %50, align 8
  %52 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %4, align 8
  %53 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %52, i32 0, i32 2
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = call i32 %51(%struct.TYPE_10__* %54, i32 %55)
  store i32 %56, i32* %3, align 4
  br label %113

57:                                               ; preds = %18, %10, %2
  %58 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %4, align 8
  %59 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %58, i32 0, i32 0
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %59, align 8
  %61 = icmp ne %struct.TYPE_9__* %60, null
  br i1 %61, label %62, label %109

62:                                               ; preds = %57
  %63 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %4, align 8
  %64 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %63, i32 0, i32 0
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i32 (%struct.TYPE_9__*, i32)*, i32 (%struct.TYPE_9__*, i32)** %67, align 8
  %69 = icmp ne i32 (%struct.TYPE_9__*, i32)* %68, null
  br i1 %69, label %70, label %109

70:                                               ; preds = %62
  %71 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %4, align 8
  %72 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @USB_CHG, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %109

78:                                               ; preds = %70
  %79 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %4, align 8
  %80 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %79, i32 0, i32 0
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %78
  %86 = load i32, i32* %5, align 4
  %87 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %4, align 8
  %88 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %87, i32 0, i32 0
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @min(i32 %86, i64 %91)
  store i32 %92, i32* %5, align 4
  br label %93

93:                                               ; preds = %85, %78
  %94 = load i32, i32* %5, align 4
  %95 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %4, align 8
  %96 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 2
  store i32 %94, i32* %97, align 8
  %98 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %4, align 8
  %99 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %98, i32 0, i32 0
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = load i32 (%struct.TYPE_9__*, i32)*, i32 (%struct.TYPE_9__*, i32)** %102, align 8
  %104 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %4, align 8
  %105 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %104, i32 0, i32 0
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %105, align 8
  %107 = load i32, i32* %5, align 4
  %108 = call i32 %103(%struct.TYPE_9__* %106, i32 %107)
  store i32 %108, i32* %3, align 4
  br label %113

109:                                              ; preds = %70, %62, %57
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* @ENXIO, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %3, align 4
  br label %113

113:                                              ; preds = %110, %93, %41
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local i32 @min(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
