; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_lpc32xx_udc.c_uda_clear_hwepint.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_lpc32xx_udc.c_uda_clear_hwepint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpc32xx_udc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpc32xx_udc*, i32)* @uda_clear_hwepint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uda_clear_hwepint(%struct.lpc32xx_udc* %0, i32 %1) #0 {
  %3 = alloca %struct.lpc32xx_udc*, align 8
  %4 = alloca i32, align 4
  store %struct.lpc32xx_udc* %0, %struct.lpc32xx_udc** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = shl i32 1, %5
  %7 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %3, align 8
  %8 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @USBD_EPINTCLR(i32 %9)
  %11 = call i32 @writel(i32 %6, i32 %10)
  ret void
}

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @USBD_EPINTCLR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
