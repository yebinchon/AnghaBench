; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_pxa25x_udc.c_pio_irq_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_pxa25x_udc.c_pio_irq_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa25x_ep = type { i32, i32 }

@UICR0 = common dso_local global i32 0, align 4
@UICR1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pxa25x_ep*)* @pio_irq_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pio_irq_disable(%struct.pxa25x_ep* %0) #0 {
  %2 = alloca %struct.pxa25x_ep*, align 8
  %3 = alloca i32, align 4
  store %struct.pxa25x_ep* %0, %struct.pxa25x_ep** %2, align 8
  %4 = load %struct.pxa25x_ep*, %struct.pxa25x_ep** %2, align 8
  %5 = getelementptr inbounds %struct.pxa25x_ep, %struct.pxa25x_ep* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = and i32 %6, 15
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp slt i32 %8, 8
  br i1 %9, label %10, label %24

10:                                               ; preds = %1
  %11 = load %struct.pxa25x_ep*, %struct.pxa25x_ep** %2, align 8
  %12 = getelementptr inbounds %struct.pxa25x_ep, %struct.pxa25x_ep* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @UICR0, align 4
  %15 = load %struct.pxa25x_ep*, %struct.pxa25x_ep** %2, align 8
  %16 = getelementptr inbounds %struct.pxa25x_ep, %struct.pxa25x_ep* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @UICR0, align 4
  %19 = call i32 @udc_get_reg(i32 %17, i32 %18)
  %20 = load i32, i32* %3, align 4
  %21 = shl i32 1, %20
  %22 = or i32 %19, %21
  %23 = call i32 @udc_set_reg(i32 %13, i32 %14, i32 %22)
  br label %40

24:                                               ; preds = %1
  %25 = load i32, i32* %3, align 4
  %26 = sub nsw i32 %25, 8
  store i32 %26, i32* %3, align 4
  %27 = load %struct.pxa25x_ep*, %struct.pxa25x_ep** %2, align 8
  %28 = getelementptr inbounds %struct.pxa25x_ep, %struct.pxa25x_ep* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @UICR1, align 4
  %31 = load %struct.pxa25x_ep*, %struct.pxa25x_ep** %2, align 8
  %32 = getelementptr inbounds %struct.pxa25x_ep, %struct.pxa25x_ep* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @UICR1, align 4
  %35 = call i32 @udc_get_reg(i32 %33, i32 %34)
  %36 = load i32, i32* %3, align 4
  %37 = shl i32 1, %36
  %38 = or i32 %35, %37
  %39 = call i32 @udc_set_reg(i32 %29, i32 %30, i32 %38)
  br label %40

40:                                               ; preds = %24, %10
  ret void
}

declare dso_local i32 @udc_set_reg(i32, i32, i32) #1

declare dso_local i32 @udc_get_reg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
