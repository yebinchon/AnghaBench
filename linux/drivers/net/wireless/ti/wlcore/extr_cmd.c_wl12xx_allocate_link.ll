; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_cmd.c_wl12xx_allocate_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_cmd.c_wl12xx_allocate_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i64, i32, %struct.TYPE_6__*, %struct.TYPE_5__*, i32, i32, i32* }
%struct.TYPE_6__ = type { i32, %struct.wl12xx_vif*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.wl12xx_vif = type { i64, i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@BSS_TYPE_AP_BSS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl12xx_allocate_link(%struct.wl1271* %0, %struct.wl12xx_vif* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wl1271*, align 8
  %6 = alloca %struct.wl12xx_vif*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.wl1271* %0, %struct.wl1271** %5, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %6, align 8
  store i64* %2, i64** %7, align 8
  %10 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %11 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %14 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i64 @find_first_zero_bit(i32 %12, i64 %15)
  store i64 %16, i64* %9, align 8
  %17 = load i64, i64* %9, align 8
  %18 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %19 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp uge i64 %17, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @EBUSY, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %105

25:                                               ; preds = %3
  %26 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %27 = load i64, i64* %9, align 8
  %28 = call i32 @wlcore_get_new_session_id(%struct.wl1271* %26, i64 %27)
  %29 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %30 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %29, i32 0, i32 6
  %31 = load i32*, i32** %30, align 8
  %32 = load i64, i64* %9, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  store i32 %28, i32* %33, align 4
  %34 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %35 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %34, i32 0, i32 4
  %36 = load i64, i64* %8, align 8
  %37 = call i32 @spin_lock_irqsave(i32* %35, i64 %36)
  %38 = load i64, i64* %9, align 8
  %39 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %40 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @__set_bit(i64 %38, i32 %41)
  %43 = load i64, i64* %9, align 8
  %44 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %45 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @__set_bit(i64 %43, i32 %46)
  %48 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %49 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %48, i32 0, i32 4
  %50 = load i64, i64* %8, align 8
  %51 = call i32 @spin_unlock_irqrestore(i32* %49, i64 %50)
  %52 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %53 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %52, i32 0, i32 3
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %75

59:                                               ; preds = %25
  %60 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %61 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %60, i32 0, i32 3
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i64, i64* %9, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %70 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %69, i32 0, i32 2
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = load i64, i64* %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 2
  store i32 %68, i32* %74, align 8
  br label %75

75:                                               ; preds = %59, %25
  %76 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %77 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %78 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %77, i32 0, i32 2
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = load i64, i64* %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  store %struct.wl12xx_vif* %76, %struct.wl12xx_vif** %82, align 8
  %83 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %84 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @BSS_TYPE_AP_BSS, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %98

88:                                               ; preds = %75
  %89 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %90 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %93 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %92, i32 0, i32 2
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = load i64, i64* %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  store i32 %91, i32* %97, align 8
  br label %98

98:                                               ; preds = %88, %75
  %99 = load i64, i64* %9, align 8
  %100 = load i64*, i64** %7, align 8
  store i64 %99, i64* %100, align 8
  %101 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %102 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %102, align 8
  store i32 0, i32* %4, align 4
  br label %105

105:                                              ; preds = %98, %22
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local i64 @find_first_zero_bit(i32, i64) #1

declare dso_local i32 @wlcore_get_new_session_id(%struct.wl1271*, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__set_bit(i64, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
