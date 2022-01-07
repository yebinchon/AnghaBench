; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/aspeed-vhub/extr_core.c_ast_vhub_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/aspeed-vhub/extr_core.c_ast_vhub_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.ast_vhub = type { i32*, i32, i32, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@AST_VHUB_NUM_PORTS = common dso_local global i32 0, align 4
@AST_VHUB_IER = common dso_local global i64 0, align 8
@VHUB_IRQ_ACK_ALL = common dso_local global i32 0, align 4
@AST_VHUB_ISR = common dso_local global i64 0, align 8
@VHUB_CTRL_PHY_CLK = common dso_local global i32 0, align 4
@VHUB_CTRL_PHY_RESET_DIS = common dso_local global i32 0, align 4
@AST_VHUB_CTRL = common dso_local global i64 0, align 8
@AST_VHUB_EP0_MAX_PACKET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ast_vhub_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ast_vhub_remove(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.ast_vhub*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = call %struct.ast_vhub* @platform_get_drvdata(%struct.platform_device* %7)
  store %struct.ast_vhub* %8, %struct.ast_vhub** %4, align 8
  %9 = load %struct.ast_vhub*, %struct.ast_vhub** %4, align 8
  %10 = icmp ne %struct.ast_vhub* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.ast_vhub*, %struct.ast_vhub** %4, align 8
  %13 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %12, i32 0, i32 4
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11, %1
  store i32 0, i32* %2, align 4
  br label %96

17:                                               ; preds = %11
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %31, %17
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @AST_VHUB_NUM_PORTS, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %18
  %23 = load %struct.ast_vhub*, %struct.ast_vhub** %4, align 8
  %24 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %23, i32 0, i32 5
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = call i32 @ast_vhub_del_dev(i32* %29)
  br label %31

31:                                               ; preds = %22
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %6, align 4
  br label %18

34:                                               ; preds = %18
  %35 = load %struct.ast_vhub*, %struct.ast_vhub** %4, align 8
  %36 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %35, i32 0, i32 2
  %37 = load i64, i64* %5, align 8
  %38 = call i32 @spin_lock_irqsave(i32* %36, i64 %37)
  %39 = load %struct.ast_vhub*, %struct.ast_vhub** %4, align 8
  %40 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %39, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @AST_VHUB_IER, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @writel(i32 0, i64 %43)
  %45 = load i32, i32* @VHUB_IRQ_ACK_ALL, align 4
  %46 = load %struct.ast_vhub*, %struct.ast_vhub** %4, align 8
  %47 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %46, i32 0, i32 4
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @AST_VHUB_ISR, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @writel(i32 %45, i64 %50)
  %52 = load i32, i32* @VHUB_CTRL_PHY_CLK, align 4
  %53 = load i32, i32* @VHUB_CTRL_PHY_RESET_DIS, align 4
  %54 = or i32 %52, %53
  %55 = load %struct.ast_vhub*, %struct.ast_vhub** %4, align 8
  %56 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %55, i32 0, i32 4
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @AST_VHUB_CTRL, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @writel(i32 %54, i64 %59)
  %61 = load %struct.ast_vhub*, %struct.ast_vhub** %4, align 8
  %62 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %34
  %66 = load %struct.ast_vhub*, %struct.ast_vhub** %4, align 8
  %67 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @clk_disable_unprepare(i64 %68)
  br label %70

70:                                               ; preds = %65, %34
  %71 = load %struct.ast_vhub*, %struct.ast_vhub** %4, align 8
  %72 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %71, i32 0, i32 2
  %73 = load i64, i64* %5, align 8
  %74 = call i32 @spin_unlock_irqrestore(i32* %72, i64 %73)
  %75 = load %struct.ast_vhub*, %struct.ast_vhub** %4, align 8
  %76 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %93

79:                                               ; preds = %70
  %80 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %81 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %80, i32 0, i32 0
  %82 = load i32, i32* @AST_VHUB_EP0_MAX_PACKET, align 4
  %83 = load i32, i32* @AST_VHUB_NUM_PORTS, align 4
  %84 = add nsw i32 %83, 1
  %85 = mul nsw i32 %82, %84
  %86 = load %struct.ast_vhub*, %struct.ast_vhub** %4, align 8
  %87 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = load %struct.ast_vhub*, %struct.ast_vhub** %4, align 8
  %90 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @dma_free_coherent(i32* %81, i32 %85, i32* %88, i32 %91)
  br label %93

93:                                               ; preds = %79, %70
  %94 = load %struct.ast_vhub*, %struct.ast_vhub** %4, align 8
  %95 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %94, i32 0, i32 0
  store i32* null, i32** %95, align 8
  store i32 0, i32* %2, align 4
  br label %96

96:                                               ; preds = %93, %16
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local %struct.ast_vhub* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @ast_vhub_del_dev(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @clk_disable_unprepare(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
