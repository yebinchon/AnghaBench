; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_lpc32xx_udc.c_pullup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_lpc32xx_udc.c_pullup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpc32xx_udc = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpc32xx_udc*, i32)* @pullup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pullup(%struct.lpc32xx_udc* %0, i32 %1) #0 {
  %3 = alloca %struct.lpc32xx_udc*, align 8
  %4 = alloca i32, align 4
  store %struct.lpc32xx_udc* %0, %struct.lpc32xx_udc** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %3, align 8
  %6 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %31

10:                                               ; preds = %2
  %11 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %3, align 8
  %12 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %10
  %16 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %3, align 8
  %17 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15, %10
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %20, %15
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %3, align 8
  %24 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %22, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @isp1301_pullup_enable(%struct.lpc32xx_udc* %28, i32 %29, i32 0)
  br label %31

31:                                               ; preds = %9, %27, %21
  ret void
}

declare dso_local i32 @isp1301_pullup_enable(%struct.lpc32xx_udc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
