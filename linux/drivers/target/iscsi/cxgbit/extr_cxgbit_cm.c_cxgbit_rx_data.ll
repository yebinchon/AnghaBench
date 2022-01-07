; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/cxgbit/extr_cxgbit_cm.c_cxgbit_rx_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/cxgbit/extr_cxgbit_cm.c_cxgbit_rx_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbit_device = type { %struct.cxgb4_lld_info }
%struct.cxgb4_lld_info = type { %struct.tid_info* }
%struct.tid_info = type { i32 }
%struct.sk_buff = type { i32 }
%struct.cxgbit_sock = type { i32 }
%struct.cpl_rx_data = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"can't find conn. for tid %u.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cxgbit_device*, %struct.sk_buff*)* @cxgbit_rx_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cxgbit_rx_data(%struct.cxgbit_device* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.cxgbit_device*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.cxgbit_sock*, align 8
  %6 = alloca %struct.cpl_rx_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cxgb4_lld_info*, align 8
  %9 = alloca %struct.tid_info*, align 8
  store %struct.cxgbit_device* %0, %struct.cxgbit_device** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = call %struct.cpl_rx_data* @cplhdr(%struct.sk_buff* %10)
  store %struct.cpl_rx_data* %11, %struct.cpl_rx_data** %6, align 8
  %12 = load %struct.cpl_rx_data*, %struct.cpl_rx_data** %6, align 8
  %13 = call i32 @GET_TID(%struct.cpl_rx_data* %12)
  store i32 %13, i32* %7, align 4
  %14 = load %struct.cxgbit_device*, %struct.cxgbit_device** %3, align 8
  %15 = getelementptr inbounds %struct.cxgbit_device, %struct.cxgbit_device* %14, i32 0, i32 0
  store %struct.cxgb4_lld_info* %15, %struct.cxgb4_lld_info** %8, align 8
  %16 = load %struct.cxgb4_lld_info*, %struct.cxgb4_lld_info** %8, align 8
  %17 = getelementptr inbounds %struct.cxgb4_lld_info, %struct.cxgb4_lld_info* %16, i32 0, i32 0
  %18 = load %struct.tid_info*, %struct.tid_info** %17, align 8
  store %struct.tid_info* %18, %struct.tid_info** %9, align 8
  %19 = load %struct.tid_info*, %struct.tid_info** %9, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call %struct.cxgbit_sock* @lookup_tid(%struct.tid_info* %19, i32 %20)
  store %struct.cxgbit_sock* %21, %struct.cxgbit_sock** %5, align 8
  %22 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %5, align 8
  %23 = icmp ne %struct.cxgbit_sock* %22, null
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %2
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %35

31:                                               ; preds = %2
  %32 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %5, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %34 = call i32 @cxgbit_queue_rx_skb(%struct.cxgbit_sock* %32, %struct.sk_buff* %33)
  br label %38

35:                                               ; preds = %28
  %36 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %37 = call i32 @__kfree_skb(%struct.sk_buff* %36)
  br label %38

38:                                               ; preds = %35, %31
  ret void
}

declare dso_local %struct.cpl_rx_data* @cplhdr(%struct.sk_buff*) #1

declare dso_local i32 @GET_TID(%struct.cpl_rx_data*) #1

declare dso_local %struct.cxgbit_sock* @lookup_tid(%struct.tid_info*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @cxgbit_queue_rx_skb(%struct.cxgbit_sock*, %struct.sk_buff*) #1

declare dso_local i32 @__kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
