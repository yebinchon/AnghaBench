; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_renesas_usb3.c_usb3_enable_pipe_n.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_renesas_usb3.c_usb3_enable_pipe_n.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.renesas_usb3_ep = type { i32, i32 }
%struct.usb_endpoint_descriptor = type { i32 }
%struct.renesas_usb3 = type { i32 }

@USB3_PN_RAMMAP = common dso_local global i32 0, align 4
@PN_CON_EN = common dso_local global i32 0, align 4
@USB3_PN_CON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.renesas_usb3_ep*, %struct.usb_endpoint_descriptor*)* @usb3_enable_pipe_n to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb3_enable_pipe_n(%struct.renesas_usb3_ep* %0, %struct.usb_endpoint_descriptor* %1) #0 {
  %3 = alloca %struct.renesas_usb3_ep*, align 8
  %4 = alloca %struct.usb_endpoint_descriptor*, align 8
  %5 = alloca %struct.renesas_usb3*, align 8
  %6 = alloca i64, align 8
  store %struct.renesas_usb3_ep* %0, %struct.renesas_usb3_ep** %3, align 8
  store %struct.usb_endpoint_descriptor* %1, %struct.usb_endpoint_descriptor** %4, align 8
  %7 = load %struct.renesas_usb3_ep*, %struct.renesas_usb3_ep** %3, align 8
  %8 = call %struct.renesas_usb3* @usb3_ep_to_usb3(%struct.renesas_usb3_ep* %7)
  store %struct.renesas_usb3* %8, %struct.renesas_usb3** %5, align 8
  %9 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %4, align 8
  %10 = call i32 @usb_endpoint_dir_in(%struct.usb_endpoint_descriptor* %9)
  %11 = load %struct.renesas_usb3_ep*, %struct.renesas_usb3_ep** %3, align 8
  %12 = getelementptr inbounds %struct.renesas_usb3_ep, %struct.renesas_usb3_ep* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 4
  %13 = load %struct.renesas_usb3*, %struct.renesas_usb3** %5, align 8
  %14 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %13, i32 0, i32 0
  %15 = load i64, i64* %6, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.renesas_usb3*, %struct.renesas_usb3** %5, align 8
  %18 = load %struct.renesas_usb3_ep*, %struct.renesas_usb3_ep** %3, align 8
  %19 = getelementptr inbounds %struct.renesas_usb3_ep, %struct.renesas_usb3_ep* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @usb3_pn_change(%struct.renesas_usb3* %17, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %39, label %23

23:                                               ; preds = %2
  %24 = load %struct.renesas_usb3_ep*, %struct.renesas_usb3_ep** %3, align 8
  %25 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %4, align 8
  %26 = call i32 @usb3_write_pn_mod(%struct.renesas_usb3_ep* %24, %struct.usb_endpoint_descriptor* %25)
  %27 = load %struct.renesas_usb3*, %struct.renesas_usb3** %5, align 8
  %28 = load %struct.renesas_usb3_ep*, %struct.renesas_usb3_ep** %3, align 8
  %29 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %4, align 8
  %30 = call i32 @usb3_calc_rammap_val(%struct.renesas_usb3_ep* %28, %struct.usb_endpoint_descriptor* %29)
  %31 = load i32, i32* @USB3_PN_RAMMAP, align 4
  %32 = call i32 @usb3_write(%struct.renesas_usb3* %27, i32 %30, i32 %31)
  %33 = load %struct.renesas_usb3*, %struct.renesas_usb3** %5, align 8
  %34 = call i32 @usb3_pn_con_clear(%struct.renesas_usb3* %33)
  %35 = load %struct.renesas_usb3*, %struct.renesas_usb3** %5, align 8
  %36 = load i32, i32* @PN_CON_EN, align 4
  %37 = load i32, i32* @USB3_PN_CON, align 4
  %38 = call i32 @usb3_set_bit(%struct.renesas_usb3* %35, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %23, %2
  %40 = load %struct.renesas_usb3*, %struct.renesas_usb3** %5, align 8
  %41 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %40, i32 0, i32 0
  %42 = load i64, i64* %6, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* %41, i64 %42)
  ret i32 0
}

declare dso_local %struct.renesas_usb3* @usb3_ep_to_usb3(%struct.renesas_usb3_ep*) #1

declare dso_local i32 @usb_endpoint_dir_in(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @usb3_pn_change(%struct.renesas_usb3*, i32) #1

declare dso_local i32 @usb3_write_pn_mod(%struct.renesas_usb3_ep*, %struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @usb3_write(%struct.renesas_usb3*, i32, i32) #1

declare dso_local i32 @usb3_calc_rammap_val(%struct.renesas_usb3_ep*, %struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @usb3_pn_con_clear(%struct.renesas_usb3*) #1

declare dso_local i32 @usb3_set_bit(%struct.renesas_usb3*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
