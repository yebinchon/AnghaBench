; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_pxa27x_udc.c_pxa_ep_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_pxa27x_udc.c_pxa_ep_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa_ep = type { i32, i32, i32, i32, i64 }

@UDCCONR_CN_S = common dso_local global i32 0, align 4
@UDCCONR_CN = common dso_local global i32 0, align 4
@UDCCONR_IN_S = common dso_local global i32 0, align 4
@UDCCONR_IN = common dso_local global i32 0, align 4
@UDCCONR_AISN_S = common dso_local global i32 0, align 4
@UDCCONR_AISN = common dso_local global i32 0, align 4
@UDCCONR_EN_S = common dso_local global i32 0, align 4
@UDCCONR_EN = common dso_local global i32 0, align 4
@UDCCONR_ET_S = common dso_local global i32 0, align 4
@UDCCONR_ET = common dso_local global i32 0, align 4
@UDCCONR_ED = common dso_local global i32 0, align 4
@UDCCONR_MPS_S = common dso_local global i32 0, align 4
@UDCCONR_MPS = common dso_local global i32 0, align 4
@UDCCONR_EE = common dso_local global i32 0, align 4
@UDCCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pxa_ep*)* @pxa_ep_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pxa_ep_setup(%struct.pxa_ep* %0) #0 {
  %2 = alloca %struct.pxa_ep*, align 8
  %3 = alloca i32, align 4
  store %struct.pxa_ep* %0, %struct.pxa_ep** %2, align 8
  %4 = load %struct.pxa_ep*, %struct.pxa_ep** %2, align 8
  %5 = getelementptr inbounds %struct.pxa_ep, %struct.pxa_ep* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @UDCCONR_CN_S, align 4
  %8 = shl i32 %6, %7
  %9 = load i32, i32* @UDCCONR_CN, align 4
  %10 = and i32 %8, %9
  %11 = load %struct.pxa_ep*, %struct.pxa_ep** %2, align 8
  %12 = getelementptr inbounds %struct.pxa_ep, %struct.pxa_ep* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @UDCCONR_IN_S, align 4
  %15 = shl i32 %13, %14
  %16 = load i32, i32* @UDCCONR_IN, align 4
  %17 = and i32 %15, %16
  %18 = or i32 %10, %17
  %19 = load %struct.pxa_ep*, %struct.pxa_ep** %2, align 8
  %20 = getelementptr inbounds %struct.pxa_ep, %struct.pxa_ep* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @UDCCONR_AISN_S, align 4
  %23 = shl i32 %21, %22
  %24 = load i32, i32* @UDCCONR_AISN, align 4
  %25 = and i32 %23, %24
  %26 = or i32 %18, %25
  %27 = load %struct.pxa_ep*, %struct.pxa_ep** %2, align 8
  %28 = call i32 @EPADDR(%struct.pxa_ep* %27)
  %29 = load i32, i32* @UDCCONR_EN_S, align 4
  %30 = shl i32 %28, %29
  %31 = load i32, i32* @UDCCONR_EN, align 4
  %32 = and i32 %30, %31
  %33 = or i32 %26, %32
  %34 = load %struct.pxa_ep*, %struct.pxa_ep** %2, align 8
  %35 = call i32 @EPXFERTYPE(%struct.pxa_ep* %34)
  %36 = load i32, i32* @UDCCONR_ET_S, align 4
  %37 = shl i32 %35, %36
  %38 = load i32, i32* @UDCCONR_ET, align 4
  %39 = and i32 %37, %38
  %40 = or i32 %33, %39
  %41 = load %struct.pxa_ep*, %struct.pxa_ep** %2, align 8
  %42 = getelementptr inbounds %struct.pxa_ep, %struct.pxa_ep* %41, i32 0, i32 4
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %1
  %46 = load i32, i32* @UDCCONR_ED, align 4
  br label %48

47:                                               ; preds = %1
  br label %48

48:                                               ; preds = %47, %45
  %49 = phi i32 [ %46, %45 ], [ 0, %47 ]
  %50 = or i32 %40, %49
  %51 = load %struct.pxa_ep*, %struct.pxa_ep** %2, align 8
  %52 = getelementptr inbounds %struct.pxa_ep, %struct.pxa_ep* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @UDCCONR_MPS_S, align 4
  %55 = shl i32 %53, %54
  %56 = load i32, i32* @UDCCONR_MPS, align 4
  %57 = and i32 %55, %56
  %58 = or i32 %50, %57
  %59 = load i32, i32* @UDCCONR_EE, align 4
  %60 = or i32 %58, %59
  store i32 %60, i32* %3, align 4
  %61 = load %struct.pxa_ep*, %struct.pxa_ep** %2, align 8
  %62 = load i32, i32* @UDCCR, align 4
  %63 = load i32, i32* %3, align 4
  %64 = call i32 @udc_ep_writel(%struct.pxa_ep* %61, i32 %62, i32 %63)
  ret void
}

declare dso_local i32 @EPADDR(%struct.pxa_ep*) #1

declare dso_local i32 @EPXFERTYPE(%struct.pxa_ep*) #1

declare dso_local i32 @udc_ep_writel(%struct.pxa_ep*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
