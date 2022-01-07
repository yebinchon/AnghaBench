; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_hostif.c_hostif_sme_set_rsn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_hostif.c_hostif_sme_set_rsn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ks_wlan_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.wpa_suite = type { i8*, i32, i8*, %struct.wpa_suite** }
%struct.rsn_mode = type { i8*, i32, i8*, %struct.rsn_mode** }

@IW_AUTH_WPA_VERSION_WPA2 = common dso_local global i32 0, align 4
@CIPHER_ID_WPA2_NONE = common dso_local global i32* null, align 8
@CIPHER_ID_WPA_NONE = common dso_local global i32* null, align 8
@CIPHER_ID_WPA2_WEP40 = common dso_local global i32* null, align 8
@CIPHER_ID_WPA_WEP40 = common dso_local global i32* null, align 8
@CIPHER_ID_WPA2_TKIP = common dso_local global i32* null, align 8
@CIPHER_ID_WPA_TKIP = common dso_local global i32* null, align 8
@CIPHER_ID_WPA2_CCMP = common dso_local global i32* null, align 8
@CIPHER_ID_WPA_CCMP = common dso_local global i32* null, align 8
@CIPHER_ID_WPA2_WEP104 = common dso_local global i32* null, align 8
@CIPHER_ID_WPA_WEP104 = common dso_local global i32* null, align 8
@CIPHER_ID_LEN = common dso_local global i32 0, align 4
@DOT11_RSN_CONFIG_UNICAST_CIPHER = common dso_local global i32 0, align 4
@DOT11_RSN_CONFIG_MULTICAST_CIPHER = common dso_local global i32 0, align 4
@KEY_MGMT_ID_WPA2_1X = common dso_local global i32* null, align 8
@KEY_MGMT_ID_WPA_1X = common dso_local global i32* null, align 8
@KEY_MGMT_ID_WPA2_PSK = common dso_local global i32* null, align 8
@KEY_MGMT_ID_WPA_PSK = common dso_local global i32* null, align 8
@KEY_MGMT_ID_WPA2_NONE = common dso_local global i32* null, align 8
@KEY_MGMT_ID_WPA_NONE = common dso_local global i32* null, align 8
@KEY_MGMT_ID_WPA2_WPANONE = common dso_local global i32* null, align 8
@KEY_MGMT_ID_WPA_WPANONE = common dso_local global i32* null, align 8
@KEY_MGMT_ID_LEN = common dso_local global i32 0, align 4
@DOT11_RSN_CONFIG_AUTH_SUITE = common dso_local global i32 0, align 4
@DOT11_RSN_ENABLED = common dso_local global i32 0, align 4
@RSN_MODE_WPA2 = common dso_local global i32 0, align 4
@IW_AUTH_WPA_VERSION_WPA = common dso_local global i32 0, align 4
@RSN_MODE_WPA = common dso_local global i32 0, align 4
@RSN_MODE_NONE = common dso_local global i32 0, align 4
@LOCAL_RSN_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ks_wlan_private*, i32)* @hostif_sme_set_rsn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hostif_sme_set_rsn(%struct.ks_wlan_private* %0, i32 %1) #0 {
  %3 = alloca %struct.ks_wlan_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.wpa_suite, align 8
  %6 = alloca %struct.rsn_mode, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.ks_wlan_private* %0, %struct.ks_wlan_private** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32* null, i32** %9, align 8
  %10 = call i32 @memset(%struct.wpa_suite* %5, i32 0, i32 32)
  %11 = load i32, i32* %4, align 4
  switch i32 %11, label %326 [
    i32 128, label %12
    i32 130, label %109
    i32 132, label %201
    i32 131, label %285
    i32 129, label %293
  ]

12:                                               ; preds = %2
  %13 = call i8* @cpu_to_le16(i32 1)
  %14 = getelementptr inbounds %struct.wpa_suite, %struct.wpa_suite* %5, i32 0, i32 2
  store i8* %13, i8** %14, align 8
  %15 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %16 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %84 [
    i32 138, label %19
    i32 135, label %32
    i32 137, label %45
    i32 139, label %58
    i32 136, label %71
  ]

19:                                               ; preds = %12
  %20 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %21 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @IW_AUTH_WPA_VERSION_WPA2, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load i32*, i32** @CIPHER_ID_WPA2_NONE, align 8
  br label %30

28:                                               ; preds = %19
  %29 = load i32*, i32** @CIPHER_ID_WPA_NONE, align 8
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32* [ %27, %26 ], [ %29, %28 ]
  store i32* %31, i32** %9, align 8
  br label %84

32:                                               ; preds = %12
  %33 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %34 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @IW_AUTH_WPA_VERSION_WPA2, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32*, i32** @CIPHER_ID_WPA2_WEP40, align 8
  br label %43

41:                                               ; preds = %32
  %42 = load i32*, i32** @CIPHER_ID_WPA_WEP40, align 8
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi i32* [ %40, %39 ], [ %42, %41 ]
  store i32* %44, i32** %9, align 8
  br label %84

45:                                               ; preds = %12
  %46 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %47 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @IW_AUTH_WPA_VERSION_WPA2, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = load i32*, i32** @CIPHER_ID_WPA2_TKIP, align 8
  br label %56

54:                                               ; preds = %45
  %55 = load i32*, i32** @CIPHER_ID_WPA_TKIP, align 8
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32* [ %53, %52 ], [ %55, %54 ]
  store i32* %57, i32** %9, align 8
  br label %84

58:                                               ; preds = %12
  %59 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %60 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @IW_AUTH_WPA_VERSION_WPA2, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %58
  %66 = load i32*, i32** @CIPHER_ID_WPA2_CCMP, align 8
  br label %69

67:                                               ; preds = %58
  %68 = load i32*, i32** @CIPHER_ID_WPA_CCMP, align 8
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi i32* [ %66, %65 ], [ %68, %67 ]
  store i32* %70, i32** %9, align 8
  br label %84

71:                                               ; preds = %12
  %72 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %73 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @IW_AUTH_WPA_VERSION_WPA2, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %71
  %79 = load i32*, i32** @CIPHER_ID_WPA2_WEP104, align 8
  br label %82

80:                                               ; preds = %71
  %81 = load i32*, i32** @CIPHER_ID_WPA_WEP104, align 8
  br label %82

82:                                               ; preds = %80, %78
  %83 = phi i32* [ %79, %78 ], [ %81, %80 ]
  store i32* %83, i32** %9, align 8
  br label %84

84:                                               ; preds = %12, %82, %69, %56, %43, %30
  %85 = load i32*, i32** %9, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %87, label %96

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.wpa_suite, %struct.wpa_suite* %5, i32 0, i32 3
  %89 = load %struct.wpa_suite**, %struct.wpa_suite*** %88, align 8
  %90 = getelementptr inbounds %struct.wpa_suite*, %struct.wpa_suite** %89, i64 0
  %91 = load %struct.wpa_suite*, %struct.wpa_suite** %90, align 8
  %92 = getelementptr inbounds %struct.wpa_suite, %struct.wpa_suite* %91, i64 0
  %93 = load i32*, i32** %9, align 8
  %94 = load i32, i32* @CIPHER_ID_LEN, align 4
  %95 = call i32 @memcpy(%struct.wpa_suite* %92, i32* %93, i32 %94)
  br label %96

96:                                               ; preds = %87, %84
  %97 = load i32, i32* @CIPHER_ID_LEN, align 4
  %98 = getelementptr inbounds %struct.wpa_suite, %struct.wpa_suite* %5, i32 0, i32 2
  %99 = load i8*, i8** %98, align 8
  %100 = call i32 @le16_to_cpu(i8* %99)
  %101 = mul nsw i32 %97, %100
  %102 = sext i32 %101 to i64
  %103 = add i64 8, %102
  store i64 %103, i64* %7, align 8
  %104 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %105 = load i32, i32* @DOT11_RSN_CONFIG_UNICAST_CIPHER, align 4
  %106 = load i64, i64* %7, align 8
  %107 = trunc i64 %106 to i32
  %108 = call i32 @hostif_mib_set_request_ostring(%struct.ks_wlan_private* %104, i32 %105, %struct.wpa_suite* %5, i32 %107)
  br label %326

109:                                              ; preds = %2
  %110 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %111 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  switch i32 %113, label %179 [
    i32 138, label %114
    i32 135, label %127
    i32 137, label %140
    i32 139, label %153
    i32 136, label %166
  ]

114:                                              ; preds = %109
  %115 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %116 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @IW_AUTH_WPA_VERSION_WPA2, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %114
  %122 = load i32*, i32** @CIPHER_ID_WPA2_NONE, align 8
  br label %125

123:                                              ; preds = %114
  %124 = load i32*, i32** @CIPHER_ID_WPA_NONE, align 8
  br label %125

125:                                              ; preds = %123, %121
  %126 = phi i32* [ %122, %121 ], [ %124, %123 ]
  store i32* %126, i32** %9, align 8
  br label %179

127:                                              ; preds = %109
  %128 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %129 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @IW_AUTH_WPA_VERSION_WPA2, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %136

134:                                              ; preds = %127
  %135 = load i32*, i32** @CIPHER_ID_WPA2_WEP40, align 8
  br label %138

136:                                              ; preds = %127
  %137 = load i32*, i32** @CIPHER_ID_WPA_WEP40, align 8
  br label %138

138:                                              ; preds = %136, %134
  %139 = phi i32* [ %135, %134 ], [ %137, %136 ]
  store i32* %139, i32** %9, align 8
  br label %179

140:                                              ; preds = %109
  %141 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %142 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @IW_AUTH_WPA_VERSION_WPA2, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %149

147:                                              ; preds = %140
  %148 = load i32*, i32** @CIPHER_ID_WPA2_TKIP, align 8
  br label %151

149:                                              ; preds = %140
  %150 = load i32*, i32** @CIPHER_ID_WPA_TKIP, align 8
  br label %151

151:                                              ; preds = %149, %147
  %152 = phi i32* [ %148, %147 ], [ %150, %149 ]
  store i32* %152, i32** %9, align 8
  br label %179

153:                                              ; preds = %109
  %154 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %155 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @IW_AUTH_WPA_VERSION_WPA2, align 4
  %159 = icmp eq i32 %157, %158
  br i1 %159, label %160, label %162

160:                                              ; preds = %153
  %161 = load i32*, i32** @CIPHER_ID_WPA2_CCMP, align 8
  br label %164

162:                                              ; preds = %153
  %163 = load i32*, i32** @CIPHER_ID_WPA_CCMP, align 8
  br label %164

164:                                              ; preds = %162, %160
  %165 = phi i32* [ %161, %160 ], [ %163, %162 ]
  store i32* %165, i32** %9, align 8
  br label %179

166:                                              ; preds = %109
  %167 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %168 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @IW_AUTH_WPA_VERSION_WPA2, align 4
  %172 = icmp eq i32 %170, %171
  br i1 %172, label %173, label %175

173:                                              ; preds = %166
  %174 = load i32*, i32** @CIPHER_ID_WPA2_WEP104, align 8
  br label %177

175:                                              ; preds = %166
  %176 = load i32*, i32** @CIPHER_ID_WPA_WEP104, align 8
  br label %177

177:                                              ; preds = %175, %173
  %178 = phi i32* [ %174, %173 ], [ %176, %175 ]
  store i32* %178, i32** %9, align 8
  br label %179

179:                                              ; preds = %109, %177, %164, %151, %138, %125
  %180 = load i32*, i32** %9, align 8
  %181 = icmp ne i32* %180, null
  br i1 %181, label %182, label %191

182:                                              ; preds = %179
  %183 = getelementptr inbounds %struct.wpa_suite, %struct.wpa_suite* %5, i32 0, i32 3
  %184 = load %struct.wpa_suite**, %struct.wpa_suite*** %183, align 8
  %185 = getelementptr inbounds %struct.wpa_suite*, %struct.wpa_suite** %184, i64 0
  %186 = load %struct.wpa_suite*, %struct.wpa_suite** %185, align 8
  %187 = getelementptr inbounds %struct.wpa_suite, %struct.wpa_suite* %186, i64 0
  %188 = load i32*, i32** %9, align 8
  %189 = load i32, i32* @CIPHER_ID_LEN, align 4
  %190 = call i32 @memcpy(%struct.wpa_suite* %187, i32* %188, i32 %189)
  br label %191

191:                                              ; preds = %182, %179
  %192 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %193 = load i32, i32* @DOT11_RSN_CONFIG_MULTICAST_CIPHER, align 4
  %194 = getelementptr inbounds %struct.wpa_suite, %struct.wpa_suite* %5, i32 0, i32 3
  %195 = load %struct.wpa_suite**, %struct.wpa_suite*** %194, align 8
  %196 = getelementptr inbounds %struct.wpa_suite*, %struct.wpa_suite** %195, i64 0
  %197 = load %struct.wpa_suite*, %struct.wpa_suite** %196, align 8
  %198 = getelementptr inbounds %struct.wpa_suite, %struct.wpa_suite* %197, i64 0
  %199 = load i32, i32* @CIPHER_ID_LEN, align 4
  %200 = call i32 @hostif_mib_set_request_ostring(%struct.ks_wlan_private* %192, i32 %193, %struct.wpa_suite* %198, i32 %199)
  br label %326

201:                                              ; preds = %2
  %202 = call i8* @cpu_to_le16(i32 1)
  %203 = getelementptr inbounds %struct.wpa_suite, %struct.wpa_suite* %5, i32 0, i32 2
  store i8* %202, i8** %203, align 8
  %204 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %205 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 4
  switch i32 %207, label %260 [
    i32 134, label %208
    i32 133, label %221
    i32 0, label %234
    i32 4, label %247
  ]

208:                                              ; preds = %201
  %209 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %210 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* @IW_AUTH_WPA_VERSION_WPA2, align 4
  %214 = icmp eq i32 %212, %213
  br i1 %214, label %215, label %217

215:                                              ; preds = %208
  %216 = load i32*, i32** @KEY_MGMT_ID_WPA2_1X, align 8
  br label %219

217:                                              ; preds = %208
  %218 = load i32*, i32** @KEY_MGMT_ID_WPA_1X, align 8
  br label %219

219:                                              ; preds = %217, %215
  %220 = phi i32* [ %216, %215 ], [ %218, %217 ]
  store i32* %220, i32** %9, align 8
  br label %260

221:                                              ; preds = %201
  %222 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %223 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* @IW_AUTH_WPA_VERSION_WPA2, align 4
  %227 = icmp eq i32 %225, %226
  br i1 %227, label %228, label %230

228:                                              ; preds = %221
  %229 = load i32*, i32** @KEY_MGMT_ID_WPA2_PSK, align 8
  br label %232

230:                                              ; preds = %221
  %231 = load i32*, i32** @KEY_MGMT_ID_WPA_PSK, align 8
  br label %232

232:                                              ; preds = %230, %228
  %233 = phi i32* [ %229, %228 ], [ %231, %230 ]
  store i32* %233, i32** %9, align 8
  br label %260

234:                                              ; preds = %201
  %235 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %236 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = load i32, i32* @IW_AUTH_WPA_VERSION_WPA2, align 4
  %240 = icmp eq i32 %238, %239
  br i1 %240, label %241, label %243

241:                                              ; preds = %234
  %242 = load i32*, i32** @KEY_MGMT_ID_WPA2_NONE, align 8
  br label %245

243:                                              ; preds = %234
  %244 = load i32*, i32** @KEY_MGMT_ID_WPA_NONE, align 8
  br label %245

245:                                              ; preds = %243, %241
  %246 = phi i32* [ %242, %241 ], [ %244, %243 ]
  store i32* %246, i32** %9, align 8
  br label %260

247:                                              ; preds = %201
  %248 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %249 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 4
  %252 = load i32, i32* @IW_AUTH_WPA_VERSION_WPA2, align 4
  %253 = icmp eq i32 %251, %252
  br i1 %253, label %254, label %256

254:                                              ; preds = %247
  %255 = load i32*, i32** @KEY_MGMT_ID_WPA2_WPANONE, align 8
  br label %258

256:                                              ; preds = %247
  %257 = load i32*, i32** @KEY_MGMT_ID_WPA_WPANONE, align 8
  br label %258

258:                                              ; preds = %256, %254
  %259 = phi i32* [ %255, %254 ], [ %257, %256 ]
  store i32* %259, i32** %9, align 8
  br label %260

260:                                              ; preds = %201, %258, %245, %232, %219
  %261 = load i32*, i32** %9, align 8
  %262 = icmp ne i32* %261, null
  br i1 %262, label %263, label %272

263:                                              ; preds = %260
  %264 = getelementptr inbounds %struct.wpa_suite, %struct.wpa_suite* %5, i32 0, i32 3
  %265 = load %struct.wpa_suite**, %struct.wpa_suite*** %264, align 8
  %266 = getelementptr inbounds %struct.wpa_suite*, %struct.wpa_suite** %265, i64 0
  %267 = load %struct.wpa_suite*, %struct.wpa_suite** %266, align 8
  %268 = getelementptr inbounds %struct.wpa_suite, %struct.wpa_suite* %267, i64 0
  %269 = load i32*, i32** %9, align 8
  %270 = load i32, i32* @KEY_MGMT_ID_LEN, align 4
  %271 = call i32 @memcpy(%struct.wpa_suite* %268, i32* %269, i32 %270)
  br label %272

272:                                              ; preds = %263, %260
  %273 = load i32, i32* @KEY_MGMT_ID_LEN, align 4
  %274 = getelementptr inbounds %struct.wpa_suite, %struct.wpa_suite* %5, i32 0, i32 2
  %275 = load i8*, i8** %274, align 8
  %276 = call i32 @le16_to_cpu(i8* %275)
  %277 = mul nsw i32 %273, %276
  %278 = sext i32 %277 to i64
  %279 = add i64 8, %278
  store i64 %279, i64* %7, align 8
  %280 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %281 = load i32, i32* @DOT11_RSN_CONFIG_AUTH_SUITE, align 4
  %282 = load i64, i64* %7, align 8
  %283 = trunc i64 %282 to i32
  %284 = call i32 @hostif_mib_set_request_ostring(%struct.ks_wlan_private* %280, i32 %281, %struct.wpa_suite* %5, i32 %283)
  br label %326

285:                                              ; preds = %2
  %286 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %287 = load i32, i32* @DOT11_RSN_ENABLED, align 4
  %288 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %289 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %288, i32 0, i32 0
  %290 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 4
  %292 = call i32 @hostif_mib_set_request_bool(%struct.ks_wlan_private* %286, i32 %287, i32 %291)
  br label %326

293:                                              ; preds = %2
  %294 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %295 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %294, i32 0, i32 0
  %296 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 4
  %298 = load i32, i32* @IW_AUTH_WPA_VERSION_WPA2, align 4
  %299 = icmp eq i32 %297, %298
  br i1 %299, label %300, label %302

300:                                              ; preds = %293
  %301 = load i32, i32* @RSN_MODE_WPA2, align 4
  br label %315

302:                                              ; preds = %293
  %303 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %304 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %303, i32 0, i32 0
  %305 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 4
  %307 = load i32, i32* @IW_AUTH_WPA_VERSION_WPA, align 4
  %308 = icmp eq i32 %306, %307
  br i1 %308, label %309, label %311

309:                                              ; preds = %302
  %310 = load i32, i32* @RSN_MODE_WPA, align 4
  br label %313

311:                                              ; preds = %302
  %312 = load i32, i32* @RSN_MODE_NONE, align 4
  br label %313

313:                                              ; preds = %311, %309
  %314 = phi i32 [ %310, %309 ], [ %312, %311 ]
  br label %315

315:                                              ; preds = %313, %300
  %316 = phi i32 [ %301, %300 ], [ %314, %313 ]
  store i32 %316, i32* %8, align 4
  %317 = load i32, i32* %8, align 4
  %318 = call i32 @cpu_to_le32(i32 %317)
  %319 = getelementptr inbounds %struct.rsn_mode, %struct.rsn_mode* %6, i32 0, i32 1
  store i32 %318, i32* %319, align 8
  %320 = call i8* @cpu_to_le16(i32 0)
  %321 = getelementptr inbounds %struct.rsn_mode, %struct.rsn_mode* %6, i32 0, i32 0
  store i8* %320, i8** %321, align 8
  %322 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %323 = load i32, i32* @LOCAL_RSN_MODE, align 4
  %324 = bitcast %struct.rsn_mode* %6 to %struct.wpa_suite*
  %325 = call i32 @hostif_mib_set_request_ostring(%struct.ks_wlan_private* %322, i32 %323, %struct.wpa_suite* %324, i32 32)
  br label %326

326:                                              ; preds = %2, %315, %285, %272, %191, %96
  ret void
}

declare dso_local i32 @memset(%struct.wpa_suite*, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(%struct.wpa_suite*, i32*, i32) #1

declare dso_local i32 @le16_to_cpu(i8*) #1

declare dso_local i32 @hostif_mib_set_request_ostring(%struct.ks_wlan_private*, i32, %struct.wpa_suite*, i32) #1

declare dso_local i32 @hostif_mib_set_request_bool(%struct.ks_wlan_private*, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
