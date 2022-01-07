; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_trans.c_qtnf_trans_signal_cmdresp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_trans.c_qtnf_trans_signal_cmdresp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtnf_bus = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.qtnf_cmd_ctl_node }
%struct.qtnf_cmd_ctl_node = type { i32, i64, i32, i32, %struct.sk_buff* }
%struct.sk_buff = type { i64 }
%struct.qlink_resp = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"unexpected response\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"seq num mismatch\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qtnf_bus*, %struct.sk_buff*)* @qtnf_trans_signal_cmdresp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qtnf_trans_signal_cmdresp(%struct.qtnf_bus* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.qtnf_bus*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.qtnf_cmd_ctl_node*, align 8
  %6 = alloca %struct.qlink_resp*, align 8
  %7 = alloca i64, align 8
  store %struct.qtnf_bus* %0, %struct.qtnf_bus** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %8 = load %struct.qtnf_bus*, %struct.qtnf_bus** %3, align 8
  %9 = getelementptr inbounds %struct.qtnf_bus, %struct.qtnf_bus* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.qtnf_cmd_ctl_node* %10, %struct.qtnf_cmd_ctl_node** %5, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.qlink_resp*
  store %struct.qlink_resp* %14, %struct.qlink_resp** %6, align 8
  %15 = load %struct.qlink_resp*, %struct.qlink_resp** %6, align 8
  %16 = getelementptr inbounds %struct.qlink_resp, %struct.qlink_resp* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @le16_to_cpu(i32 %17)
  store i64 %18, i64* %7, align 8
  %19 = load %struct.qtnf_cmd_ctl_node*, %struct.qtnf_cmd_ctl_node** %5, align 8
  %20 = getelementptr inbounds %struct.qtnf_cmd_ctl_node, %struct.qtnf_cmd_ctl_node* %19, i32 0, i32 2
  %21 = call i32 @spin_lock(i32* %20)
  %22 = load %struct.qtnf_cmd_ctl_node*, %struct.qtnf_cmd_ctl_node** %5, align 8
  %23 = getelementptr inbounds %struct.qtnf_cmd_ctl_node, %struct.qtnf_cmd_ctl_node* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = call i32 @pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %55

32:                                               ; preds = %2
  %33 = load i64, i64* %7, align 8
  %34 = load %struct.qtnf_cmd_ctl_node*, %struct.qtnf_cmd_ctl_node** %5, align 8
  %35 = getelementptr inbounds %struct.qtnf_cmd_ctl_node, %struct.qtnf_cmd_ctl_node* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %33, %36
  %38 = zext i1 %37 to i32
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %32
  %42 = call i32 @pr_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %55

43:                                               ; preds = %32
  %44 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %45 = load %struct.qtnf_cmd_ctl_node*, %struct.qtnf_cmd_ctl_node** %5, align 8
  %46 = getelementptr inbounds %struct.qtnf_cmd_ctl_node, %struct.qtnf_cmd_ctl_node* %45, i32 0, i32 4
  store %struct.sk_buff* %44, %struct.sk_buff** %46, align 8
  %47 = load %struct.qtnf_cmd_ctl_node*, %struct.qtnf_cmd_ctl_node** %5, align 8
  %48 = getelementptr inbounds %struct.qtnf_cmd_ctl_node, %struct.qtnf_cmd_ctl_node* %47, i32 0, i32 0
  store i32 0, i32* %48, align 8
  %49 = load %struct.qtnf_cmd_ctl_node*, %struct.qtnf_cmd_ctl_node** %5, align 8
  %50 = getelementptr inbounds %struct.qtnf_cmd_ctl_node, %struct.qtnf_cmd_ctl_node* %49, i32 0, i32 2
  %51 = call i32 @spin_unlock(i32* %50)
  %52 = load %struct.qtnf_cmd_ctl_node*, %struct.qtnf_cmd_ctl_node** %5, align 8
  %53 = getelementptr inbounds %struct.qtnf_cmd_ctl_node, %struct.qtnf_cmd_ctl_node* %52, i32 0, i32 3
  %54 = call i32 @complete(i32* %53)
  br label %61

55:                                               ; preds = %41, %30
  %56 = load %struct.qtnf_cmd_ctl_node*, %struct.qtnf_cmd_ctl_node** %5, align 8
  %57 = getelementptr inbounds %struct.qtnf_cmd_ctl_node, %struct.qtnf_cmd_ctl_node* %56, i32 0, i32 2
  %58 = call i32 @spin_unlock(i32* %57)
  %59 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %60 = call i32 @dev_kfree_skb(%struct.sk_buff* %59)
  br label %61

61:                                               ; preds = %55, %43
  ret void
}

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
