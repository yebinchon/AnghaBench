; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/aspeed-vhub/extr_dev.c_ast_vhub_dev_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/aspeed-vhub/extr_dev.c_ast_vhub_dev_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ast_vhub_dev = type { i32, i64 }

@AST_VHUB_DEV_ISR = common dso_local global i64 0, align 8
@VHUV_DEV_IRQ_EP0_IN_ACK_STALL = common dso_local global i32 0, align 4
@VHUV_DEV_IRQ_EP0_OUT_ACK_STALL = common dso_local global i32 0, align 4
@VHUV_DEV_IRQ_EP0_SETUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ast_vhub_dev_irq(%struct.ast_vhub_dev* %0) #0 {
  %2 = alloca %struct.ast_vhub_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.ast_vhub_dev* %0, %struct.ast_vhub_dev** %2, align 8
  %4 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %2, align 8
  %5 = getelementptr inbounds %struct.ast_vhub_dev, %struct.ast_vhub_dev* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @AST_VHUB_DEV_ISR, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @readl(i64 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %2, align 8
  %12 = getelementptr inbounds %struct.ast_vhub_dev, %struct.ast_vhub_dev* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @AST_VHUB_DEV_ISR, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @writel(i32 %10, i64 %15)
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @VHUV_DEV_IRQ_EP0_IN_ACK_STALL, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %2, align 8
  %23 = getelementptr inbounds %struct.ast_vhub_dev, %struct.ast_vhub_dev* %22, i32 0, i32 0
  %24 = call i32 @ast_vhub_ep0_handle_ack(i32* %23, i32 1)
  br label %25

25:                                               ; preds = %21, %1
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @VHUV_DEV_IRQ_EP0_OUT_ACK_STALL, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %2, align 8
  %32 = getelementptr inbounds %struct.ast_vhub_dev, %struct.ast_vhub_dev* %31, i32 0, i32 0
  %33 = call i32 @ast_vhub_ep0_handle_ack(i32* %32, i32 0)
  br label %34

34:                                               ; preds = %30, %25
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @VHUV_DEV_IRQ_EP0_SETUP, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %2, align 8
  %41 = getelementptr inbounds %struct.ast_vhub_dev, %struct.ast_vhub_dev* %40, i32 0, i32 0
  %42 = call i32 @ast_vhub_ep0_handle_setup(i32* %41)
  br label %43

43:                                               ; preds = %39, %34
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @ast_vhub_ep0_handle_ack(i32*, i32) #1

declare dso_local i32 @ast_vhub_ep0_handle_setup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
