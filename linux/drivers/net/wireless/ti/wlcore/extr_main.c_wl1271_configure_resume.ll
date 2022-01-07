; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wl1271_configure_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wl1271_configure_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i64, i64 }
%struct.wl12xx_vif = type { i64, i32 }

@BSS_TYPE_AP_BSS = common dso_local global i64 0, align 8
@BSS_TYPE_STA_BSS = common dso_local global i64 0, align 8
@WLVIF_FLAG_STA_ASSOCIATED = common dso_local global i32 0, align 4
@WLVIF_FLAG_AP_STARTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"resume: wake up conditions failed: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl1271*, %struct.wl12xx_vif*)* @wl1271_configure_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wl1271_configure_resume(%struct.wl1271* %0, %struct.wl12xx_vif* %1) #0 {
  %3 = alloca %struct.wl1271*, align 8
  %4 = alloca %struct.wl12xx_vif*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %3, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %9 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @BSS_TYPE_AP_BSS, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  store i32 %13, i32* %6, align 4
  %14 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %15 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @BSS_TYPE_STA_BSS, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  br label %103

26:                                               ; preds = %22, %2
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = load i32, i32* @WLVIF_FLAG_STA_ASSOCIATED, align 4
  %31 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %32 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %31, i32 0, i32 1
  %33 = call i32 @test_bit(i32 %30, i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %29, %26
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %35
  %39 = load i32, i32* @WLVIF_FLAG_AP_STARTED, align 4
  %40 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %41 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %40, i32 0, i32 1
  %42 = call i32 @test_bit(i32 %39, i32* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %38, %29
  br label %103

45:                                               ; preds = %38, %35
  %46 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %47 = call i32 @wl1271_configure_wowlan(%struct.wl1271* %46, i32* null)
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %95

50:                                               ; preds = %45
  %51 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %52 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %57 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %55, %60
  br i1 %61, label %62, label %75

62:                                               ; preds = %50
  %63 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %64 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %69 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %67, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %62
  br label %103

75:                                               ; preds = %62, %50
  %76 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %77 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %78 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %79 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %84 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @wl1271_acx_wake_up_conditions(%struct.wl1271* %76, %struct.wl12xx_vif* %77, i64 %82, i64 %87)
  store i32 %88, i32* %5, align 4
  %89 = load i32, i32* %5, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %75
  %92 = load i32, i32* %5, align 4
  %93 = call i32 @wl1271_error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %92)
  br label %94

94:                                               ; preds = %91, %75
  br label %103

95:                                               ; preds = %45
  %96 = load i32, i32* %6, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %95
  %99 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %100 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %101 = call i32 @wl1271_acx_beacon_filter_opt(%struct.wl1271* %99, %struct.wl12xx_vif* %100, i32 0)
  store i32 %101, i32* %5, align 4
  br label %102

102:                                              ; preds = %98, %95
  br label %103

103:                                              ; preds = %25, %44, %74, %102, %94
  ret void
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @wl1271_configure_wowlan(%struct.wl1271*, i32*) #1

declare dso_local i32 @wl1271_acx_wake_up_conditions(%struct.wl1271*, %struct.wl12xx_vif*, i64, i64) #1

declare dso_local i32 @wl1271_error(i8*, i32) #1

declare dso_local i32 @wl1271_acx_beacon_filter_opt(%struct.wl1271*, %struct.wl12xx_vif*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
