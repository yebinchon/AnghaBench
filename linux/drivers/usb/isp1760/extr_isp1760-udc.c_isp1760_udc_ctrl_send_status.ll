; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/isp1760/extr_isp1760-udc.c_isp1760_udc_ctrl_send_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/isp1760/extr_isp1760-udc.c_isp1760_udc_ctrl_send_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp1760_ep = type { %struct.isp1760_udc* }
%struct.isp1760_udc = type { i32 }

@DC_EPINDEX = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@DC_EPDIR = common dso_local global i32 0, align 4
@DC_CTRLFUNC = common dso_local global i32 0, align 4
@DC_STATUS = common dso_local global i32 0, align 4
@ISP1760_CTRL_SETUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isp1760_ep*, i32)* @isp1760_udc_ctrl_send_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isp1760_udc_ctrl_send_status(%struct.isp1760_ep* %0, i32 %1) #0 {
  %3 = alloca %struct.isp1760_ep*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.isp1760_udc*, align 8
  store %struct.isp1760_ep* %0, %struct.isp1760_ep** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.isp1760_ep*, %struct.isp1760_ep** %3, align 8
  %7 = getelementptr inbounds %struct.isp1760_ep, %struct.isp1760_ep* %6, i32 0, i32 0
  %8 = load %struct.isp1760_udc*, %struct.isp1760_udc** %7, align 8
  store %struct.isp1760_udc* %8, %struct.isp1760_udc** %5, align 8
  %9 = load %struct.isp1760_udc*, %struct.isp1760_udc** %5, align 8
  %10 = load i32, i32* @DC_EPINDEX, align 4
  %11 = call i32 @DC_ENDPIDX(i32 0)
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @USB_DIR_IN, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @DC_EPDIR, align 4
  br label %18

18:                                               ; preds = %16, %15
  %19 = phi i32 [ 0, %15 ], [ %17, %16 ]
  %20 = or i32 %11, %19
  %21 = call i32 @isp1760_udc_write(%struct.isp1760_udc* %9, i32 %10, i32 %20)
  %22 = load %struct.isp1760_udc*, %struct.isp1760_udc** %5, align 8
  %23 = load i32, i32* @DC_CTRLFUNC, align 4
  %24 = load i32, i32* @DC_STATUS, align 4
  %25 = call i32 @isp1760_udc_write(%struct.isp1760_udc* %22, i32 %23, i32 %24)
  %26 = load i32, i32* @ISP1760_CTRL_SETUP, align 4
  %27 = load %struct.isp1760_udc*, %struct.isp1760_udc** %5, align 8
  %28 = getelementptr inbounds %struct.isp1760_udc, %struct.isp1760_udc* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  ret void
}

declare dso_local i32 @isp1760_udc_write(%struct.isp1760_udc*, i32, i32) #1

declare dso_local i32 @DC_ENDPIDX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
