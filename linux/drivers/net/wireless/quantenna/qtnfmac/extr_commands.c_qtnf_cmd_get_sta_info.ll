; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_commands.c_qtnf_cmd_get_sta_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_commands.c_qtnf_cmd_get_sta_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtnf_vif = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.station_info = type { i32 }
%struct.sk_buff = type { i64 }
%struct.qlink_cmd_get_sta_info = type { i32 }
%struct.qlink_resp_get_sta_info = type { i64, i32 }
%struct.qlink_tlv_hdr = type { i32 }

@QLINK_CMD_GET_STA_INFO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"VIF%u.%u: wrong mac in reply: %pM != %pM\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qtnf_cmd_get_sta_info(%struct.qtnf_vif* %0, i32* %1, %struct.station_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qtnf_vif*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.station_info*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.qlink_cmd_get_sta_info*, align 8
  %11 = alloca %struct.qlink_resp_get_sta_info*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.qtnf_vif* %0, %struct.qtnf_vif** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.station_info* %2, %struct.station_info** %7, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %9, align 8
  store i64 0, i64* %12, align 8
  store i32 0, i32* %13, align 4
  %14 = load %struct.qtnf_vif*, %struct.qtnf_vif** %5, align 8
  %15 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.qtnf_vif*, %struct.qtnf_vif** %5, align 8
  %20 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @QLINK_CMD_GET_STA_INFO, align 4
  %23 = call %struct.sk_buff* @qtnf_cmd_alloc_new_cmdskb(i32 %18, i32 %21, i32 %22, i32 4)
  store %struct.sk_buff* %23, %struct.sk_buff** %8, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %25 = icmp ne %struct.sk_buff* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %3
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %100

29:                                               ; preds = %3
  %30 = load %struct.qtnf_vif*, %struct.qtnf_vif** %5, align 8
  %31 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @qtnf_bus_lock(i32 %34)
  %36 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to %struct.qlink_cmd_get_sta_info*
  store %struct.qlink_cmd_get_sta_info* %39, %struct.qlink_cmd_get_sta_info** %10, align 8
  %40 = load %struct.qlink_cmd_get_sta_info*, %struct.qlink_cmd_get_sta_info** %10, align 8
  %41 = getelementptr inbounds %struct.qlink_cmd_get_sta_info, %struct.qlink_cmd_get_sta_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %6, align 8
  %44 = call i32 @ether_addr_copy(i32 %42, i32* %43)
  %45 = load %struct.qtnf_vif*, %struct.qtnf_vif** %5, align 8
  %46 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %51 = call i32 @qtnf_cmd_send_with_reply(i32 %49, %struct.sk_buff* %50, %struct.sk_buff** %9, i32 16, i64* %12)
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %13, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %29
  br label %90

55:                                               ; preds = %29
  %56 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %57 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to %struct.qlink_resp_get_sta_info*
  store %struct.qlink_resp_get_sta_info* %59, %struct.qlink_resp_get_sta_info** %11, align 8
  %60 = load i32*, i32** %6, align 8
  %61 = load %struct.qlink_resp_get_sta_info*, %struct.qlink_resp_get_sta_info** %11, align 8
  %62 = getelementptr inbounds %struct.qlink_resp_get_sta_info, %struct.qlink_resp_get_sta_info* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @ether_addr_equal(i32* %60, i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %82, label %66

66:                                               ; preds = %55
  %67 = load %struct.qtnf_vif*, %struct.qtnf_vif** %5, align 8
  %68 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.qtnf_vif*, %struct.qtnf_vif** %5, align 8
  %73 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.qlink_resp_get_sta_info*, %struct.qlink_resp_get_sta_info** %11, align 8
  %76 = getelementptr inbounds %struct.qlink_resp_get_sta_info, %struct.qlink_resp_get_sta_info* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load i32*, i32** %6, align 8
  %79 = call i32 @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %71, i32 %74, i32 %77, i32* %78)
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %13, align 4
  br label %90

82:                                               ; preds = %55
  %83 = load %struct.station_info*, %struct.station_info** %7, align 8
  %84 = load %struct.qlink_resp_get_sta_info*, %struct.qlink_resp_get_sta_info** %11, align 8
  %85 = getelementptr inbounds %struct.qlink_resp_get_sta_info, %struct.qlink_resp_get_sta_info* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = inttoptr i64 %86 to %struct.qlink_tlv_hdr*
  %88 = load i64, i64* %12, align 8
  %89 = call i32 @qtnf_cmd_sta_info_parse(%struct.station_info* %83, %struct.qlink_tlv_hdr* %87, i64 %88)
  br label %90

90:                                               ; preds = %82, %66, %54
  %91 = load %struct.qtnf_vif*, %struct.qtnf_vif** %5, align 8
  %92 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %91, i32 0, i32 0
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @qtnf_bus_unlock(i32 %95)
  %97 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %98 = call i32 @consume_skb(%struct.sk_buff* %97)
  %99 = load i32, i32* %13, align 4
  store i32 %99, i32* %4, align 4
  br label %100

100:                                              ; preds = %90, %26
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local %struct.sk_buff* @qtnf_cmd_alloc_new_cmdskb(i32, i32, i32, i32) #1

declare dso_local i32 @qtnf_bus_lock(i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32*) #1

declare dso_local i32 @qtnf_cmd_send_with_reply(i32, %struct.sk_buff*, %struct.sk_buff**, i32, i64*) #1

declare dso_local i32 @ether_addr_equal(i32*, i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32, i32, i32*) #1

declare dso_local i32 @qtnf_cmd_sta_info_parse(%struct.station_info*, %struct.qlink_tlv_hdr*, i64) #1

declare dso_local i32 @qtnf_bus_unlock(i32) #1

declare dso_local i32 @consume_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
