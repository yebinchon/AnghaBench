; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_hdmi_phy.c_hdmi_phy_configure_lanes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_hdmi_phy.c_hdmi_phy_configure_lanes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_phy_data = type { i32*, i32*, i32 }

@hdmi_phy_configure_lanes.pad_cfg_list = internal constant [24 x i32] [i32 291, i32 306, i32 786, i32 801, i32 561, i32 531, i32 4131, i32 4146, i32 12306, i32 12321, i32 8241, i32 8211, i32 4611, i32 4866, i32 12546, i32 12801, i32 8961, i32 8451, i32 4656, i32 4896, i32 12576, i32 12816, i32 8976, i32 8496], align 16
@HDMI_TXPHY_PAD_CFG_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hdmi_phy_data*)* @hdmi_phy_configure_lanes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdmi_phy_configure_lanes(%struct.hdmi_phy_data* %0) #0 {
  %2 = alloca %struct.hdmi_phy_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hdmi_phy_data* %0, %struct.hdmi_phy_data** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %24, %1
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 4
  br i1 %9, label %10, label %27

10:                                               ; preds = %7
  %11 = load %struct.hdmi_phy_data*, %struct.hdmi_phy_data** %2, align 8
  %12 = getelementptr inbounds %struct.hdmi_phy_data, %struct.hdmi_phy_data* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %4, align 4
  %19 = sub nsw i32 3, %18
  %20 = mul nsw i32 %19, 4
  %21 = shl i32 %17, %20
  %22 = load i32, i32* %3, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %10
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %4, align 4
  br label %7

27:                                               ; preds = %7
  %28 = load %struct.hdmi_phy_data*, %struct.hdmi_phy_data** %2, align 8
  %29 = getelementptr inbounds %struct.hdmi_phy_data, %struct.hdmi_phy_data* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = shl i32 %32, 0
  %34 = load i32, i32* %6, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %6, align 4
  %36 = load %struct.hdmi_phy_data*, %struct.hdmi_phy_data** %2, align 8
  %37 = getelementptr inbounds %struct.hdmi_phy_data, %struct.hdmi_phy_data* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 %40, 3
  %42 = load i32, i32* %6, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %6, align 4
  %44 = load %struct.hdmi_phy_data*, %struct.hdmi_phy_data** %2, align 8
  %45 = getelementptr inbounds %struct.hdmi_phy_data, %struct.hdmi_phy_data* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 2
  %48 = load i32, i32* %47, align 4
  %49 = shl i32 %48, 2
  %50 = load i32, i32* %6, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %6, align 4
  %52 = load %struct.hdmi_phy_data*, %struct.hdmi_phy_data** %2, align 8
  %53 = getelementptr inbounds %struct.hdmi_phy_data, %struct.hdmi_phy_data* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 3
  %56 = load i32, i32* %55, align 4
  %57 = shl i32 %56, 1
  %58 = load i32, i32* %6, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %6, align 4
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %73, %27
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([24 x i32], [24 x i32]* @hdmi_phy_configure_lanes.pad_cfg_list, i64 0, i64 0))
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %76

64:                                               ; preds = %60
  %65 = load i32, i32* %4, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [24 x i32], [24 x i32]* @hdmi_phy_configure_lanes.pad_cfg_list, i64 0, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %3, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %64
  br label %76

72:                                               ; preds = %64
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %4, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %4, align 4
  br label %60

76:                                               ; preds = %71, %60
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([24 x i32], [24 x i32]* @hdmi_phy_configure_lanes.pad_cfg_list, i64 0, i64 0))
  %79 = icmp eq i32 %77, %78
  %80 = zext i1 %79 to i32
  %81 = call i64 @WARN_ON(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %76
  store i32 0, i32* %4, align 4
  br label %84

84:                                               ; preds = %83, %76
  %85 = load i32, i32* %4, align 4
  store i32 %85, i32* %5, align 4
  %86 = load %struct.hdmi_phy_data*, %struct.hdmi_phy_data** %2, align 8
  %87 = getelementptr inbounds %struct.hdmi_phy_data, %struct.hdmi_phy_data* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @HDMI_TXPHY_PAD_CFG_CTRL, align 4
  %90 = load i32, i32* %5, align 4
  %91 = call i32 @REG_FLD_MOD(i32 %88, i32 %89, i32 %90, i32 26, i32 22)
  %92 = load %struct.hdmi_phy_data*, %struct.hdmi_phy_data** %2, align 8
  %93 = getelementptr inbounds %struct.hdmi_phy_data, %struct.hdmi_phy_data* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @HDMI_TXPHY_PAD_CFG_CTRL, align 4
  %96 = load i32, i32* %6, align 4
  %97 = call i32 @REG_FLD_MOD(i32 %94, i32 %95, i32 %96, i32 30, i32 27)
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @REG_FLD_MOD(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
