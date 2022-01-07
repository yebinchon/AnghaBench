; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2x00mac.c_rt2x00mac_configure_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2x00mac.c_rt2x00mac_configure_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.rt2x00_dev* }
%struct.rt2x00_dev = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.rt2x00_dev*, i32)* }

@FIF_ALLMULTI = common dso_local global i32 0, align 4
@FIF_FCSFAIL = common dso_local global i32 0, align 4
@FIF_PLCPFAIL = common dso_local global i32 0, align 4
@FIF_CONTROL = common dso_local global i32 0, align 4
@FIF_PSPOLL = common dso_local global i32 0, align 4
@FIF_OTHER_BSS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt2x00mac_configure_filter(%struct.ieee80211_hw* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.rt2x00_dev*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %11 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %10, i32 0, i32 0
  %12 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %11, align 8
  store %struct.rt2x00_dev* %12, %struct.rt2x00_dev** %9, align 8
  %13 = load i32, i32* @FIF_ALLMULTI, align 4
  %14 = load i32, i32* @FIF_FCSFAIL, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @FIF_PLCPFAIL, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @FIF_CONTROL, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @FIF_PSPOLL, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @FIF_OTHER_BSS, align 4
  %23 = or i32 %21, %22
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, %23
  store i32 %26, i32* %24, align 4
  %27 = load i32, i32* @FIF_ALLMULTI, align 4
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %27
  store i32 %30, i32* %28, align 4
  %31 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %9, align 8
  %32 = call i32 @rt2x00_has_cap_control_filters(%struct.rt2x00_dev* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %54, label %34

34:                                               ; preds = %4
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @FIF_CONTROL, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %34
  %41 = load i32*, i32** %7, align 8
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @FIF_PSPOLL, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %40, %34
  %47 = load i32, i32* @FIF_CONTROL, align 4
  %48 = load i32, i32* @FIF_PSPOLL, align 4
  %49 = or i32 %47, %48
  %50 = load i32*, i32** %7, align 8
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %49
  store i32 %52, i32* %50, align 4
  br label %53

53:                                               ; preds = %46, %40
  br label %54

54:                                               ; preds = %53, %4
  %55 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %9, align 8
  %56 = call i32 @rt2x00_has_cap_control_filter_pspoll(%struct.rt2x00_dev* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %70, label %58

58:                                               ; preds = %54
  %59 = load i32*, i32** %7, align 8
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @FIF_CONTROL, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %58
  %65 = load i32, i32* @FIF_PSPOLL, align 4
  %66 = load i32*, i32** %7, align 8
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %65
  store i32 %68, i32* %66, align 4
  br label %69

69:                                               ; preds = %64, %58
  br label %70

70:                                               ; preds = %69, %54
  %71 = load i32*, i32** %7, align 8
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %9, align 8
  %74 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %9, align 8
  %76 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %75, i32 0, i32 1
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32 (%struct.rt2x00_dev*, i32)*, i32 (%struct.rt2x00_dev*, i32)** %80, align 8
  %82 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %9, align 8
  %83 = load i32*, i32** %7, align 8
  %84 = load i32, i32* %83, align 4
  %85 = call i32 %81(%struct.rt2x00_dev* %82, i32 %84)
  ret void
}

declare dso_local i32 @rt2x00_has_cap_control_filters(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2x00_has_cap_control_filter_pspoll(%struct.rt2x00_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
