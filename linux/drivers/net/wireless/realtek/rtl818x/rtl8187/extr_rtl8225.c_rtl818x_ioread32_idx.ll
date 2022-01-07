; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl818x/rtl8187/extr_rtl8225.c_rtl818x_ioread32_idx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl818x/rtl8187/extr_rtl8225.c_rtl818x_ioread32_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8187_priv = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@RTL8187_REQ_GET_REG = common dso_local global i32 0, align 4
@RTL8187_REQT_READ = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl818x_ioread32_idx(%struct.rtl8187_priv* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.rtl8187_priv*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rtl8187_priv* %0, %struct.rtl8187_priv** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %9 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %8, i32 0, i32 0
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %12 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %15 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @usb_rcvctrlpipe(i32 %16, i32 0)
  %18 = load i32, i32* @RTL8187_REQ_GET_REG, align 4
  %19 = load i32, i32* @RTL8187_REQT_READ, align 4
  %20 = load i32*, i32** %5, align 8
  %21 = ptrtoint i32* %20 to i64
  %22 = load i32, i32* %6, align 4
  %23 = and i32 %22, 3
  %24 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %25 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* @HZ, align 4
  %29 = sdiv i32 %28, 2
  %30 = call i32 @usb_control_msg(i32 %13, i32 %17, i32 %18, i32 %19, i64 %21, i32 %23, i32* %27, i32 4, i32 %29)
  %31 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %32 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %7, align 4
  %36 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %37 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %36, i32 0, i32 0
  %38 = call i32 @mutex_unlock(i32* %37)
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @le32_to_cpu(i32 %39)
  ret i32 %40
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i64, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
