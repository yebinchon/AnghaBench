; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_card.c_rtsx_init_cards.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_card.c_rtsx_init_cards.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32, i32, i32, i32, i32, i32, i64*, i64, i64, i64*, i32, i32 }

@RTSX_STAT_SS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"Reset chip in polling thread!\0A\00", align 1
@QFN = common dso_local global i32 0, align 4
@XD_EXIST = common dso_local global i32 0, align 4
@SD_NR = common dso_local global i32 0, align 4
@MS_NR = common dso_local global i32 0, align 4
@SD_CARD = common dso_local global i32 0, align 4
@XD_CARD = common dso_local global i32 0, align 4
@XD_NR = common dso_local global i32 0, align 4
@MS_CARD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"chip->need_release = 0x%x\0A\00", align 1
@RTSX_STAT_RUN = common dso_local global i32 0, align 4
@SSC_PDCTL = common dso_local global i32 0, align 4
@OC_PDCTL = common dso_local global i32 0, align 4
@RBCTL = common dso_local global i32 0, align 4
@RB_FLUSH = common dso_local global i32 0, align 4
@HOST_SLEEP_STATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"chip->card_exist = 0x%x\0A\00", align 1
@LED_GPIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"chip->need_reset = 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"chip->need_reinit = 0x%x\0A\00", align 1
@CARD_OC_CLR = common dso_local global i32 0, align 4
@CARD_OC_EVER = common dso_local global i32 0, align 4
@CARD_OC_INT_CLR = common dso_local global i32 0, align 4
@CARD_OC_NOW = common dso_local global i32 0, align 4
@OCPCLR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtsx_init_cards(%struct.rtsx_chip* %0) #0 {
  %2 = alloca %struct.rtsx_chip*, align 8
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %2, align 8
  %3 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %4 = call i64 @RTSX_TST_DELINK(%struct.rtsx_chip* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %1
  %7 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %8 = call i64 @rtsx_get_stat(%struct.rtsx_chip* %7)
  %9 = load i64, i64* @RTSX_STAT_SS, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %19

11:                                               ; preds = %6
  %12 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %13 = call i32 @rtsx_dev(%struct.rtsx_chip* %12)
  %14 = call i32 (i32, i8*, ...) @dev_dbg(i32 %13, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %16 = call i32 @rtsx_reset_chip(%struct.rtsx_chip* %15)
  %17 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %18 = call i32 @RTSX_CLR_DELINK(%struct.rtsx_chip* %17)
  br label %19

19:                                               ; preds = %11, %6, %1
  %20 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %21 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %309

24:                                               ; preds = %19
  %25 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %26 = call i64 @CHECK_PID(%struct.rtsx_chip* %25, i32 21128)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %50

28:                                               ; preds = %24
  %29 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %30 = load i32, i32* @QFN, align 4
  %31 = call i64 @CHECK_BARO_PKG(%struct.rtsx_chip* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %50

33:                                               ; preds = %28
  %34 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %35 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @XD_EXIST, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %33
  %41 = load i32, i32* @SD_NR, align 4
  %42 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %43 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %42, i32 0, i32 0
  %44 = call i32 @clear_bit(i32 %41, i32* %43)
  %45 = load i32, i32* @MS_NR, align 4
  %46 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %47 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %46, i32 0, i32 0
  %48 = call i32 @clear_bit(i32 %45, i32* %47)
  br label %49

49:                                               ; preds = %40, %33
  br label %50

50:                                               ; preds = %49, %28, %24
  %51 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %52 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @SD_CARD, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %67, label %57

57:                                               ; preds = %50
  %58 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %59 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %58, i32 0, i32 11
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %57
  %63 = load i32, i32* @SD_NR, align 4
  %64 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %65 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %64, i32 0, i32 0
  %66 = call i32 @clear_bit(i32 %63, i32* %65)
  br label %67

67:                                               ; preds = %62, %57, %50
  %68 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %69 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @XD_CARD, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %67
  %75 = load i32, i32* @XD_NR, align 4
  %76 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %77 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %76, i32 0, i32 0
  %78 = call i32 @clear_bit(i32 %75, i32* %77)
  br label %79

79:                                               ; preds = %74, %67
  %80 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %81 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @MS_CARD, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %91, label %86

86:                                               ; preds = %79
  %87 = load i32, i32* @MS_NR, align 4
  %88 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %89 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %88, i32 0, i32 0
  %90 = call i32 @clear_bit(i32 %87, i32* %89)
  br label %91

91:                                               ; preds = %86, %79
  %92 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %93 = call i32 @rtsx_dev(%struct.rtsx_chip* %92)
  %94 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %95 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 (i32, i8*, ...) @dev_dbg(i32 %93, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %96)
  %98 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %99 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %111

102:                                              ; preds = %91
  %103 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %104 = load i32, i32* @RTSX_STAT_RUN, align 4
  %105 = call i32 @rtsx_set_stat(%struct.rtsx_chip* %103, i32 %104)
  %106 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %107 = load i32, i32* @SSC_PDCTL, align 4
  %108 = load i32, i32* @OC_PDCTL, align 4
  %109 = or i32 %107, %108
  %110 = call i32 @rtsx_force_power_on(%struct.rtsx_chip* %106, i32 %109)
  br label %111

111:                                              ; preds = %102, %91
  %112 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %113 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @SD_CARD, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %172

118:                                              ; preds = %111
  %119 = load i32, i32* @SD_NR, align 4
  %120 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %121 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %120, i32 0, i32 0
  %122 = call i32 @clear_bit(i32 %119, i32* %121)
  %123 = load i32, i32* @SD_CARD, align 4
  %124 = xor i32 %123, -1
  %125 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %126 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = and i32 %127, %124
  store i32 %128, i32* %126, align 8
  %129 = load i32, i32* @SD_CARD, align 4
  %130 = xor i32 %129, -1
  %131 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %132 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 8
  %134 = and i32 %133, %130
  store i32 %134, i32* %132, align 8
  %135 = load i32, i32* @SD_CARD, align 4
  %136 = xor i32 %135, -1
  %137 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %138 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %137, i32 0, i32 5
  %139 = load i32, i32* %138, align 4
  %140 = and i32 %139, %136
  store i32 %140, i32* %138, align 4
  %141 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %142 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %141, i32 0, i32 10
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %145 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %144, i32 0, i32 6
  %146 = load i64*, i64** %145, align 8
  %147 = load i32, i32* @SD_CARD, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i64, i64* %146, i64 %148
  %150 = load i64, i64* %149, align 8
  %151 = call i32 @CLR_BIT(i32 %143, i64 %150)
  %152 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %153 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %152, i32 0, i32 9
  %154 = load i64*, i64** %153, align 8
  %155 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %156 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %155, i32 0, i32 6
  %157 = load i64*, i64** %156, align 8
  %158 = load i32, i32* @SD_CARD, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i64, i64* %157, i64 %159
  %161 = load i64, i64* %160, align 8
  %162 = getelementptr inbounds i64, i64* %154, i64 %161
  store i64 0, i64* %162, align 8
  %163 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %164 = load i32, i32* @RBCTL, align 4
  %165 = load i32, i32* @RB_FLUSH, align 4
  %166 = load i32, i32* @RB_FLUSH, align 4
  %167 = call i32 @rtsx_write_register(%struct.rtsx_chip* %163, i32 %164, i32 %165, i32 %166)
  %168 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %169 = call i32 @release_sdio(%struct.rtsx_chip* %168)
  %170 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %171 = call i32 @release_sd_card(%struct.rtsx_chip* %170)
  br label %172

172:                                              ; preds = %118, %111
  %173 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %174 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* @XD_CARD, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %239

179:                                              ; preds = %172
  %180 = load i32, i32* @XD_NR, align 4
  %181 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %182 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %181, i32 0, i32 0
  %183 = call i32 @clear_bit(i32 %180, i32* %182)
  %184 = load i32, i32* @XD_CARD, align 4
  %185 = xor i32 %184, -1
  %186 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %187 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = and i32 %188, %185
  store i32 %189, i32* %187, align 8
  %190 = load i32, i32* @XD_CARD, align 4
  %191 = xor i32 %190, -1
  %192 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %193 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %192, i32 0, i32 4
  %194 = load i32, i32* %193, align 8
  %195 = and i32 %194, %191
  store i32 %195, i32* %193, align 8
  %196 = load i32, i32* @XD_CARD, align 4
  %197 = xor i32 %196, -1
  %198 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %199 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %198, i32 0, i32 5
  %200 = load i32, i32* %199, align 4
  %201 = and i32 %200, %197
  store i32 %201, i32* %199, align 4
  %202 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %203 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %202, i32 0, i32 10
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %206 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %205, i32 0, i32 6
  %207 = load i64*, i64** %206, align 8
  %208 = load i32, i32* @XD_CARD, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i64, i64* %207, i64 %209
  %211 = load i64, i64* %210, align 8
  %212 = call i32 @CLR_BIT(i32 %204, i64 %211)
  %213 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %214 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %213, i32 0, i32 9
  %215 = load i64*, i64** %214, align 8
  %216 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %217 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %216, i32 0, i32 6
  %218 = load i64*, i64** %217, align 8
  %219 = load i32, i32* @XD_CARD, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i64, i64* %218, i64 %220
  %222 = load i64, i64* %221, align 8
  %223 = getelementptr inbounds i64, i64* %215, i64 %222
  store i64 0, i64* %223, align 8
  %224 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %225 = call i32 @release_xd_card(%struct.rtsx_chip* %224)
  %226 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %227 = call i64 @CHECK_PID(%struct.rtsx_chip* %226, i32 21128)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %238

229:                                              ; preds = %179
  %230 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %231 = load i32, i32* @QFN, align 4
  %232 = call i64 @CHECK_BARO_PKG(%struct.rtsx_chip* %230, i32 %231)
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %238

234:                                              ; preds = %229
  %235 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %236 = load i32, i32* @HOST_SLEEP_STATE, align 4
  %237 = call i32 @rtsx_write_register(%struct.rtsx_chip* %235, i32 %236, i32 192, i32 192)
  br label %238

238:                                              ; preds = %234, %229, %179
  br label %239

239:                                              ; preds = %238, %172
  %240 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %241 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = load i32, i32* @MS_CARD, align 4
  %244 = and i32 %242, %243
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %293

246:                                              ; preds = %239
  %247 = load i32, i32* @MS_NR, align 4
  %248 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %249 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %248, i32 0, i32 0
  %250 = call i32 @clear_bit(i32 %247, i32* %249)
  %251 = load i32, i32* @MS_CARD, align 4
  %252 = xor i32 %251, -1
  %253 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %254 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %253, i32 0, i32 2
  %255 = load i32, i32* %254, align 8
  %256 = and i32 %255, %252
  store i32 %256, i32* %254, align 8
  %257 = load i32, i32* @MS_CARD, align 4
  %258 = xor i32 %257, -1
  %259 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %260 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %259, i32 0, i32 4
  %261 = load i32, i32* %260, align 8
  %262 = and i32 %261, %258
  store i32 %262, i32* %260, align 8
  %263 = load i32, i32* @MS_CARD, align 4
  %264 = xor i32 %263, -1
  %265 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %266 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %265, i32 0, i32 5
  %267 = load i32, i32* %266, align 4
  %268 = and i32 %267, %264
  store i32 %268, i32* %266, align 4
  %269 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %270 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %269, i32 0, i32 10
  %271 = load i32, i32* %270, align 8
  %272 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %273 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %272, i32 0, i32 6
  %274 = load i64*, i64** %273, align 8
  %275 = load i32, i32* @MS_CARD, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i64, i64* %274, i64 %276
  %278 = load i64, i64* %277, align 8
  %279 = call i32 @CLR_BIT(i32 %271, i64 %278)
  %280 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %281 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %280, i32 0, i32 9
  %282 = load i64*, i64** %281, align 8
  %283 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %284 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %283, i32 0, i32 6
  %285 = load i64*, i64** %284, align 8
  %286 = load i32, i32* @MS_CARD, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i64, i64* %285, i64 %287
  %289 = load i64, i64* %288, align 8
  %290 = getelementptr inbounds i64, i64* %282, i64 %289
  store i64 0, i64* %290, align 8
  %291 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %292 = call i32 @release_ms_card(%struct.rtsx_chip* %291)
  br label %293

293:                                              ; preds = %246, %239
  %294 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %295 = call i32 @rtsx_dev(%struct.rtsx_chip* %294)
  %296 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %297 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %296, i32 0, i32 2
  %298 = load i32, i32* %297, align 8
  %299 = call i32 (i32, i8*, ...) @dev_dbg(i32 %295, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %298)
  %300 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %301 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %300, i32 0, i32 2
  %302 = load i32, i32* %301, align 8
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %308, label %304

304:                                              ; preds = %293
  %305 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %306 = load i32, i32* @LED_GPIO, align 4
  %307 = call i32 @turn_off_led(%struct.rtsx_chip* %305, i32 %306)
  br label %308

308:                                              ; preds = %304, %293
  br label %309

309:                                              ; preds = %308, %19
  %310 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %311 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %310, i32 0, i32 8
  %312 = load i64, i64* %311, align 8
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %314, label %324

314:                                              ; preds = %309
  %315 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %316 = call i32 @rtsx_dev(%struct.rtsx_chip* %315)
  %317 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %318 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %317, i32 0, i32 8
  %319 = load i64, i64* %318, align 8
  %320 = trunc i64 %319 to i32
  %321 = call i32 (i32, i8*, ...) @dev_dbg(i32 %316, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %320)
  %322 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %323 = call i32 @rtsx_reset_cards(%struct.rtsx_chip* %322)
  br label %324

324:                                              ; preds = %314, %309
  %325 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %326 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %325, i32 0, i32 7
  %327 = load i64, i64* %326, align 8
  %328 = icmp ne i64 %327, 0
  br i1 %328, label %329, label %339

329:                                              ; preds = %324
  %330 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %331 = call i32 @rtsx_dev(%struct.rtsx_chip* %330)
  %332 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %333 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %332, i32 0, i32 7
  %334 = load i64, i64* %333, align 8
  %335 = trunc i64 %334 to i32
  %336 = call i32 (i32, i8*, ...) @dev_dbg(i32 %331, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %335)
  %337 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %338 = call i32 @rtsx_reinit_cards(%struct.rtsx_chip* %337, i32 0)
  br label %339

339:                                              ; preds = %329, %324
  ret void
}

declare dso_local i64 @RTSX_TST_DELINK(%struct.rtsx_chip*) #1

declare dso_local i64 @rtsx_get_stat(%struct.rtsx_chip*) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @rtsx_dev(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_reset_chip(%struct.rtsx_chip*) #1

declare dso_local i32 @RTSX_CLR_DELINK(%struct.rtsx_chip*) #1

declare dso_local i64 @CHECK_PID(%struct.rtsx_chip*, i32) #1

declare dso_local i64 @CHECK_BARO_PKG(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @rtsx_set_stat(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @rtsx_force_power_on(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @CLR_BIT(i32, i64) #1

declare dso_local i32 @rtsx_write_register(%struct.rtsx_chip*, i32, i32, i32) #1

declare dso_local i32 @release_sdio(%struct.rtsx_chip*) #1

declare dso_local i32 @release_sd_card(%struct.rtsx_chip*) #1

declare dso_local i32 @release_xd_card(%struct.rtsx_chip*) #1

declare dso_local i32 @release_ms_card(%struct.rtsx_chip*) #1

declare dso_local i32 @turn_off_led(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @rtsx_reset_cards(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_reinit_cards(%struct.rtsx_chip*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
