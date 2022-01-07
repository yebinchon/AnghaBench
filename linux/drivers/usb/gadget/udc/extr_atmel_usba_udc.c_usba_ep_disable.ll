; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_atmel_usba_udc.c_usba_ep_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_atmel_usba_udc.c_usba_ep_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ep = type { i32 }
%struct.usba_ep = type { i32, i64, i32, %struct.TYPE_4__, %struct.usba_udc* }
%struct.TYPE_4__ = type { i32*, i32 }
%struct.usba_udc = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@req_list = common dso_local global i32 0, align 4
@DBG_GADGET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"ep_disable: %s\0A\00", align 1
@USB_SPEED_UNKNOWN = common dso_local global i64 0, align 8
@DBG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"ep_disable: %s not enabled\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CONTROL = common dso_local global i32 0, align 4
@ADDRESS = common dso_local global i32 0, align 4
@STATUS = common dso_local global i32 0, align 4
@CTL_DIS = common dso_local global i32 0, align 4
@USBA_EPT_ENABLE = common dso_local global i32 0, align 4
@EPT_INT = common dso_local global i32 0, align 4
@ESHUTDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ep*)* @usba_ep_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usba_ep_disable(%struct.usb_ep* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_ep*, align 8
  %4 = alloca %struct.usba_ep*, align 8
  %5 = alloca %struct.usba_udc*, align 8
  %6 = alloca i64, align 8
  store %struct.usb_ep* %0, %struct.usb_ep** %3, align 8
  %7 = load %struct.usb_ep*, %struct.usb_ep** %3, align 8
  %8 = call %struct.usba_ep* @to_usba_ep(%struct.usb_ep* %7)
  store %struct.usba_ep* %8, %struct.usba_ep** %4, align 8
  %9 = load %struct.usba_ep*, %struct.usba_ep** %4, align 8
  %10 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %9, i32 0, i32 4
  %11 = load %struct.usba_udc*, %struct.usba_udc** %10, align 8
  store %struct.usba_udc* %11, %struct.usba_udc** %5, align 8
  %12 = load i32, i32* @req_list, align 4
  %13 = call i32 @LIST_HEAD(i32 %12)
  %14 = load i32, i32* @DBG_GADGET, align 4
  %15 = load %struct.usba_ep*, %struct.usba_ep** %4, align 8
  %16 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @DBG(i32 %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %21 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %20, i32 0, i32 0
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.usba_ep*, %struct.usba_ep** %4, align 8
  %25 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %50, label %29

29:                                               ; preds = %1
  %30 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %31 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %30, i32 0, i32 0
  %32 = load i64, i64* %6, align 8
  %33 = call i32 @spin_unlock_irqrestore(i32* %31, i64 %32)
  %34 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %35 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @USB_SPEED_UNKNOWN, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %29
  %41 = load i32, i32* @DBG_ERR, align 4
  %42 = load %struct.usba_ep*, %struct.usba_ep** %4, align 8
  %43 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @DBG(i32 %41, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %40, %29
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %92

50:                                               ; preds = %1
  %51 = load %struct.usba_ep*, %struct.usba_ep** %4, align 8
  %52 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  store i32* null, i32** %53, align 8
  %54 = load %struct.usba_ep*, %struct.usba_ep** %4, align 8
  %55 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %54, i32 0, i32 2
  %56 = call i32 @list_splice_init(i32* %55, i32* @req_list)
  %57 = load %struct.usba_ep*, %struct.usba_ep** %4, align 8
  %58 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %50
  %62 = load %struct.usba_ep*, %struct.usba_ep** %4, align 8
  %63 = load i32, i32* @CONTROL, align 4
  %64 = call i32 @usba_dma_writel(%struct.usba_ep* %62, i32 %63, i32 0)
  %65 = load %struct.usba_ep*, %struct.usba_ep** %4, align 8
  %66 = load i32, i32* @ADDRESS, align 4
  %67 = call i32 @usba_dma_writel(%struct.usba_ep* %65, i32 %66, i32 0)
  %68 = load %struct.usba_ep*, %struct.usba_ep** %4, align 8
  %69 = load i32, i32* @STATUS, align 4
  %70 = call i32 @usba_dma_readl(%struct.usba_ep* %68, i32 %69)
  br label %71

71:                                               ; preds = %61, %50
  %72 = load %struct.usba_ep*, %struct.usba_ep** %4, align 8
  %73 = load i32, i32* @CTL_DIS, align 4
  %74 = load i32, i32* @USBA_EPT_ENABLE, align 4
  %75 = call i32 @usba_ep_writel(%struct.usba_ep* %72, i32 %73, i32 %74)
  %76 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %77 = load i32, i32* @EPT_INT, align 4
  %78 = load %struct.usba_ep*, %struct.usba_ep** %4, align 8
  %79 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = shl i32 1, %80
  %82 = call i32 @USBA_BF(i32 %77, i32 %81)
  %83 = call i32 @usba_int_enb_clear(%struct.usba_udc* %76, i32 %82)
  %84 = load %struct.usba_ep*, %struct.usba_ep** %4, align 8
  %85 = load i32, i32* @ESHUTDOWN, align 4
  %86 = sub nsw i32 0, %85
  %87 = call i32 @request_complete_list(%struct.usba_ep* %84, i32* @req_list, i32 %86)
  %88 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %89 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %88, i32 0, i32 0
  %90 = load i64, i64* %6, align 8
  %91 = call i32 @spin_unlock_irqrestore(i32* %89, i64 %90)
  store i32 0, i32* %2, align 4
  br label %92

92:                                               ; preds = %71, %47
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local %struct.usba_ep* @to_usba_ep(%struct.usb_ep*) #1

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @DBG(i32, i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @list_splice_init(i32*, i32*) #1

declare dso_local i32 @usba_dma_writel(%struct.usba_ep*, i32, i32) #1

declare dso_local i32 @usba_dma_readl(%struct.usba_ep*, i32) #1

declare dso_local i32 @usba_ep_writel(%struct.usba_ep*, i32, i32) #1

declare dso_local i32 @usba_int_enb_clear(%struct.usba_udc*, i32) #1

declare dso_local i32 @USBA_BF(i32, i32) #1

declare dso_local i32 @request_complete_list(%struct.usba_ep*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
