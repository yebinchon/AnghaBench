; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_lpc32xx_udc.c_udc_realize_hwep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_lpc32xx_udc.c_udc_realize_hwep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpc32xx_udc = type { i32, i32, i32 }

@USBD_EP_RLZED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"EP not correctly realized in hardware\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpc32xx_udc*, i32, i32)* @udc_realize_hwep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udc_realize_hwep(%struct.lpc32xx_udc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.lpc32xx_udc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.lpc32xx_udc* %0, %struct.lpc32xx_udc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 1000, i32* %7, align 4
  %8 = load i32, i32* @USBD_EP_RLZED, align 4
  %9 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %4, align 8
  %10 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @USBD_DEVINTCLR(i32 %11)
  %13 = call i32 @writel(i32 %8, i32 %12)
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %4, align 8
  %16 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @USBD_EPIND(i32 %17)
  %19 = call i32 @writel(i32 %14, i32 %18)
  %20 = load i32, i32* %5, align 4
  %21 = shl i32 1, %20
  %22 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %4, align 8
  %23 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 4
  %26 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %4, align 8
  %27 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %4, align 8
  %30 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @USBD_REEP(i32 %31)
  %33 = call i32 @writel(i32 %28, i32 %32)
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %4, align 8
  %36 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @USBD_EPMAXPSIZE(i32 %37)
  %39 = call i32 @writel(i32 %34, i32 %38)
  br label %40

40:                                               ; preds = %54, %3
  %41 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %4, align 8
  %42 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @USBD_DEVINTST(i32 %43)
  %45 = call i32 @readl(i32 %44)
  %46 = load i32, i32* @USBD_EP_RLZED, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %40
  %50 = load i32, i32* %7, align 4
  %51 = icmp sgt i32 %50, 0
  br label %52

52:                                               ; preds = %49, %40
  %53 = phi i1 [ false, %40 ], [ %51, %49 ]
  br i1 %53, label %54, label %57

54:                                               ; preds = %52
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %7, align 4
  br label %40

57:                                               ; preds = %52
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %57
  %61 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %4, align 8
  %62 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @dev_dbg(i32 %63, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %65

65:                                               ; preds = %60, %57
  %66 = load i32, i32* @USBD_EP_RLZED, align 4
  %67 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %4, align 8
  %68 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @USBD_DEVINTCLR(i32 %69)
  %71 = call i32 @writel(i32 %66, i32 %70)
  ret void
}

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @USBD_DEVINTCLR(i32) #1

declare dso_local i32 @USBD_EPIND(i32) #1

declare dso_local i32 @USBD_REEP(i32) #1

declare dso_local i32 @USBD_EPMAXPSIZE(i32) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @USBD_DEVINTST(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
