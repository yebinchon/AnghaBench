; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core.h_qeth_dst_check_rcu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core.h_qeth_dst_check_rcu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_entry = type { i32 }
%struct.sk_buff = type { i32 }
%struct.rt6_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dst_entry* (%struct.sk_buff*, i32)* @qeth_dst_check_rcu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dst_entry* @qeth_dst_check_rcu(%struct.sk_buff* %0, i32 %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dst_entry*, align 8
  %6 = alloca %struct.rt6_info*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %8 = call %struct.dst_entry* @skb_dst(%struct.sk_buff* %7)
  store %struct.dst_entry* %8, %struct.dst_entry** %5, align 8
  %9 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  %10 = bitcast %struct.dst_entry* %9 to %struct.rt6_info*
  store %struct.rt6_info* %10, %struct.rt6_info** %6, align 8
  %11 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  %12 = icmp ne %struct.dst_entry* %11, null
  br i1 %12, label %13, label %24

13:                                               ; preds = %2
  %14 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  %15 = load i32, i32* %4, align 4
  %16 = icmp eq i32 %15, 6
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load %struct.rt6_info*, %struct.rt6_info** %6, align 8
  %19 = call i32 @rt6_get_cookie(%struct.rt6_info* %18)
  br label %21

20:                                               ; preds = %13
  br label %21

21:                                               ; preds = %20, %17
  %22 = phi i32 [ %19, %17 ], [ 0, %20 ]
  %23 = call %struct.dst_entry* @dst_check(%struct.dst_entry* %14, i32 %22)
  store %struct.dst_entry* %23, %struct.dst_entry** %5, align 8
  br label %24

24:                                               ; preds = %21, %2
  %25 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  ret %struct.dst_entry* %25
}

declare dso_local %struct.dst_entry* @skb_dst(%struct.sk_buff*) #1

declare dso_local %struct.dst_entry* @dst_check(%struct.dst_entry*, i32) #1

declare dso_local i32 @rt6_get_cookie(%struct.rt6_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
