; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_odm.c_odm_FalseAlarmCounterStatistics.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_odm.c_odm_FalseAlarmCounterStatistics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.odm_dm_struct = type { i32, %struct.false_alarm_stats, %struct.adapter* }
%struct.false_alarm_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.adapter = type { i32 }

@ODM_BB_FA_CNT = common dso_local global i32 0, align 4
@ODM_REG_OFDM_FA_HOLDC_11N = common dso_local global i32 0, align 4
@ODM_REG_OFDM_FA_RSTD_11N = common dso_local global i32 0, align 4
@ODM_REG_OFDM_FA_TYPE1_11N = common dso_local global i32 0, align 4
@bMaskDWord = common dso_local global i32 0, align 4
@ODM_REG_OFDM_FA_TYPE2_11N = common dso_local global i32 0, align 4
@ODM_REG_OFDM_FA_TYPE3_11N = common dso_local global i32 0, align 4
@ODM_REG_OFDM_FA_TYPE4_11N = common dso_local global i32 0, align 4
@ODM_REG_SC_CNT_11N = common dso_local global i32 0, align 4
@ODM_REG_CCK_FA_RST_11N = common dso_local global i32 0, align 4
@ODM_REG_CCK_FA_LSB_11N = common dso_local global i32 0, align 4
@bMaskByte0 = common dso_local global i32 0, align 4
@ODM_REG_CCK_FA_MSB_11N = common dso_local global i32 0, align 4
@bMaskByte3 = common dso_local global i32 0, align 4
@ODM_REG_CCK_CCA_CNT_11N = common dso_local global i32 0, align 4
@ODM_COMP_FA_CNT = common dso_local global i32 0, align 4
@ODM_DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Enter odm_FalseAlarmCounterStatistics\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Cnt_Fast_Fsync=%d, Cnt_SB_Search_fail=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Cnt_Parity_Fail=%d, Cnt_Rate_Illegal=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Cnt_Crc8_fail=%d, Cnt_Mcs_fail=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"Cnt_Cck_fail=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"Cnt_Ofdm_fail=%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"Total False Alarm=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @odm_FalseAlarmCounterStatistics(%struct.odm_dm_struct* %0) #0 {
  %2 = alloca %struct.odm_dm_struct*, align 8
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.false_alarm_stats*, align 8
  store %struct.odm_dm_struct* %0, %struct.odm_dm_struct** %2, align 8
  %6 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %7 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %6, i32 0, i32 2
  %8 = load %struct.adapter*, %struct.adapter** %7, align 8
  store %struct.adapter* %8, %struct.adapter** %3, align 8
  %9 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %10 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %9, i32 0, i32 1
  store %struct.false_alarm_stats* %10, %struct.false_alarm_stats** %5, align 8
  %11 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %12 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @ODM_BB_FA_CNT, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %256

18:                                               ; preds = %1
  %19 = load %struct.adapter*, %struct.adapter** %3, align 8
  %20 = load i32, i32* @ODM_REG_OFDM_FA_HOLDC_11N, align 4
  %21 = call i32 @BIT(i32 31)
  %22 = call i32 @phy_set_bb_reg(%struct.adapter* %19, i32 %20, i32 %21, i32 1)
  %23 = load %struct.adapter*, %struct.adapter** %3, align 8
  %24 = load i32, i32* @ODM_REG_OFDM_FA_RSTD_11N, align 4
  %25 = call i32 @BIT(i32 31)
  %26 = call i32 @phy_set_bb_reg(%struct.adapter* %23, i32 %24, i32 %25, i32 1)
  %27 = load %struct.adapter*, %struct.adapter** %3, align 8
  %28 = load i32, i32* @ODM_REG_OFDM_FA_TYPE1_11N, align 4
  %29 = load i32, i32* @bMaskDWord, align 4
  %30 = call i32 @phy_query_bb_reg(%struct.adapter* %27, i32 %28, i32 %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = and i32 %31, 65535
  %33 = load %struct.false_alarm_stats*, %struct.false_alarm_stats** %5, align 8
  %34 = getelementptr inbounds %struct.false_alarm_stats, %struct.false_alarm_stats* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %4, align 4
  %36 = and i32 %35, -65536
  %37 = lshr i32 %36, 16
  %38 = load %struct.false_alarm_stats*, %struct.false_alarm_stats** %5, align 8
  %39 = getelementptr inbounds %struct.false_alarm_stats, %struct.false_alarm_stats* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.adapter*, %struct.adapter** %3, align 8
  %41 = load i32, i32* @ODM_REG_OFDM_FA_TYPE2_11N, align 4
  %42 = load i32, i32* @bMaskDWord, align 4
  %43 = call i32 @phy_query_bb_reg(%struct.adapter* %40, i32 %41, i32 %42)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = and i32 %44, 65535
  %46 = load %struct.false_alarm_stats*, %struct.false_alarm_stats** %5, align 8
  %47 = getelementptr inbounds %struct.false_alarm_stats, %struct.false_alarm_stats* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* %4, align 4
  %49 = and i32 %48, -65536
  %50 = lshr i32 %49, 16
  %51 = load %struct.false_alarm_stats*, %struct.false_alarm_stats** %5, align 8
  %52 = getelementptr inbounds %struct.false_alarm_stats, %struct.false_alarm_stats* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 4
  %53 = load %struct.adapter*, %struct.adapter** %3, align 8
  %54 = load i32, i32* @ODM_REG_OFDM_FA_TYPE3_11N, align 4
  %55 = load i32, i32* @bMaskDWord, align 4
  %56 = call i32 @phy_query_bb_reg(%struct.adapter* %53, i32 %54, i32 %55)
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = and i32 %57, 65535
  %59 = load %struct.false_alarm_stats*, %struct.false_alarm_stats** %5, align 8
  %60 = getelementptr inbounds %struct.false_alarm_stats, %struct.false_alarm_stats* %59, i32 0, i32 4
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* %4, align 4
  %62 = and i32 %61, -65536
  %63 = lshr i32 %62, 16
  %64 = load %struct.false_alarm_stats*, %struct.false_alarm_stats** %5, align 8
  %65 = getelementptr inbounds %struct.false_alarm_stats, %struct.false_alarm_stats* %64, i32 0, i32 5
  store i32 %63, i32* %65, align 4
  %66 = load %struct.adapter*, %struct.adapter** %3, align 8
  %67 = load i32, i32* @ODM_REG_OFDM_FA_TYPE4_11N, align 4
  %68 = load i32, i32* @bMaskDWord, align 4
  %69 = call i32 @phy_query_bb_reg(%struct.adapter* %66, i32 %67, i32 %68)
  store i32 %69, i32* %4, align 4
  %70 = load i32, i32* %4, align 4
  %71 = and i32 %70, 65535
  %72 = load %struct.false_alarm_stats*, %struct.false_alarm_stats** %5, align 8
  %73 = getelementptr inbounds %struct.false_alarm_stats, %struct.false_alarm_stats* %72, i32 0, i32 6
  store i32 %71, i32* %73, align 4
  %74 = load %struct.false_alarm_stats*, %struct.false_alarm_stats** %5, align 8
  %75 = getelementptr inbounds %struct.false_alarm_stats, %struct.false_alarm_stats* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.false_alarm_stats*, %struct.false_alarm_stats** %5, align 8
  %78 = getelementptr inbounds %struct.false_alarm_stats, %struct.false_alarm_stats* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %76, %79
  %81 = load %struct.false_alarm_stats*, %struct.false_alarm_stats** %5, align 8
  %82 = getelementptr inbounds %struct.false_alarm_stats, %struct.false_alarm_stats* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %80, %83
  %85 = load %struct.false_alarm_stats*, %struct.false_alarm_stats** %5, align 8
  %86 = getelementptr inbounds %struct.false_alarm_stats, %struct.false_alarm_stats* %85, i32 0, i32 6
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %84, %87
  %89 = load %struct.false_alarm_stats*, %struct.false_alarm_stats** %5, align 8
  %90 = getelementptr inbounds %struct.false_alarm_stats, %struct.false_alarm_stats* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %88, %91
  %93 = load %struct.false_alarm_stats*, %struct.false_alarm_stats** %5, align 8
  %94 = getelementptr inbounds %struct.false_alarm_stats, %struct.false_alarm_stats* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %92, %95
  %97 = load %struct.false_alarm_stats*, %struct.false_alarm_stats** %5, align 8
  %98 = getelementptr inbounds %struct.false_alarm_stats, %struct.false_alarm_stats* %97, i32 0, i32 7
  store i32 %96, i32* %98, align 4
  %99 = load %struct.adapter*, %struct.adapter** %3, align 8
  %100 = load i32, i32* @ODM_REG_SC_CNT_11N, align 4
  %101 = load i32, i32* @bMaskDWord, align 4
  %102 = call i32 @phy_query_bb_reg(%struct.adapter* %99, i32 %100, i32 %101)
  store i32 %102, i32* %4, align 4
  %103 = load i32, i32* %4, align 4
  %104 = and i32 %103, 65535
  %105 = load %struct.false_alarm_stats*, %struct.false_alarm_stats** %5, align 8
  %106 = getelementptr inbounds %struct.false_alarm_stats, %struct.false_alarm_stats* %105, i32 0, i32 8
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* %4, align 4
  %108 = and i32 %107, -65536
  %109 = lshr i32 %108, 16
  %110 = load %struct.false_alarm_stats*, %struct.false_alarm_stats** %5, align 8
  %111 = getelementptr inbounds %struct.false_alarm_stats, %struct.false_alarm_stats* %110, i32 0, i32 9
  store i32 %109, i32* %111, align 4
  %112 = load %struct.adapter*, %struct.adapter** %3, align 8
  %113 = load i32, i32* @ODM_REG_CCK_FA_RST_11N, align 4
  %114 = call i32 @BIT(i32 12)
  %115 = call i32 @phy_set_bb_reg(%struct.adapter* %112, i32 %113, i32 %114, i32 1)
  %116 = load %struct.adapter*, %struct.adapter** %3, align 8
  %117 = load i32, i32* @ODM_REG_CCK_FA_RST_11N, align 4
  %118 = call i32 @BIT(i32 14)
  %119 = call i32 @phy_set_bb_reg(%struct.adapter* %116, i32 %117, i32 %118, i32 1)
  %120 = load %struct.adapter*, %struct.adapter** %3, align 8
  %121 = load i32, i32* @ODM_REG_CCK_FA_LSB_11N, align 4
  %122 = load i32, i32* @bMaskByte0, align 4
  %123 = call i32 @phy_query_bb_reg(%struct.adapter* %120, i32 %121, i32 %122)
  store i32 %123, i32* %4, align 4
  %124 = load i32, i32* %4, align 4
  %125 = load %struct.false_alarm_stats*, %struct.false_alarm_stats** %5, align 8
  %126 = getelementptr inbounds %struct.false_alarm_stats, %struct.false_alarm_stats* %125, i32 0, i32 10
  store i32 %124, i32* %126, align 4
  %127 = load %struct.adapter*, %struct.adapter** %3, align 8
  %128 = load i32, i32* @ODM_REG_CCK_FA_MSB_11N, align 4
  %129 = load i32, i32* @bMaskByte3, align 4
  %130 = call i32 @phy_query_bb_reg(%struct.adapter* %127, i32 %128, i32 %129)
  store i32 %130, i32* %4, align 4
  %131 = load i32, i32* %4, align 4
  %132 = and i32 %131, 255
  %133 = shl i32 %132, 8
  %134 = load %struct.false_alarm_stats*, %struct.false_alarm_stats** %5, align 8
  %135 = getelementptr inbounds %struct.false_alarm_stats, %struct.false_alarm_stats* %134, i32 0, i32 10
  %136 = load i32, i32* %135, align 4
  %137 = add nsw i32 %136, %133
  store i32 %137, i32* %135, align 4
  %138 = load %struct.adapter*, %struct.adapter** %3, align 8
  %139 = load i32, i32* @ODM_REG_CCK_CCA_CNT_11N, align 4
  %140 = load i32, i32* @bMaskDWord, align 4
  %141 = call i32 @phy_query_bb_reg(%struct.adapter* %138, i32 %139, i32 %140)
  store i32 %141, i32* %4, align 4
  %142 = load i32, i32* %4, align 4
  %143 = and i32 %142, 255
  %144 = shl i32 %143, 8
  %145 = load i32, i32* %4, align 4
  %146 = and i32 %145, 65280
  %147 = ashr i32 %146, 8
  %148 = or i32 %144, %147
  %149 = load %struct.false_alarm_stats*, %struct.false_alarm_stats** %5, align 8
  %150 = getelementptr inbounds %struct.false_alarm_stats, %struct.false_alarm_stats* %149, i32 0, i32 11
  store i32 %148, i32* %150, align 4
  %151 = load %struct.false_alarm_stats*, %struct.false_alarm_stats** %5, align 8
  %152 = getelementptr inbounds %struct.false_alarm_stats, %struct.false_alarm_stats* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.false_alarm_stats*, %struct.false_alarm_stats** %5, align 8
  %155 = getelementptr inbounds %struct.false_alarm_stats, %struct.false_alarm_stats* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = add nsw i32 %153, %156
  %158 = load %struct.false_alarm_stats*, %struct.false_alarm_stats** %5, align 8
  %159 = getelementptr inbounds %struct.false_alarm_stats, %struct.false_alarm_stats* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = add nsw i32 %157, %160
  %162 = load %struct.false_alarm_stats*, %struct.false_alarm_stats** %5, align 8
  %163 = getelementptr inbounds %struct.false_alarm_stats, %struct.false_alarm_stats* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 4
  %165 = add nsw i32 %161, %164
  %166 = load %struct.false_alarm_stats*, %struct.false_alarm_stats** %5, align 8
  %167 = getelementptr inbounds %struct.false_alarm_stats, %struct.false_alarm_stats* %166, i32 0, i32 5
  %168 = load i32, i32* %167, align 4
  %169 = add nsw i32 %165, %168
  %170 = load %struct.false_alarm_stats*, %struct.false_alarm_stats** %5, align 8
  %171 = getelementptr inbounds %struct.false_alarm_stats, %struct.false_alarm_stats* %170, i32 0, i32 6
  %172 = load i32, i32* %171, align 4
  %173 = add nsw i32 %169, %172
  %174 = load %struct.false_alarm_stats*, %struct.false_alarm_stats** %5, align 8
  %175 = getelementptr inbounds %struct.false_alarm_stats, %struct.false_alarm_stats* %174, i32 0, i32 10
  %176 = load i32, i32* %175, align 4
  %177 = add nsw i32 %173, %176
  %178 = load %struct.false_alarm_stats*, %struct.false_alarm_stats** %5, align 8
  %179 = getelementptr inbounds %struct.false_alarm_stats, %struct.false_alarm_stats* %178, i32 0, i32 12
  store i32 %177, i32* %179, align 4
  %180 = load %struct.false_alarm_stats*, %struct.false_alarm_stats** %5, align 8
  %181 = getelementptr inbounds %struct.false_alarm_stats, %struct.false_alarm_stats* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.false_alarm_stats*, %struct.false_alarm_stats** %5, align 8
  %184 = getelementptr inbounds %struct.false_alarm_stats, %struct.false_alarm_stats* %183, i32 0, i32 11
  %185 = load i32, i32* %184, align 4
  %186 = add nsw i32 %182, %185
  %187 = load %struct.false_alarm_stats*, %struct.false_alarm_stats** %5, align 8
  %188 = getelementptr inbounds %struct.false_alarm_stats, %struct.false_alarm_stats* %187, i32 0, i32 13
  store i32 %186, i32* %188, align 4
  %189 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %190 = load i32, i32* @ODM_COMP_FA_CNT, align 4
  %191 = load i32, i32* @ODM_DBG_LOUD, align 4
  %192 = call i32 @ODM_RT_TRACE(%struct.odm_dm_struct* %189, i32 %190, i32 %191, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %193 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %194 = load i32, i32* @ODM_COMP_FA_CNT, align 4
  %195 = load i32, i32* @ODM_DBG_LOUD, align 4
  %196 = load %struct.false_alarm_stats*, %struct.false_alarm_stats** %5, align 8
  %197 = getelementptr inbounds %struct.false_alarm_stats, %struct.false_alarm_stats* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.false_alarm_stats*, %struct.false_alarm_stats** %5, align 8
  %200 = getelementptr inbounds %struct.false_alarm_stats, %struct.false_alarm_stats* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = sext i32 %201 to i64
  %203 = inttoptr i64 %202 to i8*
  %204 = call i32 @ODM_RT_TRACE(%struct.odm_dm_struct* %193, i32 %194, i32 %195, i8* %203)
  %205 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %206 = load i32, i32* @ODM_COMP_FA_CNT, align 4
  %207 = load i32, i32* @ODM_DBG_LOUD, align 4
  %208 = load %struct.false_alarm_stats*, %struct.false_alarm_stats** %5, align 8
  %209 = getelementptr inbounds %struct.false_alarm_stats, %struct.false_alarm_stats* %208, i32 0, i32 3
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.false_alarm_stats*, %struct.false_alarm_stats** %5, align 8
  %212 = getelementptr inbounds %struct.false_alarm_stats, %struct.false_alarm_stats* %211, i32 0, i32 4
  %213 = load i32, i32* %212, align 4
  %214 = sext i32 %213 to i64
  %215 = inttoptr i64 %214 to i8*
  %216 = call i32 @ODM_RT_TRACE(%struct.odm_dm_struct* %205, i32 %206, i32 %207, i8* %215)
  %217 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %218 = load i32, i32* @ODM_COMP_FA_CNT, align 4
  %219 = load i32, i32* @ODM_DBG_LOUD, align 4
  %220 = load %struct.false_alarm_stats*, %struct.false_alarm_stats** %5, align 8
  %221 = getelementptr inbounds %struct.false_alarm_stats, %struct.false_alarm_stats* %220, i32 0, i32 5
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.false_alarm_stats*, %struct.false_alarm_stats** %5, align 8
  %224 = getelementptr inbounds %struct.false_alarm_stats, %struct.false_alarm_stats* %223, i32 0, i32 6
  %225 = load i32, i32* %224, align 4
  %226 = sext i32 %225 to i64
  %227 = inttoptr i64 %226 to i8*
  %228 = call i32 @ODM_RT_TRACE(%struct.odm_dm_struct* %217, i32 %218, i32 %219, i8* %227)
  %229 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %230 = load i32, i32* @ODM_COMP_FA_CNT, align 4
  %231 = load i32, i32* @ODM_DBG_LOUD, align 4
  %232 = load %struct.false_alarm_stats*, %struct.false_alarm_stats** %5, align 8
  %233 = getelementptr inbounds %struct.false_alarm_stats, %struct.false_alarm_stats* %232, i32 0, i32 10
  %234 = load i32, i32* %233, align 4
  %235 = sext i32 %234 to i64
  %236 = inttoptr i64 %235 to i8*
  %237 = call i32 @ODM_RT_TRACE(%struct.odm_dm_struct* %229, i32 %230, i32 %231, i8* %236)
  %238 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %239 = load i32, i32* @ODM_COMP_FA_CNT, align 4
  %240 = load i32, i32* @ODM_DBG_LOUD, align 4
  %241 = load %struct.false_alarm_stats*, %struct.false_alarm_stats** %5, align 8
  %242 = getelementptr inbounds %struct.false_alarm_stats, %struct.false_alarm_stats* %241, i32 0, i32 7
  %243 = load i32, i32* %242, align 4
  %244 = sext i32 %243 to i64
  %245 = inttoptr i64 %244 to i8*
  %246 = call i32 @ODM_RT_TRACE(%struct.odm_dm_struct* %238, i32 %239, i32 %240, i8* %245)
  %247 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %248 = load i32, i32* @ODM_COMP_FA_CNT, align 4
  %249 = load i32, i32* @ODM_DBG_LOUD, align 4
  %250 = load %struct.false_alarm_stats*, %struct.false_alarm_stats** %5, align 8
  %251 = getelementptr inbounds %struct.false_alarm_stats, %struct.false_alarm_stats* %250, i32 0, i32 12
  %252 = load i32, i32* %251, align 4
  %253 = sext i32 %252 to i64
  %254 = inttoptr i64 %253 to i8*
  %255 = call i32 @ODM_RT_TRACE(%struct.odm_dm_struct* %247, i32 %248, i32 %249, i8* %254)
  br label %256

256:                                              ; preds = %18, %17
  ret void
}

declare dso_local i32 @phy_set_bb_reg(%struct.adapter*, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @phy_query_bb_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @ODM_RT_TRACE(%struct.odm_dm_struct*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
