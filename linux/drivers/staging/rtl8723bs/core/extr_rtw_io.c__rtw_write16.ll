; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_io.c__rtw_write16.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_io.c__rtw_write16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.io_priv }
%struct.io_priv = type { %struct.intf_hdl }
%struct.intf_hdl = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.intf_hdl.0*, i32, i32)* }
%struct.intf_hdl.0 = type opaque

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_rtw_write16(%struct.adapter* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.io_priv*, align 8
  %8 = alloca %struct.intf_hdl*, align 8
  %9 = alloca i32 (%struct.intf_hdl*, i32, i32)*, align 8
  %10 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.adapter*, %struct.adapter** %4, align 8
  %12 = getelementptr inbounds %struct.adapter, %struct.adapter* %11, i32 0, i32 0
  store %struct.io_priv* %12, %struct.io_priv** %7, align 8
  %13 = load %struct.io_priv*, %struct.io_priv** %7, align 8
  %14 = getelementptr inbounds %struct.io_priv, %struct.io_priv* %13, i32 0, i32 0
  store %struct.intf_hdl* %14, %struct.intf_hdl** %8, align 8
  %15 = load %struct.intf_hdl*, %struct.intf_hdl** %8, align 8
  %16 = getelementptr inbounds %struct.intf_hdl, %struct.intf_hdl* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32 (%struct.intf_hdl.0*, i32, i32)*, i32 (%struct.intf_hdl.0*, i32, i32)** %17, align 8
  %19 = bitcast i32 (%struct.intf_hdl.0*, i32, i32)* %18 to i32 (%struct.intf_hdl*, i32, i32)*
  store i32 (%struct.intf_hdl*, i32, i32)* %19, i32 (%struct.intf_hdl*, i32, i32)** %9, align 8
  %20 = load i32 (%struct.intf_hdl*, i32, i32)*, i32 (%struct.intf_hdl*, i32, i32)** %9, align 8
  %21 = load %struct.intf_hdl*, %struct.intf_hdl** %8, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 %20(%struct.intf_hdl* %21, i32 %22, i32 %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @RTW_STATUS_CODE(i32 %25)
  ret i32 %26
}

declare dso_local i32 @RTW_STATUS_CODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
