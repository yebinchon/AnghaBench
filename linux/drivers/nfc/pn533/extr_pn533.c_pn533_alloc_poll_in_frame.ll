; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/pn533/extr_pn533.c_pn533_alloc_poll_in_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/pn533/extr_pn533.c_pn533_alloc_poll_in_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.pn533 = type { i32 }
%struct.pn533_poll_modulations = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.pn533*, %struct.pn533_poll_modulations*)* @pn533_alloc_poll_in_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @pn533_alloc_poll_in_frame(%struct.pn533* %0, %struct.pn533_poll_modulations* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.pn533*, align 8
  %5 = alloca %struct.pn533_poll_modulations*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  store %struct.pn533* %0, %struct.pn533** %4, align 8
  store %struct.pn533_poll_modulations* %1, %struct.pn533_poll_modulations** %5, align 8
  %7 = load %struct.pn533*, %struct.pn533** %4, align 8
  %8 = load %struct.pn533_poll_modulations*, %struct.pn533_poll_modulations** %5, align 8
  %9 = getelementptr inbounds %struct.pn533_poll_modulations, %struct.pn533_poll_modulations* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.sk_buff* @pn533_alloc_skb(%struct.pn533* %7, i32 %10)
  store %struct.sk_buff* %11, %struct.sk_buff** %6, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %13 = icmp ne %struct.sk_buff* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  br label %24

15:                                               ; preds = %2
  %16 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %17 = load %struct.pn533_poll_modulations*, %struct.pn533_poll_modulations** %5, align 8
  %18 = getelementptr inbounds %struct.pn533_poll_modulations, %struct.pn533_poll_modulations* %17, i32 0, i32 1
  %19 = load %struct.pn533_poll_modulations*, %struct.pn533_poll_modulations** %5, align 8
  %20 = getelementptr inbounds %struct.pn533_poll_modulations, %struct.pn533_poll_modulations* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @skb_put_data(%struct.sk_buff* %16, i32* %18, i32 %21)
  %23 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %23, %struct.sk_buff** %3, align 8
  br label %24

24:                                               ; preds = %15, %14
  %25 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %25
}

declare dso_local %struct.sk_buff* @pn533_alloc_skb(%struct.pn533*, i32) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
