; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_cfg80211.c_prism2_connect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_cfg80211.c_prism2_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { %struct.wlandevice* }
%struct.wlandevice = type { i32 }
%struct.cfg80211_connect_params = type { i32, i64, i32, i32, i64, i32, %struct.TYPE_5__, %struct.ieee80211_channel* }
%struct.TYPE_5__ = type { i64 }
%struct.ieee80211_channel = type { i32 }
%struct.p80211msg_lnxreq_autojoin = type { %struct.TYPE_8__, i32, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@WLAN_CIPHER_SUITE_WEP40 = common dso_local global i64 0, align 8
@WLAN_CIPHER_SUITE_WEP104 = common dso_local global i64 0, align 8
@DIDMIB_DOT11PHY_DSSSTABLE_CURRENTCHANNEL = common dso_local global i32 0, align 4
@NL80211_AUTHTYPE_OPEN_SYSTEM = common dso_local global i64 0, align 8
@NL80211_AUTHTYPE_AUTOMATIC = common dso_local global i64 0, align 8
@P80211ENUM_authalg_opensystem = common dso_local global i32 0, align 4
@NL80211_AUTHTYPE_SHARED_KEY = common dso_local global i64 0, align 8
@P80211ENUM_authalg_sharedkey = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Unhandled authorisation type for connect (%d)\0A\00", align 1
@NUM_WEPKEYS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DIDMIB_DOT11SMT_PRIVACYTABLE_WEPDEFAULTKEYID = common dso_local global i32 0, align 4
@DIDMIB_DOT11SMT_PRIVACYTABLE_PRIVACYINVOKED = common dso_local global i32 0, align 4
@P80211ENUM_truth_true = common dso_local global i32 0, align 4
@DIDMIB_DOT11SMT_PRIVACYTABLE_EXCLUDEUNENCRYPTED = common dso_local global i32 0, align 4
@P80211ENUM_truth_false = common dso_local global i32 0, align 4
@DIDMSG_LNXREQ_AUTOJOIN = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*, %struct.cfg80211_connect_params*)* @prism2_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prism2_connect(%struct.wiphy* %0, %struct.net_device* %1, %struct.cfg80211_connect_params* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wiphy*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.cfg80211_connect_params*, align 8
  %8 = alloca %struct.wlandevice*, align 8
  %9 = alloca %struct.ieee80211_channel*, align 8
  %10 = alloca %struct.p80211msg_lnxreq_autojoin, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store %struct.cfg80211_connect_params* %2, %struct.cfg80211_connect_params** %7, align 8
  %17 = load %struct.net_device*, %struct.net_device** %6, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 0
  %19 = load %struct.wlandevice*, %struct.wlandevice** %18, align 8
  store %struct.wlandevice* %19, %struct.wlandevice** %8, align 8
  %20 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %21 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %20, i32 0, i32 7
  %22 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %21, align 8
  store %struct.ieee80211_channel* %22, %struct.ieee80211_channel** %9, align 8
  %23 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %24 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %12, align 4
  store i32 -1, i32* %13, align 4
  %26 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %27 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %26, i32 0, i32 6
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @WLAN_CIPHER_SUITE_WEP40, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %39, label %32

32:                                               ; preds = %3
  %33 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %34 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %33, i32 0, i32 6
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @WLAN_CIPHER_SUITE_WEP104, align 8
  %38 = icmp eq i64 %36, %37
  br label %39

39:                                               ; preds = %32, %3
  %40 = phi i1 [ true, %3 ], [ %38, %32 ]
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %14, align 4
  store i32 0, i32* %16, align 4
  %42 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %9, align 8
  %43 = icmp ne %struct.ieee80211_channel* %42, null
  br i1 %43, label %44, label %57

44:                                               ; preds = %39
  %45 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %9, align 8
  %46 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @ieee80211_frequency_to_channel(i32 %47)
  store i32 %48, i32* %13, align 4
  %49 = load %struct.wlandevice*, %struct.wlandevice** %8, align 8
  %50 = load i32, i32* @DIDMIB_DOT11PHY_DSSSTABLE_CURRENTCHANNEL, align 4
  %51 = load i32, i32* %13, align 4
  %52 = call i32 @prism2_domibset_uint32(%struct.wlandevice* %49, i32 %50, i32 %51)
  store i32 %52, i32* %15, align 4
  %53 = load i32, i32* %15, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %44
  br label %202

56:                                               ; preds = %44
  br label %57

57:                                               ; preds = %56, %39
  %58 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %59 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @NL80211_AUTHTYPE_OPEN_SYSTEM, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %72, label %63

63:                                               ; preds = %57
  %64 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %65 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @NL80211_AUTHTYPE_AUTOMATIC, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %76

69:                                               ; preds = %63
  %70 = load i32, i32* %14, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %69, %57
  %73 = load i32, i32* @P80211ENUM_authalg_opensystem, align 4
  %74 = getelementptr inbounds %struct.p80211msg_lnxreq_autojoin, %struct.p80211msg_lnxreq_autojoin* %10, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  br label %102

76:                                               ; preds = %69, %63
  %77 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %78 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @NL80211_AUTHTYPE_SHARED_KEY, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %91, label %82

82:                                               ; preds = %76
  %83 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %84 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @NL80211_AUTHTYPE_AUTOMATIC, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %95

88:                                               ; preds = %82
  %89 = load i32, i32* %14, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %88, %76
  %92 = load i32, i32* @P80211ENUM_authalg_sharedkey, align 4
  %93 = getelementptr inbounds %struct.p80211msg_lnxreq_autojoin, %struct.p80211msg_lnxreq_autojoin* %10, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 4
  br label %101

95:                                               ; preds = %88, %82
  %96 = load %struct.net_device*, %struct.net_device** %6, align 8
  %97 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %98 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @netdev_warn(%struct.net_device* %96, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %99)
  br label %101

101:                                              ; preds = %95, %91
  br label %102

102:                                              ; preds = %101, %72
  %103 = load i32, i32* %14, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %166

105:                                              ; preds = %102
  %106 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %107 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %106, i32 0, i32 4
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %149

110:                                              ; preds = %105
  %111 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %112 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @NUM_WEPKEYS, align 4
  %115 = icmp sge i32 %113, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %110
  %117 = load i32, i32* @EINVAL, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %4, align 4
  br label %210

119:                                              ; preds = %110
  %120 = load %struct.wlandevice*, %struct.wlandevice** %8, align 8
  %121 = load i32, i32* @DIDMIB_DOT11SMT_PRIVACYTABLE_WEPDEFAULTKEYID, align 4
  %122 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %123 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @prism2_domibset_uint32(%struct.wlandevice* %120, i32 %121, i32 %124)
  store i32 %125, i32* %15, align 4
  %126 = load i32, i32* %15, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %119
  br label %202

129:                                              ; preds = %119
  %130 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %131 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = add nsw i32 %132, 1
  %134 = call i32 @didmib_dot11smt_wepdefaultkeystable_key(i32 %133)
  store i32 %134, i32* %11, align 4
  %135 = load %struct.wlandevice*, %struct.wlandevice** %8, align 8
  %136 = load i32, i32* %11, align 4
  %137 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %138 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %137, i32 0, i32 5
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %141 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %140, i32 0, i32 4
  %142 = load i64, i64* %141, align 8
  %143 = inttoptr i64 %142 to i32*
  %144 = call i32 @prism2_domibset_pstr32(%struct.wlandevice* %135, i32 %136, i32 %139, i32* %143)
  store i32 %144, i32* %15, align 4
  %145 = load i32, i32* %15, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %129
  br label %202

148:                                              ; preds = %129
  br label %149

149:                                              ; preds = %148, %105
  %150 = load %struct.wlandevice*, %struct.wlandevice** %8, align 8
  %151 = load i32, i32* @DIDMIB_DOT11SMT_PRIVACYTABLE_PRIVACYINVOKED, align 4
  %152 = load i32, i32* @P80211ENUM_truth_true, align 4
  %153 = call i32 @prism2_domibset_uint32(%struct.wlandevice* %150, i32 %151, i32 %152)
  store i32 %153, i32* %15, align 4
  %154 = load i32, i32* %15, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %149
  br label %202

157:                                              ; preds = %149
  %158 = load %struct.wlandevice*, %struct.wlandevice** %8, align 8
  %159 = load i32, i32* @DIDMIB_DOT11SMT_PRIVACYTABLE_EXCLUDEUNENCRYPTED, align 4
  %160 = load i32, i32* @P80211ENUM_truth_true, align 4
  %161 = call i32 @prism2_domibset_uint32(%struct.wlandevice* %158, i32 %159, i32 %160)
  store i32 %161, i32* %15, align 4
  %162 = load i32, i32* %15, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %157
  br label %202

165:                                              ; preds = %157
  br label %183

166:                                              ; preds = %102
  %167 = load %struct.wlandevice*, %struct.wlandevice** %8, align 8
  %168 = load i32, i32* @DIDMIB_DOT11SMT_PRIVACYTABLE_PRIVACYINVOKED, align 4
  %169 = load i32, i32* @P80211ENUM_truth_false, align 4
  %170 = call i32 @prism2_domibset_uint32(%struct.wlandevice* %167, i32 %168, i32 %169)
  store i32 %170, i32* %15, align 4
  %171 = load i32, i32* %15, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %166
  br label %202

174:                                              ; preds = %166
  %175 = load %struct.wlandevice*, %struct.wlandevice** %8, align 8
  %176 = load i32, i32* @DIDMIB_DOT11SMT_PRIVACYTABLE_EXCLUDEUNENCRYPTED, align 4
  %177 = load i32, i32* @P80211ENUM_truth_false, align 4
  %178 = call i32 @prism2_domibset_uint32(%struct.wlandevice* %175, i32 %176, i32 %177)
  store i32 %178, i32* %15, align 4
  %179 = load i32, i32* %15, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %174
  br label %202

182:                                              ; preds = %174
  br label %183

183:                                              ; preds = %182, %165
  %184 = load i32, i32* @DIDMSG_LNXREQ_AUTOJOIN, align 4
  %185 = getelementptr inbounds %struct.p80211msg_lnxreq_autojoin, %struct.p80211msg_lnxreq_autojoin* %10, i32 0, i32 1
  store i32 %184, i32* %185, align 4
  %186 = getelementptr inbounds %struct.p80211msg_lnxreq_autojoin, %struct.p80211msg_lnxreq_autojoin* %10, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %191 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* %12, align 4
  %194 = call i32 @memcpy(i32 %189, i32 %192, i32 %193)
  %195 = load i32, i32* %12, align 4
  %196 = getelementptr inbounds %struct.p80211msg_lnxreq_autojoin, %struct.p80211msg_lnxreq_autojoin* %10, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 0
  store i32 %195, i32* %198, align 4
  %199 = load %struct.wlandevice*, %struct.wlandevice** %8, align 8
  %200 = bitcast %struct.p80211msg_lnxreq_autojoin* %10 to i32*
  %201 = call i32 @p80211req_dorequest(%struct.wlandevice* %199, i32* %200)
  store i32 %201, i32* %15, align 4
  br label %202

202:                                              ; preds = %183, %181, %173, %164, %156, %147, %128, %55
  %203 = load i32, i32* %15, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %208

205:                                              ; preds = %202
  %206 = load i32, i32* @EFAULT, align 4
  %207 = sub nsw i32 0, %206
  store i32 %207, i32* %16, align 4
  br label %208

208:                                              ; preds = %205, %202
  %209 = load i32, i32* %16, align 4
  store i32 %209, i32* %4, align 4
  br label %210

210:                                              ; preds = %208, %116
  %211 = load i32, i32* %4, align 4
  ret i32 %211
}

declare dso_local i32 @ieee80211_frequency_to_channel(i32) #1

declare dso_local i32 @prism2_domibset_uint32(%struct.wlandevice*, i32, i32) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*, i64) #1

declare dso_local i32 @didmib_dot11smt_wepdefaultkeystable_key(i32) #1

declare dso_local i32 @prism2_domibset_pstr32(%struct.wlandevice*, i32, i32, i32*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @p80211req_dorequest(%struct.wlandevice*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
