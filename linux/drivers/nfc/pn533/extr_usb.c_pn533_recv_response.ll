; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/pn533/extr_usb.c_pn533_recv_response.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/pn533/extr_usb.c_pn533_recv_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i32, i32, %struct.pn533_usb_phy* }
%struct.pn533_usb_phy = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"failed to alloc memory\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @pn533_recv_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pn533_recv_response(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.pn533_usb_phy*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  store %struct.urb* %0, %struct.urb** %2, align 8
  %5 = load %struct.urb*, %struct.urb** %2, align 8
  %6 = getelementptr inbounds %struct.urb, %struct.urb* %5, i32 0, i32 3
  %7 = load %struct.pn533_usb_phy*, %struct.pn533_usb_phy** %6, align 8
  store %struct.pn533_usb_phy* %7, %struct.pn533_usb_phy** %3, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  %8 = load %struct.urb*, %struct.urb** %2, align 8
  %9 = getelementptr inbounds %struct.urb, %struct.urb* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %36, label %12

12:                                               ; preds = %1
  %13 = load %struct.urb*, %struct.urb** %2, align 8
  %14 = getelementptr inbounds %struct.urb, %struct.urb* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @GFP_ATOMIC, align 4
  %17 = call %struct.sk_buff* @alloc_skb(i32 %15, i32 %16)
  store %struct.sk_buff* %17, %struct.sk_buff** %4, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = icmp ne %struct.sk_buff* %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %12
  %21 = load %struct.pn533_usb_phy*, %struct.pn533_usb_phy** %3, align 8
  %22 = getelementptr inbounds %struct.pn533_usb_phy, %struct.pn533_usb_phy* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i32 @nfc_err(i32* %24, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %35

26:                                               ; preds = %12
  %27 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %28 = load %struct.urb*, %struct.urb** %2, align 8
  %29 = getelementptr inbounds %struct.urb, %struct.urb* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.urb*, %struct.urb** %2, align 8
  %32 = getelementptr inbounds %struct.urb, %struct.urb* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @skb_put_data(%struct.sk_buff* %27, i32 %30, i32 %33)
  br label %35

35:                                               ; preds = %26, %20
  br label %36

36:                                               ; preds = %35, %1
  %37 = load %struct.pn533_usb_phy*, %struct.pn533_usb_phy** %3, align 8
  %38 = getelementptr inbounds %struct.pn533_usb_phy, %struct.pn533_usb_phy* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %41 = load %struct.urb*, %struct.urb** %2, align 8
  %42 = getelementptr inbounds %struct.urb, %struct.urb* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @pn533_recv_frame(i32 %39, %struct.sk_buff* %40, i32 %43)
  ret void
}

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @nfc_err(i32*, i8*) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @pn533_recv_frame(i32, %struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
