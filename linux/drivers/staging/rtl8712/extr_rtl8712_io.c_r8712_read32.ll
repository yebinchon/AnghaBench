; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl8712_io.c_r8712_read32.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl8712_io.c_r8712_read32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.intf_hdl }
%struct.intf_hdl = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.intf_hdl.0*, i32)* }
%struct.intf_hdl.0 = type opaque

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r8712_read32(%struct._adapter* %0, i32 %1) #0 {
  %3 = alloca %struct._adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.intf_hdl*, align 8
  store %struct._adapter* %0, %struct._adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct._adapter*, %struct._adapter** %3, align 8
  %7 = getelementptr inbounds %struct._adapter, %struct._adapter* %6, i32 0, i32 0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  store %struct.intf_hdl* %9, %struct.intf_hdl** %5, align 8
  %10 = load %struct.intf_hdl*, %struct.intf_hdl** %5, align 8
  %11 = getelementptr inbounds %struct.intf_hdl, %struct.intf_hdl* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32 (%struct.intf_hdl.0*, i32)*, i32 (%struct.intf_hdl.0*, i32)** %12, align 8
  %14 = load %struct.intf_hdl*, %struct.intf_hdl** %5, align 8
  %15 = bitcast %struct.intf_hdl* %14 to %struct.intf_hdl.0*
  %16 = load i32, i32* %4, align 4
  %17 = call i32 %13(%struct.intf_hdl.0* %15, i32 %16)
  ret i32 %17
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
