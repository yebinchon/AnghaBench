; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl818x/rtl8187/extr_rtl8225.c_rtl818x_iowrite16_idx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl818x/rtl8187/extr_rtl8225.c_rtl818x_iowrite16_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8187_priv = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@RTL8187_REQ_SET_REG = common dso_local global i32 0, align 4
@RTL8187_REQT_WRITE = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl818x_iowrite16_idx(%struct.rtl8187_priv* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.rtl8187_priv*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rtl8187_priv* %0, %struct.rtl8187_priv** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %10 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @cpu_to_le16(i32 %12)
  %14 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %15 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32 %13, i32* %17, align 4
  %18 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %19 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %22 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @usb_sndctrlpipe(i32 %23, i32 0)
  %25 = load i32, i32* @RTL8187_REQ_SET_REG, align 4
  %26 = load i32, i32* @RTL8187_REQT_WRITE, align 4
  %27 = load i32*, i32** %6, align 8
  %28 = ptrtoint i32* %27 to i64
  %29 = load i32, i32* %8, align 4
  %30 = and i32 %29, 3
  %31 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %32 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* @HZ, align 4
  %36 = sdiv i32 %35, 2
  %37 = call i32 @usb_control_msg(i32 %20, i32 %24, i32 %25, i32 %26, i64 %28, i32 %30, i32* %34, i32 4, i32 %36)
  %38 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %39 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %38, i32 0, i32 0
  %40 = call i32 @mutex_unlock(i32* %39)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i64, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
