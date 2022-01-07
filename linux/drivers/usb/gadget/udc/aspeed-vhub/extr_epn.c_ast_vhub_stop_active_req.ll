; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/aspeed-vhub/extr_epn.c_ast_vhub_stop_active_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/aspeed-vhub/extr_epn.c_ast_vhub_stop_active_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ast_vhub_ep = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i64, i32, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@AST_VHUB_EP_DMA_CTLSTAT = common dso_local global i64 0, align 8
@EP_DMA_PROC_RX_IDLE = common dso_local global i32 0, align 4
@EP_DMA_PROC_TX_IDLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Timeout waiting for DMA\0A\00", align 1
@AST_VHUB_EP_DESC_STATUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ast_vhub_ep*, i32)* @ast_vhub_stop_active_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ast_vhub_stop_active_req(%struct.ast_vhub_ep* %0, i32 %1) #0 {
  %3 = alloca %struct.ast_vhub_ep*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ast_vhub_ep* %0, %struct.ast_vhub_ep** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %3, align 8
  %9 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @AST_VHUB_EP_DMA_CTLSTAT, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @writel(i32 0, i64 %13)
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %38, %2
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %16, 1000
  br i1 %17, label %18, label %41

18:                                               ; preds = %15
  %19 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %3, align 8
  %20 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @AST_VHUB_EP_DMA_CTLSTAT, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @readl(i64 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @VHUB_EP_DMA_PROC_STATUS(i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @EP_DMA_PROC_RX_IDLE, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %18
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @EP_DMA_PROC_TX_IDLE, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31, %18
  br label %41

36:                                               ; preds = %31
  %37 = call i32 @udelay(i32 1)
  br label %38

38:                                               ; preds = %36
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %7, align 4
  br label %15

41:                                               ; preds = %35, %15
  %42 = load i32, i32* %7, align 4
  %43 = icmp sge i32 %42, 1000
  br i1 %43, label %44, label %52

44:                                               ; preds = %41
  %45 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %3, align 8
  %46 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %45, i32 0, i32 1
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = call i32 @dev_warn(i32* %50, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %52

52:                                               ; preds = %44, %41
  %53 = load i32, i32* %4, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %52
  br label %105

56:                                               ; preds = %52
  %57 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %3, align 8
  %58 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %93

62:                                               ; preds = %56
  %63 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %3, align 8
  %64 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @VHUB_EP_DMA_SET_RPTR(i32 %66)
  %68 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %3, align 8
  %69 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @VHUB_EP_DMA_SET_CPU_WPTR(i32 %71)
  %73 = or i32 %67, %72
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %3, align 8
  %76 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @AST_VHUB_EP_DESC_STATUS, align 8
  %80 = add nsw i64 %78, %79
  %81 = call i32 @writel(i32 %74, i64 %80)
  %82 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %3, align 8
  %83 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %3, align 8
  %87 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @AST_VHUB_EP_DMA_CTLSTAT, align 8
  %91 = add nsw i64 %89, %90
  %92 = call i32 @writel(i32 %85, i64 %91)
  br label %105

93:                                               ; preds = %56
  %94 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %3, align 8
  %95 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %3, align 8
  %99 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @AST_VHUB_EP_DMA_CTLSTAT, align 8
  %103 = add nsw i64 %101, %102
  %104 = call i32 @writel(i32 %97, i64 %103)
  br label %105

105:                                              ; preds = %55, %93, %62
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @VHUB_EP_DMA_PROC_STATUS(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @VHUB_EP_DMA_SET_RPTR(i32) #1

declare dso_local i32 @VHUB_EP_DMA_SET_CPU_WPTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
