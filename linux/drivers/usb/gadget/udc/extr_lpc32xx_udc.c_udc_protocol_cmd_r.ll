; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_lpc32xx_udc.c_udc_protocol_cmd_r.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_lpc32xx_udc.c_udc_protocol_cmd_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpc32xx_udc = type { i32, i32 }

@USBD_CDFULL = common dso_local global i32 0, align 4
@USBD_CCEMPTY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Protocol engine didn't receive response (CDFULL)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpc32xx_udc*, i32)* @udc_protocol_cmd_r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udc_protocol_cmd_r(%struct.lpc32xx_udc* %0, i32 %1) #0 {
  %3 = alloca %struct.lpc32xx_udc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.lpc32xx_udc* %0, %struct.lpc32xx_udc** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 1000, i32* %5, align 4
  %6 = load i32, i32* @USBD_CDFULL, align 4
  %7 = load i32, i32* @USBD_CCEMPTY, align 4
  %8 = or i32 %6, %7
  %9 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %3, align 8
  %10 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @USBD_DEVINTCLR(i32 %11)
  %13 = call i32 @writel(i32 %8, i32 %12)
  %14 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @udc_protocol_cmd_w(%struct.lpc32xx_udc* %14, i32 %15)
  br label %17

17:                                               ; preds = %31, %2
  %18 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %3, align 8
  %19 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @USBD_DEVINTST(i32 %20)
  %22 = call i32 @readl(i32 %21)
  %23 = load i32, i32* @USBD_CDFULL, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %17
  %27 = load i32, i32* %5, align 4
  %28 = icmp sgt i32 %27, 0
  br label %29

29:                                               ; preds = %26, %17
  %30 = phi i1 [ false, %17 ], [ %28, %26 ]
  br i1 %30, label %31, label %34

31:                                               ; preds = %29
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %5, align 4
  br label %17

34:                                               ; preds = %29
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %34
  %38 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %3, align 8
  %39 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @dev_dbg(i32 %40, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %37, %34
  %43 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %3, align 8
  %44 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @USBD_CMDDATA(i32 %45)
  %47 = call i32 @readl(i32 %46)
  ret i32 %47
}

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @USBD_DEVINTCLR(i32) #1

declare dso_local i32 @udc_protocol_cmd_w(%struct.lpc32xx_udc*, i32) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @USBD_DEVINTST(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @USBD_CMDDATA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
