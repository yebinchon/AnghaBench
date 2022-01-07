; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_atmel_usba_udc.c_usba_ep_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_atmel_usba_udc.c_usba_ep_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ep = type { i32 }
%struct.usb_request = type { i64, i32, i32 }
%struct.usba_request = type { i32, i64, i64, i64 }
%struct.usba_ep = type { i64, i64, i32, %struct.TYPE_4__, i64, %struct.usba_udc* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.usba_udc = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64 }

@DBG_GADGET = common dso_local global i32 0, align 4
@DBG_QUEUE = common dso_local global i32 0, align 4
@DBG_REQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"%s: queue req %p, len %u\0A\00", align 1
@USB_SPEED_UNKNOWN = common dso_local global i64 0, align 8
@ESHUTDOWN = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@DATA_STAGE_IN = common dso_local global i64 0, align 8
@STATUS_STAGE_IN = common dso_local global i64 0, align 8
@CTL_ENB = common dso_local global i32 0, align 4
@USBA_TX_PK_RDY = common dso_local global i32 0, align 4
@USBA_RX_BK_RDY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ep*, %struct.usb_request*, i32)* @usba_ep_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usba_ep_queue(%struct.usb_ep* %0, %struct.usb_request* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_ep*, align 8
  %6 = alloca %struct.usb_request*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.usba_request*, align 8
  %9 = alloca %struct.usba_ep*, align 8
  %10 = alloca %struct.usba_udc*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.usb_ep* %0, %struct.usb_ep** %5, align 8
  store %struct.usb_request* %1, %struct.usb_request** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %14 = call %struct.usba_request* @to_usba_req(%struct.usb_request* %13)
  store %struct.usba_request* %14, %struct.usba_request** %8, align 8
  %15 = load %struct.usb_ep*, %struct.usb_ep** %5, align 8
  %16 = call %struct.usba_ep* @to_usba_ep(%struct.usb_ep* %15)
  store %struct.usba_ep* %16, %struct.usba_ep** %9, align 8
  %17 = load %struct.usba_ep*, %struct.usba_ep** %9, align 8
  %18 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %17, i32 0, i32 5
  %19 = load %struct.usba_udc*, %struct.usba_udc** %18, align 8
  store %struct.usba_udc* %19, %struct.usba_udc** %10, align 8
  %20 = load i32, i32* @DBG_GADGET, align 4
  %21 = load i32, i32* @DBG_QUEUE, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @DBG_REQ, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.usba_ep*, %struct.usba_ep** %9, align 8
  %26 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.usba_request*, %struct.usba_request** %8, align 8
  %30 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %31 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @DBG(i32 %24, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %28, %struct.usba_request* %29, i32 %32)
  %34 = load %struct.usba_udc*, %struct.usba_udc** %10, align 8
  %35 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %3
  %39 = load %struct.usba_udc*, %struct.usba_udc** %10, align 8
  %40 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @USB_SPEED_UNKNOWN, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %51, label %45

45:                                               ; preds = %38
  %46 = load %struct.usba_ep*, %struct.usba_ep** %9, align 8
  %47 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %45, %38, %3
  %52 = load i32, i32* @ESHUTDOWN, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %136

54:                                               ; preds = %45
  %55 = load %struct.usba_request*, %struct.usba_request** %8, align 8
  %56 = getelementptr inbounds %struct.usba_request, %struct.usba_request* %55, i32 0, i32 3
  store i64 0, i64* %56, align 8
  %57 = load %struct.usba_request*, %struct.usba_request** %8, align 8
  %58 = getelementptr inbounds %struct.usba_request, %struct.usba_request* %57, i32 0, i32 2
  store i64 0, i64* %58, align 8
  %59 = load %struct.usba_request*, %struct.usba_request** %8, align 8
  %60 = getelementptr inbounds %struct.usba_request, %struct.usba_request* %59, i32 0, i32 1
  store i64 0, i64* %60, align 8
  %61 = load i32, i32* @EINPROGRESS, align 4
  %62 = sub nsw i32 0, %61
  %63 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %64 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 8
  %65 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %66 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %65, i32 0, i32 0
  store i64 0, i64* %66, align 8
  %67 = load %struct.usba_ep*, %struct.usba_ep** %9, align 8
  %68 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %67, i32 0, i32 4
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %54
  %72 = load %struct.usba_udc*, %struct.usba_udc** %10, align 8
  %73 = load %struct.usba_ep*, %struct.usba_ep** %9, align 8
  %74 = load %struct.usba_request*, %struct.usba_request** %8, align 8
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @queue_dma(%struct.usba_udc* %72, %struct.usba_ep* %73, %struct.usba_request* %74, i32 %75)
  store i32 %76, i32* %4, align 4
  br label %136

77:                                               ; preds = %54
  %78 = load i32, i32* @ESHUTDOWN, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %12, align 4
  %80 = load %struct.usba_udc*, %struct.usba_udc** %10, align 8
  %81 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %80, i32 0, i32 0
  %82 = load i64, i64* %11, align 8
  %83 = call i32 @spin_lock_irqsave(i32* %81, i64 %82)
  %84 = load %struct.usba_ep*, %struct.usba_ep** %9, align 8
  %85 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %130

89:                                               ; preds = %77
  %90 = load %struct.usba_request*, %struct.usba_request** %8, align 8
  %91 = getelementptr inbounds %struct.usba_request, %struct.usba_request* %90, i32 0, i32 0
  %92 = load %struct.usba_ep*, %struct.usba_ep** %9, align 8
  %93 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %92, i32 0, i32 2
  %94 = call i32 @list_add_tail(i32* %91, i32* %93)
  %95 = load %struct.usba_ep*, %struct.usba_ep** %9, align 8
  %96 = call i64 @ep_is_control(%struct.usba_ep* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %103, label %98

98:                                               ; preds = %89
  %99 = load %struct.usba_ep*, %struct.usba_ep** %9, align 8
  %100 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %119, label %103

103:                                              ; preds = %98, %89
  %104 = load %struct.usba_ep*, %struct.usba_ep** %9, align 8
  %105 = call i64 @ep_is_control(%struct.usba_ep* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %124

107:                                              ; preds = %103
  %108 = load %struct.usba_ep*, %struct.usba_ep** %9, align 8
  %109 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @DATA_STAGE_IN, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %119, label %113

113:                                              ; preds = %107
  %114 = load %struct.usba_ep*, %struct.usba_ep** %9, align 8
  %115 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @STATUS_STAGE_IN, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %124

119:                                              ; preds = %113, %107, %98
  %120 = load %struct.usba_ep*, %struct.usba_ep** %9, align 8
  %121 = load i32, i32* @CTL_ENB, align 4
  %122 = load i32, i32* @USBA_TX_PK_RDY, align 4
  %123 = call i32 @usba_ep_writel(%struct.usba_ep* %120, i32 %121, i32 %122)
  br label %129

124:                                              ; preds = %113, %103
  %125 = load %struct.usba_ep*, %struct.usba_ep** %9, align 8
  %126 = load i32, i32* @CTL_ENB, align 4
  %127 = load i32, i32* @USBA_RX_BK_RDY, align 4
  %128 = call i32 @usba_ep_writel(%struct.usba_ep* %125, i32 %126, i32 %127)
  br label %129

129:                                              ; preds = %124, %119
  store i32 0, i32* %12, align 4
  br label %130

130:                                              ; preds = %129, %77
  %131 = load %struct.usba_udc*, %struct.usba_udc** %10, align 8
  %132 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %131, i32 0, i32 0
  %133 = load i64, i64* %11, align 8
  %134 = call i32 @spin_unlock_irqrestore(i32* %132, i64 %133)
  %135 = load i32, i32* %12, align 4
  store i32 %135, i32* %4, align 4
  br label %136

136:                                              ; preds = %130, %71, %51
  %137 = load i32, i32* %4, align 4
  ret i32 %137
}

declare dso_local %struct.usba_request* @to_usba_req(%struct.usb_request*) #1

declare dso_local %struct.usba_ep* @to_usba_ep(%struct.usb_ep*) #1

declare dso_local i32 @DBG(i32, i8*, i32, %struct.usba_request*, i32) #1

declare dso_local i32 @queue_dma(%struct.usba_udc*, %struct.usba_ep*, %struct.usba_request*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i64 @ep_is_control(%struct.usba_ep*) #1

declare dso_local i32 @usba_ep_writel(%struct.usba_ep*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
