; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl8xxxu/extr_rtl8xxxu_core.c_rtl8xxxu_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl8xxxu/extr_rtl8xxxu_core.c_rtl8xxxu_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.rtl8xxxu_priv* }
%struct.rtl8xxxu_priv = type { i32, i32, i32, i32, i32, i64, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.rtl8xxxu_priv*)* }
%struct.rtl8xxxu_rx_urb = type { %struct.ieee80211_hw*, i32, i32 }
%struct.rtl8xxxu_tx_urb = type { i32, %struct.ieee80211_hw*, i32 }

@RTL8XXXU_TX_URBS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RTL8XXXU_RX_URBS = common dso_local global i32 0, align 4
@REG_RXFLTMAP2 = common dso_local global i32 0, align 4
@REG_RXFLTMAP0 = common dso_local global i32 0, align 4
@REG_OFDM0_XA_AGC_CORE1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*)* @rtl8xxxu_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8xxxu_start(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.rtl8xxxu_priv*, align 8
  %5 = alloca %struct.rtl8xxxu_rx_urb*, align 8
  %6 = alloca %struct.rtl8xxxu_tx_urb*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %11 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %10, i32 0, i32 0
  %12 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %11, align 8
  store %struct.rtl8xxxu_priv* %12, %struct.rtl8xxxu_priv** %4, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %4, align 8
  %14 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %13, i32 0, i32 9
  %15 = call i32 @init_usb_anchor(i32* %14)
  %16 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %4, align 8
  %17 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %16, i32 0, i32 8
  %18 = call i32 @init_usb_anchor(i32* %17)
  %19 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %4, align 8
  %20 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %19, i32 0, i32 7
  %21 = call i32 @init_usb_anchor(i32* %20)
  %22 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %4, align 8
  %23 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %22, i32 0, i32 6
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32 (%struct.rtl8xxxu_priv*)*, i32 (%struct.rtl8xxxu_priv*)** %25, align 8
  %27 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %4, align 8
  %28 = call i32 %26(%struct.rtl8xxxu_priv* %27)
  %29 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %4, align 8
  %30 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %29, i32 0, i32 5
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %1
  %34 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %35 = call i32 @rtl8xxxu_submit_int_urb(%struct.ieee80211_hw* %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %127

39:                                               ; preds = %33
  br label %40

40:                                               ; preds = %39, %1
  store i32 0, i32* %9, align 4
  br label %41

41:                                               ; preds = %77, %40
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @RTL8XXXU_TX_URBS, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %80

45:                                               ; preds = %41
  %46 = load i32, i32* @GFP_KERNEL, align 4
  %47 = call i8* @kmalloc(i32 24, i32 %46)
  %48 = bitcast i8* %47 to %struct.rtl8xxxu_tx_urb*
  store %struct.rtl8xxxu_tx_urb* %48, %struct.rtl8xxxu_tx_urb** %6, align 8
  %49 = load %struct.rtl8xxxu_tx_urb*, %struct.rtl8xxxu_tx_urb** %6, align 8
  %50 = icmp ne %struct.rtl8xxxu_tx_urb* %49, null
  br i1 %50, label %58, label %51

51:                                               ; preds = %45
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %8, align 4
  br label %57

57:                                               ; preds = %54, %51
  br label %138

58:                                               ; preds = %45
  %59 = load %struct.rtl8xxxu_tx_urb*, %struct.rtl8xxxu_tx_urb** %6, align 8
  %60 = getelementptr inbounds %struct.rtl8xxxu_tx_urb, %struct.rtl8xxxu_tx_urb* %59, i32 0, i32 2
  %61 = call i32 @usb_init_urb(i32* %60)
  %62 = load %struct.rtl8xxxu_tx_urb*, %struct.rtl8xxxu_tx_urb** %6, align 8
  %63 = getelementptr inbounds %struct.rtl8xxxu_tx_urb, %struct.rtl8xxxu_tx_urb* %62, i32 0, i32 0
  %64 = call i32 @INIT_LIST_HEAD(i32* %63)
  %65 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %66 = load %struct.rtl8xxxu_tx_urb*, %struct.rtl8xxxu_tx_urb** %6, align 8
  %67 = getelementptr inbounds %struct.rtl8xxxu_tx_urb, %struct.rtl8xxxu_tx_urb* %66, i32 0, i32 1
  store %struct.ieee80211_hw* %65, %struct.ieee80211_hw** %67, align 8
  %68 = load %struct.rtl8xxxu_tx_urb*, %struct.rtl8xxxu_tx_urb** %6, align 8
  %69 = getelementptr inbounds %struct.rtl8xxxu_tx_urb, %struct.rtl8xxxu_tx_urb* %68, i32 0, i32 0
  %70 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %4, align 8
  %71 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %70, i32 0, i32 4
  %72 = call i32 @list_add(i32* %69, i32* %71)
  %73 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %4, align 8
  %74 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 4
  br label %77

77:                                               ; preds = %58
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %9, align 4
  br label %41

80:                                               ; preds = %41
  %81 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %4, align 8
  %82 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %81, i32 0, i32 0
  store i32 0, i32* %82, align 8
  %83 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %4, align 8
  %84 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %83, i32 0, i32 2
  %85 = load i64, i64* %7, align 8
  %86 = call i32 @spin_lock_irqsave(i32* %84, i64 %85)
  %87 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %4, align 8
  %88 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %87, i32 0, i32 1
  store i32 0, i32* %88, align 4
  %89 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %4, align 8
  %90 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %89, i32 0, i32 2
  %91 = load i64, i64* %7, align 8
  %92 = call i32 @spin_unlock_irqrestore(i32* %90, i64 %91)
  store i32 0, i32* %9, align 4
  br label %93

93:                                               ; preds = %123, %80
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* @RTL8XXXU_RX_URBS, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %126

97:                                               ; preds = %93
  %98 = load i32, i32* @GFP_KERNEL, align 4
  %99 = call i8* @kmalloc(i32 16, i32 %98)
  %100 = bitcast i8* %99 to %struct.rtl8xxxu_rx_urb*
  store %struct.rtl8xxxu_rx_urb* %100, %struct.rtl8xxxu_rx_urb** %5, align 8
  %101 = load %struct.rtl8xxxu_rx_urb*, %struct.rtl8xxxu_rx_urb** %5, align 8
  %102 = icmp ne %struct.rtl8xxxu_rx_urb* %101, null
  br i1 %102, label %110, label %103

103:                                              ; preds = %97
  %104 = load i32, i32* %9, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %103
  %107 = load i32, i32* @ENOMEM, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %8, align 4
  br label %109

109:                                              ; preds = %106, %103
  br label %138

110:                                              ; preds = %97
  %111 = load %struct.rtl8xxxu_rx_urb*, %struct.rtl8xxxu_rx_urb** %5, align 8
  %112 = getelementptr inbounds %struct.rtl8xxxu_rx_urb, %struct.rtl8xxxu_rx_urb* %111, i32 0, i32 2
  %113 = call i32 @usb_init_urb(i32* %112)
  %114 = load %struct.rtl8xxxu_rx_urb*, %struct.rtl8xxxu_rx_urb** %5, align 8
  %115 = getelementptr inbounds %struct.rtl8xxxu_rx_urb, %struct.rtl8xxxu_rx_urb* %114, i32 0, i32 1
  %116 = call i32 @INIT_LIST_HEAD(i32* %115)
  %117 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %118 = load %struct.rtl8xxxu_rx_urb*, %struct.rtl8xxxu_rx_urb** %5, align 8
  %119 = getelementptr inbounds %struct.rtl8xxxu_rx_urb, %struct.rtl8xxxu_rx_urb* %118, i32 0, i32 0
  store %struct.ieee80211_hw* %117, %struct.ieee80211_hw** %119, align 8
  %120 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %4, align 8
  %121 = load %struct.rtl8xxxu_rx_urb*, %struct.rtl8xxxu_rx_urb** %5, align 8
  %122 = call i32 @rtl8xxxu_submit_rx_urb(%struct.rtl8xxxu_priv* %120, %struct.rtl8xxxu_rx_urb* %121)
  store i32 %122, i32* %8, align 4
  br label %123

123:                                              ; preds = %110
  %124 = load i32, i32* %9, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %9, align 4
  br label %93

126:                                              ; preds = %93
  br label %127

127:                                              ; preds = %126, %38
  %128 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %4, align 8
  %129 = load i32, i32* @REG_RXFLTMAP2, align 4
  %130 = call i32 @rtl8xxxu_write16(%struct.rtl8xxxu_priv* %128, i32 %129, i32 65535)
  %131 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %4, align 8
  %132 = load i32, i32* @REG_RXFLTMAP0, align 4
  %133 = call i32 @rtl8xxxu_write16(%struct.rtl8xxxu_priv* %131, i32 %132, i32 65535)
  %134 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %4, align 8
  %135 = load i32, i32* @REG_OFDM0_XA_AGC_CORE1, align 4
  %136 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %134, i32 %135, i32 1767126046)
  %137 = load i32, i32* %8, align 4
  store i32 %137, i32* %2, align 4
  br label %148

138:                                              ; preds = %109, %57
  %139 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %4, align 8
  %140 = call i32 @rtl8xxxu_free_tx_resources(%struct.rtl8xxxu_priv* %139)
  %141 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %4, align 8
  %142 = load i32, i32* @REG_RXFLTMAP2, align 4
  %143 = call i32 @rtl8xxxu_write16(%struct.rtl8xxxu_priv* %141, i32 %142, i32 0)
  %144 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %4, align 8
  %145 = load i32, i32* @REG_RXFLTMAP0, align 4
  %146 = call i32 @rtl8xxxu_write16(%struct.rtl8xxxu_priv* %144, i32 %145, i32 0)
  %147 = load i32, i32* %8, align 4
  store i32 %147, i32* %2, align 4
  br label %148

148:                                              ; preds = %138, %127
  %149 = load i32, i32* %2, align 4
  ret i32 %149
}

declare dso_local i32 @init_usb_anchor(i32*) #1

declare dso_local i32 @rtl8xxxu_submit_int_urb(%struct.ieee80211_hw*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_init_urb(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @rtl8xxxu_submit_rx_urb(%struct.rtl8xxxu_priv*, %struct.rtl8xxxu_rx_urb*) #1

declare dso_local i32 @rtl8xxxu_write16(%struct.rtl8xxxu_priv*, i32, i32) #1

declare dso_local i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv*, i32, i32) #1

declare dso_local i32 @rtl8xxxu_free_tx_resources(%struct.rtl8xxxu_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
