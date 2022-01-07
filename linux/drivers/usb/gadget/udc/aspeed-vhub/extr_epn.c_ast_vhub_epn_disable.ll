; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/aspeed-vhub/extr_epn.c_ast_vhub_epn_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/aspeed-vhub/extr_epn.c_ast_vhub_epn_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ep = type { i32 }
%struct.ast_vhub_ep = type { %struct.TYPE_4__, %struct.TYPE_3__, %struct.ast_vhub* }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32, i32, i64 }
%struct.ast_vhub = type { i32, i64 }

@.str = private unnamed_addr constant [13 x i8] c"Disabling !\0A\00", align 1
@AST_VHUB_EP_CONFIG = common dso_local global i64 0, align 8
@AST_VHUB_EP_ACK_IER = common dso_local global i64 0, align 8
@AST_VHUB_EP_ACK_ISR = common dso_local global i64 0, align 8
@ESHUTDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ep*)* @ast_vhub_epn_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ast_vhub_epn_disable(%struct.usb_ep* %0) #0 {
  %2 = alloca %struct.usb_ep*, align 8
  %3 = alloca %struct.ast_vhub_ep*, align 8
  %4 = alloca %struct.ast_vhub*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.usb_ep* %0, %struct.usb_ep** %2, align 8
  %8 = load %struct.usb_ep*, %struct.usb_ep** %2, align 8
  %9 = call %struct.ast_vhub_ep* @to_ast_ep(%struct.usb_ep* %8)
  store %struct.ast_vhub_ep* %9, %struct.ast_vhub_ep** %3, align 8
  %10 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %3, align 8
  %11 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %10, i32 0, i32 2
  %12 = load %struct.ast_vhub*, %struct.ast_vhub** %11, align 8
  store %struct.ast_vhub* %12, %struct.ast_vhub** %4, align 8
  %13 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %3, align 8
  %14 = call i32 @EPDBG(%struct.ast_vhub_ep* %13, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.ast_vhub*, %struct.ast_vhub** %4, align 8
  %16 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %15, i32 0, i32 0
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %3, align 8
  %20 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store i32 0, i32* %21, align 8
  %22 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %3, align 8
  %23 = call i32 @ast_vhub_stop_active_req(%struct.ast_vhub_ep* %22, i32 0)
  %24 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %3, align 8
  %25 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @AST_VHUB_EP_CONFIG, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @writel(i32 0, i64 %29)
  %31 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %3, align 8
  %32 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @VHUB_EP_IRQ(i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load %struct.ast_vhub*, %struct.ast_vhub** %4, align 8
  %37 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @AST_VHUB_EP_ACK_IER, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @readl(i64 %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %6, align 4
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %7, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.ast_vhub*, %struct.ast_vhub** %4, align 8
  %48 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @AST_VHUB_EP_ACK_IER, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @writel(i32 %46, i64 %51)
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.ast_vhub*, %struct.ast_vhub** %4, align 8
  %55 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @AST_VHUB_EP_ACK_ISR, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @writel(i32 %53, i64 %58)
  %60 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %3, align 8
  %61 = load i32, i32* @ESHUTDOWN, align 4
  %62 = sub nsw i32 0, %61
  %63 = call i32 @ast_vhub_nuke(%struct.ast_vhub_ep* %60, i32 %62)
  %64 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %3, align 8
  %65 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  store i32* null, i32** %66, align 8
  %67 = load %struct.ast_vhub*, %struct.ast_vhub** %4, align 8
  %68 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %67, i32 0, i32 0
  %69 = load i64, i64* %5, align 8
  %70 = call i32 @spin_unlock_irqrestore(i32* %68, i64 %69)
  ret i32 0
}

declare dso_local %struct.ast_vhub_ep* @to_ast_ep(%struct.usb_ep*) #1

declare dso_local i32 @EPDBG(%struct.ast_vhub_ep*, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ast_vhub_stop_active_req(%struct.ast_vhub_ep*, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @VHUB_EP_IRQ(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @ast_vhub_nuke(%struct.ast_vhub_ep*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
