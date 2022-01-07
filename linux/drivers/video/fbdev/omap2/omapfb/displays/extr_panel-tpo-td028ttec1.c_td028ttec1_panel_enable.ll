; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_panel-tpo-td028ttec1.c_td028ttec1_panel_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_panel-tpo-td028ttec1.c_td028ttec1_panel_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_dss_device = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { {}*, i32 (%struct.omap_dss_device*, i32*)*, i32 (%struct.omap_dss_device*, i64)* }
%struct.panel_drv_data = type { i32, i64, %struct.omap_dss_device* }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"td028ttec1_panel_enable() - state %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"transfer error\0A\00", align 1
@JBT_REG_POWER_ON_OFF = common dso_local global i32 0, align 4
@JBT_REG_DISPLAY_MODE = common dso_local global i32 0, align 4
@JBT_REG_QUAD_RATE = common dso_local global i32 0, align 4
@JBT_REG_OUTPUT_CONTROL = common dso_local global i32 0, align 4
@JBT_REG_SLEEP_OUT = common dso_local global i32 0, align 4
@JBT_REG_DISPLAY_MODE1 = common dso_local global i32 0, align 4
@JBT_REG_DISPLAY_MODE2 = common dso_local global i32 0, align 4
@JBT_REG_RGB_FORMAT = common dso_local global i32 0, align 4
@JBT_REG_DRIVE_SYSTEM = common dso_local global i32 0, align 4
@JBT_REG_BOOSTER_OP = common dso_local global i32 0, align 4
@JBT_REG_BOOSTER_MODE = common dso_local global i32 0, align 4
@JBT_REG_BOOSTER_FREQ = common dso_local global i32 0, align 4
@JBT_REG_OPAMP_SYSCLK = common dso_local global i32 0, align 4
@JBT_REG_VSC_VOLTAGE = common dso_local global i32 0, align 4
@JBT_REG_VCOM_VOLTAGE = common dso_local global i32 0, align 4
@JBT_REG_EXT_DISPL = common dso_local global i32 0, align 4
@JBT_REG_DCCLK_DCEV = common dso_local global i32 0, align 4
@JBT_REG_ASW_SLEW = common dso_local global i32 0, align 4
@JBT_REG_DUMMY_DISPLAY = common dso_local global i32 0, align 4
@JBT_REG_SLEEP_OUT_FR_A = common dso_local global i32 0, align 4
@JBT_REG_SLEEP_OUT_FR_B = common dso_local global i32 0, align 4
@JBT_REG_SLEEP_OUT_FR_C = common dso_local global i32 0, align 4
@JBT_REG_SLEEP_IN_LCCNT_D = common dso_local global i32 0, align 4
@JBT_REG_SLEEP_IN_LCCNT_E = common dso_local global i32 0, align 4
@JBT_REG_SLEEP_IN_LCCNT_F = common dso_local global i32 0, align 4
@JBT_REG_SLEEP_IN_LCCNT_G = common dso_local global i32 0, align 4
@JBT_REG_GAMMA1_FINE_1 = common dso_local global i32 0, align 4
@JBT_REG_GAMMA1_FINE_2 = common dso_local global i32 0, align 4
@JBT_REG_GAMMA1_INCLINATION = common dso_local global i32 0, align 4
@JBT_REG_GAMMA1_BLUE_OFFSET = common dso_local global i32 0, align 4
@JBT_REG_HCLOCK_VGA = common dso_local global i32 0, align 4
@JBT_REG_BLANK_CONTROL = common dso_local global i32 0, align 4
@JBT_REG_BLANK_TH_TV = common dso_local global i32 0, align 4
@JBT_REG_CKV_ON_OFF = common dso_local global i32 0, align 4
@JBT_REG_CKV_1_2 = common dso_local global i32 0, align 4
@JBT_REG_OEV_TIMING = common dso_local global i32 0, align 4
@JBT_REG_ASW_TIMING_1 = common dso_local global i32 0, align 4
@JBT_REG_ASW_TIMING_2 = common dso_local global i32 0, align 4
@JBT_REG_DISPLAY_ON = common dso_local global i32 0, align 4
@OMAP_DSS_DISPLAY_ACTIVE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_dss_device*)* @td028ttec1_panel_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @td028ttec1_panel_enable(%struct.omap_dss_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.omap_dss_device*, align 8
  %4 = alloca %struct.panel_drv_data*, align 8
  %5 = alloca %struct.omap_dss_device*, align 8
  %6 = alloca i32, align 4
  store %struct.omap_dss_device* %0, %struct.omap_dss_device** %3, align 8
  %7 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %8 = call %struct.panel_drv_data* @to_panel_data(%struct.omap_dss_device* %7)
  store %struct.panel_drv_data* %8, %struct.panel_drv_data** %4, align 8
  %9 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %10 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %9, i32 0, i32 2
  %11 = load %struct.omap_dss_device*, %struct.omap_dss_device** %10, align 8
  store %struct.omap_dss_device* %11, %struct.omap_dss_device** %5, align 8
  %12 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %13 = call i32 @omapdss_device_is_connected(%struct.omap_dss_device* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %312

18:                                               ; preds = %1
  %19 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %20 = call i64 @omapdss_device_is_enabled(%struct.omap_dss_device* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %312

23:                                               ; preds = %18
  %24 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %25 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %23
  %29 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %30 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  %34 = load i32 (%struct.omap_dss_device*, i64)*, i32 (%struct.omap_dss_device*, i64)** %33, align 8
  %35 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %36 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %37 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = call i32 %34(%struct.omap_dss_device* %35, i64 %38)
  br label %40

40:                                               ; preds = %28, %23
  %41 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %42 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32 (%struct.omap_dss_device*, i32*)*, i32 (%struct.omap_dss_device*, i32*)** %45, align 8
  %47 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %48 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %49 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %48, i32 0, i32 0
  %50 = call i32 %46(%struct.omap_dss_device* %47, i32* %49)
  %51 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %52 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = bitcast {}** %55 to i32 (%struct.omap_dss_device*)**
  %57 = load i32 (%struct.omap_dss_device*)*, i32 (%struct.omap_dss_device*)** %56, align 8
  %58 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %59 = call i32 %57(%struct.omap_dss_device* %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %40
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %2, align 4
  br label %312

64:                                               ; preds = %40
  %65 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %66 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %69 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @dev_dbg(i32 %67, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %70)
  %72 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %73 = call i32 @jbt_ret_write_0(%struct.panel_drv_data* %72, i32 0)
  %74 = load i32, i32* %6, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %6, align 4
  %76 = call i32 @usleep_range(i32 1000, i32 2000)
  %77 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %78 = call i32 @jbt_ret_write_0(%struct.panel_drv_data* %77, i32 0)
  %79 = load i32, i32* %6, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %6, align 4
  %81 = call i32 @usleep_range(i32 1000, i32 2000)
  %82 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %83 = call i32 @jbt_ret_write_0(%struct.panel_drv_data* %82, i32 0)
  %84 = load i32, i32* %6, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %6, align 4
  %86 = call i32 @usleep_range(i32 1000, i32 2000)
  %87 = load i32, i32* %6, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %64
  %90 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %91 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @dev_warn(i32 %92, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %303

94:                                               ; preds = %64
  %95 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %96 = load i32, i32* @JBT_REG_POWER_ON_OFF, align 4
  %97 = call i32 @jbt_reg_write_1(%struct.panel_drv_data* %95, i32 %96, i32 23)
  %98 = load i32, i32* %6, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %6, align 4
  %100 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %101 = load i32, i32* @JBT_REG_DISPLAY_MODE, align 4
  %102 = call i32 @jbt_reg_write_1(%struct.panel_drv_data* %100, i32 %101, i32 128)
  %103 = load i32, i32* %6, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %6, align 4
  %105 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %106 = load i32, i32* @JBT_REG_QUAD_RATE, align 4
  %107 = call i32 @jbt_reg_write_1(%struct.panel_drv_data* %105, i32 %106, i32 0)
  %108 = load i32, i32* %6, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %6, align 4
  %110 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %111 = load i32, i32* @JBT_REG_POWER_ON_OFF, align 4
  %112 = call i32 @jbt_reg_write_1(%struct.panel_drv_data* %110, i32 %111, i32 22)
  %113 = load i32, i32* %6, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %6, align 4
  %115 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %116 = load i32, i32* @JBT_REG_OUTPUT_CONTROL, align 4
  %117 = call i32 @jbt_reg_write_2(%struct.panel_drv_data* %115, i32 %116, i32 65529)
  %118 = load i32, i32* %6, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %6, align 4
  %120 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %121 = load i32, i32* @JBT_REG_SLEEP_OUT, align 4
  %122 = call i32 @jbt_ret_write_0(%struct.panel_drv_data* %120, i32 %121)
  %123 = load i32, i32* %6, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %6, align 4
  %125 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %126 = load i32, i32* @JBT_REG_DISPLAY_MODE1, align 4
  %127 = call i32 @jbt_reg_write_1(%struct.panel_drv_data* %125, i32 %126, i32 1)
  %128 = load i32, i32* %6, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %6, align 4
  %130 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %131 = load i32, i32* @JBT_REG_DISPLAY_MODE2, align 4
  %132 = call i32 @jbt_reg_write_1(%struct.panel_drv_data* %130, i32 %131, i32 0)
  %133 = load i32, i32* %6, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %6, align 4
  %135 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %136 = load i32, i32* @JBT_REG_RGB_FORMAT, align 4
  %137 = call i32 @jbt_reg_write_1(%struct.panel_drv_data* %135, i32 %136, i32 96)
  %138 = load i32, i32* %6, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %6, align 4
  %140 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %141 = load i32, i32* @JBT_REG_DRIVE_SYSTEM, align 4
  %142 = call i32 @jbt_reg_write_1(%struct.panel_drv_data* %140, i32 %141, i32 16)
  %143 = load i32, i32* %6, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %6, align 4
  %145 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %146 = load i32, i32* @JBT_REG_BOOSTER_OP, align 4
  %147 = call i32 @jbt_reg_write_1(%struct.panel_drv_data* %145, i32 %146, i32 86)
  %148 = load i32, i32* %6, align 4
  %149 = or i32 %148, %147
  store i32 %149, i32* %6, align 4
  %150 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %151 = load i32, i32* @JBT_REG_BOOSTER_MODE, align 4
  %152 = call i32 @jbt_reg_write_1(%struct.panel_drv_data* %150, i32 %151, i32 51)
  %153 = load i32, i32* %6, align 4
  %154 = or i32 %153, %152
  store i32 %154, i32* %6, align 4
  %155 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %156 = load i32, i32* @JBT_REG_BOOSTER_FREQ, align 4
  %157 = call i32 @jbt_reg_write_1(%struct.panel_drv_data* %155, i32 %156, i32 17)
  %158 = load i32, i32* %6, align 4
  %159 = or i32 %158, %157
  store i32 %159, i32* %6, align 4
  %160 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %161 = load i32, i32* @JBT_REG_BOOSTER_FREQ, align 4
  %162 = call i32 @jbt_reg_write_1(%struct.panel_drv_data* %160, i32 %161, i32 17)
  %163 = load i32, i32* %6, align 4
  %164 = or i32 %163, %162
  store i32 %164, i32* %6, align 4
  %165 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %166 = load i32, i32* @JBT_REG_OPAMP_SYSCLK, align 4
  %167 = call i32 @jbt_reg_write_1(%struct.panel_drv_data* %165, i32 %166, i32 2)
  %168 = load i32, i32* %6, align 4
  %169 = or i32 %168, %167
  store i32 %169, i32* %6, align 4
  %170 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %171 = load i32, i32* @JBT_REG_VSC_VOLTAGE, align 4
  %172 = call i32 @jbt_reg_write_1(%struct.panel_drv_data* %170, i32 %171, i32 43)
  %173 = load i32, i32* %6, align 4
  %174 = or i32 %173, %172
  store i32 %174, i32* %6, align 4
  %175 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %176 = load i32, i32* @JBT_REG_VCOM_VOLTAGE, align 4
  %177 = call i32 @jbt_reg_write_1(%struct.panel_drv_data* %175, i32 %176, i32 64)
  %178 = load i32, i32* %6, align 4
  %179 = or i32 %178, %177
  store i32 %179, i32* %6, align 4
  %180 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %181 = load i32, i32* @JBT_REG_EXT_DISPL, align 4
  %182 = call i32 @jbt_reg_write_1(%struct.panel_drv_data* %180, i32 %181, i32 3)
  %183 = load i32, i32* %6, align 4
  %184 = or i32 %183, %182
  store i32 %184, i32* %6, align 4
  %185 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %186 = load i32, i32* @JBT_REG_DCCLK_DCEV, align 4
  %187 = call i32 @jbt_reg_write_1(%struct.panel_drv_data* %185, i32 %186, i32 4)
  %188 = load i32, i32* %6, align 4
  %189 = or i32 %188, %187
  store i32 %189, i32* %6, align 4
  %190 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %191 = load i32, i32* @JBT_REG_ASW_SLEW, align 4
  %192 = call i32 @jbt_reg_write_1(%struct.panel_drv_data* %190, i32 %191, i32 4)
  %193 = load i32, i32* %6, align 4
  %194 = or i32 %193, %192
  store i32 %194, i32* %6, align 4
  %195 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %196 = load i32, i32* @JBT_REG_DUMMY_DISPLAY, align 4
  %197 = call i32 @jbt_reg_write_1(%struct.panel_drv_data* %195, i32 %196, i32 0)
  %198 = load i32, i32* %6, align 4
  %199 = or i32 %198, %197
  store i32 %199, i32* %6, align 4
  %200 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %201 = load i32, i32* @JBT_REG_SLEEP_OUT_FR_A, align 4
  %202 = call i32 @jbt_reg_write_1(%struct.panel_drv_data* %200, i32 %201, i32 17)
  %203 = load i32, i32* %6, align 4
  %204 = or i32 %203, %202
  store i32 %204, i32* %6, align 4
  %205 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %206 = load i32, i32* @JBT_REG_SLEEP_OUT_FR_B, align 4
  %207 = call i32 @jbt_reg_write_1(%struct.panel_drv_data* %205, i32 %206, i32 17)
  %208 = load i32, i32* %6, align 4
  %209 = or i32 %208, %207
  store i32 %209, i32* %6, align 4
  %210 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %211 = load i32, i32* @JBT_REG_SLEEP_OUT_FR_C, align 4
  %212 = call i32 @jbt_reg_write_1(%struct.panel_drv_data* %210, i32 %211, i32 17)
  %213 = load i32, i32* %6, align 4
  %214 = or i32 %213, %212
  store i32 %214, i32* %6, align 4
  %215 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %216 = load i32, i32* @JBT_REG_SLEEP_IN_LCCNT_D, align 4
  %217 = call i32 @jbt_reg_write_2(%struct.panel_drv_data* %215, i32 %216, i32 8256)
  %218 = load i32, i32* %6, align 4
  %219 = or i32 %218, %217
  store i32 %219, i32* %6, align 4
  %220 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %221 = load i32, i32* @JBT_REG_SLEEP_IN_LCCNT_E, align 4
  %222 = call i32 @jbt_reg_write_2(%struct.panel_drv_data* %220, i32 %221, i32 24768)
  %223 = load i32, i32* %6, align 4
  %224 = or i32 %223, %222
  store i32 %224, i32* %6, align 4
  %225 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %226 = load i32, i32* @JBT_REG_SLEEP_IN_LCCNT_F, align 4
  %227 = call i32 @jbt_reg_write_2(%struct.panel_drv_data* %225, i32 %226, i32 4128)
  %228 = load i32, i32* %6, align 4
  %229 = or i32 %228, %227
  store i32 %229, i32* %6, align 4
  %230 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %231 = load i32, i32* @JBT_REG_SLEEP_IN_LCCNT_G, align 4
  %232 = call i32 @jbt_reg_write_2(%struct.panel_drv_data* %230, i32 %231, i32 24768)
  %233 = load i32, i32* %6, align 4
  %234 = or i32 %233, %232
  store i32 %234, i32* %6, align 4
  %235 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %236 = load i32, i32* @JBT_REG_GAMMA1_FINE_1, align 4
  %237 = call i32 @jbt_reg_write_2(%struct.panel_drv_data* %235, i32 %236, i32 21811)
  %238 = load i32, i32* %6, align 4
  %239 = or i32 %238, %237
  store i32 %239, i32* %6, align 4
  %240 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %241 = load i32, i32* @JBT_REG_GAMMA1_FINE_2, align 4
  %242 = call i32 @jbt_reg_write_1(%struct.panel_drv_data* %240, i32 %241, i32 0)
  %243 = load i32, i32* %6, align 4
  %244 = or i32 %243, %242
  store i32 %244, i32* %6, align 4
  %245 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %246 = load i32, i32* @JBT_REG_GAMMA1_INCLINATION, align 4
  %247 = call i32 @jbt_reg_write_1(%struct.panel_drv_data* %245, i32 %246, i32 0)
  %248 = load i32, i32* %6, align 4
  %249 = or i32 %248, %247
  store i32 %249, i32* %6, align 4
  %250 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %251 = load i32, i32* @JBT_REG_GAMMA1_BLUE_OFFSET, align 4
  %252 = call i32 @jbt_reg_write_1(%struct.panel_drv_data* %250, i32 %251, i32 0)
  %253 = load i32, i32* %6, align 4
  %254 = or i32 %253, %252
  store i32 %254, i32* %6, align 4
  %255 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %256 = load i32, i32* @JBT_REG_HCLOCK_VGA, align 4
  %257 = call i32 @jbt_reg_write_2(%struct.panel_drv_data* %255, i32 %256, i32 496)
  %258 = load i32, i32* %6, align 4
  %259 = or i32 %258, %257
  store i32 %259, i32* %6, align 4
  %260 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %261 = load i32, i32* @JBT_REG_BLANK_CONTROL, align 4
  %262 = call i32 @jbt_reg_write_1(%struct.panel_drv_data* %260, i32 %261, i32 2)
  %263 = load i32, i32* %6, align 4
  %264 = or i32 %263, %262
  store i32 %264, i32* %6, align 4
  %265 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %266 = load i32, i32* @JBT_REG_BLANK_TH_TV, align 4
  %267 = call i32 @jbt_reg_write_2(%struct.panel_drv_data* %265, i32 %266, i32 2052)
  %268 = load i32, i32* %6, align 4
  %269 = or i32 %268, %267
  store i32 %269, i32* %6, align 4
  %270 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %271 = load i32, i32* @JBT_REG_CKV_ON_OFF, align 4
  %272 = call i32 @jbt_reg_write_1(%struct.panel_drv_data* %270, i32 %271, i32 1)
  %273 = load i32, i32* %6, align 4
  %274 = or i32 %273, %272
  store i32 %274, i32* %6, align 4
  %275 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %276 = load i32, i32* @JBT_REG_CKV_1_2, align 4
  %277 = call i32 @jbt_reg_write_2(%struct.panel_drv_data* %275, i32 %276, i32 0)
  %278 = load i32, i32* %6, align 4
  %279 = or i32 %278, %277
  store i32 %279, i32* %6, align 4
  %280 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %281 = load i32, i32* @JBT_REG_OEV_TIMING, align 4
  %282 = call i32 @jbt_reg_write_2(%struct.panel_drv_data* %280, i32 %281, i32 3342)
  %283 = load i32, i32* %6, align 4
  %284 = or i32 %283, %282
  store i32 %284, i32* %6, align 4
  %285 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %286 = load i32, i32* @JBT_REG_ASW_TIMING_1, align 4
  %287 = call i32 @jbt_reg_write_2(%struct.panel_drv_data* %285, i32 %286, i32 4516)
  %288 = load i32, i32* %6, align 4
  %289 = or i32 %288, %287
  store i32 %289, i32* %6, align 4
  %290 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %291 = load i32, i32* @JBT_REG_ASW_TIMING_2, align 4
  %292 = call i32 @jbt_reg_write_1(%struct.panel_drv_data* %290, i32 %291, i32 14)
  %293 = load i32, i32* %6, align 4
  %294 = or i32 %293, %292
  store i32 %294, i32* %6, align 4
  %295 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %296 = load i32, i32* @JBT_REG_DISPLAY_ON, align 4
  %297 = call i32 @jbt_ret_write_0(%struct.panel_drv_data* %295, i32 %296)
  %298 = load i32, i32* %6, align 4
  %299 = or i32 %298, %297
  store i32 %299, i32* %6, align 4
  %300 = load i32, i32* @OMAP_DSS_DISPLAY_ACTIVE, align 4
  %301 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %302 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %301, i32 0, i32 0
  store i32 %300, i32* %302, align 8
  br label %303

303:                                              ; preds = %94, %89
  %304 = load i32, i32* %6, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %309

306:                                              ; preds = %303
  %307 = load i32, i32* @EIO, align 4
  %308 = sub nsw i32 0, %307
  br label %310

309:                                              ; preds = %303
  br label %310

310:                                              ; preds = %309, %306
  %311 = phi i32 [ %308, %306 ], [ 0, %309 ]
  store i32 %311, i32* %2, align 4
  br label %312

312:                                              ; preds = %310, %62, %22, %15
  %313 = load i32, i32* %2, align 4
  ret i32 %313
}

declare dso_local %struct.panel_drv_data* @to_panel_data(%struct.omap_dss_device*) #1

declare dso_local i32 @omapdss_device_is_connected(%struct.omap_dss_device*) #1

declare dso_local i64 @omapdss_device_is_enabled(%struct.omap_dss_device*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @jbt_ret_write_0(%struct.panel_drv_data*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @jbt_reg_write_1(%struct.panel_drv_data*, i32, i32) #1

declare dso_local i32 @jbt_reg_write_2(%struct.panel_drv_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
