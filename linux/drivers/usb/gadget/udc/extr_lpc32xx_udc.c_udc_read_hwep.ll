; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_lpc32xx_udc.c_udc_read_hwep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_lpc32xx_udc.c_udc_read_hwep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpc32xx_udc = type { i32, i32 }

@CTRL_RD_EN = common dso_local global i32 0, align 4
@PKT_RDY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"No packet ready on FIFO EP read\0A\00", align 1
@PKT_LNGTH_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpc32xx_udc*, i32, i32*, i32)* @udc_read_hwep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udc_read_hwep(%struct.lpc32xx_udc* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.lpc32xx_udc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.lpc32xx_udc* %0, %struct.lpc32xx_udc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 1000, i32* %10, align 4
  %13 = load i32, i32* %6, align 4
  %14 = and i32 %13, 30
  %15 = shl i32 %14, 1
  %16 = load i32, i32* @CTRL_RD_EN, align 4
  %17 = or i32 %15, %16
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %12, align 4
  %19 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %5, align 8
  %20 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @USBD_CTRL(i32 %21)
  %23 = call i32 @writel(i32 %18, i32 %22)
  br label %24

24:                                               ; preds = %38, %4
  %25 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %5, align 8
  %26 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @USBD_RXPLEN(i32 %27)
  %29 = call i32 @readl(i32 %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* @PKT_RDY, align 4
  %31 = and i32 %29, %30
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %24
  %34 = load i32, i32* %10, align 4
  %35 = icmp sgt i32 %34, 0
  br label %36

36:                                               ; preds = %33, %24
  %37 = phi i1 [ false, %24 ], [ %35, %33 ]
  br i1 %37, label %38, label %41

38:                                               ; preds = %36
  %39 = load i32, i32* %10, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %10, align 4
  br label %24

41:                                               ; preds = %36
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %41
  %45 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %5, align 8
  %46 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @dev_dbg(i32 %47, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %49

49:                                               ; preds = %44, %41
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @PKT_LNGTH_MASK, align 4
  %52 = and i32 %50, %51
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %11, align 4
  br label %58

58:                                               ; preds = %56, %49
  %59 = load i32, i32* %11, align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %58
  %62 = load i32*, i32** %7, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %69

64:                                               ; preds = %61
  %65 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %5, align 8
  %66 = load i32*, i32** %7, align 8
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @udc_pop_fifo(%struct.lpc32xx_udc* %65, i32* %66, i32 %67)
  br label %69

69:                                               ; preds = %64, %61, %58
  %70 = load i32, i32* %6, align 4
  %71 = and i32 %70, 30
  %72 = shl i32 %71, 1
  %73 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %5, align 8
  %74 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @USBD_CTRL(i32 %75)
  %77 = call i32 @writel(i32 %72, i32 %76)
  %78 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %5, align 8
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @udc_clr_buffer_hwep(%struct.lpc32xx_udc* %78, i32 %79)
  %81 = load i32, i32* %11, align 4
  ret i32 %81
}

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @USBD_CTRL(i32) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @USBD_RXPLEN(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @udc_pop_fifo(%struct.lpc32xx_udc*, i32*, i32) #1

declare dso_local i32 @udc_clr_buffer_hwep(%struct.lpc32xx_udc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
