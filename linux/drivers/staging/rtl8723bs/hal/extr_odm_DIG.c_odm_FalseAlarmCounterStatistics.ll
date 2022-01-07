; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_odm_DIG.c_odm_FalseAlarmCounterStatistics.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_odm_DIG.c_odm_FalseAlarmCounterStatistics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ODM_BB_FA_CNT = common dso_local global i32 0, align 4
@ODM_REG_OFDM_FA_HOLDC_11N = common dso_local global i32 0, align 4
@BIT31 = common dso_local global i32 0, align 4
@ODM_REG_OFDM_FA_RSTD_11N = common dso_local global i32 0, align 4
@ODM_REG_OFDM_FA_TYPE1_11N = common dso_local global i32 0, align 4
@bMaskDWord = common dso_local global i32 0, align 4
@ODM_REG_OFDM_FA_TYPE2_11N = common dso_local global i32 0, align 4
@ODM_REG_OFDM_FA_TYPE3_11N = common dso_local global i32 0, align 4
@ODM_REG_OFDM_FA_TYPE4_11N = common dso_local global i32 0, align 4
@ODM_REG_CCK_FA_RST_11N = common dso_local global i32 0, align 4
@BIT12 = common dso_local global i32 0, align 4
@BIT14 = common dso_local global i32 0, align 4
@ODM_REG_CCK_FA_LSB_11N = common dso_local global i32 0, align 4
@bMaskByte0 = common dso_local global i32 0, align 4
@ODM_REG_CCK_FA_MSB_11N = common dso_local global i32 0, align 4
@bMaskByte3 = common dso_local global i32 0, align 4
@ODM_REG_CCK_CCA_CNT_11N = common dso_local global i32 0, align 4
@ODM_COMP_FA_CNT = common dso_local global i32 0, align 4
@ODM_DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Enter odm_FalseAlarmCounterStatistics\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Cnt_Fast_Fsync =%d, Cnt_SB_Search_fail =%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Cnt_Parity_Fail =%d, Cnt_Rate_Illegal =%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Cnt_Crc8_fail =%d, Cnt_Mcs_fail =%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"Cnt_OFDM_CCA =%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"Cnt_CCK_CCA =%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"Cnt_CCA_all =%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"Cnt_Ofdm_fail =%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"Cnt_Cck_fail =%d\0A\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"Total False Alarm =%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @odm_FalseAlarmCounterStatistics(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %7, %struct.TYPE_5__** %3, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 2
  store %struct.TYPE_4__* %9, %struct.TYPE_4__** %4, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @ODM_BB_FA_CNT, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %300

17:                                               ; preds = %1
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @ODM_REG_OFDM_FA_HOLDC_11N, align 4
  %22 = load i32, i32* @BIT31, align 4
  %23 = call i32 @PHY_SetBBReg(i32 %20, i32 %21, i32 %22, i32 1)
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @ODM_REG_OFDM_FA_RSTD_11N, align 4
  %28 = load i32, i32* @BIT31, align 4
  %29 = call i32 @PHY_SetBBReg(i32 %26, i32 %27, i32 %28, i32 1)
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @ODM_REG_OFDM_FA_TYPE1_11N, align 4
  %34 = load i32, i32* @bMaskDWord, align 4
  %35 = call i32 @PHY_QueryBBReg(i32 %32, i32 %33, i32 %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = and i32 %36, 65535
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* %5, align 4
  %41 = and i32 %40, -65536
  %42 = lshr i32 %41, 16
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @ODM_REG_OFDM_FA_TYPE2_11N, align 4
  %49 = load i32, i32* @bMaskDWord, align 4
  %50 = call i32 @PHY_QueryBBReg(i32 %47, i32 %48, i32 %49)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = and i32 %51, 65535
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* %5, align 4
  %56 = and i32 %55, -65536
  %57 = lshr i32 %56, 16
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 4
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @ODM_REG_OFDM_FA_TYPE3_11N, align 4
  %64 = load i32, i32* @bMaskDWord, align 4
  %65 = call i32 @PHY_QueryBBReg(i32 %62, i32 %63, i32 %64)
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* %5, align 4
  %67 = and i32 %66, 65535
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 4
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* %5, align 4
  %71 = and i32 %70, -65536
  %72 = lshr i32 %71, 16
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 5
  store i32 %72, i32* %74, align 4
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @ODM_REG_OFDM_FA_TYPE4_11N, align 4
  %79 = load i32, i32* @bMaskDWord, align 4
  %80 = call i32 @PHY_QueryBBReg(i32 %77, i32 %78, i32 %79)
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* %5, align 4
  %82 = and i32 %81, 65535
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 6
  store i32 %82, i32* %84, align 4
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %87, %90
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %91, %94
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 6
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %95, %98
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %99, %102
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %103, %106
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 7
  store i32 %107, i32* %109, align 4
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @ODM_REG_CCK_FA_RST_11N, align 4
  %114 = load i32, i32* @BIT12, align 4
  %115 = call i32 @PHY_SetBBReg(i32 %112, i32 %113, i32 %114, i32 1)
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @ODM_REG_CCK_FA_RST_11N, align 4
  %120 = load i32, i32* @BIT14, align 4
  %121 = call i32 @PHY_SetBBReg(i32 %118, i32 %119, i32 %120, i32 1)
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @ODM_REG_CCK_FA_LSB_11N, align 4
  %126 = load i32, i32* @bMaskByte0, align 4
  %127 = call i32 @PHY_QueryBBReg(i32 %124, i32 %125, i32 %126)
  store i32 %127, i32* %5, align 4
  %128 = load i32, i32* %5, align 4
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 8
  store i32 %128, i32* %130, align 4
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @ODM_REG_CCK_FA_MSB_11N, align 4
  %135 = load i32, i32* @bMaskByte3, align 4
  %136 = call i32 @PHY_QueryBBReg(i32 %133, i32 %134, i32 %135)
  store i32 %136, i32* %5, align 4
  %137 = load i32, i32* %5, align 4
  %138 = and i32 %137, 255
  %139 = shl i32 %138, 8
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 8
  %142 = load i32, i32* %141, align 4
  %143 = add nsw i32 %142, %139
  store i32 %143, i32* %141, align 4
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @ODM_REG_CCK_CCA_CNT_11N, align 4
  %148 = load i32, i32* @bMaskDWord, align 4
  %149 = call i32 @PHY_QueryBBReg(i32 %146, i32 %147, i32 %148)
  store i32 %149, i32* %5, align 4
  %150 = load i32, i32* %5, align 4
  %151 = and i32 %150, 255
  %152 = shl i32 %151, 8
  %153 = load i32, i32* %5, align 4
  %154 = and i32 %153, 65280
  %155 = ashr i32 %154, 8
  %156 = or i32 %152, %155
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 9
  store i32 %156, i32* %158, align 4
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = add nsw i32 %161, %164
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 4
  %169 = add nsw i32 %165, %168
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 4
  %172 = load i32, i32* %171, align 4
  %173 = add nsw i32 %169, %172
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 5
  %176 = load i32, i32* %175, align 4
  %177 = add nsw i32 %173, %176
  %178 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 6
  %180 = load i32, i32* %179, align 4
  %181 = add nsw i32 %177, %180
  %182 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 8
  %184 = load i32, i32* %183, align 4
  %185 = add nsw i32 %181, %184
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 10
  store i32 %185, i32* %187, align 4
  %188 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 9
  %193 = load i32, i32* %192, align 4
  %194 = add nsw i32 %190, %193
  %195 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 11
  store i32 %194, i32* %196, align 4
  %197 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %198 = load i32, i32* @ODM_COMP_FA_CNT, align 4
  %199 = load i32, i32* @ODM_DBG_LOUD, align 4
  %200 = call i32 @ODM_RT_TRACE(%struct.TYPE_5__* %197, i32 %198, i32 %199, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %201 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %202 = load i32, i32* @ODM_COMP_FA_CNT, align 4
  %203 = load i32, i32* @ODM_DBG_LOUD, align 4
  %204 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = sext i32 %209 to i64
  %211 = inttoptr i64 %210 to i8*
  %212 = call i32 @ODM_RT_TRACE(%struct.TYPE_5__* %201, i32 %202, i32 %203, i8* %211)
  %213 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %214 = load i32, i32* @ODM_COMP_FA_CNT, align 4
  %215 = load i32, i32* @ODM_DBG_LOUD, align 4
  %216 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i32 0, i32 3
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %220 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %219, i32 0, i32 4
  %221 = load i32, i32* %220, align 4
  %222 = sext i32 %221 to i64
  %223 = inttoptr i64 %222 to i8*
  %224 = call i32 @ODM_RT_TRACE(%struct.TYPE_5__* %213, i32 %214, i32 %215, i8* %223)
  %225 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %226 = load i32, i32* @ODM_COMP_FA_CNT, align 4
  %227 = load i32, i32* @ODM_DBG_LOUD, align 4
  %228 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %229 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %228, i32 0, i32 5
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %231, i32 0, i32 6
  %233 = load i32, i32* %232, align 4
  %234 = sext i32 %233 to i64
  %235 = inttoptr i64 %234 to i8*
  %236 = call i32 @ODM_RT_TRACE(%struct.TYPE_5__* %225, i32 %226, i32 %227, i8* %235)
  %237 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %238 = load i32, i32* @ODM_COMP_FA_CNT, align 4
  %239 = load i32, i32* @ODM_DBG_LOUD, align 4
  %240 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %241 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 4
  %243 = sext i32 %242 to i64
  %244 = inttoptr i64 %243 to i8*
  %245 = call i32 @ODM_RT_TRACE(%struct.TYPE_5__* %237, i32 %238, i32 %239, i8* %244)
  %246 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %247 = load i32, i32* @ODM_COMP_FA_CNT, align 4
  %248 = load i32, i32* @ODM_DBG_LOUD, align 4
  %249 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %250 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %249, i32 0, i32 9
  %251 = load i32, i32* %250, align 4
  %252 = sext i32 %251 to i64
  %253 = inttoptr i64 %252 to i8*
  %254 = call i32 @ODM_RT_TRACE(%struct.TYPE_5__* %246, i32 %247, i32 %248, i8* %253)
  %255 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %256 = load i32, i32* @ODM_COMP_FA_CNT, align 4
  %257 = load i32, i32* @ODM_DBG_LOUD, align 4
  %258 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %259 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %258, i32 0, i32 11
  %260 = load i32, i32* %259, align 4
  %261 = sext i32 %260 to i64
  %262 = inttoptr i64 %261 to i8*
  %263 = call i32 @ODM_RT_TRACE(%struct.TYPE_5__* %255, i32 %256, i32 %257, i8* %262)
  %264 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %265 = load i32, i32* @ODM_COMP_FA_CNT, align 4
  %266 = load i32, i32* @ODM_DBG_LOUD, align 4
  %267 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %268 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %267, i32 0, i32 7
  %269 = load i32, i32* %268, align 4
  %270 = sext i32 %269 to i64
  %271 = inttoptr i64 %270 to i8*
  %272 = call i32 @ODM_RT_TRACE(%struct.TYPE_5__* %264, i32 %265, i32 %266, i8* %271)
  %273 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %274 = load i32, i32* @ODM_COMP_FA_CNT, align 4
  %275 = load i32, i32* @ODM_DBG_LOUD, align 4
  %276 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %277 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %276, i32 0, i32 8
  %278 = load i32, i32* %277, align 4
  %279 = sext i32 %278 to i64
  %280 = inttoptr i64 %279 to i8*
  %281 = call i32 @ODM_RT_TRACE(%struct.TYPE_5__* %273, i32 %274, i32 %275, i8* %280)
  %282 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %283 = load i32, i32* @ODM_COMP_FA_CNT, align 4
  %284 = load i32, i32* @ODM_DBG_LOUD, align 4
  %285 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %286 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %285, i32 0, i32 7
  %287 = load i32, i32* %286, align 4
  %288 = sext i32 %287 to i64
  %289 = inttoptr i64 %288 to i8*
  %290 = call i32 @ODM_RT_TRACE(%struct.TYPE_5__* %282, i32 %283, i32 %284, i8* %289)
  %291 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %292 = load i32, i32* @ODM_COMP_FA_CNT, align 4
  %293 = load i32, i32* @ODM_DBG_LOUD, align 4
  %294 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %295 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %294, i32 0, i32 10
  %296 = load i32, i32* %295, align 4
  %297 = sext i32 %296 to i64
  %298 = inttoptr i64 %297 to i8*
  %299 = call i32 @ODM_RT_TRACE(%struct.TYPE_5__* %291, i32 %292, i32 %293, i8* %298)
  br label %300

300:                                              ; preds = %17, %16
  ret void
}

declare dso_local i32 @PHY_SetBBReg(i32, i32, i32, i32) #1

declare dso_local i32 @PHY_QueryBBReg(i32, i32, i32) #1

declare dso_local i32 @ODM_RT_TRACE(%struct.TYPE_5__*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
