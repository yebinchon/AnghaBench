; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_lpc32xx_udc.c_udc_handle_ep0_in.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_lpc32xx_udc.c_udc_handle_ep0_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpc32xx_udc = type { i64, %struct.lpc32xx_ep* }
%struct.lpc32xx_ep = type { i32 }

@EP_IN = common dso_local global i32 0, align 4
@EP_SEL_ST = common dso_local global i32 0, align 4
@ECONNABORTED = common dso_local global i32 0, align 4
@WAIT_FOR_SETUP = common dso_local global i8* null, align 8
@EP_SEL_F = common dso_local global i32 0, align 4
@DATA_IN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpc32xx_udc*)* @udc_handle_ep0_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udc_handle_ep0_in(%struct.lpc32xx_udc* %0) #0 {
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
  %10 = load i32, i32* @EP_IN, align 4
  %11 = call i32 @udc_clearep_getsts(%struct.lpc32xx_udc* %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @EP_SEL_ST, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %1
  %17 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %18 = load i32, i32* @EP_IN, align 4
  %19 = call i32 @udc_clrstall_hwep(%struct.lpc32xx_udc* %17, i32 %18)
  %20 = load %struct.lpc32xx_ep*, %struct.lpc32xx_ep** %3, align 8
  %21 = load i32, i32* @ECONNABORTED, align 4
  %22 = sub nsw i32 0, %21
  %23 = call i32 @nuke(%struct.lpc32xx_ep* %20, i32 %22)
  %24 = load i8*, i8** @WAIT_FOR_SETUP, align 8
  %25 = ptrtoint i8* %24 to i64
  %26 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %27 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  br label %52

28:                                               ; preds = %1
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @EP_SEL_F, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %52, label %33

33:                                               ; preds = %28
  %34 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %35 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @DATA_IN, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %41 = call i32 @udc_ep0_in_req(%struct.lpc32xx_udc* %40)
  br label %51

42:                                               ; preds = %33
  %43 = load %struct.lpc32xx_ep*, %struct.lpc32xx_ep** %3, align 8
  %44 = load i32, i32* @ECONNABORTED, align 4
  %45 = sub nsw i32 0, %44
  %46 = call i32 @nuke(%struct.lpc32xx_ep* %43, i32 %45)
  %47 = load i8*, i8** @WAIT_FOR_SETUP, align 8
  %48 = ptrtoint i8* %47 to i64
  %49 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %50 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  br label %51

51:                                               ; preds = %42, %39
  br label %52

52:                                               ; preds = %16, %51, %28
  ret void
}

declare dso_local i32 @udc_clearep_getsts(%struct.lpc32xx_udc*, i32) #1

declare dso_local i32 @udc_clrstall_hwep(%struct.lpc32xx_udc*, i32) #1

declare dso_local i32 @nuke(%struct.lpc32xx_ep*, i32) #1

declare dso_local i32 @udc_ep0_in_req(%struct.lpc32xx_udc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
