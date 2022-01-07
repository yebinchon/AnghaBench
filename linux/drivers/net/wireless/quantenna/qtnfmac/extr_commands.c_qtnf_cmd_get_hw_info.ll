; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_commands.c_qtnf_cmd_get_hw_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_commands.c_qtnf_cmd_get_hw_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtnf_bus = type { i32 }
%struct.sk_buff = type { i64 }
%struct.qlink_resp_get_hw_info = type { i32 }

@QLINK_MACID_RSVD = common dso_local global i32 0, align 4
@QLINK_VIFID_RSVD = common dso_local global i32 0, align 4
@QLINK_CMD_GET_HW_INFO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qtnf_cmd_get_hw_info(%struct.qtnf_bus* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qtnf_bus*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.qlink_resp_get_hw_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.qtnf_bus* %0, %struct.qtnf_bus** %3, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %5, align 8
  store i64 0, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* @QLINK_MACID_RSVD, align 4
  %10 = load i32, i32* @QLINK_VIFID_RSVD, align 4
  %11 = load i32, i32* @QLINK_CMD_GET_HW_INFO, align 4
  %12 = call %struct.sk_buff* @qtnf_cmd_alloc_new_cmdskb(i32 %9, i32 %10, i32 %11, i32 4)
  store %struct.sk_buff* %12, %struct.sk_buff** %4, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = icmp ne %struct.sk_buff* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %42

18:                                               ; preds = %1
  %19 = load %struct.qtnf_bus*, %struct.qtnf_bus** %3, align 8
  %20 = call i32 @qtnf_bus_lock(%struct.qtnf_bus* %19)
  %21 = load %struct.qtnf_bus*, %struct.qtnf_bus** %3, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = call i32 @qtnf_cmd_send_with_reply(%struct.qtnf_bus* %21, %struct.sk_buff* %22, %struct.sk_buff** %5, i32 4, i64* %7)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  br label %36

27:                                               ; preds = %18
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.qlink_resp_get_hw_info*
  store %struct.qlink_resp_get_hw_info* %31, %struct.qlink_resp_get_hw_info** %6, align 8
  %32 = load %struct.qtnf_bus*, %struct.qtnf_bus** %3, align 8
  %33 = load %struct.qlink_resp_get_hw_info*, %struct.qlink_resp_get_hw_info** %6, align 8
  %34 = load i64, i64* %7, align 8
  %35 = call i32 @qtnf_cmd_resp_proc_hw_info(%struct.qtnf_bus* %32, %struct.qlink_resp_get_hw_info* %33, i64 %34)
  store i32 %35, i32* %8, align 4
  br label %36

36:                                               ; preds = %27, %26
  %37 = load %struct.qtnf_bus*, %struct.qtnf_bus** %3, align 8
  %38 = call i32 @qtnf_bus_unlock(%struct.qtnf_bus* %37)
  %39 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %40 = call i32 @consume_skb(%struct.sk_buff* %39)
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %36, %15
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local %struct.sk_buff* @qtnf_cmd_alloc_new_cmdskb(i32, i32, i32, i32) #1

declare dso_local i32 @qtnf_bus_lock(%struct.qtnf_bus*) #1

declare dso_local i32 @qtnf_cmd_send_with_reply(%struct.qtnf_bus*, %struct.sk_buff*, %struct.sk_buff**, i32, i64*) #1

declare dso_local i32 @qtnf_cmd_resp_proc_hw_info(%struct.qtnf_bus*, %struct.qlink_resp_get_hw_info*, i64) #1

declare dso_local i32 @qtnf_bus_unlock(%struct.qtnf_bus*) #1

declare dso_local i32 @consume_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
