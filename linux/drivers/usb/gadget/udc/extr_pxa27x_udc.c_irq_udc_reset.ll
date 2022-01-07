; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_pxa27x_udc.c_irq_udc_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_pxa27x_udc.c_irq_udc_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa_udc = type { %struct.TYPE_4__, %struct.TYPE_3__, i32, %struct.pxa_ep* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.pxa_ep = type { i32 }

@UDCCR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"USB reset\0A\00", align 1
@UDCISR1 = common dso_local global i32 0, align 4
@UDCISR1_IRRS = common dso_local global i32 0, align 4
@UDCCR_UDA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"USB reset start\0A\00", align 1
@USB_SPEED_FULL = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@UDCCSR0_FTF = common dso_local global i32 0, align 4
@UDCCSR0_OPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pxa_udc*)* @irq_udc_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @irq_udc_reset(%struct.pxa_udc* %0) #0 {
  %2 = alloca %struct.pxa_udc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.pxa_ep*, align 8
  store %struct.pxa_udc* %0, %struct.pxa_udc** %2, align 8
  %5 = load %struct.pxa_udc*, %struct.pxa_udc** %2, align 8
  %6 = load i32, i32* @UDCCR, align 4
  %7 = call i32 @udc_readl(%struct.pxa_udc* %5, i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load %struct.pxa_udc*, %struct.pxa_udc** %2, align 8
  %9 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %8, i32 0, i32 3
  %10 = load %struct.pxa_ep*, %struct.pxa_ep** %9, align 8
  %11 = getelementptr inbounds %struct.pxa_ep, %struct.pxa_ep* %10, i64 0
  store %struct.pxa_ep* %11, %struct.pxa_ep** %4, align 8
  %12 = load %struct.pxa_udc*, %struct.pxa_udc** %2, align 8
  %13 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @dev_info(i32 %14, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.pxa_udc*, %struct.pxa_udc** %2, align 8
  %17 = load i32, i32* @UDCISR1, align 4
  %18 = load i32, i32* @UDCISR1_IRRS, align 4
  %19 = call i32 @udc_writel(%struct.pxa_udc* %16, i32 %17, i32 %18)
  %20 = load %struct.pxa_udc*, %struct.pxa_udc** %2, align 8
  %21 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 8
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @UDCCR_UDA, align 4
  %27 = and i32 %25, %26
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %1
  %30 = load %struct.pxa_udc*, %struct.pxa_udc** %2, align 8
  %31 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @dev_dbg(i32 %32, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %34 = load %struct.pxa_udc*, %struct.pxa_udc** %2, align 8
  %35 = call i32 @stop_activity(%struct.pxa_udc* %34)
  br label %36

36:                                               ; preds = %29, %1
  %37 = load i32, i32* @USB_SPEED_FULL, align 4
  %38 = load %struct.pxa_udc*, %struct.pxa_udc** %2, align 8
  %39 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 4
  %41 = load %struct.pxa_udc*, %struct.pxa_udc** %2, align 8
  %42 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %41, i32 0, i32 0
  %43 = call i32 @memset(%struct.TYPE_4__* %42, i32 0, i32 4)
  %44 = load %struct.pxa_ep*, %struct.pxa_ep** %4, align 8
  %45 = load i32, i32* @EPROTO, align 4
  %46 = sub nsw i32 0, %45
  %47 = call i32 @nuke(%struct.pxa_ep* %44, i32 %46)
  %48 = load %struct.pxa_ep*, %struct.pxa_ep** %4, align 8
  %49 = load i32, i32* @UDCCSR0_FTF, align 4
  %50 = load i32, i32* @UDCCSR0_OPC, align 4
  %51 = or i32 %49, %50
  %52 = call i32 @ep_write_UDCCSR(%struct.pxa_ep* %48, i32 %51)
  %53 = load %struct.pxa_udc*, %struct.pxa_udc** %2, align 8
  %54 = call i32 @ep0_idle(%struct.pxa_udc* %53)
  ret void
}

declare dso_local i32 @udc_readl(%struct.pxa_udc*, i32) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @udc_writel(%struct.pxa_udc*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @stop_activity(%struct.pxa_udc*) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @nuke(%struct.pxa_ep*, i32) #1

declare dso_local i32 @ep_write_UDCCSR(%struct.pxa_ep*, i32) #1

declare dso_local i32 @ep0_idle(%struct.pxa_udc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
