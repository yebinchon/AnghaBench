; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_rtl_core.c__rtl92e_tx_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_rtl_core.c__rtl92e_tx_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { %struct.rtllib_device* }
%struct.rtllib_device = type { i64 (%struct.net_device.0*, i32)*, i32 (%struct.sk_buff*, %struct.net_device.1*, i32)*, i32* }
%struct.net_device.0 = type opaque
%struct.sk_buff = type { i32 }
%struct.net_device.1 = type opaque

@BK_QUEUE = common dso_local global i32 0, align 4
@MAX_QUEUE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @_rtl92e_tx_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92e_tx_resume(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8192_priv*, align 8
  %4 = alloca %struct.rtllib_device*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.r8192_priv* @rtllib_priv(%struct.net_device* %7)
  store %struct.r8192_priv* %8, %struct.r8192_priv** %3, align 8
  %9 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %10 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %9, i32 0, i32 0
  %11 = load %struct.rtllib_device*, %struct.rtllib_device** %10, align 8
  store %struct.rtllib_device* %11, %struct.rtllib_device** %4, align 8
  %12 = load i32, i32* @BK_QUEUE, align 4
  store i32 %12, i32* %6, align 4
  br label %13

13:                                               ; preds = %56, %1
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @MAX_QUEUE_SIZE, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %59

17:                                               ; preds = %13
  br label %18

18:                                               ; preds = %40, %17
  %19 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %20 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = call i32 @skb_queue_empty(i32* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %38, label %27

27:                                               ; preds = %18
  %28 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %29 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %28, i32 0, i32 0
  %30 = load %struct.rtllib_device*, %struct.rtllib_device** %29, align 8
  %31 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %30, i32 0, i32 0
  %32 = load i64 (%struct.net_device.0*, i32)*, i64 (%struct.net_device.0*, i32)** %31, align 8
  %33 = load %struct.net_device*, %struct.net_device** %2, align 8
  %34 = bitcast %struct.net_device* %33 to %struct.net_device.0*
  %35 = load i32, i32* %6, align 4
  %36 = call i64 %32(%struct.net_device.0* %34, i32 %35)
  %37 = icmp sgt i64 %36, 0
  br label %38

38:                                               ; preds = %27, %18
  %39 = phi i1 [ false, %18 ], [ %37, %27 ]
  br i1 %39, label %40, label %55

40:                                               ; preds = %38
  %41 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %42 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = call %struct.sk_buff* @skb_dequeue(i32* %46)
  store %struct.sk_buff* %47, %struct.sk_buff** %5, align 8
  %48 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %49 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %48, i32 0, i32 1
  %50 = load i32 (%struct.sk_buff*, %struct.net_device.1*, i32)*, i32 (%struct.sk_buff*, %struct.net_device.1*, i32)** %49, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %52 = load %struct.net_device*, %struct.net_device** %2, align 8
  %53 = bitcast %struct.net_device* %52 to %struct.net_device.1*
  %54 = call i32 %50(%struct.sk_buff* %51, %struct.net_device.1* %53, i32 0)
  br label %18

55:                                               ; preds = %38
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %13

59:                                               ; preds = %13
  ret void
}

declare dso_local %struct.r8192_priv* @rtllib_priv(%struct.net_device*) #1

declare dso_local i32 @skb_queue_empty(i32*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
