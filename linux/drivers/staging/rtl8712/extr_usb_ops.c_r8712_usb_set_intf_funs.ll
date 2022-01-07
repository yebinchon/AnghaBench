; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_usb_ops.c_r8712_usb_set_intf_funs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_usb_ops.c_r8712_usb_set_intf_funs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intf_hdl = type { i32, i32, i32, i32 }

@usb_intf_hdl_init = common dso_local global i32 0, align 4
@usb_intf_hdl_unload = common dso_local global i32 0, align 4
@usb_intf_hdl_open = common dso_local global i32 0, align 4
@usb_intf_hdl_close = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r8712_usb_set_intf_funs(%struct.intf_hdl* %0) #0 {
  %2 = alloca %struct.intf_hdl*, align 8
  store %struct.intf_hdl* %0, %struct.intf_hdl** %2, align 8
  %3 = load i32, i32* @usb_intf_hdl_init, align 4
  %4 = load %struct.intf_hdl*, %struct.intf_hdl** %2, align 8
  %5 = getelementptr inbounds %struct.intf_hdl, %struct.intf_hdl* %4, i32 0, i32 3
  store i32 %3, i32* %5, align 4
  %6 = load i32, i32* @usb_intf_hdl_unload, align 4
  %7 = load %struct.intf_hdl*, %struct.intf_hdl** %2, align 8
  %8 = getelementptr inbounds %struct.intf_hdl, %struct.intf_hdl* %7, i32 0, i32 2
  store i32 %6, i32* %8, align 4
  %9 = load i32, i32* @usb_intf_hdl_open, align 4
  %10 = load %struct.intf_hdl*, %struct.intf_hdl** %2, align 8
  %11 = getelementptr inbounds %struct.intf_hdl, %struct.intf_hdl* %10, i32 0, i32 1
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @usb_intf_hdl_close, align 4
  %13 = load %struct.intf_hdl*, %struct.intf_hdl** %2, align 8
  %14 = getelementptr inbounds %struct.intf_hdl, %struct.intf_hdl* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
