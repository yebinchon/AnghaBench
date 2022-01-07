; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_gadget.c_dwc2_gadget_handle_out_token_ep_disabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_gadget.c_dwc2_gadget_handle_out_token_ep_disabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg_ep = type { i32, i64, i32, i32, i32, %struct.dwc2_hsotg* }
%struct.dwc2_hsotg = type { i64 }

@TARGET_FRAME_INITIAL = common dso_local global i64 0, align 8
@DXEPCTL_SETODDFR = common dso_local global i32 0, align 4
@DXEPCTL_SETEVENFR = common dso_local global i32 0, align 4
@DOEPMSK = common dso_local global i32 0, align 4
@DOEPMSK_OUTTKNEPDISMSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc2_hsotg_ep*)* @dwc2_gadget_handle_out_token_ep_disabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc2_gadget_handle_out_token_ep_disabled(%struct.dwc2_hsotg_ep* %0) #0 {
  %2 = alloca %struct.dwc2_hsotg_ep*, align 8
  %3 = alloca %struct.dwc2_hsotg*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dwc2_hsotg_ep* %0, %struct.dwc2_hsotg_ep** %2, align 8
  %7 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %2, align 8
  %8 = getelementptr inbounds %struct.dwc2_hsotg_ep, %struct.dwc2_hsotg_ep* %7, i32 0, i32 5
  %9 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %8, align 8
  store %struct.dwc2_hsotg* %9, %struct.dwc2_hsotg** %3, align 8
  %10 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %2, align 8
  %11 = getelementptr inbounds %struct.dwc2_hsotg_ep, %struct.dwc2_hsotg_ep* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %1
  %16 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %2, align 8
  %17 = getelementptr inbounds %struct.dwc2_hsotg_ep, %struct.dwc2_hsotg_ep* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15, %1
  br label %100

21:                                               ; preds = %15
  %22 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %23 = call i64 @using_desc_dma(%struct.dwc2_hsotg* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %21
  %26 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %2, align 8
  %27 = getelementptr inbounds %struct.dwc2_hsotg_ep, %struct.dwc2_hsotg_ep* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @TARGET_FRAME_INITIAL, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %25
  %32 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %33 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %2, align 8
  %36 = getelementptr inbounds %struct.dwc2_hsotg_ep, %struct.dwc2_hsotg_ep* %35, i32 0, i32 1
  store i64 %34, i64* %36, align 8
  %37 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %2, align 8
  %38 = call i32 @dwc2_gadget_start_isoc_ddma(%struct.dwc2_hsotg_ep* %37)
  br label %39

39:                                               ; preds = %31, %25
  br label %100

40:                                               ; preds = %21
  %41 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %2, align 8
  %42 = getelementptr inbounds %struct.dwc2_hsotg_ep, %struct.dwc2_hsotg_ep* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = icmp sgt i32 %43, 1
  br i1 %44, label %45, label %86

45:                                               ; preds = %40
  %46 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %2, align 8
  %47 = getelementptr inbounds %struct.dwc2_hsotg_ep, %struct.dwc2_hsotg_ep* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @TARGET_FRAME_INITIAL, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %86

51:                                               ; preds = %45
  %52 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %53 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %2, align 8
  %56 = getelementptr inbounds %struct.dwc2_hsotg_ep, %struct.dwc2_hsotg_ep* %55, i32 0, i32 1
  store i64 %54, i64* %56, align 8
  %57 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %2, align 8
  %58 = call i32 @dwc2_gadget_incr_frame_num(%struct.dwc2_hsotg_ep* %57)
  %59 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %60 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %2, align 8
  %61 = getelementptr inbounds %struct.dwc2_hsotg_ep, %struct.dwc2_hsotg_ep* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @DOEPCTL(i32 %62)
  %64 = call i32 @dwc2_readl(%struct.dwc2_hsotg* %59, i32 %63)
  store i32 %64, i32* %6, align 4
  %65 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %2, align 8
  %66 = getelementptr inbounds %struct.dwc2_hsotg_ep, %struct.dwc2_hsotg_ep* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = and i64 %67, 1
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %51
  %71 = load i32, i32* @DXEPCTL_SETODDFR, align 4
  %72 = load i32, i32* %6, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %6, align 4
  br label %78

74:                                               ; preds = %51
  %75 = load i32, i32* @DXEPCTL_SETEVENFR, align 4
  %76 = load i32, i32* %6, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %6, align 4
  br label %78

78:                                               ; preds = %74, %70
  %79 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %80 = load i32, i32* %6, align 4
  %81 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %2, align 8
  %82 = getelementptr inbounds %struct.dwc2_hsotg_ep, %struct.dwc2_hsotg_ep* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @DOEPCTL(i32 %83)
  %85 = call i32 @dwc2_writel(%struct.dwc2_hsotg* %79, i32 %80, i32 %84)
  br label %86

86:                                               ; preds = %78, %45, %40
  %87 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %2, align 8
  %88 = call i32 @dwc2_gadget_start_next_request(%struct.dwc2_hsotg_ep* %87)
  %89 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %90 = load i32, i32* @DOEPMSK, align 4
  %91 = call i32 @dwc2_readl(%struct.dwc2_hsotg* %89, i32 %90)
  store i32 %91, i32* %5, align 4
  %92 = load i32, i32* @DOEPMSK_OUTTKNEPDISMSK, align 4
  %93 = xor i32 %92, -1
  %94 = load i32, i32* %5, align 4
  %95 = and i32 %94, %93
  store i32 %95, i32* %5, align 4
  %96 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* @DOEPMSK, align 4
  %99 = call i32 @dwc2_writel(%struct.dwc2_hsotg* %96, i32 %97, i32 %98)
  br label %100

100:                                              ; preds = %86, %39, %20
  ret void
}

declare dso_local i64 @using_desc_dma(%struct.dwc2_hsotg*) #1

declare dso_local i32 @dwc2_gadget_start_isoc_ddma(%struct.dwc2_hsotg_ep*) #1

declare dso_local i32 @dwc2_gadget_incr_frame_num(%struct.dwc2_hsotg_ep*) #1

declare dso_local i32 @dwc2_readl(%struct.dwc2_hsotg*, i32) #1

declare dso_local i32 @DOEPCTL(i32) #1

declare dso_local i32 @dwc2_writel(%struct.dwc2_hsotg*, i32, i32) #1

declare dso_local i32 @dwc2_gadget_start_next_request(%struct.dwc2_hsotg_ep*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
