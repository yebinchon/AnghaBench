; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_softmac.c_rtllib_resp_to_assoc_rq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_softmac.c_rtllib_resp_to_assoc_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtllib_device = type { i32 }
%struct.sk_buff = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtllib_device*, i32*)* @rtllib_resp_to_assoc_rq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtllib_resp_to_assoc_rq(%struct.rtllib_device* %0, i32* %1) #0 {
  %3 = alloca %struct.rtllib_device*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  store %struct.rtllib_device* %0, %struct.rtllib_device** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = call %struct.sk_buff* @rtllib_assoc_resp(%struct.rtllib_device* %6, i32* %7)
  store %struct.sk_buff* %8, %struct.sk_buff** %5, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %10 = icmp ne %struct.sk_buff* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %13 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %14 = call i32 @softmac_mgmt_xmit(%struct.sk_buff* %12, %struct.rtllib_device* %13)
  br label %15

15:                                               ; preds = %11, %2
  ret void
}

declare dso_local %struct.sk_buff* @rtllib_assoc_resp(%struct.rtllib_device*, i32*) #1

declare dso_local i32 @softmac_mgmt_xmit(%struct.sk_buff*, %struct.rtllib_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
