; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_hdmi_phy.c_hdmi_phy_parse_lanes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_hdmi_phy.c_hdmi_phy_parse_lanes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_phy_data = type { i32*, i64* }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hdmi_phy_parse_lanes(%struct.hdmi_phy_data* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hdmi_phy_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.hdmi_phy_data* %0, %struct.hdmi_phy_data** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %82, %2
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 8
  br i1 %13, label %14, label %85

14:                                               ; preds = %11
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %9, align 4
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = add nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %20, i64 %23
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %14
  %29 = load i32, i32* %9, align 4
  %30 = icmp sge i32 %29, 8
  br i1 %30, label %31, label %34

31:                                               ; preds = %28, %14
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %86

34:                                               ; preds = %28
  %35 = load i32, i32* %10, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %10, align 4
  %39 = icmp sge i32 %38, 8
  br i1 %39, label %40, label %43

40:                                               ; preds = %37, %34
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %86

43:                                               ; preds = %37
  %44 = load i32, i32* %9, align 4
  %45 = and i32 %44, 1
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %43
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %9, align 4
  %50 = sub nsw i32 %49, 1
  %51 = icmp ne i32 %48, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %86

55:                                               ; preds = %47
  store i64 1, i64* %8, align 8
  br label %65

56:                                               ; preds = %43
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, 1
  %60 = icmp ne i32 %57, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %86

64:                                               ; preds = %56
  store i64 0, i64* %8, align 8
  br label %65

65:                                               ; preds = %64, %55
  %66 = load i32, i32* %9, align 4
  %67 = sdiv i32 %66, 2
  %68 = sext i32 %67 to i64
  store i64 %68, i64* %7, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sdiv i32 %69, 2
  %71 = load %struct.hdmi_phy_data*, %struct.hdmi_phy_data** %4, align 8
  %72 = getelementptr inbounds %struct.hdmi_phy_data, %struct.hdmi_phy_data* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i64, i64* %7, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  store i32 %70, i32* %75, align 4
  %76 = load i64, i64* %8, align 8
  %77 = load %struct.hdmi_phy_data*, %struct.hdmi_phy_data** %4, align 8
  %78 = getelementptr inbounds %struct.hdmi_phy_data, %struct.hdmi_phy_data* %77, i32 0, i32 1
  %79 = load i64*, i64** %78, align 8
  %80 = load i64, i64* %7, align 8
  %81 = getelementptr inbounds i64, i64* %79, i64 %80
  store i64 %76, i64* %81, align 8
  br label %82

82:                                               ; preds = %65
  %83 = load i32, i32* %6, align 4
  %84 = add nsw i32 %83, 2
  store i32 %84, i32* %6, align 4
  br label %11

85:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %86

86:                                               ; preds = %85, %61, %52, %40, %31
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
