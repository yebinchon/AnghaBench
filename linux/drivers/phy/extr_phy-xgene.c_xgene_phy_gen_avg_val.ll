; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/extr_phy-xgene.c_xgene_phy_gen_avg_val.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/extr_phy-xgene.c_xgene_phy_gen_avg_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgene_phy_ctx = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"Generating avg calibration value for lane %d\0A\00", align 1
@RXTX_REG12 = common dso_local global i32 0, align 4
@RXTX_REG12_RX_DET_TERM_ENABLE_MASK = common dso_local global i32 0, align 4
@RXTX_REG28 = common dso_local global i32 0, align 4
@RXTX_REG31 = common dso_local global i32 0, align 4
@RXTX_REG21 = common dso_local global i32 0, align 4
@RXTX_REG22 = common dso_local global i32 0, align 4
@RXTX_REG23 = common dso_local global i32 0, align 4
@RXTX_REG24 = common dso_local global i32 0, align 4
@RXTX_REG121 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"Iteration %d:\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"DO 0x%x XO 0x%x EO 0x%x SO 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"DE 0x%x XE 0x%x EE 0x%x SE 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"SUM 0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"Receiver calibration failed at %d loop\0A\00", align 1
@RXTX_REG127 = common dso_local global i32 0, align 4
@RXTX_REG128 = common dso_local global i32 0, align 4
@RXTX_REG129 = common dso_local global i32 0, align 4
@RXTX_REG130 = common dso_local global i32 0, align 4
@RXTX_REG14 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [16 x i8] c"Average Value:\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"Enable Manual Summer calibration\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"Enable Manual Latch calibration\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgene_phy_ctx*, i32)* @xgene_phy_gen_avg_val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgene_phy_gen_avg_val(%struct.xgene_phy_ctx* %0, i32 %1) #0 {
  %3 = alloca %struct.xgene_phy_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.xgene_phy_ctx* %0, %struct.xgene_phy_ctx** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 10, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %28 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %3, align 8
  %29 = getelementptr inbounds %struct.xgene_phy_ctx, %struct.xgene_phy_ctx* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 (i32, i8*, ...) @dev_dbg(i32 %30, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %3, align 8
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @RXTX_REG12, align 4
  %36 = load i32, i32* @RXTX_REG12_RX_DET_TERM_ENABLE_MASK, align 4
  %37 = call i32 @serdes_setbits(%struct.xgene_phy_ctx* %33, i32 %34, i32 %35, i32 %36)
  %38 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %3, align 8
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @RXTX_REG28, align 4
  %41 = call i32 @serdes_wr(%struct.xgene_phy_ctx* %38, i32 %39, i32 %40, i32 0)
  %42 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %3, align 8
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @RXTX_REG31, align 4
  %45 = call i32 @serdes_wr(%struct.xgene_phy_ctx* %42, i32 %43, i32 %44, i32 0)
  br label %46

46:                                               ; preds = %169, %2
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %173

50:                                               ; preds = %46
  %51 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %3, align 8
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @xgene_phy_force_lat_summer_cal(%struct.xgene_phy_ctx* %51, i32 %52)
  %54 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %3, align 8
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @RXTX_REG21, align 4
  %57 = call i32 @serdes_rd(%struct.xgene_phy_ctx* %54, i32 %55, i32 %56, i32* %27)
  %58 = load i32, i32* %27, align 4
  %59 = call i32 @RXTX_REG21_DO_LATCH_CALOUT_RD(i32 %58)
  store i32 %59, i32* %16, align 4
  %60 = load i32, i32* %27, align 4
  %61 = call i32 @RXTX_REG21_XO_LATCH_CALOUT_RD(i32 %60)
  store i32 %61, i32* %17, align 4
  %62 = load i32, i32* %27, align 4
  %63 = call i32 @RXTX_REG21_LATCH_CAL_FAIL_ODD_RD(i32 %62)
  store i32 %63, i32* %26, align 4
  %64 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %3, align 8
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @RXTX_REG22, align 4
  %67 = call i32 @serdes_rd(%struct.xgene_phy_ctx* %64, i32 %65, i32 %66, i32* %27)
  %68 = load i32, i32* %27, align 4
  %69 = call i32 @RXTX_REG22_EO_LATCH_CALOUT_RD(i32 %68)
  store i32 %69, i32* %18, align 4
  %70 = load i32, i32* %27, align 4
  %71 = call i32 @RXTX_REG22_SO_LATCH_CALOUT_RD(i32 %70)
  store i32 %71, i32* %19, align 4
  %72 = load i32, i32* %27, align 4
  %73 = call i32 @RXTX_REG22_LATCH_CAL_FAIL_EVEN_RD(i32 %72)
  store i32 %73, i32* %25, align 4
  %74 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %3, align 8
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* @RXTX_REG23, align 4
  %77 = call i32 @serdes_rd(%struct.xgene_phy_ctx* %74, i32 %75, i32 %76, i32* %27)
  %78 = load i32, i32* %27, align 4
  %79 = call i32 @RXTX_REG23_DE_LATCH_CALOUT_RD(i32 %78)
  store i32 %79, i32* %20, align 4
  %80 = load i32, i32* %27, align 4
  %81 = call i32 @RXTX_REG23_XE_LATCH_CALOUT_RD(i32 %80)
  store i32 %81, i32* %21, align 4
  %82 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %3, align 8
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* @RXTX_REG24, align 4
  %85 = call i32 @serdes_rd(%struct.xgene_phy_ctx* %82, i32 %83, i32 %84, i32* %27)
  %86 = load i32, i32* %27, align 4
  %87 = call i32 @RXTX_REG24_EE_LATCH_CALOUT_RD(i32 %86)
  store i32 %87, i32* %22, align 4
  %88 = load i32, i32* %27, align 4
  %89 = call i32 @RXTX_REG24_SE_LATCH_CALOUT_RD(i32 %88)
  store i32 %89, i32* %23, align 4
  %90 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %3, align 8
  %91 = load i32, i32* %4, align 4
  %92 = load i32, i32* @RXTX_REG121, align 4
  %93 = call i32 @serdes_rd(%struct.xgene_phy_ctx* %90, i32 %91, i32 %92, i32* %27)
  %94 = load i32, i32* %27, align 4
  %95 = call i32 @RXTX_REG121_SUMOS_CAL_CODE_RD(i32 %94)
  store i32 %95, i32* %24, align 4
  %96 = load i32, i32* %25, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %50
  %99 = load i32, i32* %25, align 4
  %100 = icmp eq i32 %99, 1
  br i1 %100, label %101, label %163

101:                                              ; preds = %98, %50
  %102 = load i32, i32* %26, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %101
  %105 = load i32, i32* %26, align 4
  %106 = icmp eq i32 %105, 1
  br i1 %106, label %107, label %163

107:                                              ; preds = %104, %101
  %108 = load i32, i32* %16, align 4
  %109 = load i32, i32* %7, align 4
  %110 = add nsw i32 %109, %108
  store i32 %110, i32* %7, align 4
  %111 = load i32, i32* %17, align 4
  %112 = load i32, i32* %8, align 4
  %113 = add nsw i32 %112, %111
  store i32 %113, i32* %8, align 4
  %114 = load i32, i32* %18, align 4
  %115 = load i32, i32* %9, align 4
  %116 = add nsw i32 %115, %114
  store i32 %116, i32* %9, align 4
  %117 = load i32, i32* %19, align 4
  %118 = load i32, i32* %10, align 4
  %119 = add nsw i32 %118, %117
  store i32 %119, i32* %10, align 4
  %120 = load i32, i32* %20, align 4
  %121 = load i32, i32* %11, align 4
  %122 = add nsw i32 %121, %120
  store i32 %122, i32* %11, align 4
  %123 = load i32, i32* %21, align 4
  %124 = load i32, i32* %12, align 4
  %125 = add nsw i32 %124, %123
  store i32 %125, i32* %12, align 4
  %126 = load i32, i32* %22, align 4
  %127 = load i32, i32* %13, align 4
  %128 = add nsw i32 %127, %126
  store i32 %128, i32* %13, align 4
  %129 = load i32, i32* %23, align 4
  %130 = load i32, i32* %14, align 4
  %131 = add nsw i32 %130, %129
  store i32 %131, i32* %14, align 4
  %132 = load i32, i32* %24, align 4
  %133 = load i32, i32* %15, align 4
  %134 = add nsw i32 %133, %132
  store i32 %134, i32* %15, align 4
  %135 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %3, align 8
  %136 = getelementptr inbounds %struct.xgene_phy_ctx, %struct.xgene_phy_ctx* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* %6, align 4
  %139 = call i32 (i32, i8*, ...) @dev_dbg(i32 %137, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %138)
  %140 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %3, align 8
  %141 = getelementptr inbounds %struct.xgene_phy_ctx, %struct.xgene_phy_ctx* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* %16, align 4
  %144 = load i32, i32* %17, align 4
  %145 = load i32, i32* %18, align 4
  %146 = load i32, i32* %19, align 4
  %147 = call i32 (i32, i8*, ...) @dev_dbg(i32 %142, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %143, i32 %144, i32 %145, i32 %146)
  %148 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %3, align 8
  %149 = getelementptr inbounds %struct.xgene_phy_ctx, %struct.xgene_phy_ctx* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* %20, align 4
  %152 = load i32, i32* %21, align 4
  %153 = load i32, i32* %22, align 4
  %154 = load i32, i32* %23, align 4
  %155 = call i32 (i32, i8*, ...) @dev_dbg(i32 %150, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %151, i32 %152, i32 %153, i32 %154)
  %156 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %3, align 8
  %157 = getelementptr inbounds %struct.xgene_phy_ctx, %struct.xgene_phy_ctx* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* %24, align 4
  %160 = call i32 (i32, i8*, ...) @dev_dbg(i32 %158, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %159)
  %161 = load i32, i32* %6, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %6, align 4
  br label %169

163:                                              ; preds = %104, %98
  %164 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %3, align 8
  %165 = getelementptr inbounds %struct.xgene_phy_ctx, %struct.xgene_phy_ctx* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* %6, align 4
  %168 = call i32 @dev_err(i32 %166, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %167)
  br label %169

169:                                              ; preds = %163, %107
  %170 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %3, align 8
  %171 = load i32, i32* %4, align 4
  %172 = call i32 @xgene_phy_reset_rxd(%struct.xgene_phy_ctx* %170, i32 %171)
  br label %46

173:                                              ; preds = %46
  %174 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %3, align 8
  %175 = load i32, i32* %4, align 4
  %176 = load i32, i32* @RXTX_REG127, align 4
  %177 = call i32 @serdes_rd(%struct.xgene_phy_ctx* %174, i32 %175, i32 %176, i32* %27)
  %178 = load i32, i32* %27, align 4
  %179 = load i32, i32* %7, align 4
  %180 = load i32, i32* %5, align 4
  %181 = call i32 @xgene_phy_get_avg(i32 %179, i32 %180)
  %182 = call i32 @RXTX_REG127_DO_LATCH_MANCAL_SET(i32 %178, i32 %181)
  store i32 %182, i32* %27, align 4
  %183 = load i32, i32* %27, align 4
  %184 = load i32, i32* %8, align 4
  %185 = load i32, i32* %5, align 4
  %186 = call i32 @xgene_phy_get_avg(i32 %184, i32 %185)
  %187 = call i32 @RXTX_REG127_XO_LATCH_MANCAL_SET(i32 %183, i32 %186)
  store i32 %187, i32* %27, align 4
  %188 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %3, align 8
  %189 = load i32, i32* %4, align 4
  %190 = load i32, i32* @RXTX_REG127, align 4
  %191 = load i32, i32* %27, align 4
  %192 = call i32 @serdes_wr(%struct.xgene_phy_ctx* %188, i32 %189, i32 %190, i32 %191)
  %193 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %3, align 8
  %194 = load i32, i32* %4, align 4
  %195 = load i32, i32* @RXTX_REG128, align 4
  %196 = call i32 @serdes_rd(%struct.xgene_phy_ctx* %193, i32 %194, i32 %195, i32* %27)
  %197 = load i32, i32* %27, align 4
  %198 = load i32, i32* %9, align 4
  %199 = load i32, i32* %5, align 4
  %200 = call i32 @xgene_phy_get_avg(i32 %198, i32 %199)
  %201 = call i32 @RXTX_REG128_EO_LATCH_MANCAL_SET(i32 %197, i32 %200)
  store i32 %201, i32* %27, align 4
  %202 = load i32, i32* %27, align 4
  %203 = load i32, i32* %10, align 4
  %204 = load i32, i32* %5, align 4
  %205 = call i32 @xgene_phy_get_avg(i32 %203, i32 %204)
  %206 = call i32 @RXTX_REG128_SO_LATCH_MANCAL_SET(i32 %202, i32 %205)
  store i32 %206, i32* %27, align 4
  %207 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %3, align 8
  %208 = load i32, i32* %4, align 4
  %209 = load i32, i32* @RXTX_REG128, align 4
  %210 = load i32, i32* %27, align 4
  %211 = call i32 @serdes_wr(%struct.xgene_phy_ctx* %207, i32 %208, i32 %209, i32 %210)
  %212 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %3, align 8
  %213 = load i32, i32* %4, align 4
  %214 = load i32, i32* @RXTX_REG129, align 4
  %215 = call i32 @serdes_rd(%struct.xgene_phy_ctx* %212, i32 %213, i32 %214, i32* %27)
  %216 = load i32, i32* %27, align 4
  %217 = load i32, i32* %11, align 4
  %218 = load i32, i32* %5, align 4
  %219 = call i32 @xgene_phy_get_avg(i32 %217, i32 %218)
  %220 = call i32 @RXTX_REG129_DE_LATCH_MANCAL_SET(i32 %216, i32 %219)
  store i32 %220, i32* %27, align 4
  %221 = load i32, i32* %27, align 4
  %222 = load i32, i32* %12, align 4
  %223 = load i32, i32* %5, align 4
  %224 = call i32 @xgene_phy_get_avg(i32 %222, i32 %223)
  %225 = call i32 @RXTX_REG129_XE_LATCH_MANCAL_SET(i32 %221, i32 %224)
  store i32 %225, i32* %27, align 4
  %226 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %3, align 8
  %227 = load i32, i32* %4, align 4
  %228 = load i32, i32* @RXTX_REG129, align 4
  %229 = load i32, i32* %27, align 4
  %230 = call i32 @serdes_wr(%struct.xgene_phy_ctx* %226, i32 %227, i32 %228, i32 %229)
  %231 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %3, align 8
  %232 = load i32, i32* %4, align 4
  %233 = load i32, i32* @RXTX_REG130, align 4
  %234 = call i32 @serdes_rd(%struct.xgene_phy_ctx* %231, i32 %232, i32 %233, i32* %27)
  %235 = load i32, i32* %27, align 4
  %236 = load i32, i32* %13, align 4
  %237 = load i32, i32* %5, align 4
  %238 = call i32 @xgene_phy_get_avg(i32 %236, i32 %237)
  %239 = call i32 @RXTX_REG130_EE_LATCH_MANCAL_SET(i32 %235, i32 %238)
  store i32 %239, i32* %27, align 4
  %240 = load i32, i32* %27, align 4
  %241 = load i32, i32* %14, align 4
  %242 = load i32, i32* %5, align 4
  %243 = call i32 @xgene_phy_get_avg(i32 %241, i32 %242)
  %244 = call i32 @RXTX_REG130_SE_LATCH_MANCAL_SET(i32 %240, i32 %243)
  store i32 %244, i32* %27, align 4
  %245 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %3, align 8
  %246 = load i32, i32* %4, align 4
  %247 = load i32, i32* @RXTX_REG130, align 4
  %248 = load i32, i32* %27, align 4
  %249 = call i32 @serdes_wr(%struct.xgene_phy_ctx* %245, i32 %246, i32 %247, i32 %248)
  %250 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %3, align 8
  %251 = load i32, i32* %4, align 4
  %252 = load i32, i32* @RXTX_REG14, align 4
  %253 = call i32 @serdes_rd(%struct.xgene_phy_ctx* %250, i32 %251, i32 %252, i32* %27)
  %254 = load i32, i32* %27, align 4
  %255 = load i32, i32* %15, align 4
  %256 = load i32, i32* %5, align 4
  %257 = call i32 @xgene_phy_get_avg(i32 %255, i32 %256)
  %258 = call i32 @RXTX_REG14_CLTE_LATCAL_MAN_PROG_SET(i32 %254, i32 %257)
  store i32 %258, i32* %27, align 4
  %259 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %3, align 8
  %260 = load i32, i32* %4, align 4
  %261 = load i32, i32* @RXTX_REG14, align 4
  %262 = load i32, i32* %27, align 4
  %263 = call i32 @serdes_wr(%struct.xgene_phy_ctx* %259, i32 %260, i32 %261, i32 %262)
  %264 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %3, align 8
  %265 = getelementptr inbounds %struct.xgene_phy_ctx, %struct.xgene_phy_ctx* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  %267 = call i32 (i32, i8*, ...) @dev_dbg(i32 %266, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %268 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %3, align 8
  %269 = getelementptr inbounds %struct.xgene_phy_ctx, %struct.xgene_phy_ctx* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 4
  %271 = load i32, i32* %7, align 4
  %272 = load i32, i32* %5, align 4
  %273 = call i32 @xgene_phy_get_avg(i32 %271, i32 %272)
  %274 = load i32, i32* %8, align 4
  %275 = load i32, i32* %5, align 4
  %276 = call i32 @xgene_phy_get_avg(i32 %274, i32 %275)
  %277 = load i32, i32* %9, align 4
  %278 = load i32, i32* %5, align 4
  %279 = call i32 @xgene_phy_get_avg(i32 %277, i32 %278)
  %280 = load i32, i32* %10, align 4
  %281 = load i32, i32* %5, align 4
  %282 = call i32 @xgene_phy_get_avg(i32 %280, i32 %281)
  %283 = call i32 (i32, i8*, ...) @dev_dbg(i32 %270, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %273, i32 %276, i32 %279, i32 %282)
  %284 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %3, align 8
  %285 = getelementptr inbounds %struct.xgene_phy_ctx, %struct.xgene_phy_ctx* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 4
  %287 = load i32, i32* %11, align 4
  %288 = load i32, i32* %5, align 4
  %289 = call i32 @xgene_phy_get_avg(i32 %287, i32 %288)
  %290 = load i32, i32* %12, align 4
  %291 = load i32, i32* %5, align 4
  %292 = call i32 @xgene_phy_get_avg(i32 %290, i32 %291)
  %293 = load i32, i32* %13, align 4
  %294 = load i32, i32* %5, align 4
  %295 = call i32 @xgene_phy_get_avg(i32 %293, i32 %294)
  %296 = load i32, i32* %14, align 4
  %297 = load i32, i32* %5, align 4
  %298 = call i32 @xgene_phy_get_avg(i32 %296, i32 %297)
  %299 = call i32 (i32, i8*, ...) @dev_dbg(i32 %286, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %289, i32 %292, i32 %295, i32 %298)
  %300 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %3, align 8
  %301 = getelementptr inbounds %struct.xgene_phy_ctx, %struct.xgene_phy_ctx* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 4
  %303 = load i32, i32* %15, align 4
  %304 = load i32, i32* %5, align 4
  %305 = call i32 @xgene_phy_get_avg(i32 %303, i32 %304)
  %306 = call i32 (i32, i8*, ...) @dev_dbg(i32 %302, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %305)
  %307 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %3, align 8
  %308 = load i32, i32* %4, align 4
  %309 = load i32, i32* @RXTX_REG14, align 4
  %310 = call i32 @serdes_rd(%struct.xgene_phy_ctx* %307, i32 %308, i32 %309, i32* %27)
  %311 = load i32, i32* %27, align 4
  %312 = call i32 @RXTX_REG14_CTLE_LATCAL_MAN_ENA_SET(i32 %311, i32 1)
  store i32 %312, i32* %27, align 4
  %313 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %3, align 8
  %314 = load i32, i32* %4, align 4
  %315 = load i32, i32* @RXTX_REG14, align 4
  %316 = load i32, i32* %27, align 4
  %317 = call i32 @serdes_wr(%struct.xgene_phy_ctx* %313, i32 %314, i32 %315, i32 %316)
  %318 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %3, align 8
  %319 = getelementptr inbounds %struct.xgene_phy_ctx, %struct.xgene_phy_ctx* %318, i32 0, i32 0
  %320 = load i32, i32* %319, align 4
  %321 = call i32 (i32, i8*, ...) @dev_dbg(i32 %320, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  %322 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %3, align 8
  %323 = load i32, i32* %4, align 4
  %324 = load i32, i32* @RXTX_REG127, align 4
  %325 = call i32 @serdes_rd(%struct.xgene_phy_ctx* %322, i32 %323, i32 %324, i32* %27)
  %326 = load i32, i32* %27, align 4
  %327 = call i32 @RXTX_REG127_LATCH_MAN_CAL_ENA_SET(i32 %326, i32 1)
  store i32 %327, i32* %27, align 4
  %328 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %3, align 8
  %329 = getelementptr inbounds %struct.xgene_phy_ctx, %struct.xgene_phy_ctx* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 4
  %331 = call i32 (i32, i8*, ...) @dev_dbg(i32 %330, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0))
  %332 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %3, align 8
  %333 = load i32, i32* %4, align 4
  %334 = load i32, i32* @RXTX_REG127, align 4
  %335 = load i32, i32* %27, align 4
  %336 = call i32 @serdes_wr(%struct.xgene_phy_ctx* %332, i32 %333, i32 %334, i32 %335)
  %337 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %3, align 8
  %338 = load i32, i32* %4, align 4
  %339 = load i32, i32* @RXTX_REG12, align 4
  %340 = call i32 @serdes_rd(%struct.xgene_phy_ctx* %337, i32 %338, i32 %339, i32* %27)
  %341 = load i32, i32* %27, align 4
  %342 = call i32 @RXTX_REG12_RX_DET_TERM_ENABLE_SET(i32 %341, i32 0)
  store i32 %342, i32* %27, align 4
  %343 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %3, align 8
  %344 = load i32, i32* %4, align 4
  %345 = load i32, i32* @RXTX_REG12, align 4
  %346 = load i32, i32* %27, align 4
  %347 = call i32 @serdes_wr(%struct.xgene_phy_ctx* %343, i32 %344, i32 %345, i32 %346)
  %348 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %3, align 8
  %349 = load i32, i32* %4, align 4
  %350 = load i32, i32* @RXTX_REG28, align 4
  %351 = call i32 @serdes_wr(%struct.xgene_phy_ctx* %348, i32 %349, i32 %350, i32 7)
  %352 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %3, align 8
  %353 = load i32, i32* %4, align 4
  %354 = load i32, i32* @RXTX_REG31, align 4
  %355 = call i32 @serdes_wr(%struct.xgene_phy_ctx* %352, i32 %353, i32 %354, i32 32256)
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @serdes_setbits(%struct.xgene_phy_ctx*, i32, i32, i32) #1

declare dso_local i32 @serdes_wr(%struct.xgene_phy_ctx*, i32, i32, i32) #1

declare dso_local i32 @xgene_phy_force_lat_summer_cal(%struct.xgene_phy_ctx*, i32) #1

declare dso_local i32 @serdes_rd(%struct.xgene_phy_ctx*, i32, i32, i32*) #1

declare dso_local i32 @RXTX_REG21_DO_LATCH_CALOUT_RD(i32) #1

declare dso_local i32 @RXTX_REG21_XO_LATCH_CALOUT_RD(i32) #1

declare dso_local i32 @RXTX_REG21_LATCH_CAL_FAIL_ODD_RD(i32) #1

declare dso_local i32 @RXTX_REG22_EO_LATCH_CALOUT_RD(i32) #1

declare dso_local i32 @RXTX_REG22_SO_LATCH_CALOUT_RD(i32) #1

declare dso_local i32 @RXTX_REG22_LATCH_CAL_FAIL_EVEN_RD(i32) #1

declare dso_local i32 @RXTX_REG23_DE_LATCH_CALOUT_RD(i32) #1

declare dso_local i32 @RXTX_REG23_XE_LATCH_CALOUT_RD(i32) #1

declare dso_local i32 @RXTX_REG24_EE_LATCH_CALOUT_RD(i32) #1

declare dso_local i32 @RXTX_REG24_SE_LATCH_CALOUT_RD(i32) #1

declare dso_local i32 @RXTX_REG121_SUMOS_CAL_CODE_RD(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @xgene_phy_reset_rxd(%struct.xgene_phy_ctx*, i32) #1

declare dso_local i32 @RXTX_REG127_DO_LATCH_MANCAL_SET(i32, i32) #1

declare dso_local i32 @xgene_phy_get_avg(i32, i32) #1

declare dso_local i32 @RXTX_REG127_XO_LATCH_MANCAL_SET(i32, i32) #1

declare dso_local i32 @RXTX_REG128_EO_LATCH_MANCAL_SET(i32, i32) #1

declare dso_local i32 @RXTX_REG128_SO_LATCH_MANCAL_SET(i32, i32) #1

declare dso_local i32 @RXTX_REG129_DE_LATCH_MANCAL_SET(i32, i32) #1

declare dso_local i32 @RXTX_REG129_XE_LATCH_MANCAL_SET(i32, i32) #1

declare dso_local i32 @RXTX_REG130_EE_LATCH_MANCAL_SET(i32, i32) #1

declare dso_local i32 @RXTX_REG130_SE_LATCH_MANCAL_SET(i32, i32) #1

declare dso_local i32 @RXTX_REG14_CLTE_LATCAL_MAN_PROG_SET(i32, i32) #1

declare dso_local i32 @RXTX_REG14_CTLE_LATCAL_MAN_ENA_SET(i32, i32) #1

declare dso_local i32 @RXTX_REG127_LATCH_MAN_CAL_ENA_SET(i32, i32) #1

declare dso_local i32 @RXTX_REG12_RX_DET_TERM_ENABLE_SET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
