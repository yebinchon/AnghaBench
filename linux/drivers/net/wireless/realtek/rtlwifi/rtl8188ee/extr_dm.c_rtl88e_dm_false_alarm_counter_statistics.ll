; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_dm.c_rtl88e_dm_false_alarm_counter_statistics.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_dm.c_rtl88e_dm_false_alarm_counter_statistics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.false_alarm_statistics }
%struct.false_alarm_statistics = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ROFDM0_LSTF = common dso_local global i32 0, align 4
@ROFDM1_LSTF = common dso_local global i32 0, align 4
@ROFDM0_FRAMESYNC = common dso_local global i32 0, align 4
@MASKDWORD = common dso_local global i32 0, align 4
@ROFDM_PHYCOUNTER1 = common dso_local global i32 0, align 4
@ROFDM_PHYCOUNTER2 = common dso_local global i32 0, align 4
@ROFDM_PHYCOUNTER3 = common dso_local global i32 0, align 4
@REG_SC_CNT = common dso_local global i32 0, align 4
@RCCK0_FALSEALARMREPORT = common dso_local global i32 0, align 4
@RCCK0_FACOUNTERLOWER = common dso_local global i32 0, align 4
@MASKBYTE0 = common dso_local global i32 0, align 4
@RCCK0_FACOUNTERUPPER = common dso_local global i32 0, align 4
@MASKBYTE3 = common dso_local global i32 0, align 4
@RCCK0_CCA_CNT = common dso_local global i32 0, align 4
@ROFDM0_TRSWISOLATION = common dso_local global i32 0, align 4
@COMP_DIG = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [84 x i8] c"cnt_parity_fail = %d, cnt_rate_illegal = %d, cnt_crc8_fail = %d, cnt_mcs_fail = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"cnt_ofdm_fail = %x, cnt_cck_fail = %x, cnt_all = %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @rtl88e_dm_false_alarm_counter_statistics to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl88e_dm_false_alarm_counter_statistics(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtl_priv*, align 8
  %5 = alloca %struct.false_alarm_statistics*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %6 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %7 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %6)
  store %struct.rtl_priv* %7, %struct.rtl_priv** %4, align 8
  %8 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %9 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %8, i32 0, i32 0
  store %struct.false_alarm_statistics* %9, %struct.false_alarm_statistics** %5, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %11 = load i32, i32* @ROFDM0_LSTF, align 4
  %12 = call i32 @BIT(i32 31)
  %13 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %10, i32 %11, i32 %12, i32 1)
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %15 = load i32, i32* @ROFDM1_LSTF, align 4
  %16 = call i32 @BIT(i32 31)
  %17 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %14, i32 %15, i32 %16, i32 1)
  %18 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %19 = load i32, i32* @ROFDM0_FRAMESYNC, align 4
  %20 = load i32, i32* @MASKDWORD, align 4
  %21 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %18, i32 %19, i32 %20)
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = and i32 %22, 65535
  %24 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %25 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %3, align 4
  %27 = and i32 %26, -65536
  %28 = lshr i32 %27, 16
  %29 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %30 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %32 = load i32, i32* @ROFDM_PHYCOUNTER1, align 4
  %33 = load i32, i32* @MASKDWORD, align 4
  %34 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %31, i32 %32, i32 %33)
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* %3, align 4
  %36 = and i32 %35, 65535
  %37 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %38 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* %3, align 4
  %40 = and i32 %39, -65536
  %41 = lshr i32 %40, 16
  %42 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %43 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 4
  %44 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %45 = load i32, i32* @ROFDM_PHYCOUNTER2, align 4
  %46 = load i32, i32* @MASKDWORD, align 4
  %47 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %44, i32 %45, i32 %46)
  store i32 %47, i32* %3, align 4
  %48 = load i32, i32* %3, align 4
  %49 = and i32 %48, 65535
  %50 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %51 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* %3, align 4
  %53 = and i32 %52, -65536
  %54 = lshr i32 %53, 16
  %55 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %56 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %55, i32 0, i32 5
  store i32 %54, i32* %56, align 4
  %57 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %58 = load i32, i32* @ROFDM_PHYCOUNTER3, align 4
  %59 = load i32, i32* @MASKDWORD, align 4
  %60 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %57, i32 %58, i32 %59)
  store i32 %60, i32* %3, align 4
  %61 = load i32, i32* %3, align 4
  %62 = and i32 %61, 65535
  %63 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %64 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %63, i32 0, i32 6
  store i32 %62, i32* %64, align 4
  %65 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %66 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %69 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %67, %70
  %72 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %73 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %71, %74
  %76 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %77 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %76, i32 0, i32 6
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %75, %78
  %80 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %81 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %79, %82
  %84 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %85 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %83, %86
  %88 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %89 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %88, i32 0, i32 7
  store i32 %87, i32* %89, align 4
  %90 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %91 = load i32, i32* @REG_SC_CNT, align 4
  %92 = load i32, i32* @MASKDWORD, align 4
  %93 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %90, i32 %91, i32 %92)
  store i32 %93, i32* %3, align 4
  %94 = load i32, i32* %3, align 4
  %95 = and i32 %94, 65535
  %96 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %97 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %96, i32 0, i32 8
  store i32 %95, i32* %97, align 4
  %98 = load i32, i32* %3, align 4
  %99 = and i32 %98, -65536
  %100 = lshr i32 %99, 16
  %101 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %102 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %101, i32 0, i32 9
  store i32 %100, i32* %102, align 4
  %103 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %104 = load i32, i32* @RCCK0_FALSEALARMREPORT, align 4
  %105 = call i32 @BIT(i32 12)
  %106 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %103, i32 %104, i32 %105, i32 1)
  %107 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %108 = load i32, i32* @RCCK0_FALSEALARMREPORT, align 4
  %109 = call i32 @BIT(i32 14)
  %110 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %107, i32 %108, i32 %109, i32 1)
  %111 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %112 = load i32, i32* @RCCK0_FACOUNTERLOWER, align 4
  %113 = load i32, i32* @MASKBYTE0, align 4
  %114 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %111, i32 %112, i32 %113)
  store i32 %114, i32* %3, align 4
  %115 = load i32, i32* %3, align 4
  %116 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %117 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %116, i32 0, i32 10
  store i32 %115, i32* %117, align 4
  %118 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %119 = load i32, i32* @RCCK0_FACOUNTERUPPER, align 4
  %120 = load i32, i32* @MASKBYTE3, align 4
  %121 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %118, i32 %119, i32 %120)
  store i32 %121, i32* %3, align 4
  %122 = load i32, i32* %3, align 4
  %123 = and i32 %122, 255
  %124 = shl i32 %123, 8
  %125 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %126 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %125, i32 0, i32 10
  %127 = load i32, i32* %126, align 4
  %128 = add nsw i32 %127, %124
  store i32 %128, i32* %126, align 4
  %129 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %130 = load i32, i32* @RCCK0_CCA_CNT, align 4
  %131 = load i32, i32* @MASKDWORD, align 4
  %132 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %129, i32 %130, i32 %131)
  store i32 %132, i32* %3, align 4
  %133 = load i32, i32* %3, align 4
  %134 = and i32 %133, 255
  %135 = shl i32 %134, 8
  %136 = load i32, i32* %3, align 4
  %137 = and i32 %136, 65280
  %138 = ashr i32 %137, 8
  %139 = or i32 %135, %138
  %140 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %141 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %140, i32 0, i32 11
  store i32 %139, i32* %141, align 4
  %142 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %143 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %146 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = add nsw i32 %144, %147
  %149 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %150 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = add nsw i32 %148, %151
  %153 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %154 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 4
  %156 = add nsw i32 %152, %155
  %157 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %158 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %157, i32 0, i32 5
  %159 = load i32, i32* %158, align 4
  %160 = add nsw i32 %156, %159
  %161 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %162 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %161, i32 0, i32 6
  %163 = load i32, i32* %162, align 4
  %164 = add nsw i32 %160, %163
  %165 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %166 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %165, i32 0, i32 10
  %167 = load i32, i32* %166, align 4
  %168 = add nsw i32 %164, %167
  %169 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %170 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %169, i32 0, i32 12
  store i32 %168, i32* %170, align 4
  %171 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %172 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %175 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %174, i32 0, i32 11
  %176 = load i32, i32* %175, align 4
  %177 = add nsw i32 %173, %176
  %178 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %179 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %178, i32 0, i32 13
  store i32 %177, i32* %179, align 4
  %180 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %181 = load i32, i32* @ROFDM0_TRSWISOLATION, align 4
  %182 = call i32 @BIT(i32 31)
  %183 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %180, i32 %181, i32 %182, i32 1)
  %184 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %185 = load i32, i32* @ROFDM0_TRSWISOLATION, align 4
  %186 = call i32 @BIT(i32 31)
  %187 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %184, i32 %185, i32 %186, i32 0)
  %188 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %189 = load i32, i32* @ROFDM1_LSTF, align 4
  %190 = call i32 @BIT(i32 27)
  %191 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %188, i32 %189, i32 %190, i32 1)
  %192 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %193 = load i32, i32* @ROFDM1_LSTF, align 4
  %194 = call i32 @BIT(i32 27)
  %195 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %192, i32 %193, i32 %194, i32 0)
  %196 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %197 = load i32, i32* @ROFDM0_LSTF, align 4
  %198 = call i32 @BIT(i32 31)
  %199 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %196, i32 %197, i32 %198, i32 0)
  %200 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %201 = load i32, i32* @ROFDM1_LSTF, align 4
  %202 = call i32 @BIT(i32 31)
  %203 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %200, i32 %201, i32 %202, i32 0)
  %204 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %205 = load i32, i32* @RCCK0_FALSEALARMREPORT, align 4
  %206 = call i32 @BIT(i32 13)
  %207 = call i32 @BIT(i32 12)
  %208 = or i32 %206, %207
  %209 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %204, i32 %205, i32 %208, i32 0)
  %210 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %211 = load i32, i32* @RCCK0_FALSEALARMREPORT, align 4
  %212 = call i32 @BIT(i32 13)
  %213 = call i32 @BIT(i32 12)
  %214 = or i32 %212, %213
  %215 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %210, i32 %211, i32 %214, i32 2)
  %216 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %217 = load i32, i32* @RCCK0_FALSEALARMREPORT, align 4
  %218 = call i32 @BIT(i32 15)
  %219 = call i32 @BIT(i32 14)
  %220 = or i32 %218, %219
  %221 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %216, i32 %217, i32 %220, i32 0)
  %222 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %223 = load i32, i32* @RCCK0_FALSEALARMREPORT, align 4
  %224 = call i32 @BIT(i32 15)
  %225 = call i32 @BIT(i32 14)
  %226 = or i32 %224, %225
  %227 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %222, i32 %223, i32 %226, i32 2)
  %228 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %229 = load i32, i32* @COMP_DIG, align 4
  %230 = load i32, i32* @DBG_TRACE, align 4
  %231 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %232 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %231, i32 0, i32 3
  %233 = load i32, i32* %232, align 4
  %234 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %235 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %234, i32 0, i32 4
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %238 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %237, i32 0, i32 5
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %241 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %240, i32 0, i32 6
  %242 = load i32, i32* %241, align 4
  %243 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i32, i32, i32, ...) @RT_TRACE(%struct.rtl_priv* %228, i32 %229, i32 %230, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i64 0, i64 0), i32 %233, i32 %236, i32 %239, i32 %242)
  %244 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %245 = load i32, i32* @COMP_DIG, align 4
  %246 = load i32, i32* @DBG_TRACE, align 4
  %247 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %248 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %247, i32 0, i32 7
  %249 = load i32, i32* %248, align 4
  %250 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %251 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %250, i32 0, i32 10
  %252 = load i32, i32* %251, align 4
  %253 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %254 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %253, i32 0, i32 12
  %255 = load i32, i32* %254, align 4
  %256 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i32, i32, i32, ...) @RT_TRACE(%struct.rtl_priv* %244, i32 %245, i32 %246, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %249, i32 %252, i32 %255)
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_set_bbreg(%struct.ieee80211_hw*, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rtl_get_bbreg(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
