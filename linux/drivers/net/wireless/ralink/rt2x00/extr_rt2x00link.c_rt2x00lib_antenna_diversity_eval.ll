; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2x00link.c_rt2x00lib_antenna_diversity_eval.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2x00link.c_rt2x00lib_antenna_diversity_eval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.link_ant }
%struct.link_ant = type { i32, i32 }
%struct.antenna_setup = type { i64, i64 }

@ANTENNA_MODE_SAMPLE = common dso_local global i32 0, align 4
@ANTENNA_RX_DIVERSITY = common dso_local global i32 0, align 4
@ANTENNA_A = common dso_local global i64 0, align 8
@ANTENNA_B = common dso_local global i64 0, align 8
@ANTENNA_TX_DIVERSITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*)* @rt2x00lib_antenna_diversity_eval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2x00lib_antenna_diversity_eval(%struct.rt2x00_dev* %0) #0 {
  %2 = alloca %struct.rt2x00_dev*, align 8
  %3 = alloca %struct.link_ant*, align 8
  %4 = alloca %struct.antenna_setup, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %2, align 8
  %7 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %8 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.link_ant* %9, %struct.link_ant** %3, align 8
  %10 = load %struct.link_ant*, %struct.link_ant** %3, align 8
  %11 = getelementptr inbounds %struct.link_ant, %struct.link_ant* %10, i32 0, i32 1
  %12 = call i32 @memcpy(%struct.antenna_setup* %4, i32* %11, i32 16)
  %13 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %14 = call i32 @rt2x00link_antenna_get_link_rssi(%struct.rt2x00_dev* %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %16 = call i32 @rt2x00link_antenna_get_rssi_history(%struct.rt2x00_dev* %15)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @rt2x00link_antenna_update_rssi_history(%struct.rt2x00_dev* %17, i32 %18)
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %6, align 4
  %22 = sub nsw i32 %20, %21
  %23 = call i32 @abs(i32 %22) #3
  %24 = icmp slt i32 %23, 5
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  br label %77

26:                                               ; preds = %1
  %27 = load i32, i32* @ANTENNA_MODE_SAMPLE, align 4
  %28 = load %struct.link_ant*, %struct.link_ant** %3, align 8
  %29 = getelementptr inbounds %struct.link_ant, %struct.link_ant* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  %32 = load %struct.link_ant*, %struct.link_ant** %3, align 8
  %33 = getelementptr inbounds %struct.link_ant, %struct.link_ant* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @ANTENNA_RX_DIVERSITY, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %26
  %39 = getelementptr inbounds %struct.antenna_setup, %struct.antenna_setup* %4, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @ANTENNA_A, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i64, i64* @ANTENNA_B, align 8
  br label %47

45:                                               ; preds = %38
  %46 = load i64, i64* @ANTENNA_A, align 8
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i64 [ %44, %43 ], [ %46, %45 ]
  %49 = getelementptr inbounds %struct.antenna_setup, %struct.antenna_setup* %4, i32 0, i32 0
  store i64 %48, i64* %49, align 8
  br label %50

50:                                               ; preds = %47, %26
  %51 = load %struct.link_ant*, %struct.link_ant** %3, align 8
  %52 = getelementptr inbounds %struct.link_ant, %struct.link_ant* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @ANTENNA_TX_DIVERSITY, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %69

57:                                               ; preds = %50
  %58 = getelementptr inbounds %struct.antenna_setup, %struct.antenna_setup* %4, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @ANTENNA_A, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i64, i64* @ANTENNA_B, align 8
  br label %66

64:                                               ; preds = %57
  %65 = load i64, i64* @ANTENNA_A, align 8
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi i64 [ %63, %62 ], [ %65, %64 ]
  %68 = getelementptr inbounds %struct.antenna_setup, %struct.antenna_setup* %4, i32 0, i32 1
  store i64 %67, i64* %68, align 8
  br label %69

69:                                               ; preds = %66, %50
  %70 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %71 = bitcast %struct.antenna_setup* %4 to { i64, i64 }*
  %72 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %71, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @rt2x00lib_config_antenna(%struct.rt2x00_dev* %70, i64 %73, i64 %75)
  br label %77

77:                                               ; preds = %69, %25
  ret void
}

declare dso_local i32 @memcpy(%struct.antenna_setup*, i32*, i32) #1

declare dso_local i32 @rt2x00link_antenna_get_link_rssi(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2x00link_antenna_get_rssi_history(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2x00link_antenna_update_rssi_history(%struct.rt2x00_dev*, i32) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i32 @rt2x00lib_config_antenna(%struct.rt2x00_dev*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
