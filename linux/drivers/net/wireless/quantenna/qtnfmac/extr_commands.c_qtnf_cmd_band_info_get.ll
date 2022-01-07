; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_commands.c_qtnf_cmd_band_info_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_commands.c_qtnf_cmd_band_info_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtnf_wmac = type { i32, i32 }
%struct.ieee80211_supported_band = type { i32 }
%struct.sk_buff = type { i64 }
%struct.qlink_cmd_band_info_get = type { i64 }
%struct.qlink_resp_band_info_get = type { i64 }

@QLINK_CMD_BAND_INFO_GET = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"MAC%u: reply band %u != cmd band %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qtnf_cmd_band_info_get(%struct.qtnf_wmac* %0, %struct.ieee80211_supported_band* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qtnf_wmac*, align 8
  %5 = alloca %struct.ieee80211_supported_band*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.qlink_cmd_band_info_get*, align 8
  %9 = alloca %struct.qlink_resp_band_info_get*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.qtnf_wmac* %0, %struct.qtnf_wmac** %4, align 8
  store %struct.ieee80211_supported_band* %1, %struct.ieee80211_supported_band** %5, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %7, align 8
  store i64 0, i64* %10, align 8
  store i32 0, i32* %11, align 4
  %13 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %14 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @qlink_utils_band_cfg2q(i32 %15)
  store i64 %16, i64* %12, align 8
  %17 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %4, align 8
  %18 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @QLINK_CMD_BAND_INFO_GET, align 4
  %21 = call %struct.sk_buff* @qtnf_cmd_alloc_new_cmdskb(i32 %19, i32 0, i32 %20, i32 8)
  store %struct.sk_buff* %21, %struct.sk_buff** %6, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %23 = icmp ne %struct.sk_buff* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %81

27:                                               ; preds = %2
  %28 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.qlink_cmd_band_info_get*
  store %struct.qlink_cmd_band_info_get* %31, %struct.qlink_cmd_band_info_get** %8, align 8
  %32 = load i64, i64* %12, align 8
  %33 = load %struct.qlink_cmd_band_info_get*, %struct.qlink_cmd_band_info_get** %8, align 8
  %34 = getelementptr inbounds %struct.qlink_cmd_band_info_get, %struct.qlink_cmd_band_info_get* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %4, align 8
  %36 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @qtnf_bus_lock(i32 %37)
  %39 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %4, align 8
  %40 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %43 = call i32 @qtnf_cmd_send_with_reply(i32 %41, %struct.sk_buff* %42, %struct.sk_buff** %7, i32 8, i64* %10)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %27
  br label %73

47:                                               ; preds = %27
  %48 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to %struct.qlink_resp_band_info_get*
  store %struct.qlink_resp_band_info_get* %51, %struct.qlink_resp_band_info_get** %9, align 8
  %52 = load %struct.qlink_resp_band_info_get*, %struct.qlink_resp_band_info_get** %9, align 8
  %53 = getelementptr inbounds %struct.qlink_resp_band_info_get, %struct.qlink_resp_band_info_get* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %12, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %68

57:                                               ; preds = %47
  %58 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %4, align 8
  %59 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.qlink_resp_band_info_get*, %struct.qlink_resp_band_info_get** %9, align 8
  %62 = getelementptr inbounds %struct.qlink_resp_band_info_get, %struct.qlink_resp_band_info_get* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %12, align 8
  %65 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %60, i64 %63, i64 %64)
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %11, align 4
  br label %73

68:                                               ; preds = %47
  %69 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %70 = load %struct.qlink_resp_band_info_get*, %struct.qlink_resp_band_info_get** %9, align 8
  %71 = load i64, i64* %10, align 8
  %72 = call i32 @qtnf_cmd_resp_fill_band_info(%struct.ieee80211_supported_band* %69, %struct.qlink_resp_band_info_get* %70, i64 %71)
  store i32 %72, i32* %11, align 4
  br label %73

73:                                               ; preds = %68, %57, %46
  %74 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %4, align 8
  %75 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @qtnf_bus_unlock(i32 %76)
  %78 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %79 = call i32 @consume_skb(%struct.sk_buff* %78)
  %80 = load i32, i32* %11, align 4
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %73, %24
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i64 @qlink_utils_band_cfg2q(i32) #1

declare dso_local %struct.sk_buff* @qtnf_cmd_alloc_new_cmdskb(i32, i32, i32, i32) #1

declare dso_local i32 @qtnf_bus_lock(i32) #1

declare dso_local i32 @qtnf_cmd_send_with_reply(i32, %struct.sk_buff*, %struct.sk_buff**, i32, i64*) #1

declare dso_local i32 @pr_err(i8*, i32, i64, i64) #1

declare dso_local i32 @qtnf_cmd_resp_fill_band_info(%struct.ieee80211_supported_band*, %struct.qlink_resp_band_info_get*, i64) #1

declare dso_local i32 @qtnf_bus_unlock(i32) #1

declare dso_local i32 @consume_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
