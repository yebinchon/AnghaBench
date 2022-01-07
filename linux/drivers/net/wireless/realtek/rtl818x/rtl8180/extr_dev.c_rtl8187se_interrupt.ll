; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl818x/rtl8180/extr_dev.c_rtl8187se_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl818x/rtl8180/extr_dev.c_rtl8187se_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32, %struct.rtl8180_priv* }
%struct.rtl8180_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@rtl8187se_interrupt.desc_err = internal global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@IMR_TIMEOUT1 = common dso_local global i32 0, align 4
@IMR_TBDOK = common dso_local global i32 0, align 4
@IMR_TBDER = common dso_local global i32 0, align 4
@IMR_TVODOK = common dso_local global i32 0, align 4
@IMR_TVODER = common dso_local global i32 0, align 4
@IMR_TVIDOK = common dso_local global i32 0, align 4
@IMR_TVIDER = common dso_local global i32 0, align 4
@IMR_TBEDOK = common dso_local global i32 0, align 4
@IMR_TBEDER = common dso_local global i32 0, align 4
@IMR_TBKDOK = common dso_local global i32 0, align 4
@IMR_TBKDER = common dso_local global i32 0, align 4
@IMR_ROK = common dso_local global i32 0, align 4
@IMR_RER = common dso_local global i32 0, align 4
@RTL818X_INT_SE_RX_DU = common dso_local global i32 0, align 4
@IMR_RQOSOK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"No RX DMA Descriptor avail\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @rtl8187se_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8187se_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca %struct.rtl8180_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.ieee80211_hw*
  store %struct.ieee80211_hw* %11, %struct.ieee80211_hw** %6, align 8
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %13 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %12, i32 0, i32 1
  %14 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %13, align 8
  store %struct.rtl8180_priv* %14, %struct.rtl8180_priv** %7, align 8
  %15 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %7, align 8
  %16 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %15, i32 0, i32 0
  %17 = load i64, i64* %9, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %7, align 8
  %20 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %7, align 8
  %21 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = call i32 @rtl818x_ioread32(%struct.rtl8180_priv* %19, i32* %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp eq i32 %25, -1
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %2
  %31 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %7, align 8
  %32 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %31, i32 0, i32 0
  %33 = load i64, i64* %9, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32* %32, i64 %33)
  %35 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %35, i32* %3, align 4
  br label %143

36:                                               ; preds = %2
  %37 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %7, align 8
  %38 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %7, align 8
  %39 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @rtl818x_iowrite32(%struct.rtl8180_priv* %37, i32* %41, i32 %42)
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @IMR_TIMEOUT1, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %36
  %49 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %7, align 8
  %50 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %7, align 8
  %51 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = call i32 @rtl818x_iowrite32(%struct.rtl8180_priv* %49, i32* %53, i32 0)
  br label %55

55:                                               ; preds = %48, %36
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @IMR_TBDOK, align 4
  %58 = load i32, i32* @IMR_TBDER, align 4
  %59 = or i32 %57, %58
  %60 = and i32 %56, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %55
  %63 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %64 = call i32 @rtl8180_handle_tx(%struct.ieee80211_hw* %63, i32 4)
  br label %65

65:                                               ; preds = %62, %55
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* @IMR_TVODOK, align 4
  %68 = load i32, i32* @IMR_TVODER, align 4
  %69 = or i32 %67, %68
  %70 = and i32 %66, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %65
  %73 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %74 = call i32 @rtl8180_handle_tx(%struct.ieee80211_hw* %73, i32 0)
  br label %75

75:                                               ; preds = %72, %65
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* @IMR_TVIDOK, align 4
  %78 = load i32, i32* @IMR_TVIDER, align 4
  %79 = or i32 %77, %78
  %80 = and i32 %76, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %75
  %83 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %84 = call i32 @rtl8180_handle_tx(%struct.ieee80211_hw* %83, i32 1)
  br label %85

85:                                               ; preds = %82, %75
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* @IMR_TBEDOK, align 4
  %88 = load i32, i32* @IMR_TBEDER, align 4
  %89 = or i32 %87, %88
  %90 = and i32 %86, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %85
  %93 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %94 = call i32 @rtl8180_handle_tx(%struct.ieee80211_hw* %93, i32 2)
  br label %95

95:                                               ; preds = %92, %85
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* @IMR_TBKDOK, align 4
  %98 = load i32, i32* @IMR_TBKDER, align 4
  %99 = or i32 %97, %98
  %100 = and i32 %96, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %95
  %103 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %104 = call i32 @rtl8180_handle_tx(%struct.ieee80211_hw* %103, i32 3)
  br label %105

105:                                              ; preds = %102, %95
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* @IMR_ROK, align 4
  %108 = load i32, i32* @IMR_RER, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* @RTL818X_INT_SE_RX_DU, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* @IMR_RQOSOK, align 4
  %113 = or i32 %111, %112
  %114 = and i32 %106, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %105
  %117 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %118 = call i32 @rtl8180_handle_rx(%struct.ieee80211_hw* %117)
  br label %119

119:                                              ; preds = %116, %105
  %120 = load i32, i32* %8, align 4
  %121 = load i32, i32* @RTL818X_INT_SE_RX_DU, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %137

124:                                              ; preds = %119
  %125 = load i32, i32* @rtl8187se_interrupt.desc_err, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* @rtl8187se_interrupt.desc_err, align 4
  %127 = icmp sgt i32 %125, 2
  br i1 %127, label %128, label %137

128:                                              ; preds = %124
  %129 = call i64 (...) @net_ratelimit()
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %128
  %132 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %133 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @wiphy_err(i32 %134, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %136

136:                                              ; preds = %131, %128
  br label %137

137:                                              ; preds = %136, %124, %119
  %138 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %7, align 8
  %139 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %138, i32 0, i32 0
  %140 = load i64, i64* %9, align 8
  %141 = call i32 @spin_unlock_irqrestore(i32* %139, i64 %140)
  %142 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %142, i32* %3, align 4
  br label %143

143:                                              ; preds = %137, %30
  %144 = load i32, i32* %3, align 4
  ret i32 %144
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @rtl818x_ioread32(%struct.rtl8180_priv*, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @rtl818x_iowrite32(%struct.rtl8180_priv*, i32*, i32) #1

declare dso_local i32 @rtl8180_handle_tx(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @rtl8180_handle_rx(%struct.ieee80211_hw*) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @wiphy_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
