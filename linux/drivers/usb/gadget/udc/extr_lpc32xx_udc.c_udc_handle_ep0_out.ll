; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_lpc32xx_udc.c_udc_handle_ep0_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_lpc32xx_udc.c_udc_handle_ep0_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpc32xx_udc = type { i32, %struct.lpc32xx_ep* }
%struct.lpc32xx_ep = type { i32 }

@EP_OUT = common dso_local global i32 0, align 4
@EP_SEL_ST = common dso_local global i32 0, align 4
@ECONNABORTED = common dso_local global i32 0, align 4
@EP_SEL_EPN = common dso_local global i32 0, align 4
@EP_SEL_STP = common dso_local global i32 0, align 4
@EP_SEL_F = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpc32xx_udc*)* @udc_handle_ep0_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udc_handle_ep0_out(%struct.lpc32xx_udc* %0) #0 {
  %2 = alloca %struct.lpc32xx_udc*, align 8
  %3 = alloca %struct.lpc32xx_ep*, align 8
  %4 = alloca i32, align 4
  store %struct.lpc32xx_udc* %0, %struct.lpc32xx_udc** %2, align 8
  %5 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %6 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %5, i32 0, i32 1
  %7 = load %struct.lpc32xx_ep*, %struct.lpc32xx_ep** %6, align 8
  %8 = getelementptr inbounds %struct.lpc32xx_ep, %struct.lpc32xx_ep* %7, i64 0
  store %struct.lpc32xx_ep* %8, %struct.lpc32xx_ep** %3, align 8
  %9 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %10 = load i32, i32* @EP_OUT, align 4
  %11 = call i32 @udc_clearep_getsts(%struct.lpc32xx_udc* %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @EP_SEL_ST, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %1
  %17 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %18 = load i32, i32* @EP_OUT, align 4
  %19 = call i32 @udc_clrstall_hwep(%struct.lpc32xx_udc* %17, i32 %18)
  %20 = load %struct.lpc32xx_ep*, %struct.lpc32xx_ep** %3, align 8
  %21 = load i32, i32* @ECONNABORTED, align 4
  %22 = sub nsw i32 0, %21
  %23 = call i32 @nuke(%struct.lpc32xx_ep* %20, i32 %22)
  %24 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %25 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %24, i32 0, i32 0
  store i32 128, i32* %25, align 8
  br label %65

26:                                               ; preds = %1
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @EP_SEL_EPN, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %65

32:                                               ; preds = %26
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @EP_SEL_STP, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load %struct.lpc32xx_ep*, %struct.lpc32xx_ep** %3, align 8
  %39 = call i32 @nuke(%struct.lpc32xx_ep* %38, i32 0)
  %40 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %41 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %40, i32 0, i32 0
  store i32 128, i32* %41, align 8
  br label %42

42:                                               ; preds = %37, %32
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @EP_SEL_F, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %65

47:                                               ; preds = %42
  %48 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %49 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  switch i32 %50, label %57 [
    i32 128, label %51
    i32 129, label %54
  ]

51:                                               ; preds = %47
  %52 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %53 = call i32 @udc_handle_ep0_setup(%struct.lpc32xx_udc* %52)
  br label %64

54:                                               ; preds = %47
  %55 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %56 = call i32 @udc_ep0_out_req(%struct.lpc32xx_udc* %55)
  br label %64

57:                                               ; preds = %47
  %58 = load %struct.lpc32xx_ep*, %struct.lpc32xx_ep** %3, align 8
  %59 = load i32, i32* @ECONNABORTED, align 4
  %60 = sub nsw i32 0, %59
  %61 = call i32 @nuke(%struct.lpc32xx_ep* %58, i32 %60)
  %62 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %63 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %62, i32 0, i32 0
  store i32 128, i32* %63, align 8
  br label %64

64:                                               ; preds = %57, %54, %51
  br label %65

65:                                               ; preds = %16, %31, %64, %42
  ret void
}

declare dso_local i32 @udc_clearep_getsts(%struct.lpc32xx_udc*, i32) #1

declare dso_local i32 @udc_clrstall_hwep(%struct.lpc32xx_udc*, i32) #1

declare dso_local i32 @nuke(%struct.lpc32xx_ep*, i32) #1

declare dso_local i32 @udc_handle_ep0_setup(%struct.lpc32xx_udc*) #1

declare dso_local i32 @udc_ep0_out_req(%struct.lpc32xx_udc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
