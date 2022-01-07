; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_coex.c_rtw_coex_info_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_coex.c_rtw_coex_info_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.rtw_dev = type { %struct.rtw_coex }
%struct.rtw_coex = type { i32, i32, i32 }
%struct.rtw_coex_info_req = type { i32 }

@COEX_REQUEST_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"coex request time out\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"failed to get coex info response\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.rtw_dev*, %struct.rtw_coex_info_req*)* @rtw_coex_info_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @rtw_coex_info_request(%struct.rtw_dev* %0, %struct.rtw_coex_info_req* %1) #0 {
  %3 = alloca %struct.rtw_dev*, align 8
  %4 = alloca %struct.rtw_coex_info_req*, align 8
  %5 = alloca %struct.rtw_coex*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  store %struct.rtw_dev* %0, %struct.rtw_dev** %3, align 8
  store %struct.rtw_coex_info_req* %1, %struct.rtw_coex_info_req** %4, align 8
  %7 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %8 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %7, i32 0, i32 0
  store %struct.rtw_coex* %8, %struct.rtw_coex** %5, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  %9 = load %struct.rtw_coex*, %struct.rtw_coex** %5, align 8
  %10 = getelementptr inbounds %struct.rtw_coex, %struct.rtw_coex* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %13 = load %struct.rtw_coex_info_req*, %struct.rtw_coex_info_req** %4, align 8
  %14 = call i32 @rtw_fw_query_bt_mp_info(%struct.rtw_dev* %12, %struct.rtw_coex_info_req* %13)
  %15 = load %struct.rtw_coex*, %struct.rtw_coex** %5, align 8
  %16 = getelementptr inbounds %struct.rtw_coex, %struct.rtw_coex* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.rtw_coex*, %struct.rtw_coex** %5, align 8
  %19 = getelementptr inbounds %struct.rtw_coex, %struct.rtw_coex* %18, i32 0, i32 1
  %20 = call i32 @skb_queue_empty(i32* %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = load i32, i32* @COEX_REQUEST_TIMEOUT, align 4
  %25 = call i32 @wait_event_timeout(i32 %17, i32 %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %2
  %28 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %29 = call i32 @rtw_err(%struct.rtw_dev* %28, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %40

30:                                               ; preds = %2
  %31 = load %struct.rtw_coex*, %struct.rtw_coex** %5, align 8
  %32 = getelementptr inbounds %struct.rtw_coex, %struct.rtw_coex* %31, i32 0, i32 1
  %33 = call %struct.sk_buff* @skb_dequeue(i32* %32)
  store %struct.sk_buff* %33, %struct.sk_buff** %6, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %35 = icmp ne %struct.sk_buff* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %30
  %37 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %38 = call i32 @rtw_err(%struct.rtw_dev* %37, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %40

39:                                               ; preds = %30
  br label %40

40:                                               ; preds = %39, %36, %27
  %41 = load %struct.rtw_coex*, %struct.rtw_coex** %5, align 8
  %42 = getelementptr inbounds %struct.rtw_coex, %struct.rtw_coex* %41, i32 0, i32 0
  %43 = call i32 @mutex_unlock(i32* %42)
  %44 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  ret %struct.sk_buff* %44
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @rtw_fw_query_bt_mp_info(%struct.rtw_dev*, %struct.rtw_coex_info_req*) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @skb_queue_empty(i32*) #1

declare dso_local i32 @rtw_err(%struct.rtw_dev*, i8*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
