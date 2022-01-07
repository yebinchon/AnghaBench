; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_rx.c_wl1251_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_rx.c_wl1251_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1251 = type { i64, %struct.wl1251_rx_descriptor* }
%struct.wl1251_rx_descriptor = type { i32 }

@WL1251_STATE_ON = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wl1251_rx(%struct.wl1251* %0) #0 {
  %2 = alloca %struct.wl1251*, align 8
  %3 = alloca %struct.wl1251_rx_descriptor*, align 8
  store %struct.wl1251* %0, %struct.wl1251** %2, align 8
  %4 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %5 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @WL1251_STATE_ON, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %22

10:                                               ; preds = %1
  %11 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %12 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %11, i32 0, i32 1
  %13 = load %struct.wl1251_rx_descriptor*, %struct.wl1251_rx_descriptor** %12, align 8
  store %struct.wl1251_rx_descriptor* %13, %struct.wl1251_rx_descriptor** %3, align 8
  %14 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %15 = load %struct.wl1251_rx_descriptor*, %struct.wl1251_rx_descriptor** %3, align 8
  %16 = call i32 @wl1251_rx_header(%struct.wl1251* %14, %struct.wl1251_rx_descriptor* %15)
  %17 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %18 = load %struct.wl1251_rx_descriptor*, %struct.wl1251_rx_descriptor** %3, align 8
  %19 = call i32 @wl1251_rx_body(%struct.wl1251* %17, %struct.wl1251_rx_descriptor* %18)
  %20 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %21 = call i32 @wl1251_rx_ack(%struct.wl1251* %20)
  br label %22

22:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @wl1251_rx_header(%struct.wl1251*, %struct.wl1251_rx_descriptor*) #1

declare dso_local i32 @wl1251_rx_body(%struct.wl1251*, %struct.wl1251_rx_descriptor*) #1

declare dso_local i32 @wl1251_rx_ack(%struct.wl1251*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
