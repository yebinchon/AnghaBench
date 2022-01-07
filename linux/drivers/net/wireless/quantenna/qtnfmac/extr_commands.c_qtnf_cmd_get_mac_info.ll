; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_commands.c_qtnf_cmd_get_mac_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_commands.c_qtnf_cmd_get_mac_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtnf_wmac = type { i32, i32 }
%struct.sk_buff = type { i64 }
%struct.qlink_resp_get_mac_info = type { i32 }

@QLINK_VIFID_RSVD = common dso_local global i32 0, align 4
@QLINK_CMD_MAC_INFO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qtnf_cmd_get_mac_info(%struct.qtnf_wmac* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qtnf_wmac*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.qlink_resp_get_mac_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.qtnf_wmac* %0, %struct.qtnf_wmac** %3, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %5, align 8
  store i64 0, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %3, align 8
  %10 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @QLINK_VIFID_RSVD, align 4
  %13 = load i32, i32* @QLINK_CMD_MAC_INFO, align 4
  %14 = call %struct.sk_buff* @qtnf_cmd_alloc_new_cmdskb(i32 %11, i32 %12, i32 %13, i32 4)
  store %struct.sk_buff* %14, %struct.sk_buff** %4, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = icmp ne %struct.sk_buff* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %53

20:                                               ; preds = %1
  %21 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %3, align 8
  %22 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @qtnf_bus_lock(i32 %23)
  %25 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %3, align 8
  %26 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %29 = call i32 @qtnf_cmd_send_with_reply(i32 %27, %struct.sk_buff* %28, %struct.sk_buff** %5, i32 4, i64* %7)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %20
  br label %45

33:                                               ; preds = %20
  %34 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to %struct.qlink_resp_get_mac_info*
  store %struct.qlink_resp_get_mac_info* %37, %struct.qlink_resp_get_mac_info** %6, align 8
  %38 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %3, align 8
  %39 = load %struct.qlink_resp_get_mac_info*, %struct.qlink_resp_get_mac_info** %6, align 8
  %40 = call i32 @qtnf_cmd_resp_proc_mac_info(%struct.qtnf_wmac* %38, %struct.qlink_resp_get_mac_info* %39)
  %41 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %3, align 8
  %42 = load %struct.qlink_resp_get_mac_info*, %struct.qlink_resp_get_mac_info** %6, align 8
  %43 = load i64, i64* %7, align 8
  %44 = call i32 @qtnf_parse_variable_mac_info(%struct.qtnf_wmac* %41, %struct.qlink_resp_get_mac_info* %42, i64 %43)
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %33, %32
  %46 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %3, align 8
  %47 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @qtnf_bus_unlock(i32 %48)
  %50 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %51 = call i32 @consume_skb(%struct.sk_buff* %50)
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %45, %17
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local %struct.sk_buff* @qtnf_cmd_alloc_new_cmdskb(i32, i32, i32, i32) #1

declare dso_local i32 @qtnf_bus_lock(i32) #1

declare dso_local i32 @qtnf_cmd_send_with_reply(i32, %struct.sk_buff*, %struct.sk_buff**, i32, i64*) #1

declare dso_local i32 @qtnf_cmd_resp_proc_mac_info(%struct.qtnf_wmac*, %struct.qlink_resp_get_mac_info*) #1

declare dso_local i32 @qtnf_parse_variable_mac_info(%struct.qtnf_wmac*, %struct.qlink_resp_get_mac_info*, i64) #1

declare dso_local i32 @qtnf_bus_unlock(i32) #1

declare dso_local i32 @consume_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
