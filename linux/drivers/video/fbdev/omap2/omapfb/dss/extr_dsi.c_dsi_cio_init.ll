; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_cio_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_cio_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.dsi_data = type { i32, i32, i64, i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [20 x i8] c"DSI CIO init starts\00", align 1
@DSI_DSIPHY_CFG5 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"CIO SCP Clock domain not coming out of reset.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@DSI_TIMING1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"manual ulps exit\0A\00", align 1
@DSI_LANE_UNUSED = common dso_local global i64 0, align 8
@DSI_COMPLEXIO_POWER_ON = common dso_local global i32 0, align 4
@DSI_COMPLEXIO_CFG1 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"CIO PWR clock domain not coming out of reset.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@DSI_CLK_CTRL = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@HRTIMER_MODE_REL = common dso_local global i32 0, align 4
@OMAP_DSS_DSI_VIDEO_MODE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [15 x i8] c"CIO init done\0A\00", align 1
@DSI_COMPLEXIO_POWER_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @dsi_cio_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsi_cio_init(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.dsi_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = call %struct.dsi_data* @dsi_get_dsidrv_data(%struct.platform_device* %10)
  store %struct.dsi_data* %11, %struct.dsi_data** %4, align 8
  %12 = call i32 @DSSDBG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.dsi_data*, %struct.dsi_data** %4, align 8
  %14 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = call i32 @dsi_get_lane_mask(%struct.platform_device* %16)
  %18 = call i32 @dss_dsi_enable_pads(i32 %15, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* %5, align 4
  store i32 %22, i32* %2, align 4
  br label %187

23:                                               ; preds = %1
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = call i32 @dsi_enable_scp_clk(%struct.platform_device* %24)
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = load i32, i32* @DSI_DSIPHY_CFG5, align 4
  %28 = call i32 @dsi_read_reg(%struct.platform_device* %26, i32 %27)
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = load i32, i32* @DSI_DSIPHY_CFG5, align 4
  %31 = call i32 @wait_for_bit_change(%struct.platform_device* %29, i32 %30, i32 30, i32 1)
  %32 = icmp ne i32 %31, 1
  br i1 %32, label %33, label %37

33:                                               ; preds = %23
  %34 = call i32 @DSSERR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* @EIO, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %177

37:                                               ; preds = %23
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = call i32 @dsi_set_lane_config(%struct.platform_device* %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %177

43:                                               ; preds = %37
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = load i32, i32* @DSI_TIMING1, align 4
  %46 = call i32 @dsi_read_reg(%struct.platform_device* %44, i32 %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @FLD_MOD(i32 %47, i32 1, i32 15, i32 15)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @FLD_MOD(i32 %49, i32 1, i32 14, i32 14)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @FLD_MOD(i32 %51, i32 1, i32 13, i32 13)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @FLD_MOD(i32 %53, i32 8191, i32 12, i32 0)
  store i32 %54, i32* %6, align 4
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = load i32, i32* @DSI_TIMING1, align 4
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @dsi_write_reg(%struct.platform_device* %55, i32 %56, i32 %57)
  %59 = load %struct.dsi_data*, %struct.dsi_data** %4, align 8
  %60 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %95

63:                                               ; preds = %43
  %64 = call i32 @DSSDBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %65

65:                                               ; preds = %88, %63
  %66 = load i32, i32* %8, align 4
  %67 = load %struct.dsi_data*, %struct.dsi_data** %4, align 8
  %68 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %71, label %91

71:                                               ; preds = %65
  %72 = load %struct.dsi_data*, %struct.dsi_data** %4, align 8
  %73 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %72, i32 0, i32 5
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @DSI_LANE_UNUSED, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %71
  br label %88

83:                                               ; preds = %71
  %84 = load i32, i32* %8, align 4
  %85 = shl i32 1, %84
  %86 = load i32, i32* %7, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %7, align 4
  br label %88

88:                                               ; preds = %83, %82
  %89 = load i32, i32* %8, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %8, align 4
  br label %65

91:                                               ; preds = %65
  %92 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %93 = load i32, i32* %7, align 4
  %94 = call i32 @dsi_cio_enable_lane_override(%struct.platform_device* %92, i32 %93, i32 0)
  br label %95

95:                                               ; preds = %91, %43
  %96 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %97 = load i32, i32* @DSI_COMPLEXIO_POWER_ON, align 4
  %98 = call i32 @dsi_cio_power(%struct.platform_device* %96, i32 %97)
  store i32 %98, i32* %5, align 4
  %99 = load i32, i32* %5, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %95
  br label %168

102:                                              ; preds = %95
  %103 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %104 = load i32, i32* @DSI_COMPLEXIO_CFG1, align 4
  %105 = call i32 @wait_for_bit_change(%struct.platform_device* %103, i32 %104, i32 29, i32 1)
  %106 = icmp ne i32 %105, 1
  br i1 %106, label %107, label %111

107:                                              ; preds = %102
  %108 = call i32 @DSSERR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  %109 = load i32, i32* @ENODEV, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %5, align 4
  br label %164

111:                                              ; preds = %102
  %112 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %113 = call i32 @dsi_if_enable(%struct.platform_device* %112, i32 1)
  %114 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %115 = call i32 @dsi_if_enable(%struct.platform_device* %114, i32 0)
  %116 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %117 = load i32, i32* @DSI_CLK_CTRL, align 4
  %118 = call i32 @REG_FLD_MOD(%struct.platform_device* %116, i32 %117, i32 1, i32 20, i32 20)
  %119 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %120 = call i32 @dsi_cio_wait_tx_clk_esc_reset(%struct.platform_device* %119)
  store i32 %120, i32* %5, align 4
  %121 = load i32, i32* %5, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %111
  br label %160

124:                                              ; preds = %111
  %125 = load %struct.dsi_data*, %struct.dsi_data** %4, align 8
  %126 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %137

129:                                              ; preds = %124
  %130 = call i32 @ns_to_ktime(i32 1000000)
  store i32 %130, i32* %9, align 4
  %131 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %132 = call i32 @set_current_state(i32 %131)
  %133 = load i32, i32* @HRTIMER_MODE_REL, align 4
  %134 = call i32 @schedule_hrtimeout(i32* %9, i32 %133)
  %135 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %136 = call i32 @dsi_cio_disable_lane_override(%struct.platform_device* %135)
  br label %137

137:                                              ; preds = %129, %124
  %138 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %139 = load i32, i32* @DSI_TIMING1, align 4
  %140 = call i32 @REG_FLD_MOD(%struct.platform_device* %138, i32 %139, i32 0, i32 15, i32 15)
  %141 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %142 = call i32 @dsi_cio_timings(%struct.platform_device* %141)
  %143 = load %struct.dsi_data*, %struct.dsi_data** %4, align 8
  %144 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @OMAP_DSS_DSI_VIDEO_MODE, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %156

148:                                              ; preds = %137
  %149 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %150 = load i32, i32* @DSI_CLK_CTRL, align 4
  %151 = load %struct.dsi_data*, %struct.dsi_data** %4, align 8
  %152 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %151, i32 0, i32 4
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @REG_FLD_MOD(%struct.platform_device* %149, i32 %150, i32 %154, i32 13, i32 13)
  br label %156

156:                                              ; preds = %148, %137
  %157 = load %struct.dsi_data*, %struct.dsi_data** %4, align 8
  %158 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %157, i32 0, i32 0
  store i32 0, i32* %158, align 8
  %159 = call i32 @DSSDBG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %187

160:                                              ; preds = %123
  %161 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %162 = load i32, i32* @DSI_CLK_CTRL, align 4
  %163 = call i32 @REG_FLD_MOD(%struct.platform_device* %161, i32 %162, i32 0, i32 20, i32 20)
  br label %164

164:                                              ; preds = %160, %107
  %165 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %166 = load i32, i32* @DSI_COMPLEXIO_POWER_OFF, align 4
  %167 = call i32 @dsi_cio_power(%struct.platform_device* %165, i32 %166)
  br label %168

168:                                              ; preds = %164, %101
  %169 = load %struct.dsi_data*, %struct.dsi_data** %4, align 8
  %170 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %168
  %174 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %175 = call i32 @dsi_cio_disable_lane_override(%struct.platform_device* %174)
  br label %176

176:                                              ; preds = %173, %168
  br label %177

177:                                              ; preds = %176, %42, %33
  %178 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %179 = call i32 @dsi_disable_scp_clk(%struct.platform_device* %178)
  %180 = load %struct.dsi_data*, %struct.dsi_data** %4, align 8
  %181 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %184 = call i32 @dsi_get_lane_mask(%struct.platform_device* %183)
  %185 = call i32 @dss_dsi_disable_pads(i32 %182, i32 %184)
  %186 = load i32, i32* %5, align 4
  store i32 %186, i32* %2, align 4
  br label %187

187:                                              ; preds = %177, %156, %21
  %188 = load i32, i32* %2, align 4
  ret i32 %188
}

declare dso_local %struct.dsi_data* @dsi_get_dsidrv_data(%struct.platform_device*) #1

declare dso_local i32 @DSSDBG(i8*) #1

declare dso_local i32 @dss_dsi_enable_pads(i32, i32) #1

declare dso_local i32 @dsi_get_lane_mask(%struct.platform_device*) #1

declare dso_local i32 @dsi_enable_scp_clk(%struct.platform_device*) #1

declare dso_local i32 @dsi_read_reg(%struct.platform_device*, i32) #1

declare dso_local i32 @wait_for_bit_change(%struct.platform_device*, i32, i32, i32) #1

declare dso_local i32 @DSSERR(i8*) #1

declare dso_local i32 @dsi_set_lane_config(%struct.platform_device*) #1

declare dso_local i32 @FLD_MOD(i32, i32, i32, i32) #1

declare dso_local i32 @dsi_write_reg(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @dsi_cio_enable_lane_override(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @dsi_cio_power(%struct.platform_device*, i32) #1

declare dso_local i32 @dsi_if_enable(%struct.platform_device*, i32) #1

declare dso_local i32 @REG_FLD_MOD(%struct.platform_device*, i32, i32, i32, i32) #1

declare dso_local i32 @dsi_cio_wait_tx_clk_esc_reset(%struct.platform_device*) #1

declare dso_local i32 @ns_to_ktime(i32) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @schedule_hrtimeout(i32*, i32) #1

declare dso_local i32 @dsi_cio_disable_lane_override(%struct.platform_device*) #1

declare dso_local i32 @dsi_cio_timings(%struct.platform_device*) #1

declare dso_local i32 @dsi_disable_scp_clk(%struct.platform_device*) #1

declare dso_local i32 @dss_dsi_disable_pads(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
