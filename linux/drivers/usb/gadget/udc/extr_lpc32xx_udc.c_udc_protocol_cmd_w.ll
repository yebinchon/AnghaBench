; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_lpc32xx_udc.c_udc_protocol_cmd_w.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_lpc32xx_udc.c_udc_protocol_cmd_w.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpc32xx_udc = type { i32 }

@USBD_CCEMPTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpc32xx_udc*, i32)* @udc_protocol_cmd_w to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udc_protocol_cmd_w(%struct.lpc32xx_udc* %0, i32 %1) #0 {
  %3 = alloca %struct.lpc32xx_udc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.lpc32xx_udc* %0, %struct.lpc32xx_udc** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %8 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %3, align 8
  %9 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @USBD_DEVINTST(i32 %10)
  %12 = call i32 @readl(i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  br label %14

14:                                               ; preds = %51, %2
  %15 = load i32, i32* %5, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %53

17:                                               ; preds = %14
  %18 = load i32, i32* @USBD_CCEMPTY, align 4
  %19 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %3, align 8
  %20 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @USBD_DEVINTCLR(i32 %21)
  %23 = call i32 @writel(i32 %18, i32 %22)
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %3, align 8
  %26 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @USBD_CMDCODE(i32 %27)
  %29 = call i32 @writel(i32 %24, i32 %28)
  store i32 10000, i32* %6, align 4
  br label %30

30:                                               ; preds = %44, %17
  %31 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %3, align 8
  %32 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @USBD_DEVINTST(i32 %33)
  %35 = call i32 @readl(i32 %34)
  %36 = load i32, i32* @USBD_CCEMPTY, align 4
  %37 = and i32 %35, %36
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %30
  %40 = load i32, i32* %6, align 4
  %41 = icmp sgt i32 %40, 0
  br label %42

42:                                               ; preds = %39, %30
  %43 = phi i1 [ false, %30 ], [ %41, %39 ]
  br i1 %43, label %44, label %47

44:                                               ; preds = %42
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %6, align 4
  br label %30

47:                                               ; preds = %42
  %48 = load i32, i32* %6, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store i32 1, i32* %5, align 4
  br label %51

51:                                               ; preds = %50, %47
  %52 = call i32 (...) @cpu_relax()
  br label %14

53:                                               ; preds = %14
  ret void
}

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @USBD_DEVINTST(i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @USBD_DEVINTCLR(i32) #1

declare dso_local i32 @USBD_CMDCODE(i32) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
