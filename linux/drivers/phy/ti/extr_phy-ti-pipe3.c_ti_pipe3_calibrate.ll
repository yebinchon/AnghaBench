; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/ti/extr_phy-ti-pipe3.c_ti_pipe3_calibrate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/ti/extr_phy-ti-pipe3.c_ti_pipe3_calibrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_pipe3 = type { i64, i32, %struct.pipe3_settings }
%struct.pipe3_settings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@PIPE3_PHY_RX_ANA_PROGRAMMABILITY = common dso_local global i32 0, align 4
@INTERFACE_MASK = common dso_local global i32 0, align 4
@LOSD_MASK = common dso_local global i32 0, align 4
@MEM_PLLDIV = common dso_local global i32 0, align 4
@INTERFACE_SHIFT = common dso_local global i32 0, align 4
@LOSD_SHIFT = common dso_local global i32 0, align 4
@PIPE3_PHY_RX_DIGITAL_MODES = common dso_local global i32 0, align 4
@MEM_HS_RATE_MASK = common dso_local global i32 0, align 4
@MEM_OVRD_HS_RATE = common dso_local global i32 0, align 4
@MEM_CDR_FASTLOCK = common dso_local global i32 0, align 4
@MEM_CDR_LBW_MASK = common dso_local global i32 0, align 4
@MEM_CDR_STEPCNT_MASK = common dso_local global i32 0, align 4
@MEM_CDR_STL_MASK = common dso_local global i32 0, align 4
@MEM_CDR_THR_MASK = common dso_local global i32 0, align 4
@MEM_CDR_THR_MODE = common dso_local global i32 0, align 4
@MEM_CDR_2NDO_SDM_MODE = common dso_local global i32 0, align 4
@MEM_HS_RATE_SHIFT = common dso_local global i32 0, align 4
@MEM_OVRD_HS_RATE_SHIFT = common dso_local global i32 0, align 4
@MEM_CDR_FASTLOCK_SHIFT = common dso_local global i32 0, align 4
@MEM_CDR_LBW_SHIFT = common dso_local global i32 0, align 4
@MEM_CDR_STEPCNT_SHIFT = common dso_local global i32 0, align 4
@MEM_CDR_STL_SHIFT = common dso_local global i32 0, align 4
@MEM_CDR_THR_SHIFT = common dso_local global i32 0, align 4
@MEM_CDR_THR_MODE_SHIFT = common dso_local global i32 0, align 4
@MEM_CDR_2NDO_SDM_MODE_SHIFT = common dso_local global i32 0, align 4
@PIPE3_PHY_RX_TRIM = common dso_local global i32 0, align 4
@MEM_DLL_TRIM_SEL_MASK = common dso_local global i32 0, align 4
@MEM_DLL_TRIM_SHIFT = common dso_local global i32 0, align 4
@PIPE3_PHY_RX_DLL = common dso_local global i32 0, align 4
@MEM_DLL_PHINT_RATE_MASK = common dso_local global i32 0, align 4
@MEM_DLL_PHINT_RATE_SHIFT = common dso_local global i32 0, align 4
@PIPE3_PHY_RX_EQUALIZER = common dso_local global i32 0, align 4
@MEM_EQLEV_MASK = common dso_local global i32 0, align 4
@MEM_EQFTC_MASK = common dso_local global i32 0, align 4
@MEM_EQCTL_MASK = common dso_local global i32 0, align 4
@MEM_OVRD_EQLEV = common dso_local global i32 0, align 4
@MEM_OVRD_EQFTC = common dso_local global i32 0, align 4
@MEM_EQLEV_SHIFT = common dso_local global i32 0, align 4
@MEM_EQFTC_SHIFT = common dso_local global i32 0, align 4
@MEM_EQCTL_SHIFT = common dso_local global i32 0, align 4
@MEM_OVRD_EQLEV_SHIFT = common dso_local global i32 0, align 4
@MEM_OVRD_EQFTC_SHIFT = common dso_local global i32 0, align 4
@PIPE3_MODE_SATA = common dso_local global i64 0, align 8
@SATA_PHY_RX_IO_AND_A2D_OVERRIDES = common dso_local global i32 0, align 4
@MEM_CDR_LOS_SOURCE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ti_pipe3*)* @ti_pipe3_calibrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ti_pipe3_calibrate(%struct.ti_pipe3* %0) #0 {
  %2 = alloca %struct.ti_pipe3*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.pipe3_settings*, align 8
  store %struct.ti_pipe3* %0, %struct.ti_pipe3** %2, align 8
  %5 = load %struct.ti_pipe3*, %struct.ti_pipe3** %2, align 8
  %6 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %5, i32 0, i32 2
  store %struct.pipe3_settings* %6, %struct.pipe3_settings** %4, align 8
  %7 = load %struct.ti_pipe3*, %struct.ti_pipe3** %2, align 8
  %8 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @PIPE3_PHY_RX_ANA_PROGRAMMABILITY, align 4
  %11 = call i32 @ti_pipe3_readl(i32 %9, i32 %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* @INTERFACE_MASK, align 4
  %13 = load i32, i32* @LOSD_MASK, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @MEM_PLLDIV, align 4
  %16 = or i32 %14, %15
  %17 = xor i32 %16, -1
  %18 = load i32, i32* %3, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %3, align 4
  %20 = load %struct.pipe3_settings*, %struct.pipe3_settings** %4, align 8
  %21 = getelementptr inbounds %struct.pipe3_settings, %struct.pipe3_settings* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @INTERFACE_SHIFT, align 4
  %24 = shl i32 %22, %23
  %25 = load %struct.pipe3_settings*, %struct.pipe3_settings** %4, align 8
  %26 = getelementptr inbounds %struct.pipe3_settings, %struct.pipe3_settings* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @LOSD_SHIFT, align 4
  %29 = shl i32 %27, %28
  %30 = or i32 %24, %29
  %31 = load i32, i32* %3, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %3, align 4
  %33 = load %struct.ti_pipe3*, %struct.ti_pipe3** %2, align 8
  %34 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @PIPE3_PHY_RX_ANA_PROGRAMMABILITY, align 4
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @ti_pipe3_writel(i32 %35, i32 %36, i32 %37)
  %39 = load %struct.ti_pipe3*, %struct.ti_pipe3** %2, align 8
  %40 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @PIPE3_PHY_RX_DIGITAL_MODES, align 4
  %43 = call i32 @ti_pipe3_readl(i32 %41, i32 %42)
  store i32 %43, i32* %3, align 4
  %44 = load i32, i32* @MEM_HS_RATE_MASK, align 4
  %45 = load i32, i32* @MEM_OVRD_HS_RATE, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @MEM_CDR_FASTLOCK, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @MEM_CDR_LBW_MASK, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @MEM_CDR_STEPCNT_MASK, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @MEM_CDR_STL_MASK, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @MEM_CDR_THR_MASK, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @MEM_CDR_THR_MODE, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @MEM_CDR_2NDO_SDM_MODE, align 4
  %60 = or i32 %58, %59
  %61 = xor i32 %60, -1
  %62 = load i32, i32* %3, align 4
  %63 = and i32 %62, %61
  store i32 %63, i32* %3, align 4
  %64 = load %struct.pipe3_settings*, %struct.pipe3_settings** %4, align 8
  %65 = getelementptr inbounds %struct.pipe3_settings, %struct.pipe3_settings* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @MEM_HS_RATE_SHIFT, align 4
  %68 = shl i32 %66, %67
  %69 = load %struct.pipe3_settings*, %struct.pipe3_settings** %4, align 8
  %70 = getelementptr inbounds %struct.pipe3_settings, %struct.pipe3_settings* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @MEM_OVRD_HS_RATE_SHIFT, align 4
  %73 = shl i32 %71, %72
  %74 = or i32 %68, %73
  %75 = load %struct.pipe3_settings*, %struct.pipe3_settings** %4, align 8
  %76 = getelementptr inbounds %struct.pipe3_settings, %struct.pipe3_settings* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @MEM_CDR_FASTLOCK_SHIFT, align 4
  %79 = shl i32 %77, %78
  %80 = or i32 %74, %79
  %81 = load %struct.pipe3_settings*, %struct.pipe3_settings** %4, align 8
  %82 = getelementptr inbounds %struct.pipe3_settings, %struct.pipe3_settings* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @MEM_CDR_LBW_SHIFT, align 4
  %85 = shl i32 %83, %84
  %86 = or i32 %80, %85
  %87 = load %struct.pipe3_settings*, %struct.pipe3_settings** %4, align 8
  %88 = getelementptr inbounds %struct.pipe3_settings, %struct.pipe3_settings* %87, i32 0, i32 6
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @MEM_CDR_STEPCNT_SHIFT, align 4
  %91 = shl i32 %89, %90
  %92 = or i32 %86, %91
  %93 = load %struct.pipe3_settings*, %struct.pipe3_settings** %4, align 8
  %94 = getelementptr inbounds %struct.pipe3_settings, %struct.pipe3_settings* %93, i32 0, i32 7
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @MEM_CDR_STL_SHIFT, align 4
  %97 = shl i32 %95, %96
  %98 = or i32 %92, %97
  %99 = load %struct.pipe3_settings*, %struct.pipe3_settings** %4, align 8
  %100 = getelementptr inbounds %struct.pipe3_settings, %struct.pipe3_settings* %99, i32 0, i32 8
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @MEM_CDR_THR_SHIFT, align 4
  %103 = shl i32 %101, %102
  %104 = or i32 %98, %103
  %105 = load %struct.pipe3_settings*, %struct.pipe3_settings** %4, align 8
  %106 = getelementptr inbounds %struct.pipe3_settings, %struct.pipe3_settings* %105, i32 0, i32 9
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @MEM_CDR_THR_MODE_SHIFT, align 4
  %109 = shl i32 %107, %108
  %110 = or i32 %104, %109
  %111 = load %struct.pipe3_settings*, %struct.pipe3_settings** %4, align 8
  %112 = getelementptr inbounds %struct.pipe3_settings, %struct.pipe3_settings* %111, i32 0, i32 10
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @MEM_CDR_2NDO_SDM_MODE_SHIFT, align 4
  %115 = shl i32 %113, %114
  %116 = or i32 %110, %115
  %117 = load i32, i32* %3, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %3, align 4
  %119 = load %struct.ti_pipe3*, %struct.ti_pipe3** %2, align 8
  %120 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @PIPE3_PHY_RX_DIGITAL_MODES, align 4
  %123 = load i32, i32* %3, align 4
  %124 = call i32 @ti_pipe3_writel(i32 %121, i32 %122, i32 %123)
  %125 = load %struct.ti_pipe3*, %struct.ti_pipe3** %2, align 8
  %126 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @PIPE3_PHY_RX_TRIM, align 4
  %129 = call i32 @ti_pipe3_readl(i32 %127, i32 %128)
  store i32 %129, i32* %3, align 4
  %130 = load i32, i32* @MEM_DLL_TRIM_SEL_MASK, align 4
  %131 = xor i32 %130, -1
  %132 = load i32, i32* %3, align 4
  %133 = and i32 %132, %131
  store i32 %133, i32* %3, align 4
  %134 = load %struct.pipe3_settings*, %struct.pipe3_settings** %4, align 8
  %135 = getelementptr inbounds %struct.pipe3_settings, %struct.pipe3_settings* %134, i32 0, i32 11
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @MEM_DLL_TRIM_SHIFT, align 4
  %138 = shl i32 %136, %137
  %139 = load i32, i32* %3, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %3, align 4
  %141 = load %struct.ti_pipe3*, %struct.ti_pipe3** %2, align 8
  %142 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @PIPE3_PHY_RX_TRIM, align 4
  %145 = load i32, i32* %3, align 4
  %146 = call i32 @ti_pipe3_writel(i32 %143, i32 %144, i32 %145)
  %147 = load %struct.ti_pipe3*, %struct.ti_pipe3** %2, align 8
  %148 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @PIPE3_PHY_RX_DLL, align 4
  %151 = call i32 @ti_pipe3_readl(i32 %149, i32 %150)
  store i32 %151, i32* %3, align 4
  %152 = load i32, i32* @MEM_DLL_PHINT_RATE_MASK, align 4
  %153 = xor i32 %152, -1
  %154 = load i32, i32* %3, align 4
  %155 = and i32 %154, %153
  store i32 %155, i32* %3, align 4
  %156 = load %struct.pipe3_settings*, %struct.pipe3_settings** %4, align 8
  %157 = getelementptr inbounds %struct.pipe3_settings, %struct.pipe3_settings* %156, i32 0, i32 12
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @MEM_DLL_PHINT_RATE_SHIFT, align 4
  %160 = shl i32 %158, %159
  %161 = load i32, i32* %3, align 4
  %162 = or i32 %161, %160
  store i32 %162, i32* %3, align 4
  %163 = load %struct.ti_pipe3*, %struct.ti_pipe3** %2, align 8
  %164 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* @PIPE3_PHY_RX_DLL, align 4
  %167 = load i32, i32* %3, align 4
  %168 = call i32 @ti_pipe3_writel(i32 %165, i32 %166, i32 %167)
  %169 = load %struct.ti_pipe3*, %struct.ti_pipe3** %2, align 8
  %170 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* @PIPE3_PHY_RX_EQUALIZER, align 4
  %173 = call i32 @ti_pipe3_readl(i32 %171, i32 %172)
  store i32 %173, i32* %3, align 4
  %174 = load i32, i32* @MEM_EQLEV_MASK, align 4
  %175 = load i32, i32* @MEM_EQFTC_MASK, align 4
  %176 = or i32 %174, %175
  %177 = load i32, i32* @MEM_EQCTL_MASK, align 4
  %178 = or i32 %176, %177
  %179 = load i32, i32* @MEM_OVRD_EQLEV, align 4
  %180 = or i32 %178, %179
  %181 = load i32, i32* @MEM_OVRD_EQFTC, align 4
  %182 = or i32 %180, %181
  %183 = xor i32 %182, -1
  %184 = load i32, i32* %3, align 4
  %185 = and i32 %184, %183
  store i32 %185, i32* %3, align 4
  %186 = load %struct.pipe3_settings*, %struct.pipe3_settings** %4, align 8
  %187 = getelementptr inbounds %struct.pipe3_settings, %struct.pipe3_settings* %186, i32 0, i32 13
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* @MEM_EQLEV_SHIFT, align 4
  %190 = shl i32 %188, %189
  %191 = load %struct.pipe3_settings*, %struct.pipe3_settings** %4, align 8
  %192 = getelementptr inbounds %struct.pipe3_settings, %struct.pipe3_settings* %191, i32 0, i32 14
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* @MEM_EQFTC_SHIFT, align 4
  %195 = shl i32 %193, %194
  %196 = or i32 %190, %195
  %197 = load %struct.pipe3_settings*, %struct.pipe3_settings** %4, align 8
  %198 = getelementptr inbounds %struct.pipe3_settings, %struct.pipe3_settings* %197, i32 0, i32 15
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* @MEM_EQCTL_SHIFT, align 4
  %201 = shl i32 %199, %200
  %202 = or i32 %196, %201
  %203 = load %struct.pipe3_settings*, %struct.pipe3_settings** %4, align 8
  %204 = getelementptr inbounds %struct.pipe3_settings, %struct.pipe3_settings* %203, i32 0, i32 16
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* @MEM_OVRD_EQLEV_SHIFT, align 4
  %207 = shl i32 %205, %206
  %208 = or i32 %202, %207
  %209 = load %struct.pipe3_settings*, %struct.pipe3_settings** %4, align 8
  %210 = getelementptr inbounds %struct.pipe3_settings, %struct.pipe3_settings* %209, i32 0, i32 17
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* @MEM_OVRD_EQFTC_SHIFT, align 4
  %213 = shl i32 %211, %212
  %214 = or i32 %208, %213
  %215 = load i32, i32* %3, align 4
  %216 = or i32 %215, %214
  store i32 %216, i32* %3, align 4
  %217 = load %struct.ti_pipe3*, %struct.ti_pipe3** %2, align 8
  %218 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 8
  %220 = load i32, i32* @PIPE3_PHY_RX_EQUALIZER, align 4
  %221 = load i32, i32* %3, align 4
  %222 = call i32 @ti_pipe3_writel(i32 %219, i32 %220, i32 %221)
  %223 = load %struct.ti_pipe3*, %struct.ti_pipe3** %2, align 8
  %224 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = load i64, i64* @PIPE3_MODE_SATA, align 8
  %227 = icmp eq i64 %225, %226
  br i1 %227, label %228, label %244

228:                                              ; preds = %1
  %229 = load %struct.ti_pipe3*, %struct.ti_pipe3** %2, align 8
  %230 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 8
  %232 = load i32, i32* @SATA_PHY_RX_IO_AND_A2D_OVERRIDES, align 4
  %233 = call i32 @ti_pipe3_readl(i32 %231, i32 %232)
  store i32 %233, i32* %3, align 4
  %234 = load i32, i32* @MEM_CDR_LOS_SOURCE_MASK, align 4
  %235 = xor i32 %234, -1
  %236 = load i32, i32* %3, align 4
  %237 = and i32 %236, %235
  store i32 %237, i32* %3, align 4
  %238 = load %struct.ti_pipe3*, %struct.ti_pipe3** %2, align 8
  %239 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 8
  %241 = load i32, i32* @SATA_PHY_RX_IO_AND_A2D_OVERRIDES, align 4
  %242 = load i32, i32* %3, align 4
  %243 = call i32 @ti_pipe3_writel(i32 %240, i32 %241, i32 %242)
  br label %244

244:                                              ; preds = %228, %1
  ret void
}

declare dso_local i32 @ti_pipe3_readl(i32, i32) #1

declare dso_local i32 @ti_pipe3_writel(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
