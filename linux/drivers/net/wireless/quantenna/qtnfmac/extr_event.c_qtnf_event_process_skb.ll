; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_event.c_qtnf_event_process_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_event.c_qtnf_event_process_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtnf_bus = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.qlink_event = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.qtnf_wmac = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"invalid event buffer\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"new event id:%x len:%u mac:%u vif:%u\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qtnf_bus*, %struct.sk_buff*)* @qtnf_event_process_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qtnf_event_process_skb(%struct.qtnf_bus* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qtnf_bus*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.qlink_event*, align 8
  %7 = alloca %struct.qtnf_wmac*, align 8
  %8 = alloca i32, align 4
  store %struct.qtnf_bus* %0, %struct.qtnf_bus** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %10 = icmp ne %struct.sk_buff* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sext i32 %14 to i64
  %16 = icmp ult i64 %15, 16
  br label %17

17:                                               ; preds = %11, %2
  %18 = phi i1 [ true, %2 ], [ %16, %11 ]
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = call i32 @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %68

26:                                               ; preds = %17
  %27 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.qlink_event*
  store %struct.qlink_event* %30, %struct.qlink_event** %6, align 8
  %31 = load %struct.qtnf_bus*, %struct.qtnf_bus** %4, align 8
  %32 = load %struct.qlink_event*, %struct.qlink_event** %6, align 8
  %33 = getelementptr inbounds %struct.qlink_event, %struct.qlink_event* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.qtnf_wmac* @qtnf_core_get_mac(%struct.qtnf_bus* %31, i32 %34)
  store %struct.qtnf_wmac* %35, %struct.qtnf_wmac** %7, align 8
  %36 = load %struct.qlink_event*, %struct.qlink_event** %6, align 8
  %37 = getelementptr inbounds %struct.qlink_event, %struct.qlink_event* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @le16_to_cpu(i32 %38)
  %40 = load %struct.qlink_event*, %struct.qlink_event** %6, align 8
  %41 = getelementptr inbounds %struct.qlink_event, %struct.qlink_event* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @le16_to_cpu(i32 %43)
  %45 = load %struct.qlink_event*, %struct.qlink_event** %6, align 8
  %46 = getelementptr inbounds %struct.qlink_event, %struct.qlink_event* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.qlink_event*, %struct.qlink_event** %6, align 8
  %49 = getelementptr inbounds %struct.qlink_event, %struct.qlink_event* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @pr_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %39, i32 %44, i32 %47, i32 %50)
  %52 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %7, align 8
  %53 = icmp ne %struct.qtnf_wmac* %52, null
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = call i64 @unlikely(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %26
  %59 = load i32, i32* @ENXIO, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %68

61:                                               ; preds = %26
  %62 = call i32 (...) @rtnl_lock()
  %63 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %7, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %65 = call i32 @qtnf_event_parse(%struct.qtnf_wmac* %63, %struct.sk_buff* %64)
  store i32 %65, i32* %8, align 4
  %66 = call i32 (...) @rtnl_unlock()
  %67 = load i32, i32* %8, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %61, %58, %22
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local %struct.qtnf_wmac* @qtnf_core_get_mac(%struct.qtnf_bus*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @qtnf_event_parse(%struct.qtnf_wmac*, %struct.sk_buff*) #1

declare dso_local i32 @rtnl_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
