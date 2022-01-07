; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_fw.c__rtl92s_firmware_downloadcode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_fw.c__rtl92s_firmware_downloadcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }
%struct.sk_buff = type { i64 }
%struct.rtl_tcb_desc = type { i32, i32, i32 }

@MAX_FIRMWARE_CODE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"Size over FIRMWARE_CODE_SIZE!\0A\00", align 1
@TXCMD_QUEUE = common dso_local global i32 0, align 4
@DESC_PACKET_TYPE_INIT = common dso_local global i32 0, align 4
@TP_POLL = common dso_local global i32 0, align 4
@TPPOLL_CQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32*, i64)* @_rtl92s_firmware_downloadcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl92s_firmware_downloadcode(%struct.ieee80211_hw* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.rtl_priv*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.rtl_tcb_desc*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %17 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %16)
  store %struct.rtl_priv* %17, %struct.rtl_priv** %8, align 8
  %18 = load i64, i64* @MAX_FIRMWARE_CODE_SIZE, align 8
  store i64 %18, i64* %11, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  store i32 0, i32* %15, align 4
  %19 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %20 = call i32 @_rtl92s_fw_set_rqpn(%struct.ieee80211_hw* %19)
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* @MAX_FIRMWARE_CODE_SIZE, align 8
  %23 = icmp sge i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %92

26:                                               ; preds = %3
  store i64 0, i64* %14, align 8
  br label %27

27:                                               ; preds = %83, %26
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* %13, align 8
  %30 = sub nsw i64 %28, %29
  %31 = load i64, i64* %11, align 8
  %32 = icmp sgt i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load i64, i64* %11, align 8
  %35 = load i64, i64* %14, align 8
  %36 = add nsw i64 %34, %35
  store i64 %36, i64* %12, align 8
  br label %43

37:                                               ; preds = %27
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* %13, align 8
  %40 = sub nsw i64 %38, %39
  %41 = load i64, i64* %14, align 8
  %42 = add nsw i64 %40, %41
  store i64 %42, i64* %12, align 8
  store i32 1, i32* %15, align 4
  br label %43

43:                                               ; preds = %37, %33
  %44 = load i64, i64* %12, align 8
  %45 = call %struct.sk_buff* @dev_alloc_skb(i64 %44)
  store %struct.sk_buff* %45, %struct.sk_buff** %9, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %47 = icmp ne %struct.sk_buff* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %43
  store i32 0, i32* %4, align 4
  br label %92

49:                                               ; preds = %43
  %50 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %51 = load i64, i64* %14, align 8
  %52 = call i32 @skb_reserve(%struct.sk_buff* %50, i64 %51)
  %53 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %54 = load i32*, i32** %6, align 8
  %55 = load i64, i64* %13, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = load i64, i64* %12, align 8
  %58 = load i64, i64* %14, align 8
  %59 = sub nsw i64 %57, %58
  %60 = call i32 @skb_put_data(%struct.sk_buff* %53, i32* %56, i64 %59)
  %61 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %62 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = inttoptr i64 %63 to %struct.rtl_tcb_desc*
  store %struct.rtl_tcb_desc* %64, %struct.rtl_tcb_desc** %10, align 8
  %65 = load i32, i32* @TXCMD_QUEUE, align 4
  %66 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %10, align 8
  %67 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* @DESC_PACKET_TYPE_INIT, align 4
  %69 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %10, align 8
  %70 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* %15, align 4
  %72 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %10, align 8
  %73 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  %74 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %75 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %76 = load i32, i32* %15, align 4
  %77 = call i32 @_rtl92s_cmd_send_packet(%struct.ieee80211_hw* %74, %struct.sk_buff* %75, i32 %76)
  %78 = load i64, i64* %12, align 8
  %79 = load i64, i64* %14, align 8
  %80 = sub nsw i64 %78, %79
  %81 = load i64, i64* %13, align 8
  %82 = add nsw i64 %81, %80
  store i64 %82, i64* %13, align 8
  br label %83

83:                                               ; preds = %49
  %84 = load i64, i64* %13, align 8
  %85 = load i64, i64* %7, align 8
  %86 = icmp slt i64 %84, %85
  br i1 %86, label %27, label %87

87:                                               ; preds = %83
  %88 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %89 = load i32, i32* @TP_POLL, align 4
  %90 = load i32, i32* @TPPOLL_CQ, align 4
  %91 = call i32 @rtl_write_byte(%struct.rtl_priv* %88, i32 %89, i32 %90)
  store i32 1, i32* %4, align 4
  br label %92

92:                                               ; preds = %87, %48, %24
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @_rtl92s_fw_set_rqpn(%struct.ieee80211_hw*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i64) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i32*, i64) #1

declare dso_local i32 @_rtl92s_cmd_send_packet(%struct.ieee80211_hw*, %struct.sk_buff*, i32) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
