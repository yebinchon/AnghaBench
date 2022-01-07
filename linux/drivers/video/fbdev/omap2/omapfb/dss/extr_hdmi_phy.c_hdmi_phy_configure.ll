; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_hdmi_phy.c_hdmi_phy_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_hdmi_phy.c_hdmi_phy_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64 }
%struct.hdmi_phy_data = type { i32 }

@HDMI_TXPHY_TX_CTRL = common dso_local global i32 0, align 4
@phy_feat = common dso_local global %struct.TYPE_2__* null, align 8
@HDMI_TXPHY_BIST_CONTROL = common dso_local global i32 0, align 4
@HDMI_TXPHY_DIGITAL_CTRL = common dso_local global i32 0, align 4
@HDMI_TXPHY_POWER_CTRL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hdmi_phy_configure(%struct.hdmi_phy_data* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.hdmi_phy_data*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.hdmi_phy_data* %0, %struct.hdmi_phy_data** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.hdmi_phy_data*, %struct.hdmi_phy_data** %4, align 8
  %9 = getelementptr inbounds %struct.hdmi_phy_data, %struct.hdmi_phy_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @HDMI_TXPHY_TX_CTRL, align 4
  %12 = call i32 @hdmi_read_reg(i32 %10, i32 %11)
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @phy_feat, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %3
  %18 = load %struct.hdmi_phy_data*, %struct.hdmi_phy_data** %4, align 8
  %19 = getelementptr inbounds %struct.hdmi_phy_data, %struct.hdmi_phy_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @HDMI_TXPHY_BIST_CONTROL, align 4
  %22 = call i32 @REG_FLD_MOD(i32 %20, i32 %21, i32 1, i32 11, i32 11)
  br label %23

23:                                               ; preds = %17, %3
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* %6, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 0, i32* %7, align 4
  br label %38

28:                                               ; preds = %23
  %29 = load i64, i64* %5, align 8
  %30 = udiv i64 %29, 10
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @phy_feat, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ult i64 %30, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  store i32 1, i32* %7, align 4
  br label %37

36:                                               ; preds = %28
  store i32 2, i32* %7, align 4
  br label %37

37:                                               ; preds = %36, %35
  br label %38

38:                                               ; preds = %37, %27
  %39 = load %struct.hdmi_phy_data*, %struct.hdmi_phy_data** %4, align 8
  %40 = getelementptr inbounds %struct.hdmi_phy_data, %struct.hdmi_phy_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @HDMI_TXPHY_TX_CTRL, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @REG_FLD_MOD(i32 %41, i32 %42, i32 %43, i32 31, i32 30)
  %45 = load %struct.hdmi_phy_data*, %struct.hdmi_phy_data** %4, align 8
  %46 = getelementptr inbounds %struct.hdmi_phy_data, %struct.hdmi_phy_data* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @HDMI_TXPHY_DIGITAL_CTRL, align 4
  %49 = call i32 @hdmi_write_reg(i32 %47, i32 %48, i32 -268435456)
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @phy_feat, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %38
  %55 = load %struct.hdmi_phy_data*, %struct.hdmi_phy_data** %4, align 8
  %56 = getelementptr inbounds %struct.hdmi_phy_data, %struct.hdmi_phy_data* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @HDMI_TXPHY_POWER_CTRL, align 4
  %59 = call i32 @REG_FLD_MOD(i32 %57, i32 %58, i32 11, i32 3, i32 0)
  br label %60

60:                                               ; preds = %54, %38
  %61 = load %struct.hdmi_phy_data*, %struct.hdmi_phy_data** %4, align 8
  %62 = call i32 @hdmi_phy_configure_lanes(%struct.hdmi_phy_data* %61)
  ret i32 0
}

declare dso_local i32 @hdmi_read_reg(i32, i32) #1

declare dso_local i32 @REG_FLD_MOD(i32, i32, i32, i32, i32) #1

declare dso_local i32 @hdmi_write_reg(i32, i32, i32) #1

declare dso_local i32 @hdmi_phy_configure_lanes(%struct.hdmi_phy_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
