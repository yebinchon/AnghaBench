; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_hfa384x_usb.c_hfa384x_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_hfa384x_usb.c_hfa384x_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfa384x = type { i64, i32, i32* }
%struct.sk_buff = type { i32 }

@HFA384x_STATE_RUNNING = common dso_local global i64 0, align 8
@HFA384x_STATE_PREINIT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hfa384x_destroy(%struct.hfa384x* %0) #0 {
  %2 = alloca %struct.hfa384x*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  store %struct.hfa384x* %0, %struct.hfa384x** %2, align 8
  %4 = load %struct.hfa384x*, %struct.hfa384x** %2, align 8
  %5 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @HFA384x_STATE_RUNNING, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load %struct.hfa384x*, %struct.hfa384x** %2, align 8
  %11 = call i32 @hfa384x_drvr_stop(%struct.hfa384x* %10)
  br label %12

12:                                               ; preds = %9, %1
  %13 = load i64, i64* @HFA384x_STATE_PREINIT, align 8
  %14 = load %struct.hfa384x*, %struct.hfa384x** %2, align 8
  %15 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  %16 = load %struct.hfa384x*, %struct.hfa384x** %2, align 8
  %17 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @kfree(i32* %18)
  %20 = load %struct.hfa384x*, %struct.hfa384x** %2, align 8
  %21 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %20, i32 0, i32 2
  store i32* null, i32** %21, align 8
  br label %22

22:                                               ; preds = %27, %12
  %23 = load %struct.hfa384x*, %struct.hfa384x** %2, align 8
  %24 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %23, i32 0, i32 1
  %25 = call %struct.sk_buff* @skb_dequeue(i32* %24)
  store %struct.sk_buff* %25, %struct.sk_buff** %3, align 8
  %26 = icmp ne %struct.sk_buff* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %29 = call i32 @dev_kfree_skb(%struct.sk_buff* %28)
  br label %22

30:                                               ; preds = %22
  ret void
}

declare dso_local i32 @hfa384x_drvr_stop(%struct.hfa384x*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
