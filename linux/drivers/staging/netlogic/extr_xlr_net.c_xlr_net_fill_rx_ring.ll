; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/netlogic/extr_xlr_net.c_xlr_net_fill_rx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/netlogic/extr_xlr_net.c_xlr_net_fill_rx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.xlr_net_priv = type { i32 }

@MAX_FRIN_SPILL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Rx ring setup done\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @xlr_net_fill_rx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xlr_net_fill_rx_ring(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.xlr_net_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.xlr_net_priv* @netdev_priv(%struct.net_device* %7)
  store %struct.xlr_net_priv* %8, %struct.xlr_net_priv** %5, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %25, %1
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @MAX_FRIN_SPILL, align 4
  %12 = sdiv i32 %11, 4
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %28

14:                                               ; preds = %9
  %15 = call i8* (...) @xlr_alloc_skb()
  store i8* %15, i8** %4, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %31

21:                                               ; preds = %14
  %22 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %5, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 @send_to_rfr_fifo(%struct.xlr_net_priv* %22, i8* %23)
  br label %25

25:                                               ; preds = %21
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %6, align 4
  br label %9

28:                                               ; preds = %9
  %29 = load %struct.net_device*, %struct.net_device** %3, align 8
  %30 = call i32 @netdev_info(%struct.net_device* %29, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %28, %18
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local %struct.xlr_net_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i8* @xlr_alloc_skb(...) #1

declare dso_local i32 @send_to_rfr_fifo(%struct.xlr_net_priv*, i8*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
