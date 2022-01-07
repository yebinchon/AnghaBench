; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_commands.c_qtnf_cmd_send_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_commands.c_qtnf_cmd_send_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtnf_wmac = type { i32, i32, %struct.cfg80211_scan_request* }
%struct.cfg80211_scan_request = type { i32, i64, i32, i32, i32, i32, %struct.ieee80211_channel**, i32, %struct.TYPE_2__* }
%struct.ieee80211_channel = type { i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.sk_buff = type { i32 }

@QLINK_VIFID_RSVD = common dso_local global i32 0, align 4
@QLINK_CMD_SCAN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@WLAN_EID_SSID = common dso_local global i32 0, align 4
@QLINK_IE_SET_PROBE_REQ = common dso_local global i32 0, align 4
@IEEE80211_CHAN_DISABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"MAC%u: scan chan=%d, freq=%d, flags=%#x\0A\00", align 1
@NL80211_SCAN_FLAG_RANDOM_ADDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"MAC%u: scan with random addr=%pM, mask=%pM\0A\00", align 1
@NL80211_SCAN_FLAG_FLUSH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"MAC%u: flush cache before scan\0A\00", align 1
@QTN_TLV_ID_SCAN_FLUSH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qtnf_cmd_send_scan(%struct.qtnf_wmac* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qtnf_wmac*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ieee80211_channel*, align 8
  %6 = alloca %struct.cfg80211_scan_request*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.qtnf_wmac* %0, %struct.qtnf_wmac** %3, align 8
  %10 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %3, align 8
  %11 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %10, i32 0, i32 2
  %12 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %11, align 8
  store %struct.cfg80211_scan_request* %12, %struct.cfg80211_scan_request** %6, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %3, align 8
  %14 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @QLINK_VIFID_RSVD, align 4
  %17 = load i32, i32* @QLINK_CMD_SCAN, align 4
  %18 = call %struct.sk_buff* @qtnf_cmd_alloc_new_cmdskb(i32 %15, i32 %16, i32 %17, i32 4)
  store %struct.sk_buff* %18, %struct.sk_buff** %4, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = icmp ne %struct.sk_buff* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %189

24:                                               ; preds = %1
  %25 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %3, align 8
  %26 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @qtnf_bus_lock(i32 %27)
  %29 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %30 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %63

33:                                               ; preds = %24
  br label %34

34:                                               ; preds = %40, %33
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %37 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %62

40:                                               ; preds = %34
  %41 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %42 = load i32, i32* @WLAN_EID_SSID, align 4
  %43 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %44 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %43, i32 0, i32 8
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %52 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %51, i32 0, i32 8
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @qtnf_cmd_skb_put_tlv_arr(%struct.sk_buff* %41, i32 %42, i32 %50, i32 %58)
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %8, align 4
  br label %34

62:                                               ; preds = %34
  br label %63

63:                                               ; preds = %62, %24
  %64 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %65 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %63
  %69 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %70 = load i32, i32* @QLINK_IE_SET_PROBE_REQ, align 4
  %71 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %72 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %71, i32 0, i32 7
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %75 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @qtnf_cmd_tlv_ie_set_add(%struct.sk_buff* %69, i32 %70, i32 %73, i64 %76)
  br label %78

78:                                               ; preds = %68, %63
  %79 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %80 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %129

83:                                               ; preds = %78
  %84 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %85 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  store i32 %86, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %87

87:                                               ; preds = %107, %104, %83
  %88 = load i32, i32* %7, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %128

90:                                               ; preds = %87
  %91 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %92 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %91, i32 0, i32 6
  %93 = load %struct.ieee80211_channel**, %struct.ieee80211_channel*** %92, align 8
  %94 = load i32, i32* %8, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.ieee80211_channel*, %struct.ieee80211_channel** %93, i64 %95
  %97 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %96, align 8
  store %struct.ieee80211_channel* %97, %struct.ieee80211_channel** %5, align 8
  %98 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %99 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @IEEE80211_CHAN_DISABLED, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %90
  %105 = load i32, i32* %7, align 4
  %106 = add nsw i32 %105, -1
  store i32 %106, i32* %7, align 4
  br label %87

107:                                              ; preds = %90
  %108 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %3, align 8
  %109 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %112 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %115 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %118 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %110, i32 %113, i32 %116, i32 %119)
  %121 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %122 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %123 = call i32 @qtnf_cmd_channel_tlv_add(%struct.sk_buff* %121, %struct.ieee80211_channel* %122)
  %124 = load i32, i32* %7, align 4
  %125 = add nsw i32 %124, -1
  store i32 %125, i32* %7, align 4
  %126 = load i32, i32* %8, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %8, align 4
  br label %87

128:                                              ; preds = %87
  br label %129

129:                                              ; preds = %128, %78
  %130 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %3, align 8
  %131 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %132 = call i32 @qtnf_cmd_scan_set_dwell(%struct.qtnf_wmac* %130, %struct.sk_buff* %131)
  %133 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %134 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @NL80211_SCAN_FLAG_RANDOM_ADDR, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %158

139:                                              ; preds = %129
  %140 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %3, align 8
  %141 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %144 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %143, i32 0, i32 5
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %147 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 8
  %149 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %142, i32 %145, i32 %148)
  %150 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %151 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %152 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %151, i32 0, i32 5
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %155 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @qtnf_cmd_randmac_tlv_add(%struct.sk_buff* %150, i32 %153, i32 %156)
  br label %158

158:                                              ; preds = %139, %129
  %159 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %160 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @NL80211_SCAN_FLAG_FLUSH, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %173

165:                                              ; preds = %158
  %166 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %3, align 8
  %167 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %168)
  %170 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %171 = load i32, i32* @QTN_TLV_ID_SCAN_FLUSH, align 4
  %172 = call i32 @qtnf_cmd_skb_put_tlv_tag(%struct.sk_buff* %170, i32 %171)
  br label %173

173:                                              ; preds = %165, %158
  %174 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %3, align 8
  %175 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %178 = call i32 @qtnf_cmd_send(i32 %176, %struct.sk_buff* %177)
  store i32 %178, i32* %9, align 4
  %179 = load i32, i32* %9, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %173
  br label %183

182:                                              ; preds = %173
  br label %183

183:                                              ; preds = %182, %181
  %184 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %3, align 8
  %185 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = call i32 @qtnf_bus_unlock(i32 %186)
  %188 = load i32, i32* %9, align 4
  store i32 %188, i32* %2, align 4
  br label %189

189:                                              ; preds = %183, %21
  %190 = load i32, i32* %2, align 4
  ret i32 %190
}

declare dso_local %struct.sk_buff* @qtnf_cmd_alloc_new_cmdskb(i32, i32, i32, i32) #1

declare dso_local i32 @qtnf_bus_lock(i32) #1

declare dso_local i32 @qtnf_cmd_skb_put_tlv_arr(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @qtnf_cmd_tlv_ie_set_add(%struct.sk_buff*, i32, i32, i64) #1

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @qtnf_cmd_channel_tlv_add(%struct.sk_buff*, %struct.ieee80211_channel*) #1

declare dso_local i32 @qtnf_cmd_scan_set_dwell(%struct.qtnf_wmac*, %struct.sk_buff*) #1

declare dso_local i32 @qtnf_cmd_randmac_tlv_add(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @qtnf_cmd_skb_put_tlv_tag(%struct.sk_buff*, i32) #1

declare dso_local i32 @qtnf_cmd_send(i32, %struct.sk_buff*) #1

declare dso_local i32 @qtnf_bus_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
