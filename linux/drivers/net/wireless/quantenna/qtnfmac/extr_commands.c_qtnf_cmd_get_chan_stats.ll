; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_commands.c_qtnf_cmd_get_chan_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_commands.c_qtnf_cmd_get_chan_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtnf_wmac = type { i32, i32 }
%struct.qtnf_chan_stats = type { i32 }
%struct.sk_buff = type { i64 }
%struct.qlink_cmd_get_chan_stats = type { i32 }
%struct.qlink_resp_get_chan_stats = type { i32 }

@QLINK_VIFID_RSVD = common dso_local global i32 0, align 4
@QLINK_CMD_CHAN_STATS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qtnf_cmd_get_chan_stats(%struct.qtnf_wmac* %0, i32 %1, %struct.qtnf_chan_stats* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qtnf_wmac*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.qtnf_chan_stats*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.qlink_cmd_get_chan_stats*, align 8
  %11 = alloca %struct.qlink_resp_get_chan_stats*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.qtnf_wmac* %0, %struct.qtnf_wmac** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.qtnf_chan_stats* %2, %struct.qtnf_chan_stats** %7, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %9, align 8
  store i64 0, i64* %12, align 8
  store i32 0, i32* %13, align 4
  %14 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %5, align 8
  %15 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @QLINK_VIFID_RSVD, align 4
  %18 = load i32, i32* @QLINK_CMD_CHAN_STATS, align 4
  %19 = call %struct.sk_buff* @qtnf_cmd_alloc_new_cmdskb(i32 %16, i32 %17, i32 %18, i32 4)
  store %struct.sk_buff* %19, %struct.sk_buff** %8, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %21 = icmp ne %struct.sk_buff* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %65

25:                                               ; preds = %3
  %26 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %5, align 8
  %27 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @qtnf_bus_lock(i32 %28)
  %30 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to %struct.qlink_cmd_get_chan_stats*
  store %struct.qlink_cmd_get_chan_stats* %33, %struct.qlink_cmd_get_chan_stats** %10, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @cpu_to_le16(i32 %34)
  %36 = load %struct.qlink_cmd_get_chan_stats*, %struct.qlink_cmd_get_chan_stats** %10, align 8
  %37 = getelementptr inbounds %struct.qlink_cmd_get_chan_stats, %struct.qlink_cmd_get_chan_stats* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %5, align 8
  %39 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %42 = call i32 @qtnf_cmd_send_with_reply(i32 %40, %struct.sk_buff* %41, %struct.sk_buff** %9, i32 4, i64* %12)
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %13, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %25
  br label %57

46:                                               ; preds = %25
  %47 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %48 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to %struct.qlink_resp_get_chan_stats*
  store %struct.qlink_resp_get_chan_stats* %50, %struct.qlink_resp_get_chan_stats** %11, align 8
  %51 = load %struct.qtnf_chan_stats*, %struct.qtnf_chan_stats** %7, align 8
  %52 = load %struct.qlink_resp_get_chan_stats*, %struct.qlink_resp_get_chan_stats** %11, align 8
  %53 = getelementptr inbounds %struct.qlink_resp_get_chan_stats, %struct.qlink_resp_get_chan_stats* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i64, i64* %12, align 8
  %56 = call i32 @qtnf_cmd_resp_proc_chan_stat_info(%struct.qtnf_chan_stats* %51, i32 %54, i64 %55)
  store i32 %56, i32* %13, align 4
  br label %57

57:                                               ; preds = %46, %45
  %58 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %5, align 8
  %59 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @qtnf_bus_unlock(i32 %60)
  %62 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %63 = call i32 @consume_skb(%struct.sk_buff* %62)
  %64 = load i32, i32* %13, align 4
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %57, %22
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local %struct.sk_buff* @qtnf_cmd_alloc_new_cmdskb(i32, i32, i32, i32) #1

declare dso_local i32 @qtnf_bus_lock(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @qtnf_cmd_send_with_reply(i32, %struct.sk_buff*, %struct.sk_buff**, i32, i64*) #1

declare dso_local i32 @qtnf_cmd_resp_proc_chan_stat_info(%struct.qtnf_chan_stats*, i32, i64) #1

declare dso_local i32 @qtnf_bus_unlock(i32) #1

declare dso_local i32 @consume_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
