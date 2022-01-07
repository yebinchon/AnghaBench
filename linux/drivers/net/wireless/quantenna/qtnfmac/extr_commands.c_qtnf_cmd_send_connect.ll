; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_commands.c_qtnf_cmd_send_connect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_commands.c_qtnf_cmd_send_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtnf_vif = type { %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.cfg80211_connect_params = type { i64, i32, i64, i32, i32, i32, i32, %struct.TYPE_3__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32*, i32, i32*, i32, i32, i32 }
%struct.sk_buff = type { i64 }
%struct.qlink_cmd_connect = type { i32, %struct.qlink_auth_encr, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32 }
%struct.qlink_auth_encr = type { i32, i8*, i32, i32, i8**, i8*, i8**, i8*, i8*, i8*, i32 }

@QLINK_CMD_CONNECT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SHRT_MAX = common dso_local global i64 0, align 8
@ASSOC_REQ_DISABLE_HT = common dso_local global i32 0, align 4
@QLINK_STA_CONNECT_DISABLE_HT = common dso_local global i32 0, align 4
@ASSOC_REQ_DISABLE_VHT = common dso_local global i32 0, align 4
@QLINK_STA_CONNECT_DISABLE_VHT = common dso_local global i32 0, align 4
@ASSOC_REQ_USE_RRM = common dso_local global i32 0, align 4
@QLINK_STA_CONNECT_USE_RRM = common dso_local global i32 0, align 4
@QLINK_MAX_NR_CIPHER_SUITES = common dso_local global i32 0, align 4
@QLINK_MAX_NR_AKM_SUITES = common dso_local global i32 0, align 4
@WLAN_EID_SSID = common dso_local global i32 0, align 4
@QLINK_IE_SET_ASSOC_REQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qtnf_cmd_send_connect(%struct.qtnf_vif* %0, %struct.cfg80211_connect_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qtnf_vif*, align 8
  %5 = alloca %struct.cfg80211_connect_params*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.qlink_cmd_connect*, align 8
  %8 = alloca %struct.qlink_auth_encr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.qtnf_vif* %0, %struct.qtnf_vif** %4, align 8
  store %struct.cfg80211_connect_params* %1, %struct.cfg80211_connect_params** %5, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.qtnf_vif*, %struct.qtnf_vif** %4, align 8
  %13 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.qtnf_vif*, %struct.qtnf_vif** %4, align 8
  %18 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @QLINK_CMD_CONNECT, align 4
  %21 = call %struct.sk_buff* @qtnf_cmd_alloc_new_cmdskb(i32 %16, i32 %19, i32 %20, i32 144)
  store %struct.sk_buff* %21, %struct.sk_buff** %6, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %23 = icmp ne %struct.sk_buff* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %337

27:                                               ; preds = %2
  %28 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.qlink_cmd_connect*
  store %struct.qlink_cmd_connect* %31, %struct.qlink_cmd_connect** %7, align 8
  %32 = load %struct.qlink_cmd_connect*, %struct.qlink_cmd_connect** %7, align 8
  %33 = getelementptr inbounds %struct.qlink_cmd_connect, %struct.qlink_cmd_connect* %32, i32 0, i32 11
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.qtnf_vif*, %struct.qtnf_vif** %4, align 8
  %36 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @ether_addr_copy(i32 %34, i32 %37)
  %39 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %5, align 8
  %40 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %39, i32 0, i32 17
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %27
  %44 = load %struct.qlink_cmd_connect*, %struct.qlink_cmd_connect** %7, align 8
  %45 = getelementptr inbounds %struct.qlink_cmd_connect, %struct.qlink_cmd_connect* %44, i32 0, i32 10
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %5, align 8
  %48 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %47, i32 0, i32 17
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @ether_addr_copy(i32 %46, i32 %49)
  br label %56

51:                                               ; preds = %27
  %52 = load %struct.qlink_cmd_connect*, %struct.qlink_cmd_connect** %7, align 8
  %53 = getelementptr inbounds %struct.qlink_cmd_connect, %struct.qlink_cmd_connect* %52, i32 0, i32 10
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @eth_zero_addr(i32 %54)
  br label %56

56:                                               ; preds = %51, %43
  %57 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %5, align 8
  %58 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %57, i32 0, i32 16
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %56
  %62 = load %struct.qlink_cmd_connect*, %struct.qlink_cmd_connect** %7, align 8
  %63 = getelementptr inbounds %struct.qlink_cmd_connect, %struct.qlink_cmd_connect* %62, i32 0, i32 9
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %5, align 8
  %66 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %65, i32 0, i32 16
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @ether_addr_copy(i32 %64, i32 %67)
  br label %74

69:                                               ; preds = %56
  %70 = load %struct.qlink_cmd_connect*, %struct.qlink_cmd_connect** %7, align 8
  %71 = getelementptr inbounds %struct.qlink_cmd_connect, %struct.qlink_cmd_connect* %70, i32 0, i32 9
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @eth_zero_addr(i32 %72)
  br label %74

74:                                               ; preds = %69, %61
  %75 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %5, align 8
  %76 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp sge i64 %77, 0
  br i1 %78, label %79, label %93

79:                                               ; preds = %74
  %80 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %5, align 8
  %81 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @SHRT_MAX, align 8
  %84 = icmp sle i64 %82, %83
  br i1 %84, label %85, label %93

85:                                               ; preds = %79
  %86 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %5, align 8
  %87 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = trunc i64 %88 to i32
  %90 = call i8* @cpu_to_le16(i32 %89)
  %91 = load %struct.qlink_cmd_connect*, %struct.qlink_cmd_connect** %7, align 8
  %92 = getelementptr inbounds %struct.qlink_cmd_connect, %struct.qlink_cmd_connect* %91, i32 0, i32 8
  store i8* %90, i8** %92, align 8
  br label %97

93:                                               ; preds = %79, %74
  %94 = call i8* @cpu_to_le16(i32 -1)
  %95 = load %struct.qlink_cmd_connect*, %struct.qlink_cmd_connect** %7, align 8
  %96 = getelementptr inbounds %struct.qlink_cmd_connect, %struct.qlink_cmd_connect* %95, i32 0, i32 8
  store i8* %94, i8** %96, align 8
  br label %97

97:                                               ; preds = %93, %85
  %98 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %5, align 8
  %99 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @ASSOC_REQ_DISABLE_HT, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %97
  %105 = load i32, i32* @QLINK_STA_CONNECT_DISABLE_HT, align 4
  %106 = load i32, i32* %11, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %11, align 4
  br label %108

108:                                              ; preds = %104, %97
  %109 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %5, align 8
  %110 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @ASSOC_REQ_DISABLE_VHT, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %108
  %116 = load i32, i32* @QLINK_STA_CONNECT_DISABLE_VHT, align 4
  %117 = load i32, i32* %11, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %11, align 4
  br label %119

119:                                              ; preds = %115, %108
  %120 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %5, align 8
  %121 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @ASSOC_REQ_USE_RRM, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %119
  %127 = load i32, i32* @QLINK_STA_CONNECT_USE_RRM, align 4
  %128 = load i32, i32* %11, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %11, align 4
  br label %130

130:                                              ; preds = %126, %119
  %131 = load i32, i32* %11, align 4
  %132 = call i8* @cpu_to_le32(i32 %131)
  %133 = load %struct.qlink_cmd_connect*, %struct.qlink_cmd_connect** %7, align 8
  %134 = getelementptr inbounds %struct.qlink_cmd_connect, %struct.qlink_cmd_connect* %133, i32 0, i32 7
  store i8* %132, i8** %134, align 8
  %135 = load %struct.qlink_cmd_connect*, %struct.qlink_cmd_connect** %7, align 8
  %136 = getelementptr inbounds %struct.qlink_cmd_connect, %struct.qlink_cmd_connect* %135, i32 0, i32 6
  %137 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %5, align 8
  %138 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %137, i32 0, i32 15
  %139 = call i32 @memcpy(i32* %136, i32* %138, i32 4)
  %140 = load %struct.qlink_cmd_connect*, %struct.qlink_cmd_connect** %7, align 8
  %141 = getelementptr inbounds %struct.qlink_cmd_connect, %struct.qlink_cmd_connect* %140, i32 0, i32 5
  %142 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %5, align 8
  %143 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %142, i32 0, i32 14
  %144 = call i32 @memcpy(i32* %141, i32* %143, i32 4)
  %145 = load %struct.qlink_cmd_connect*, %struct.qlink_cmd_connect** %7, align 8
  %146 = getelementptr inbounds %struct.qlink_cmd_connect, %struct.qlink_cmd_connect* %145, i32 0, i32 4
  %147 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %5, align 8
  %148 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %147, i32 0, i32 13
  %149 = call i32 @memcpy(i32* %146, i32* %148, i32 4)
  %150 = load %struct.qlink_cmd_connect*, %struct.qlink_cmd_connect** %7, align 8
  %151 = getelementptr inbounds %struct.qlink_cmd_connect, %struct.qlink_cmd_connect* %150, i32 0, i32 3
  %152 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %5, align 8
  %153 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %152, i32 0, i32 12
  %154 = call i32 @memcpy(i32* %151, i32* %153, i32 4)
  %155 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %5, align 8
  %156 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %155, i32 0, i32 11
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.qlink_cmd_connect*, %struct.qlink_cmd_connect** %7, align 8
  %159 = getelementptr inbounds %struct.qlink_cmd_connect, %struct.qlink_cmd_connect* %158, i32 0, i32 2
  store i32 %157, i32* %159, align 8
  %160 = load %struct.qlink_cmd_connect*, %struct.qlink_cmd_connect** %7, align 8
  %161 = getelementptr inbounds %struct.qlink_cmd_connect, %struct.qlink_cmd_connect* %160, i32 0, i32 1
  store %struct.qlink_auth_encr* %161, %struct.qlink_auth_encr** %8, align 8
  %162 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %5, align 8
  %163 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %162, i32 0, i32 10
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.qlink_auth_encr*, %struct.qlink_auth_encr** %8, align 8
  %166 = getelementptr inbounds %struct.qlink_auth_encr, %struct.qlink_auth_encr* %165, i32 0, i32 10
  store i32 %164, i32* %166, align 8
  %167 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %5, align 8
  %168 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %167, i32 0, i32 9
  %169 = load i32, i32* %168, align 4
  %170 = icmp ne i32 %169, 0
  %171 = xor i1 %170, true
  %172 = xor i1 %171, true
  %173 = zext i1 %172 to i32
  %174 = load %struct.qlink_auth_encr*, %struct.qlink_auth_encr** %8, align 8
  %175 = getelementptr inbounds %struct.qlink_auth_encr, %struct.qlink_auth_encr* %174, i32 0, i32 0
  store i32 %173, i32* %175, align 8
  %176 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %5, align 8
  %177 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %176, i32 0, i32 8
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.qlink_cmd_connect*, %struct.qlink_cmd_connect** %7, align 8
  %180 = getelementptr inbounds %struct.qlink_cmd_connect, %struct.qlink_cmd_connect* %179, i32 0, i32 0
  store i32 %178, i32* %180, align 8
  %181 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %5, align 8
  %182 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %181, i32 0, i32 7
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %182, i32 0, i32 8
  %184 = load i32, i32* %183, align 8
  %185 = call i8* @cpu_to_le32(i32 %184)
  %186 = load %struct.qlink_auth_encr*, %struct.qlink_auth_encr** %8, align 8
  %187 = getelementptr inbounds %struct.qlink_auth_encr, %struct.qlink_auth_encr* %186, i32 0, i32 9
  store i8* %185, i8** %187, align 8
  %188 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %5, align 8
  %189 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %188, i32 0, i32 7
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %189, i32 0, i32 7
  %191 = load i32, i32* %190, align 4
  %192 = call i8* @cpu_to_le32(i32 %191)
  %193 = load %struct.qlink_auth_encr*, %struct.qlink_auth_encr** %8, align 8
  %194 = getelementptr inbounds %struct.qlink_auth_encr, %struct.qlink_auth_encr* %193, i32 0, i32 8
  store i8* %192, i8** %194, align 8
  %195 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %5, align 8
  %196 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %195, i32 0, i32 7
  %197 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %196, i32 0, i32 6
  %198 = load i32, i32* %197, align 8
  %199 = call i8* @cpu_to_le32(i32 %198)
  %200 = load %struct.qlink_auth_encr*, %struct.qlink_auth_encr** %8, align 8
  %201 = getelementptr inbounds %struct.qlink_auth_encr, %struct.qlink_auth_encr* %200, i32 0, i32 7
  store i8* %199, i8** %201, align 8
  store i32 0, i32* %10, align 4
  br label %202

202:                                              ; preds = %222, %130
  %203 = load i32, i32* %10, align 4
  %204 = load i32, i32* @QLINK_MAX_NR_CIPHER_SUITES, align 4
  %205 = icmp slt i32 %203, %204
  br i1 %205, label %206, label %225

206:                                              ; preds = %202
  %207 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %5, align 8
  %208 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %207, i32 0, i32 7
  %209 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %208, i32 0, i32 5
  %210 = load i32*, i32** %209, align 8
  %211 = load i32, i32* %10, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %210, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = call i8* @cpu_to_le32(i32 %214)
  %216 = load %struct.qlink_auth_encr*, %struct.qlink_auth_encr** %8, align 8
  %217 = getelementptr inbounds %struct.qlink_auth_encr, %struct.qlink_auth_encr* %216, i32 0, i32 6
  %218 = load i8**, i8*** %217, align 8
  %219 = load i32, i32* %10, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i8*, i8** %218, i64 %220
  store i8* %215, i8** %221, align 8
  br label %222

222:                                              ; preds = %206
  %223 = load i32, i32* %10, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %10, align 4
  br label %202

225:                                              ; preds = %202
  %226 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %5, align 8
  %227 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %226, i32 0, i32 7
  %228 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %227, i32 0, i32 4
  %229 = load i32, i32* %228, align 8
  %230 = call i8* @cpu_to_le32(i32 %229)
  %231 = load %struct.qlink_auth_encr*, %struct.qlink_auth_encr** %8, align 8
  %232 = getelementptr inbounds %struct.qlink_auth_encr, %struct.qlink_auth_encr* %231, i32 0, i32 5
  store i8* %230, i8** %232, align 8
  store i32 0, i32* %10, align 4
  br label %233

233:                                              ; preds = %253, %225
  %234 = load i32, i32* %10, align 4
  %235 = load i32, i32* @QLINK_MAX_NR_AKM_SUITES, align 4
  %236 = icmp slt i32 %234, %235
  br i1 %236, label %237, label %256

237:                                              ; preds = %233
  %238 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %5, align 8
  %239 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %238, i32 0, i32 7
  %240 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %239, i32 0, i32 3
  %241 = load i32*, i32** %240, align 8
  %242 = load i32, i32* %10, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i32, i32* %241, i64 %243
  %245 = load i32, i32* %244, align 4
  %246 = call i8* @cpu_to_le32(i32 %245)
  %247 = load %struct.qlink_auth_encr*, %struct.qlink_auth_encr** %8, align 8
  %248 = getelementptr inbounds %struct.qlink_auth_encr, %struct.qlink_auth_encr* %247, i32 0, i32 4
  %249 = load i8**, i8*** %248, align 8
  %250 = load i32, i32* %10, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i8*, i8** %249, i64 %251
  store i8* %246, i8** %252, align 8
  br label %253

253:                                              ; preds = %237
  %254 = load i32, i32* %10, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %10, align 4
  br label %233

256:                                              ; preds = %233
  %257 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %5, align 8
  %258 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %257, i32 0, i32 7
  %259 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %258, i32 0, i32 2
  %260 = load i32, i32* %259, align 8
  %261 = load %struct.qlink_auth_encr*, %struct.qlink_auth_encr** %8, align 8
  %262 = getelementptr inbounds %struct.qlink_auth_encr, %struct.qlink_auth_encr* %261, i32 0, i32 3
  store i32 %260, i32* %262, align 4
  %263 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %5, align 8
  %264 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %263, i32 0, i32 7
  %265 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  %267 = load %struct.qlink_auth_encr*, %struct.qlink_auth_encr** %8, align 8
  %268 = getelementptr inbounds %struct.qlink_auth_encr, %struct.qlink_auth_encr* %267, i32 0, i32 2
  store i32 %266, i32* %268, align 8
  %269 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %5, align 8
  %270 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %269, i32 0, i32 7
  %271 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = call i32 @be16_to_cpu(i32 %272)
  %274 = call i8* @cpu_to_le16(i32 %273)
  %275 = load %struct.qlink_auth_encr*, %struct.qlink_auth_encr** %8, align 8
  %276 = getelementptr inbounds %struct.qlink_auth_encr, %struct.qlink_auth_encr* %275, i32 0, i32 1
  store i8* %274, i8** %276, align 8
  %277 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %278 = load i32, i32* @WLAN_EID_SSID, align 4
  %279 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %5, align 8
  %280 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %279, i32 0, i32 6
  %281 = load i32, i32* %280, align 4
  %282 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %5, align 8
  %283 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %282, i32 0, i32 5
  %284 = load i32, i32* %283, align 8
  %285 = call i32 @qtnf_cmd_skb_put_tlv_arr(%struct.sk_buff* %277, i32 %278, i32 %281, i32 %284)
  %286 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %5, align 8
  %287 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %286, i32 0, i32 2
  %288 = load i64, i64* %287, align 8
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %290, label %300

290:                                              ; preds = %256
  %291 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %292 = load i32, i32* @QLINK_IE_SET_ASSOC_REQ, align 4
  %293 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %5, align 8
  %294 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %293, i32 0, i32 4
  %295 = load i32, i32* %294, align 4
  %296 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %5, align 8
  %297 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %296, i32 0, i32 2
  %298 = load i64, i64* %297, align 8
  %299 = call i32 @qtnf_cmd_tlv_ie_set_add(%struct.sk_buff* %291, i32 %292, i32 %295, i64 %298)
  br label %300

300:                                              ; preds = %290, %256
  %301 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %5, align 8
  %302 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %301, i32 0, i32 3
  %303 = load i32, i32* %302, align 8
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %311

305:                                              ; preds = %300
  %306 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %307 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %5, align 8
  %308 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %307, i32 0, i32 3
  %309 = load i32, i32* %308, align 8
  %310 = call i32 @qtnf_cmd_channel_tlv_add(%struct.sk_buff* %306, i32 %309)
  br label %311

311:                                              ; preds = %305, %300
  %312 = load %struct.qtnf_vif*, %struct.qtnf_vif** %4, align 8
  %313 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %312, i32 0, i32 0
  %314 = load %struct.TYPE_4__*, %struct.TYPE_4__** %313, align 8
  %315 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 4
  %317 = call i32 @qtnf_bus_lock(i32 %316)
  %318 = load %struct.qtnf_vif*, %struct.qtnf_vif** %4, align 8
  %319 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %318, i32 0, i32 0
  %320 = load %struct.TYPE_4__*, %struct.TYPE_4__** %319, align 8
  %321 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 4
  %323 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %324 = call i32 @qtnf_cmd_send(i32 %322, %struct.sk_buff* %323)
  store i32 %324, i32* %9, align 4
  %325 = load i32, i32* %9, align 4
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %328

327:                                              ; preds = %311
  br label %329

328:                                              ; preds = %311
  br label %329

329:                                              ; preds = %328, %327
  %330 = load %struct.qtnf_vif*, %struct.qtnf_vif** %4, align 8
  %331 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %330, i32 0, i32 0
  %332 = load %struct.TYPE_4__*, %struct.TYPE_4__** %331, align 8
  %333 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 4
  %335 = call i32 @qtnf_bus_unlock(i32 %334)
  %336 = load i32, i32* %9, align 4
  store i32 %336, i32* %3, align 4
  br label %337

337:                                              ; preds = %329, %24
  %338 = load i32, i32* %3, align 4
  ret i32 %338
}

declare dso_local %struct.sk_buff* @qtnf_cmd_alloc_new_cmdskb(i32, i32, i32, i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @eth_zero_addr(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @qtnf_cmd_skb_put_tlv_arr(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @qtnf_cmd_tlv_ie_set_add(%struct.sk_buff*, i32, i32, i64) #1

declare dso_local i32 @qtnf_cmd_channel_tlv_add(%struct.sk_buff*, i32) #1

declare dso_local i32 @qtnf_bus_lock(i32) #1

declare dso_local i32 @qtnf_cmd_send(i32, %struct.sk_buff*) #1

declare dso_local i32 @qtnf_bus_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
