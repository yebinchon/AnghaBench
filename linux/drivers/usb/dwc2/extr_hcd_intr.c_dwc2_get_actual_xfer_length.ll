; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd_intr.c_dwc2_get_actual_xfer_length.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd_intr.c_dwc2_get_actual_xfer_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { i32 }
%struct.dwc2_host_chan = type { i32, i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64 }
%struct.dwc2_qtd = type { i32 }

@DWC2_HC_XFER_COMPLETE = common dso_local global i32 0, align 4
@TSIZ_XFERSIZE_MASK = common dso_local global i32 0, align 4
@TSIZ_XFERSIZE_SHIFT = common dso_local global i32 0, align 4
@TSIZ_PKTCNT_MASK = common dso_local global i32 0, align 4
@TSIZ_PKTCNT_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwc2_hsotg*, %struct.dwc2_host_chan*, i32, %struct.dwc2_qtd*, i32, i32*)* @dwc2_get_actual_xfer_length to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc2_get_actual_xfer_length(%struct.dwc2_hsotg* %0, %struct.dwc2_host_chan* %1, i32 %2, %struct.dwc2_qtd* %3, i32 %4, i32* %5) #0 {
  %7 = alloca %struct.dwc2_hsotg*, align 8
  %8 = alloca %struct.dwc2_host_chan*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dwc2_qtd*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %7, align 8
  store %struct.dwc2_host_chan* %1, %struct.dwc2_host_chan** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.dwc2_qtd* %3, %struct.dwc2_qtd** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %16 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %7, align 8
  %17 = load i32, i32* %9, align 4
  %18 = call i32 @HCTSIZ(i32 %17)
  %19 = call i32 @dwc2_readl(%struct.dwc2_hsotg* %16, i32 %18)
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* @DWC2_HC_XFER_COMPLETE, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %64

23:                                               ; preds = %6
  %24 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %8, align 8
  %25 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %47

28:                                               ; preds = %23
  %29 = load i32, i32* %13, align 4
  %30 = load i32, i32* @TSIZ_XFERSIZE_MASK, align 4
  %31 = and i32 %29, %30
  %32 = load i32, i32* @TSIZ_XFERSIZE_SHIFT, align 4
  %33 = ashr i32 %31, %32
  store i32 %33, i32* %14, align 4
  %34 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %8, align 8
  %35 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %14, align 4
  %38 = sub nsw i32 %36, %37
  store i32 %38, i32* %15, align 4
  %39 = load i32*, i32** %12, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %28
  %42 = load i32, i32* %14, align 4
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i32
  %45 = load i32*, i32** %12, align 8
  store i32 %44, i32* %45, align 4
  br label %46

46:                                               ; preds = %41, %28
  br label %63

47:                                               ; preds = %23
  %48 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %8, align 8
  %49 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %48, i32 0, i32 3
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %47
  %55 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %10, align 8
  %56 = getelementptr inbounds %struct.dwc2_qtd, %struct.dwc2_qtd* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %15, align 4
  br label %62

58:                                               ; preds = %47
  %59 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %8, align 8
  %60 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  store i32 %61, i32* %15, align 4
  br label %62

62:                                               ; preds = %58, %54
  br label %63

63:                                               ; preds = %62, %46
  br label %79

64:                                               ; preds = %6
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* @TSIZ_PKTCNT_MASK, align 4
  %67 = and i32 %65, %66
  %68 = load i32, i32* @TSIZ_PKTCNT_SHIFT, align 4
  %69 = ashr i32 %67, %68
  store i32 %69, i32* %14, align 4
  %70 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %8, align 8
  %71 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %14, align 4
  %74 = sub nsw i32 %72, %73
  %75 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %8, align 8
  %76 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = mul nsw i32 %74, %77
  store i32 %78, i32* %15, align 4
  br label %79

79:                                               ; preds = %64, %63
  %80 = load i32, i32* %15, align 4
  ret i32 %80
}

declare dso_local i32 @dwc2_readl(%struct.dwc2_hsotg*, i32) #1

declare dso_local i32 @HCTSIZ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
