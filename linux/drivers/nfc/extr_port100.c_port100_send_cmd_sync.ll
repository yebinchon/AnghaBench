; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/extr_port100.c_port100_send_cmd_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/extr_port100.c_port100_send_cmd_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port100 = type { i32 }
%struct.sk_buff = type { i32 }
%struct.port100_sync_cmd_response = type { %struct.sk_buff*, i32 }

@port100_send_sync_complete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.port100*, i32, %struct.sk_buff*)* @port100_send_cmd_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @port100_send_cmd_sync(%struct.port100* %0, i32 %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.port100*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.port100_sync_cmd_response, align 8
  store %struct.port100* %0, %struct.port100** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  %10 = getelementptr inbounds %struct.port100_sync_cmd_response, %struct.port100_sync_cmd_response* %9, i32 0, i32 1
  %11 = call i32 @init_completion(i32* %10)
  %12 = load %struct.port100*, %struct.port100** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %15 = load i32, i32* @port100_send_sync_complete, align 4
  %16 = call i32 @port100_send_cmd_async(%struct.port100* %12, i32 %13, %struct.sk_buff* %14, i32 %15, %struct.port100_sync_cmd_response* %9)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %21 = call i32 @dev_kfree_skb(%struct.sk_buff* %20)
  %22 = load i32, i32* %8, align 4
  %23 = call %struct.sk_buff* @ERR_PTR(i32 %22)
  store %struct.sk_buff* %23, %struct.sk_buff** %4, align 8
  br label %29

24:                                               ; preds = %3
  %25 = getelementptr inbounds %struct.port100_sync_cmd_response, %struct.port100_sync_cmd_response* %9, i32 0, i32 1
  %26 = call i32 @wait_for_completion(i32* %25)
  %27 = getelementptr inbounds %struct.port100_sync_cmd_response, %struct.port100_sync_cmd_response* %9, i32 0, i32 0
  %28 = load %struct.sk_buff*, %struct.sk_buff** %27, align 8
  store %struct.sk_buff* %28, %struct.sk_buff** %4, align 8
  br label %29

29:                                               ; preds = %24, %19
  %30 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %30
}

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @port100_send_cmd_async(%struct.port100*, i32, %struct.sk_buff*, i32, %struct.port100_sync_cmd_response*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
