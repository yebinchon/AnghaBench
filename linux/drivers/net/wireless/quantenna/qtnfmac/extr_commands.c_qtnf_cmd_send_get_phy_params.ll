; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_commands.c_qtnf_cmd_send_get_phy_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_commands.c_qtnf_cmd_send_get_phy_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtnf_wmac = type { i32, i32 }
%struct.sk_buff = type { i64 }
%struct.qlink_resp_phy_params = type { i32 }

@QLINK_CMD_PHY_PARAMS_GET = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qtnf_cmd_send_get_phy_params(%struct.qtnf_wmac* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qtnf_wmac*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.qlink_resp_phy_params*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.qtnf_wmac* %0, %struct.qtnf_wmac** %3, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %5, align 8
  store i64 0, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %3, align 8
  %10 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @QLINK_CMD_PHY_PARAMS_GET, align 4
  %13 = call %struct.sk_buff* @qtnf_cmd_alloc_new_cmdskb(i32 %11, i32 0, i32 %12, i32 4)
  store %struct.sk_buff* %13, %struct.sk_buff** %4, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = icmp ne %struct.sk_buff* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %51

19:                                               ; preds = %1
  %20 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %3, align 8
  %21 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @qtnf_bus_lock(i32 %22)
  %24 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %3, align 8
  %25 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %28 = call i32 @qtnf_cmd_send_with_reply(i32 %26, %struct.sk_buff* %27, %struct.sk_buff** %5, i32 4, i64* %7)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %19
  br label %43

32:                                               ; preds = %19
  %33 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to %struct.qlink_resp_phy_params*
  store %struct.qlink_resp_phy_params* %36, %struct.qlink_resp_phy_params** %6, align 8
  %37 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %3, align 8
  %38 = load %struct.qlink_resp_phy_params*, %struct.qlink_resp_phy_params** %6, align 8
  %39 = getelementptr inbounds %struct.qlink_resp_phy_params, %struct.qlink_resp_phy_params* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i64, i64* %7, align 8
  %42 = call i32 @qtnf_cmd_resp_proc_phy_params(%struct.qtnf_wmac* %37, i32 %40, i64 %41)
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %32, %31
  %44 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %3, align 8
  %45 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @qtnf_bus_unlock(i32 %46)
  %48 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %49 = call i32 @consume_skb(%struct.sk_buff* %48)
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %43, %16
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.sk_buff* @qtnf_cmd_alloc_new_cmdskb(i32, i32, i32, i32) #1

declare dso_local i32 @qtnf_bus_lock(i32) #1

declare dso_local i32 @qtnf_cmd_send_with_reply(i32, %struct.sk_buff*, %struct.sk_buff**, i32, i64*) #1

declare dso_local i32 @qtnf_cmd_resp_proc_phy_params(%struct.qtnf_wmac*, i32, i64) #1

declare dso_local i32 @qtnf_bus_unlock(i32) #1

declare dso_local i32 @consume_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
