; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_gadget.c_dwc2_gadget_handle_nak.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_gadget.c_dwc2_gadget_handle_nak.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg_ep = type { i32, i32, i32, i32, i32, %struct.dwc2_hsotg* }
%struct.dwc2_hsotg = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@TARGET_FRAME_INITIAL = common dso_local global i32 0, align 4
@DXEPCTL_SETODDFR = common dso_local global i32 0, align 4
@DXEPCTL_SETEVENFR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc2_hsotg_ep*)* @dwc2_gadget_handle_nak to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc2_gadget_handle_nak(%struct.dwc2_hsotg_ep* %0) #0 {
  %2 = alloca %struct.dwc2_hsotg_ep*, align 8
  %3 = alloca %struct.dwc2_hsotg*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.dwc2_hsotg_ep* %0, %struct.dwc2_hsotg_ep** %2, align 8
  %6 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %2, align 8
  %7 = getelementptr inbounds %struct.dwc2_hsotg_ep, %struct.dwc2_hsotg_ep* %6, i32 0, i32 5
  %8 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %7, align 8
  store %struct.dwc2_hsotg* %8, %struct.dwc2_hsotg** %3, align 8
  %9 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %2, align 8
  %10 = getelementptr inbounds %struct.dwc2_hsotg_ep, %struct.dwc2_hsotg_ep* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %2, align 8
  %16 = getelementptr inbounds %struct.dwc2_hsotg_ep, %struct.dwc2_hsotg_ep* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %14, %1
  br label %111

20:                                               ; preds = %14
  %21 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %2, align 8
  %22 = getelementptr inbounds %struct.dwc2_hsotg_ep, %struct.dwc2_hsotg_ep* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @TARGET_FRAME_INITIAL, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %104

26:                                               ; preds = %20
  %27 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %28 = call i64 @using_desc_dma(%struct.dwc2_hsotg* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %60

30:                                               ; preds = %26
  %31 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %32 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %2, align 8
  %35 = getelementptr inbounds %struct.dwc2_hsotg_ep, %struct.dwc2_hsotg_ep* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %2, align 8
  %37 = call i32 @dwc2_gadget_incr_frame_num(%struct.dwc2_hsotg_ep* %36)
  %38 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %39 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %30
  %44 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %2, align 8
  %45 = getelementptr inbounds %struct.dwc2_hsotg_ep, %struct.dwc2_hsotg_ep* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = xor i32 %46, -1
  %48 = add nsw i32 %47, 1
  %49 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %2, align 8
  %50 = getelementptr inbounds %struct.dwc2_hsotg_ep, %struct.dwc2_hsotg_ep* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, %48
  store i32 %52, i32* %50, align 4
  %53 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %2, align 8
  %54 = call i32 @dwc2_gadget_incr_frame_num(%struct.dwc2_hsotg_ep* %53)
  %55 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %2, align 8
  %56 = call i32 @dwc2_gadget_dec_frame_num_by_one(%struct.dwc2_hsotg_ep* %55)
  br label %57

57:                                               ; preds = %43, %30
  %58 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %2, align 8
  %59 = call i32 @dwc2_gadget_start_isoc_ddma(%struct.dwc2_hsotg_ep* %58)
  br label %111

60:                                               ; preds = %26
  %61 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %62 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %2, align 8
  %65 = getelementptr inbounds %struct.dwc2_hsotg_ep, %struct.dwc2_hsotg_ep* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %2, align 8
  %67 = getelementptr inbounds %struct.dwc2_hsotg_ep, %struct.dwc2_hsotg_ep* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = icmp sgt i32 %68, 1
  br i1 %69, label %70, label %98

70:                                               ; preds = %60
  %71 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %72 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %2, align 8
  %73 = getelementptr inbounds %struct.dwc2_hsotg_ep, %struct.dwc2_hsotg_ep* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @DIEPCTL(i32 %74)
  %76 = call i32 @dwc2_readl(%struct.dwc2_hsotg* %71, i32 %75)
  store i32 %76, i32* %5, align 4
  %77 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %2, align 8
  %78 = getelementptr inbounds %struct.dwc2_hsotg_ep, %struct.dwc2_hsotg_ep* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, 1
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %70
  %83 = load i32, i32* @DXEPCTL_SETODDFR, align 4
  %84 = load i32, i32* %5, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %5, align 4
  br label %90

86:                                               ; preds = %70
  %87 = load i32, i32* @DXEPCTL_SETEVENFR, align 4
  %88 = load i32, i32* %5, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %5, align 4
  br label %90

90:                                               ; preds = %86, %82
  %91 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %92 = load i32, i32* %5, align 4
  %93 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %2, align 8
  %94 = getelementptr inbounds %struct.dwc2_hsotg_ep, %struct.dwc2_hsotg_ep* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @DIEPCTL(i32 %95)
  %97 = call i32 @dwc2_writel(%struct.dwc2_hsotg* %91, i32 %92, i32 %96)
  br label %98

98:                                               ; preds = %90, %60
  %99 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %100 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %2, align 8
  %101 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %2, align 8
  %102 = call i32 @get_ep_head(%struct.dwc2_hsotg_ep* %101)
  %103 = call i32 @dwc2_hsotg_complete_request(%struct.dwc2_hsotg* %99, %struct.dwc2_hsotg_ep* %100, i32 %102, i32 0)
  br label %104

104:                                              ; preds = %98, %20
  %105 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %106 = call i64 @using_desc_dma(%struct.dwc2_hsotg* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %104
  %109 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %2, align 8
  %110 = call i32 @dwc2_gadget_incr_frame_num(%struct.dwc2_hsotg_ep* %109)
  br label %111

111:                                              ; preds = %19, %57, %108, %104
  ret void
}

declare dso_local i64 @using_desc_dma(%struct.dwc2_hsotg*) #1

declare dso_local i32 @dwc2_gadget_incr_frame_num(%struct.dwc2_hsotg_ep*) #1

declare dso_local i32 @dwc2_gadget_dec_frame_num_by_one(%struct.dwc2_hsotg_ep*) #1

declare dso_local i32 @dwc2_gadget_start_isoc_ddma(%struct.dwc2_hsotg_ep*) #1

declare dso_local i32 @dwc2_readl(%struct.dwc2_hsotg*, i32) #1

declare dso_local i32 @DIEPCTL(i32) #1

declare dso_local i32 @dwc2_writel(%struct.dwc2_hsotg*, i32, i32) #1

declare dso_local i32 @dwc2_hsotg_complete_request(%struct.dwc2_hsotg*, %struct.dwc2_hsotg_ep*, i32, i32) #1

declare dso_local i32 @get_ep_head(%struct.dwc2_hsotg_ep*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
