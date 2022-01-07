; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_bcm63xx_udc.c_bcm63xx_ep_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_bcm63xx_udc.c_bcm63xx_ep_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ep = type { i64, i32, %struct.usb_endpoint_descriptor* }
%struct.usb_endpoint_descriptor = type { i32 }
%struct.bcm63xx_ep = type { i32, i64, i32, %struct.iudma_ch*, %struct.bcm63xx_udc* }
%struct.iudma_ch = type { i32 }
%struct.bcm63xx_udc = type { i32, i32, i32 }

@bcm63xx_ep0name = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ESHUTDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ep*, %struct.usb_endpoint_descriptor*)* @bcm63xx_ep_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm63xx_ep_enable(%struct.usb_ep* %0, %struct.usb_endpoint_descriptor* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_ep*, align 8
  %5 = alloca %struct.usb_endpoint_descriptor*, align 8
  %6 = alloca %struct.bcm63xx_ep*, align 8
  %7 = alloca %struct.bcm63xx_udc*, align 8
  %8 = alloca %struct.iudma_ch*, align 8
  %9 = alloca i64, align 8
  store %struct.usb_ep* %0, %struct.usb_ep** %4, align 8
  store %struct.usb_endpoint_descriptor* %1, %struct.usb_endpoint_descriptor** %5, align 8
  %10 = load %struct.usb_ep*, %struct.usb_ep** %4, align 8
  %11 = call %struct.bcm63xx_ep* @our_ep(%struct.usb_ep* %10)
  store %struct.bcm63xx_ep* %11, %struct.bcm63xx_ep** %6, align 8
  %12 = load %struct.bcm63xx_ep*, %struct.bcm63xx_ep** %6, align 8
  %13 = getelementptr inbounds %struct.bcm63xx_ep, %struct.bcm63xx_ep* %12, i32 0, i32 4
  %14 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %13, align 8
  store %struct.bcm63xx_udc* %14, %struct.bcm63xx_udc** %7, align 8
  %15 = load %struct.bcm63xx_ep*, %struct.bcm63xx_ep** %6, align 8
  %16 = getelementptr inbounds %struct.bcm63xx_ep, %struct.bcm63xx_ep* %15, i32 0, i32 3
  %17 = load %struct.iudma_ch*, %struct.iudma_ch** %16, align 8
  store %struct.iudma_ch* %17, %struct.iudma_ch** %8, align 8
  %18 = load %struct.usb_ep*, %struct.usb_ep** %4, align 8
  %19 = icmp ne %struct.usb_ep* %18, null
  br i1 %19, label %20, label %29

20:                                               ; preds = %2
  %21 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %22 = icmp ne %struct.usb_endpoint_descriptor* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load %struct.usb_ep*, %struct.usb_ep** %4, align 8
  %25 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @bcm63xx_ep0name, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %23, %20, %2
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %91

32:                                               ; preds = %23
  %33 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %7, align 8
  %34 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* @ESHUTDOWN, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %91

40:                                               ; preds = %32
  %41 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %7, align 8
  %42 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %41, i32 0, i32 0
  %43 = load i64, i64* %9, align 8
  %44 = call i32 @spin_lock_irqsave(i32* %42, i64 %43)
  %45 = load %struct.iudma_ch*, %struct.iudma_ch** %8, align 8
  %46 = getelementptr inbounds %struct.iudma_ch, %struct.iudma_ch* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %40
  %50 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %7, align 8
  %51 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %50, i32 0, i32 0
  %52 = load i64, i64* %9, align 8
  %53 = call i32 @spin_unlock_irqrestore(i32* %51, i64 %52)
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %91

56:                                               ; preds = %40
  %57 = load %struct.iudma_ch*, %struct.iudma_ch** %8, align 8
  %58 = getelementptr inbounds %struct.iudma_ch, %struct.iudma_ch* %57, i32 0, i32 0
  store i32 1, i32* %58, align 4
  %59 = load %struct.bcm63xx_ep*, %struct.bcm63xx_ep** %6, align 8
  %60 = getelementptr inbounds %struct.bcm63xx_ep, %struct.bcm63xx_ep* %59, i32 0, i32 2
  %61 = call i32 @list_empty(i32* %60)
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  %65 = call i32 @BUG_ON(i32 %64)
  %66 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %7, align 8
  %67 = load %struct.iudma_ch*, %struct.iudma_ch** %8, align 8
  %68 = call i32 @iudma_reset_channel(%struct.bcm63xx_udc* %66, %struct.iudma_ch* %67)
  %69 = load %struct.bcm63xx_ep*, %struct.bcm63xx_ep** %6, align 8
  %70 = getelementptr inbounds %struct.bcm63xx_ep, %struct.bcm63xx_ep* %69, i32 0, i32 1
  store i64 0, i64* %70, align 8
  %71 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %7, align 8
  %72 = load %struct.bcm63xx_ep*, %struct.bcm63xx_ep** %6, align 8
  %73 = call i32 @bcm63xx_set_stall(%struct.bcm63xx_udc* %71, %struct.bcm63xx_ep* %72, i32 0)
  %74 = load %struct.bcm63xx_ep*, %struct.bcm63xx_ep** %6, align 8
  %75 = getelementptr inbounds %struct.bcm63xx_ep, %struct.bcm63xx_ep* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %7, align 8
  %78 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %77, i32 0, i32 1
  %79 = call i32 @clear_bit(i32 %76, i32* %78)
  %80 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %81 = load %struct.usb_ep*, %struct.usb_ep** %4, align 8
  %82 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %81, i32 0, i32 2
  store %struct.usb_endpoint_descriptor* %80, %struct.usb_endpoint_descriptor** %82, align 8
  %83 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %84 = call i32 @usb_endpoint_maxp(%struct.usb_endpoint_descriptor* %83)
  %85 = load %struct.usb_ep*, %struct.usb_ep** %4, align 8
  %86 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 8
  %87 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %7, align 8
  %88 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %87, i32 0, i32 0
  %89 = load i64, i64* %9, align 8
  %90 = call i32 @spin_unlock_irqrestore(i32* %88, i64 %89)
  store i32 0, i32* %3, align 4
  br label %91

91:                                               ; preds = %56, %49, %37, %29
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local %struct.bcm63xx_ep* @our_ep(%struct.usb_ep*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @iudma_reset_channel(%struct.bcm63xx_udc*, %struct.iudma_ch*) #1

declare dso_local i32 @bcm63xx_set_stall(%struct.bcm63xx_udc*, %struct.bcm63xx_ep*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @usb_endpoint_maxp(%struct.usb_endpoint_descriptor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
