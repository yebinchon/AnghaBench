; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_atmel_usba_udc.c_submit_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_atmel_usba_udc.c_submit_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usba_ep = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.usba_request = type { i32, i64, i32, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i64, i32, i64, i64 }

@DBG_QUEUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"%s: submit_request: req %p (length %d)\0A\00", align 1
@CTL_ENB = common dso_local global i32 0, align 4
@USBA_TX_PK_RDY = common dso_local global i32 0, align 4
@USBA_SHORT_PACKET = common dso_local global i32 0, align 4
@CTL_DIS = common dso_local global i32 0, align 4
@ADDRESS = common dso_local global i32 0, align 4
@CONTROL = common dso_local global i32 0, align 4
@USBA_TX_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usba_ep*, %struct.usba_request*)* @submit_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @submit_request(%struct.usba_ep* %0, %struct.usba_request* %1) #0 {
  %3 = alloca %struct.usba_ep*, align 8
  %4 = alloca %struct.usba_request*, align 8
  store %struct.usba_ep* %0, %struct.usba_ep** %3, align 8
  store %struct.usba_request* %1, %struct.usba_request** %4, align 8
  %5 = load i32, i32* @DBG_QUEUE, align 4
  %6 = load %struct.usba_ep*, %struct.usba_ep** %3, align 8
  %7 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.usba_request*, %struct.usba_request** %4, align 8
  %11 = load %struct.usba_request*, %struct.usba_request** %4, align 8
  %12 = getelementptr inbounds %struct.usba_request, %struct.usba_request* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @DBG(i32 %5, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %9, %struct.usba_request* %10, i64 %14)
  %16 = load %struct.usba_request*, %struct.usba_request** %4, align 8
  %17 = getelementptr inbounds %struct.usba_request, %struct.usba_request* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 3
  store i64 0, i64* %18, align 8
  %19 = load %struct.usba_request*, %struct.usba_request** %4, align 8
  %20 = getelementptr inbounds %struct.usba_request, %struct.usba_request* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = load %struct.usba_request*, %struct.usba_request** %4, align 8
  %22 = getelementptr inbounds %struct.usba_request, %struct.usba_request* %21, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %66

25:                                               ; preds = %2
  %26 = load %struct.usba_request*, %struct.usba_request** %4, align 8
  %27 = getelementptr inbounds %struct.usba_request, %struct.usba_request* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %25
  %32 = load %struct.usba_ep*, %struct.usba_ep** %3, align 8
  %33 = load i32, i32* @CTL_ENB, align 4
  %34 = load i32, i32* @USBA_TX_PK_RDY, align 4
  %35 = call i32 @usba_ep_writel(%struct.usba_ep* %32, i32 %33, i32 %34)
  br label %103

36:                                               ; preds = %25
  %37 = load %struct.usba_request*, %struct.usba_request** %4, align 8
  %38 = getelementptr inbounds %struct.usba_request, %struct.usba_request* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  %43 = load %struct.usba_ep*, %struct.usba_ep** %3, align 8
  %44 = load i32, i32* @CTL_ENB, align 4
  %45 = load i32, i32* @USBA_SHORT_PACKET, align 4
  %46 = call i32 @usba_ep_writel(%struct.usba_ep* %43, i32 %44, i32 %45)
  br label %52

47:                                               ; preds = %36
  %48 = load %struct.usba_ep*, %struct.usba_ep** %3, align 8
  %49 = load i32, i32* @CTL_DIS, align 4
  %50 = load i32, i32* @USBA_SHORT_PACKET, align 4
  %51 = call i32 @usba_ep_writel(%struct.usba_ep* %48, i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %47, %42
  %53 = load %struct.usba_ep*, %struct.usba_ep** %3, align 8
  %54 = load i32, i32* @ADDRESS, align 4
  %55 = load %struct.usba_request*, %struct.usba_request** %4, align 8
  %56 = getelementptr inbounds %struct.usba_request, %struct.usba_request* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @usba_dma_writel(%struct.usba_ep* %53, i32 %54, i32 %58)
  %60 = load %struct.usba_ep*, %struct.usba_ep** %3, align 8
  %61 = load i32, i32* @CONTROL, align 4
  %62 = load %struct.usba_request*, %struct.usba_request** %4, align 8
  %63 = getelementptr inbounds %struct.usba_request, %struct.usba_request* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @usba_dma_writel(%struct.usba_ep* %60, i32 %61, i32 %64)
  br label %103

66:                                               ; preds = %2
  %67 = load %struct.usba_ep*, %struct.usba_ep** %3, align 8
  %68 = load %struct.usba_request*, %struct.usba_request** %4, align 8
  %69 = call i32 @next_fifo_transaction(%struct.usba_ep* %67, %struct.usba_request* %68)
  %70 = load %struct.usba_request*, %struct.usba_request** %4, align 8
  %71 = getelementptr inbounds %struct.usba_request, %struct.usba_request* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %88

74:                                               ; preds = %66
  %75 = load %struct.usba_ep*, %struct.usba_ep** %3, align 8
  %76 = load i32, i32* @CTL_DIS, align 4
  %77 = load i32, i32* @USBA_TX_PK_RDY, align 4
  %78 = call i32 @usba_ep_writel(%struct.usba_ep* %75, i32 %76, i32 %77)
  %79 = load %struct.usba_ep*, %struct.usba_ep** %3, align 8
  %80 = call i64 @ep_is_control(%struct.usba_ep* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %74
  %83 = load %struct.usba_ep*, %struct.usba_ep** %3, align 8
  %84 = load i32, i32* @CTL_ENB, align 4
  %85 = load i32, i32* @USBA_TX_COMPLETE, align 4
  %86 = call i32 @usba_ep_writel(%struct.usba_ep* %83, i32 %84, i32 %85)
  br label %87

87:                                               ; preds = %82, %74
  br label %102

88:                                               ; preds = %66
  %89 = load %struct.usba_ep*, %struct.usba_ep** %3, align 8
  %90 = call i64 @ep_is_control(%struct.usba_ep* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %88
  %93 = load %struct.usba_ep*, %struct.usba_ep** %3, align 8
  %94 = load i32, i32* @CTL_DIS, align 4
  %95 = load i32, i32* @USBA_TX_COMPLETE, align 4
  %96 = call i32 @usba_ep_writel(%struct.usba_ep* %93, i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %92, %88
  %98 = load %struct.usba_ep*, %struct.usba_ep** %3, align 8
  %99 = load i32, i32* @CTL_ENB, align 4
  %100 = load i32, i32* @USBA_TX_PK_RDY, align 4
  %101 = call i32 @usba_ep_writel(%struct.usba_ep* %98, i32 %99, i32 %100)
  br label %102

102:                                              ; preds = %97, %87
  br label %103

103:                                              ; preds = %31, %102, %52
  ret void
}

declare dso_local i32 @DBG(i32, i8*, i32, %struct.usba_request*, i64) #1

declare dso_local i32 @usba_ep_writel(%struct.usba_ep*, i32, i32) #1

declare dso_local i32 @usba_dma_writel(%struct.usba_ep*, i32, i32) #1

declare dso_local i32 @next_fifo_transaction(%struct.usba_ep*, %struct.usba_request*) #1

declare dso_local i64 @ep_is_control(%struct.usba_ep*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
