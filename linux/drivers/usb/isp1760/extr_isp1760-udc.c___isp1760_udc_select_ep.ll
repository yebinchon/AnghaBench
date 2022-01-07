; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/isp1760/extr_isp1760-udc.c___isp1760_udc_select_ep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/isp1760/extr_isp1760-udc.c___isp1760_udc_select_ep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp1760_ep = type { i32, i32 }

@DC_EPINDEX = common dso_local global i32 0, align 4
@USB_ENDPOINT_NUMBER_MASK = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@DC_EPDIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isp1760_ep*, i32)* @__isp1760_udc_select_ep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__isp1760_udc_select_ep(%struct.isp1760_ep* %0, i32 %1) #0 {
  %3 = alloca %struct.isp1760_ep*, align 8
  %4 = alloca i32, align 4
  store %struct.isp1760_ep* %0, %struct.isp1760_ep** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.isp1760_ep*, %struct.isp1760_ep** %3, align 8
  %6 = getelementptr inbounds %struct.isp1760_ep, %struct.isp1760_ep* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @DC_EPINDEX, align 4
  %9 = load %struct.isp1760_ep*, %struct.isp1760_ep** %3, align 8
  %10 = getelementptr inbounds %struct.isp1760_ep, %struct.isp1760_ep* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @USB_ENDPOINT_NUMBER_MASK, align 4
  %13 = and i32 %11, %12
  %14 = call i32 @DC_ENDPIDX(i32 %13)
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @USB_DIR_IN, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @DC_EPDIR, align 4
  br label %21

20:                                               ; preds = %2
  br label %21

21:                                               ; preds = %20, %18
  %22 = phi i32 [ %19, %18 ], [ 0, %20 ]
  %23 = or i32 %14, %22
  %24 = call i32 @isp1760_udc_write(i32 %7, i32 %8, i32 %23)
  ret void
}

declare dso_local i32 @isp1760_udc_write(i32, i32, i32) #1

declare dso_local i32 @DC_ENDPIDX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
