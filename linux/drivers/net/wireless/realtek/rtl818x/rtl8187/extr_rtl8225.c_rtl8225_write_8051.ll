; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl818x/rtl8187/extr_rtl8225.c_rtl8225_write_8051.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl818x/rtl8187/extr_rtl8225.c_rtl8225_write_8051.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.rtl8187_priv* }
%struct.rtl8187_priv = type { %struct.TYPE_4__*, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@RTL8187_REQ_SET_REG = common dso_local global i32 0, align 4
@RTL8187_REQT_WRITE = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32, i32)* @rtl8225_write_8051 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8225_write_8051(%struct.ieee80211_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rtl8187_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %12 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %11, i32 0, i32 0
  %13 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %12, align 8
  store %struct.rtl8187_priv* %13, %struct.rtl8187_priv** %7, align 8
  %14 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %7, align 8
  %15 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %7, align 8
  %16 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = call i32 @rtl818x_ioread16(%struct.rtl8187_priv* %14, i32* %18)
  store i32 %19, i32* %8, align 4
  %20 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %7, align 8
  %21 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %7, align 8
  %22 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 2
  %25 = call i32 @rtl818x_ioread16(%struct.rtl8187_priv* %20, i32* %24)
  store i32 %25, i32* %9, align 4
  %26 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %7, align 8
  %27 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %7, align 8
  %28 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = call i32 @rtl818x_ioread16(%struct.rtl8187_priv* %26, i32* %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %8, align 4
  %33 = and i32 %32, -13
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %10, align 4
  %35 = and i32 %34, -16
  store i32 %35, i32* %10, align 4
  %36 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %7, align 8
  %37 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %7, align 8
  %38 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  %41 = load i32, i32* %9, align 4
  %42 = or i32 %41, 7
  %43 = call i32 @rtl818x_iowrite16(%struct.rtl8187_priv* %36, i32* %40, i32 %42)
  %44 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %7, align 8
  %45 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %7, align 8
  %46 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %10, align 4
  %50 = or i32 %49, 7
  %51 = call i32 @rtl818x_iowrite16(%struct.rtl8187_priv* %44, i32* %48, i32 %50)
  %52 = call i32 @udelay(i32 10)
  %53 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %7, align 8
  %54 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %7, align 8
  %55 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i32, i32* %8, align 4
  %59 = or i32 %58, 4
  %60 = call i32 @rtl818x_iowrite16(%struct.rtl8187_priv* %53, i32* %57, i32 %59)
  %61 = call i32 @udelay(i32 2)
  %62 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %7, align 8
  %63 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %7, align 8
  %64 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %63, i32 0, i32 0
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @rtl818x_iowrite16(%struct.rtl8187_priv* %62, i32* %66, i32 %67)
  %69 = call i32 @udelay(i32 10)
  %70 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %7, align 8
  %71 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %70, i32 0, i32 1
  %72 = call i32 @mutex_lock(i32* %71)
  %73 = load i32, i32* %6, align 4
  %74 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %7, align 8
  %75 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %74, i32 0, i32 2
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  store i32 %73, i32* %77, align 4
  %78 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %7, align 8
  %79 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %7, align 8
  %82 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @usb_sndctrlpipe(i32 %83, i32 0)
  %85 = load i32, i32* @RTL8187_REQ_SET_REG, align 4
  %86 = load i32, i32* @RTL8187_REQT_WRITE, align 4
  %87 = load i32, i32* %5, align 4
  %88 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %7, align 8
  %89 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %88, i32 0, i32 2
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i32, i32* @HZ, align 4
  %93 = sdiv i32 %92, 2
  %94 = call i32 @usb_control_msg(i32 %80, i32 %84, i32 %85, i32 %86, i32 %87, i32 33317, i32* %91, i32 4, i32 %93)
  %95 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %7, align 8
  %96 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %95, i32 0, i32 1
  %97 = call i32 @mutex_unlock(i32* %96)
  %98 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %7, align 8
  %99 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %7, align 8
  %100 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %99, i32 0, i32 0
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  %103 = load i32, i32* %8, align 4
  %104 = or i32 %103, 4
  %105 = call i32 @rtl818x_iowrite16(%struct.rtl8187_priv* %98, i32* %102, i32 %104)
  %106 = call i32 @udelay(i32 10)
  %107 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %7, align 8
  %108 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %7, align 8
  %109 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %108, i32 0, i32 0
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 1
  %112 = load i32, i32* %8, align 4
  %113 = or i32 %112, 4
  %114 = call i32 @rtl818x_iowrite16(%struct.rtl8187_priv* %107, i32* %111, i32 %113)
  %115 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %7, align 8
  %116 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %7, align 8
  %117 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %116, i32 0, i32 0
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load i32, i32* %10, align 4
  %121 = call i32 @rtl818x_iowrite16(%struct.rtl8187_priv* %115, i32* %119, i32 %120)
  ret void
}

declare dso_local i32 @rtl818x_ioread16(%struct.rtl8187_priv*, i32*) #1

declare dso_local i32 @rtl818x_iowrite16(%struct.rtl8187_priv*, i32*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
