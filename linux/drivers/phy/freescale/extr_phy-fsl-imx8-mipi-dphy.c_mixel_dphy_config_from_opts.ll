; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/freescale/extr_phy-fsl-imx8-mipi-dphy.c_mixel_dphy_config_from_opts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/freescale/extr_phy-fsl-imx8-mipi-dphy.c_mixel_dphy_config_from_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.phy_configure_opts_mipi_dphy = type { i32, i32, i32, i32 }
%struct.mixel_dphy_cfg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mixel_dphy_priv = type { i32 }

@DATA_RATE_MAX_SPEED = common dso_local global i32 0, align 4
@DATA_RATE_MIN_SPEED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Invalid %d/%d for %ld/%ld\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Invalid CM/CN/CO values: %u/%u/%u\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"for hs_clk/ref_clk=%ld/%ld ~ %d/%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"hs_clk/ref_clk=%ld/%ld ~ %d/%d\0A\00", align 1
@ULONG_MAX = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [29 x i8] c"LP clock %lu, period: %u ps\0A\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"hs_prepare (%u) > 2.5 * lp clock period (%u)\0A\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"clk_prepare (%u) > 1.5 * lp clock period (%u)\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"phy_config: %u %u %u %u %u %u %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*, %struct.phy_configure_opts_mipi_dphy*, %struct.mixel_dphy_cfg*)* @mixel_dphy_config_from_opts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mixel_dphy_config_from_opts(%struct.phy* %0, %struct.phy_configure_opts_mipi_dphy* %1, %struct.mixel_dphy_cfg* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.phy*, align 8
  %6 = alloca %struct.phy_configure_opts_mipi_dphy*, align 8
  %7 = alloca %struct.mixel_dphy_cfg*, align 8
  %8 = alloca %struct.mixel_dphy_priv*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.phy* %0, %struct.phy** %5, align 8
  store %struct.phy_configure_opts_mipi_dphy* %1, %struct.phy_configure_opts_mipi_dphy** %6, align 8
  store %struct.mixel_dphy_cfg* %2, %struct.mixel_dphy_cfg** %7, align 8
  %16 = load %struct.phy*, %struct.phy** %5, align 8
  %17 = getelementptr inbounds %struct.phy, %struct.phy* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.mixel_dphy_priv* @dev_get_drvdata(i32 %19)
  store %struct.mixel_dphy_priv* %20, %struct.mixel_dphy_priv** %8, align 8
  %21 = load %struct.mixel_dphy_priv*, %struct.mixel_dphy_priv** %8, align 8
  %22 = getelementptr inbounds %struct.mixel_dphy_priv, %struct.mixel_dphy_priv* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @clk_get_rate(i32 %23)
  store i64 %24, i64* %9, align 8
  %25 = load %struct.phy_configure_opts_mipi_dphy*, %struct.phy_configure_opts_mipi_dphy** %6, align 8
  %26 = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, %struct.phy_configure_opts_mipi_dphy* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @DATA_RATE_MAX_SPEED, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %36, label %30

30:                                               ; preds = %3
  %31 = load %struct.phy_configure_opts_mipi_dphy*, %struct.phy_configure_opts_mipi_dphy** %6, align 8
  %32 = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, %struct.phy_configure_opts_mipi_dphy* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @DATA_RATE_MIN_SPEED, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %30, %3
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %389

39:                                               ; preds = %30
  %40 = load %struct.phy_configure_opts_mipi_dphy*, %struct.phy_configure_opts_mipi_dphy** %6, align 8
  %41 = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, %struct.phy_configure_opts_mipi_dphy* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %11, align 4
  %43 = load i64, i64* %9, align 8
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %12, align 4
  %45 = call i32 @get_best_ratio(i32* %11, i32* %12, i32 255, i32 256)
  %46 = load i32, i32* %11, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %39
  %49 = load i32, i32* %12, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %63, label %51

51:                                               ; preds = %48, %39
  %52 = load %struct.phy*, %struct.phy** %5, align 8
  %53 = getelementptr inbounds %struct.phy, %struct.phy* %52, i32 0, i32 0
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %12, align 4
  %56 = load %struct.phy_configure_opts_mipi_dphy*, %struct.phy_configure_opts_mipi_dphy** %6, align 8
  %57 = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, %struct.phy_configure_opts_mipi_dphy* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i64, i64* %9, align 8
  %60 = call i32 (%struct.TYPE_3__*, i8*, i32, i32, ...) @dev_err(%struct.TYPE_3__* %53, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %55, i32 %58, i64 %59)
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %389

63:                                               ; preds = %48
  br label %64

64:                                               ; preds = %72, %63
  %65 = load i32, i32* %11, align 4
  %66 = icmp slt i32 %65, 16
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load i32, i32* %12, align 4
  %69 = icmp sle i32 %68, 128
  br label %70

70:                                               ; preds = %67, %64
  %71 = phi i1 [ false, %64 ], [ %69, %67 ]
  br i1 %71, label %72, label %77

72:                                               ; preds = %70
  %73 = load i32, i32* %11, align 4
  %74 = shl i32 %73, 1
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %12, align 4
  %76 = shl i32 %75, 1
  store i32 %76, i32* %12, align 4
  br label %64

77:                                               ; preds = %70
  %78 = load i32, i32* %12, align 4
  %79 = call i32 @__ffs(i32 %78)
  store i32 %79, i32* %15, align 4
  %80 = load i32, i32* %15, align 4
  %81 = icmp sgt i32 %80, 3
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  store i32 3, i32* %15, align 4
  br label %83

83:                                               ; preds = %82, %77
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* %15, align 4
  %86 = ashr i32 %84, %85
  %87 = load %struct.mixel_dphy_cfg*, %struct.mixel_dphy_cfg** %7, align 8
  %88 = getelementptr inbounds %struct.mixel_dphy_cfg, %struct.mixel_dphy_cfg* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 4
  %89 = load i32, i32* %15, align 4
  %90 = shl i32 1, %89
  %91 = load %struct.mixel_dphy_cfg*, %struct.mixel_dphy_cfg** %7, align 8
  %92 = getelementptr inbounds %struct.mixel_dphy_cfg, %struct.mixel_dphy_cfg* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 4
  %93 = load i32, i32* %11, align 4
  %94 = load %struct.mixel_dphy_cfg*, %struct.mixel_dphy_cfg** %7, align 8
  %95 = getelementptr inbounds %struct.mixel_dphy_cfg, %struct.mixel_dphy_cfg* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 4
  %96 = load %struct.mixel_dphy_cfg*, %struct.mixel_dphy_cfg** %7, align 8
  %97 = getelementptr inbounds %struct.mixel_dphy_cfg, %struct.mixel_dphy_cfg* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = icmp slt i32 %98, 16
  br i1 %99, label %125, label %100

100:                                              ; preds = %83
  %101 = load %struct.mixel_dphy_cfg*, %struct.mixel_dphy_cfg** %7, align 8
  %102 = getelementptr inbounds %struct.mixel_dphy_cfg, %struct.mixel_dphy_cfg* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = icmp sgt i32 %103, 255
  br i1 %104, label %125, label %105

105:                                              ; preds = %100
  %106 = load %struct.mixel_dphy_cfg*, %struct.mixel_dphy_cfg** %7, align 8
  %107 = getelementptr inbounds %struct.mixel_dphy_cfg, %struct.mixel_dphy_cfg* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = icmp slt i32 %108, 1
  br i1 %109, label %125, label %110

110:                                              ; preds = %105
  %111 = load %struct.mixel_dphy_cfg*, %struct.mixel_dphy_cfg** %7, align 8
  %112 = getelementptr inbounds %struct.mixel_dphy_cfg, %struct.mixel_dphy_cfg* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = icmp sgt i32 %113, 32
  br i1 %114, label %125, label %115

115:                                              ; preds = %110
  %116 = load %struct.mixel_dphy_cfg*, %struct.mixel_dphy_cfg** %7, align 8
  %117 = getelementptr inbounds %struct.mixel_dphy_cfg, %struct.mixel_dphy_cfg* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = icmp slt i32 %118, 1
  br i1 %119, label %125, label %120

120:                                              ; preds = %115
  %121 = load %struct.mixel_dphy_cfg*, %struct.mixel_dphy_cfg** %7, align 8
  %122 = getelementptr inbounds %struct.mixel_dphy_cfg, %struct.mixel_dphy_cfg* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = icmp sgt i32 %123, 8
  br i1 %124, label %125, label %150

125:                                              ; preds = %120, %115, %110, %105, %100, %83
  %126 = load %struct.phy*, %struct.phy** %5, align 8
  %127 = getelementptr inbounds %struct.phy, %struct.phy* %126, i32 0, i32 0
  %128 = load %struct.mixel_dphy_cfg*, %struct.mixel_dphy_cfg** %7, align 8
  %129 = getelementptr inbounds %struct.mixel_dphy_cfg, %struct.mixel_dphy_cfg* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.mixel_dphy_cfg*, %struct.mixel_dphy_cfg** %7, align 8
  %132 = getelementptr inbounds %struct.mixel_dphy_cfg, %struct.mixel_dphy_cfg* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.mixel_dphy_cfg*, %struct.mixel_dphy_cfg** %7, align 8
  %135 = getelementptr inbounds %struct.mixel_dphy_cfg, %struct.mixel_dphy_cfg* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = call i32 (%struct.TYPE_3__*, i8*, i32, i32, ...) @dev_err(%struct.TYPE_3__* %127, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %130, i32 %133, i32 %136)
  %138 = load %struct.phy*, %struct.phy** %5, align 8
  %139 = getelementptr inbounds %struct.phy, %struct.phy* %138, i32 0, i32 0
  %140 = load %struct.phy_configure_opts_mipi_dphy*, %struct.phy_configure_opts_mipi_dphy** %6, align 8
  %141 = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, %struct.phy_configure_opts_mipi_dphy* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load i64, i64* %9, align 8
  %144 = trunc i64 %143 to i32
  %145 = load i32, i32* %11, align 4
  %146 = load i32, i32* %12, align 4
  %147 = call i32 (%struct.TYPE_3__*, i8*, i32, i32, ...) @dev_err(%struct.TYPE_3__* %139, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %142, i32 %144, i32 %145, i32 %146)
  %148 = load i32, i32* @EINVAL, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %4, align 4
  br label %389

150:                                              ; preds = %120
  %151 = load %struct.phy*, %struct.phy** %5, align 8
  %152 = getelementptr inbounds %struct.phy, %struct.phy* %151, i32 0, i32 0
  %153 = load %struct.phy_configure_opts_mipi_dphy*, %struct.phy_configure_opts_mipi_dphy** %6, align 8
  %154 = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, %struct.phy_configure_opts_mipi_dphy* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load i64, i64* %9, align 8
  %157 = trunc i64 %156 to i32
  %158 = load i32, i32* %11, align 4
  %159 = load i32, i32* %12, align 4
  %160 = call i32 (%struct.TYPE_3__*, i8*, i32, i32, ...) @dev_dbg(%struct.TYPE_3__* %152, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %155, i32 %157, i32 %158, i32 %159)
  store i64 1000000000000, i64* %13, align 8
  %161 = load i64, i64* %13, align 8
  %162 = load %struct.phy_configure_opts_mipi_dphy*, %struct.phy_configure_opts_mipi_dphy** %6, align 8
  %163 = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, %struct.phy_configure_opts_mipi_dphy* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @do_div(i64 %161, i32 %164)
  %166 = load i64, i64* %13, align 8
  %167 = load i64, i64* @ULONG_MAX, align 8
  %168 = icmp ugt i64 %166, %167
  br i1 %168, label %169, label %172

169:                                              ; preds = %150
  %170 = load i32, i32* @EINVAL, align 4
  %171 = sub nsw i32 0, %170
  store i32 %171, i32* %4, align 4
  br label %389

172:                                              ; preds = %150
  %173 = load i64, i64* %13, align 8
  %174 = trunc i64 %173 to i32
  store i32 %174, i32* %10, align 4
  %175 = load %struct.phy*, %struct.phy** %5, align 8
  %176 = getelementptr inbounds %struct.phy, %struct.phy* %175, i32 0, i32 0
  %177 = load %struct.phy_configure_opts_mipi_dphy*, %struct.phy_configure_opts_mipi_dphy** %6, align 8
  %178 = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, %struct.phy_configure_opts_mipi_dphy* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* %10, align 4
  %181 = call i32 (%struct.TYPE_3__*, i8*, i32, i32, ...) @dev_dbg(%struct.TYPE_3__* %176, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %179, i32 %180)
  %182 = load %struct.phy_configure_opts_mipi_dphy*, %struct.phy_configure_opts_mipi_dphy** %6, align 8
  %183 = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, %struct.phy_configure_opts_mipi_dphy* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = mul nsw i32 2, %184
  %186 = load i32, i32* %10, align 4
  %187 = mul nsw i32 5, %186
  %188 = icmp sgt i32 %185, %187
  br i1 %188, label %189, label %199

189:                                              ; preds = %172
  %190 = load %struct.phy*, %struct.phy** %5, align 8
  %191 = getelementptr inbounds %struct.phy, %struct.phy* %190, i32 0, i32 0
  %192 = load %struct.phy_configure_opts_mipi_dphy*, %struct.phy_configure_opts_mipi_dphy** %6, align 8
  %193 = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, %struct.phy_configure_opts_mipi_dphy* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* %10, align 4
  %196 = call i32 (%struct.TYPE_3__*, i8*, i32, i32, ...) @dev_err(%struct.TYPE_3__* %191, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i32 %194, i32 %195)
  %197 = load i32, i32* @EINVAL, align 4
  %198 = sub nsw i32 0, %197
  store i32 %198, i32* %4, align 4
  br label %389

199:                                              ; preds = %172
  %200 = load %struct.phy_configure_opts_mipi_dphy*, %struct.phy_configure_opts_mipi_dphy** %6, align 8
  %201 = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, %struct.phy_configure_opts_mipi_dphy* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* %10, align 4
  %204 = icmp slt i32 %202, %203
  br i1 %204, label %205, label %206

205:                                              ; preds = %199
  store i32 0, i32* %14, align 4
  br label %219

206:                                              ; preds = %199
  %207 = load %struct.phy_configure_opts_mipi_dphy*, %struct.phy_configure_opts_mipi_dphy** %6, align 8
  %208 = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, %struct.phy_configure_opts_mipi_dphy* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* %10, align 4
  %211 = sub nsw i32 %209, %210
  %212 = mul nsw i32 2, %211
  %213 = sext i32 %212 to i64
  store i64 %213, i64* %13, align 8
  %214 = load i64, i64* %13, align 8
  %215 = load i32, i32* %10, align 4
  %216 = call i32 @do_div(i64 %214, i32 %215)
  %217 = load i64, i64* %13, align 8
  %218 = trunc i64 %217 to i32
  store i32 %218, i32* %14, align 4
  br label %219

219:                                              ; preds = %206, %205
  %220 = load i32, i32* %14, align 4
  %221 = load %struct.mixel_dphy_cfg*, %struct.mixel_dphy_cfg** %7, align 8
  %222 = getelementptr inbounds %struct.mixel_dphy_cfg, %struct.mixel_dphy_cfg* %221, i32 0, i32 3
  store i32 %220, i32* %222, align 4
  %223 = load %struct.phy_configure_opts_mipi_dphy*, %struct.phy_configure_opts_mipi_dphy** %6, align 8
  %224 = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, %struct.phy_configure_opts_mipi_dphy* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 4
  %226 = mul nsw i32 2, %225
  %227 = load i32, i32* %10, align 4
  %228 = mul nsw i32 3, %227
  %229 = icmp sgt i32 %226, %228
  br i1 %229, label %230, label %240

230:                                              ; preds = %219
  %231 = load %struct.phy*, %struct.phy** %5, align 8
  %232 = getelementptr inbounds %struct.phy, %struct.phy* %231, i32 0, i32 0
  %233 = load %struct.phy_configure_opts_mipi_dphy*, %struct.phy_configure_opts_mipi_dphy** %6, align 8
  %234 = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, %struct.phy_configure_opts_mipi_dphy* %233, i32 0, i32 3
  %235 = load i32, i32* %234, align 4
  %236 = load i32, i32* %10, align 4
  %237 = call i32 (%struct.TYPE_3__*, i8*, i32, i32, ...) @dev_err(%struct.TYPE_3__* %232, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0), i32 %235, i32 %236)
  %238 = load i32, i32* @EINVAL, align 4
  %239 = sub nsw i32 0, %238
  store i32 %239, i32* %4, align 4
  br label %389

240:                                              ; preds = %219
  %241 = load %struct.phy_configure_opts_mipi_dphy*, %struct.phy_configure_opts_mipi_dphy** %6, align 8
  %242 = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, %struct.phy_configure_opts_mipi_dphy* %241, i32 0, i32 3
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* %10, align 4
  %245 = icmp sgt i32 %243, %244
  %246 = zext i1 %245 to i64
  %247 = select i1 %245, i32 1, i32 0
  %248 = load %struct.mixel_dphy_cfg*, %struct.mixel_dphy_cfg** %7, align 8
  %249 = getelementptr inbounds %struct.mixel_dphy_cfg, %struct.mixel_dphy_cfg* %248, i32 0, i32 4
  store i32 %247, i32* %249, align 4
  %250 = load %struct.phy_configure_opts_mipi_dphy*, %struct.phy_configure_opts_mipi_dphy** %6, align 8
  %251 = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, %struct.phy_configure_opts_mipi_dphy* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  %253 = sdiv i32 %252, 1000000
  %254 = mul nsw i32 144, %253
  %255 = sub nsw i32 %254, 47500
  %256 = sdiv i32 %255, 10000
  store i32 %256, i32* %14, align 4
  %257 = load i32, i32* %14, align 4
  %258 = icmp slt i32 %257, 1
  br i1 %258, label %259, label %260

259:                                              ; preds = %240
  br label %262

260:                                              ; preds = %240
  %261 = load i32, i32* %14, align 4
  br label %262

262:                                              ; preds = %260, %259
  %263 = phi i32 [ 1, %259 ], [ %261, %260 ]
  %264 = load %struct.mixel_dphy_cfg*, %struct.mixel_dphy_cfg** %7, align 8
  %265 = getelementptr inbounds %struct.mixel_dphy_cfg, %struct.mixel_dphy_cfg* %264, i32 0, i32 5
  store i32 %263, i32* %265, align 4
  %266 = load %struct.phy_configure_opts_mipi_dphy*, %struct.phy_configure_opts_mipi_dphy** %6, align 8
  %267 = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, %struct.phy_configure_opts_mipi_dphy* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 4
  %269 = sdiv i32 %268, 1000000
  %270 = mul nsw i32 34, %269
  %271 = sub nsw i32 %270, 2500
  %272 = sdiv i32 %271, 1000
  store i32 %272, i32* %14, align 4
  %273 = load i32, i32* %14, align 4
  %274 = icmp slt i32 %273, 1
  br i1 %274, label %275, label %276

275:                                              ; preds = %262
  br label %278

276:                                              ; preds = %262
  %277 = load i32, i32* %14, align 4
  br label %278

278:                                              ; preds = %276, %275
  %279 = phi i32 [ 1, %275 ], [ %277, %276 ]
  %280 = load %struct.mixel_dphy_cfg*, %struct.mixel_dphy_cfg** %7, align 8
  %281 = getelementptr inbounds %struct.mixel_dphy_cfg, %struct.mixel_dphy_cfg* %280, i32 0, i32 6
  store i32 %279, i32* %281, align 4
  %282 = load %struct.phy_configure_opts_mipi_dphy*, %struct.phy_configure_opts_mipi_dphy** %6, align 8
  %283 = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, %struct.phy_configure_opts_mipi_dphy* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 4
  %285 = sdiv i32 %284, 1000000
  %286 = mul nsw i32 103, %285
  %287 = add nsw i32 %286, 10000
  %288 = sdiv i32 %287, 10000
  store i32 %288, i32* %14, align 4
  %289 = load i32, i32* %14, align 4
  %290 = icmp sgt i32 %289, 15
  br i1 %290, label %291, label %292

291:                                              ; preds = %278
  store i32 15, i32* %14, align 4
  br label %292

292:                                              ; preds = %291, %278
  %293 = load i32, i32* %14, align 4
  %294 = icmp slt i32 %293, 1
  br i1 %294, label %295, label %296

295:                                              ; preds = %292
  store i32 1, i32* %14, align 4
  br label %296

296:                                              ; preds = %295, %292
  %297 = load i32, i32* %14, align 4
  %298 = load %struct.mixel_dphy_cfg*, %struct.mixel_dphy_cfg** %7, align 8
  %299 = getelementptr inbounds %struct.mixel_dphy_cfg, %struct.mixel_dphy_cfg* %298, i32 0, i32 7
  store i32 %297, i32* %299, align 4
  %300 = load i32, i32* %14, align 4
  %301 = load %struct.mixel_dphy_cfg*, %struct.mixel_dphy_cfg** %7, align 8
  %302 = getelementptr inbounds %struct.mixel_dphy_cfg, %struct.mixel_dphy_cfg* %301, i32 0, i32 8
  store i32 %300, i32* %302, align 4
  %303 = load %struct.phy_configure_opts_mipi_dphy*, %struct.phy_configure_opts_mipi_dphy** %6, align 8
  %304 = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, %struct.phy_configure_opts_mipi_dphy* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 4
  %306 = call i32 @MBPS(i32 80)
  %307 = icmp slt i32 %305, %306
  br i1 %307, label %308, label %311

308:                                              ; preds = %296
  %309 = load %struct.mixel_dphy_cfg*, %struct.mixel_dphy_cfg** %7, align 8
  %310 = getelementptr inbounds %struct.mixel_dphy_cfg, %struct.mixel_dphy_cfg* %309, i32 0, i32 9
  store i32 13, i32* %310, align 4
  br label %364

311:                                              ; preds = %296
  %312 = load %struct.phy_configure_opts_mipi_dphy*, %struct.phy_configure_opts_mipi_dphy** %6, align 8
  %313 = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, %struct.phy_configure_opts_mipi_dphy* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 4
  %315 = call i32 @MBPS(i32 90)
  %316 = icmp slt i32 %314, %315
  br i1 %316, label %317, label %320

317:                                              ; preds = %311
  %318 = load %struct.mixel_dphy_cfg*, %struct.mixel_dphy_cfg** %7, align 8
  %319 = getelementptr inbounds %struct.mixel_dphy_cfg, %struct.mixel_dphy_cfg* %318, i32 0, i32 9
  store i32 12, i32* %319, align 4
  br label %363

320:                                              ; preds = %311
  %321 = load %struct.phy_configure_opts_mipi_dphy*, %struct.phy_configure_opts_mipi_dphy** %6, align 8
  %322 = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, %struct.phy_configure_opts_mipi_dphy* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 4
  %324 = call i32 @MBPS(i32 125)
  %325 = icmp slt i32 %323, %324
  br i1 %325, label %326, label %329

326:                                              ; preds = %320
  %327 = load %struct.mixel_dphy_cfg*, %struct.mixel_dphy_cfg** %7, align 8
  %328 = getelementptr inbounds %struct.mixel_dphy_cfg, %struct.mixel_dphy_cfg* %327, i32 0, i32 9
  store i32 11, i32* %328, align 4
  br label %362

329:                                              ; preds = %320
  %330 = load %struct.phy_configure_opts_mipi_dphy*, %struct.phy_configure_opts_mipi_dphy** %6, align 8
  %331 = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, %struct.phy_configure_opts_mipi_dphy* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 4
  %333 = call i32 @MBPS(i32 150)
  %334 = icmp slt i32 %332, %333
  br i1 %334, label %335, label %338

335:                                              ; preds = %329
  %336 = load %struct.mixel_dphy_cfg*, %struct.mixel_dphy_cfg** %7, align 8
  %337 = getelementptr inbounds %struct.mixel_dphy_cfg, %struct.mixel_dphy_cfg* %336, i32 0, i32 9
  store i32 10, i32* %337, align 4
  br label %361

338:                                              ; preds = %329
  %339 = load %struct.phy_configure_opts_mipi_dphy*, %struct.phy_configure_opts_mipi_dphy** %6, align 8
  %340 = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, %struct.phy_configure_opts_mipi_dphy* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 4
  %342 = call i32 @MBPS(i32 225)
  %343 = icmp slt i32 %341, %342
  br i1 %343, label %344, label %347

344:                                              ; preds = %338
  %345 = load %struct.mixel_dphy_cfg*, %struct.mixel_dphy_cfg** %7, align 8
  %346 = getelementptr inbounds %struct.mixel_dphy_cfg, %struct.mixel_dphy_cfg* %345, i32 0, i32 9
  store i32 9, i32* %346, align 4
  br label %360

347:                                              ; preds = %338
  %348 = load %struct.phy_configure_opts_mipi_dphy*, %struct.phy_configure_opts_mipi_dphy** %6, align 8
  %349 = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, %struct.phy_configure_opts_mipi_dphy* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 4
  %351 = call i32 @MBPS(i32 500)
  %352 = icmp slt i32 %350, %351
  br i1 %352, label %353, label %356

353:                                              ; preds = %347
  %354 = load %struct.mixel_dphy_cfg*, %struct.mixel_dphy_cfg** %7, align 8
  %355 = getelementptr inbounds %struct.mixel_dphy_cfg, %struct.mixel_dphy_cfg* %354, i32 0, i32 9
  store i32 8, i32* %355, align 4
  br label %359

356:                                              ; preds = %347
  %357 = load %struct.mixel_dphy_cfg*, %struct.mixel_dphy_cfg** %7, align 8
  %358 = getelementptr inbounds %struct.mixel_dphy_cfg, %struct.mixel_dphy_cfg* %357, i32 0, i32 9
  store i32 7, i32* %358, align 4
  br label %359

359:                                              ; preds = %356, %353
  br label %360

360:                                              ; preds = %359, %344
  br label %361

361:                                              ; preds = %360, %335
  br label %362

362:                                              ; preds = %361, %326
  br label %363

363:                                              ; preds = %362, %317
  br label %364

364:                                              ; preds = %363, %308
  %365 = load %struct.phy*, %struct.phy** %5, align 8
  %366 = getelementptr inbounds %struct.phy, %struct.phy* %365, i32 0, i32 0
  %367 = load %struct.mixel_dphy_cfg*, %struct.mixel_dphy_cfg** %7, align 8
  %368 = getelementptr inbounds %struct.mixel_dphy_cfg, %struct.mixel_dphy_cfg* %367, i32 0, i32 3
  %369 = load i32, i32* %368, align 4
  %370 = load %struct.mixel_dphy_cfg*, %struct.mixel_dphy_cfg** %7, align 8
  %371 = getelementptr inbounds %struct.mixel_dphy_cfg, %struct.mixel_dphy_cfg* %370, i32 0, i32 4
  %372 = load i32, i32* %371, align 4
  %373 = load %struct.mixel_dphy_cfg*, %struct.mixel_dphy_cfg** %7, align 8
  %374 = getelementptr inbounds %struct.mixel_dphy_cfg, %struct.mixel_dphy_cfg* %373, i32 0, i32 5
  %375 = load i32, i32* %374, align 4
  %376 = load %struct.mixel_dphy_cfg*, %struct.mixel_dphy_cfg** %7, align 8
  %377 = getelementptr inbounds %struct.mixel_dphy_cfg, %struct.mixel_dphy_cfg* %376, i32 0, i32 6
  %378 = load i32, i32* %377, align 4
  %379 = load %struct.mixel_dphy_cfg*, %struct.mixel_dphy_cfg** %7, align 8
  %380 = getelementptr inbounds %struct.mixel_dphy_cfg, %struct.mixel_dphy_cfg* %379, i32 0, i32 7
  %381 = load i32, i32* %380, align 4
  %382 = load %struct.mixel_dphy_cfg*, %struct.mixel_dphy_cfg** %7, align 8
  %383 = getelementptr inbounds %struct.mixel_dphy_cfg, %struct.mixel_dphy_cfg* %382, i32 0, i32 8
  %384 = load i32, i32* %383, align 4
  %385 = load %struct.mixel_dphy_cfg*, %struct.mixel_dphy_cfg** %7, align 8
  %386 = getelementptr inbounds %struct.mixel_dphy_cfg, %struct.mixel_dphy_cfg* %385, i32 0, i32 9
  %387 = load i32, i32* %386, align 4
  %388 = call i32 (%struct.TYPE_3__*, i8*, i32, i32, ...) @dev_dbg(%struct.TYPE_3__* %366, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i32 %369, i32 %372, i32 %375, i32 %378, i32 %381, i32 %384, i32 %387)
  store i32 0, i32* %4, align 4
  br label %389

389:                                              ; preds = %364, %230, %189, %169, %125, %51, %36
  %390 = load i32, i32* %4, align 4
  ret i32 %390
}

declare dso_local %struct.mixel_dphy_priv* @dev_get_drvdata(i32) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @get_best_ratio(i32*, i32*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_3__*, i8*, i32, i32, ...) #1

declare dso_local i32 @__ffs(i32) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_3__*, i8*, i32, i32, ...) #1

declare dso_local i32 @do_div(i64, i32) #1

declare dso_local i32 @MBPS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
