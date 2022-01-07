; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_rtl_core.c__rtl92e_pci_initdescring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_rtl_core.c__rtl92e_pci_initdescring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

@MAX_TX_QUEUE_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.net_device*)* @_rtl92e_pci_initdescring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i16 @_rtl92e_pci_initdescring(%struct.net_device* %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i32, align 4
  %6 = alloca %struct.r8192_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.r8192_priv* @rtllib_priv(%struct.net_device* %7)
  store %struct.r8192_priv* %8, %struct.r8192_priv** %6, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call signext i16 @_rtl92e_alloc_rx_ring(%struct.net_device* %9)
  store i16 %10, i16* %4, align 2
  %11 = load i16, i16* %4, align 2
  %12 = icmp ne i16 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i16, i16* %4, align 2
  store i16 %14, i16* %2, align 2
  br label %61

15:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %31, %15
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @MAX_TX_QUEUE_COUNT, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %34

20:                                               ; preds = %16
  %21 = load %struct.net_device*, %struct.net_device** %3, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %24 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call signext i16 @_rtl92e_alloc_tx_ring(%struct.net_device* %21, i32 %22, i32 %25)
  store i16 %26, i16* %4, align 2
  %27 = load i16, i16* %4, align 2
  %28 = icmp ne i16 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  br label %35

30:                                               ; preds = %20
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %5, align 4
  br label %16

34:                                               ; preds = %16
  store i16 0, i16* %2, align 2
  br label %61

35:                                               ; preds = %29
  %36 = load %struct.net_device*, %struct.net_device** %3, align 8
  %37 = call i32 @_rtl92e_free_rx_ring(%struct.net_device* %36)
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %57, %35
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @MAX_TX_QUEUE_COUNT, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %60

42:                                               ; preds = %38
  %43 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %44 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %42
  %53 = load %struct.net_device*, %struct.net_device** %3, align 8
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @_rtl92e_free_tx_ring(%struct.net_device* %53, i32 %54)
  br label %56

56:                                               ; preds = %52, %42
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %5, align 4
  br label %38

60:                                               ; preds = %38
  store i16 1, i16* %2, align 2
  br label %61

61:                                               ; preds = %60, %34, %13
  %62 = load i16, i16* %2, align 2
  ret i16 %62
}

declare dso_local %struct.r8192_priv* @rtllib_priv(%struct.net_device*) #1

declare dso_local signext i16 @_rtl92e_alloc_rx_ring(%struct.net_device*) #1

declare dso_local signext i16 @_rtl92e_alloc_tx_ring(%struct.net_device*, i32, i32) #1

declare dso_local i32 @_rtl92e_free_rx_ring(%struct.net_device*) #1

declare dso_local i32 @_rtl92e_free_tx_ring(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
