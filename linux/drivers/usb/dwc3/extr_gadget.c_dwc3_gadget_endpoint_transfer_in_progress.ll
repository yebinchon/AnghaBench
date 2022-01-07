; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_gadget.c_dwc3_gadget_endpoint_transfer_in_progress.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_gadget.c_dwc3_gadget_endpoint_transfer_in_progress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3_ep = type { i32, i32, %struct.dwc3* }
%struct.dwc3 = type { i64, i32, i32, %struct.dwc3_ep** }
%struct.dwc3_event_depevt = type { i32 }

@DEPEVT_STATUS_BUSERR = common dso_local global i32 0, align 4
@ECONNRESET = common dso_local global i32 0, align 4
@DEPEVT_STATUS_MISSED_ISOC = common dso_local global i32 0, align 4
@EXDEV = common dso_local global i32 0, align 4
@DWC3_EP_ENABLED = common dso_local global i32 0, align 4
@DWC3_REVISION_183A = common dso_local global i64 0, align 8
@DWC3_ENDPOINTS_NUM = common dso_local global i32 0, align 4
@DWC3_DCTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc3_ep*, %struct.dwc3_event_depevt*)* @dwc3_gadget_endpoint_transfer_in_progress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc3_gadget_endpoint_transfer_in_progress(%struct.dwc3_ep* %0, %struct.dwc3_event_depevt* %1) #0 {
  %3 = alloca %struct.dwc3_ep*, align 8
  %4 = alloca %struct.dwc3_event_depevt*, align 8
  %5 = alloca %struct.dwc3*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dwc3_ep* %0, %struct.dwc3_ep** %3, align 8
  store %struct.dwc3_event_depevt* %1, %struct.dwc3_event_depevt** %4, align 8
  %10 = load %struct.dwc3_ep*, %struct.dwc3_ep** %3, align 8
  %11 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %10, i32 0, i32 2
  %12 = load %struct.dwc3*, %struct.dwc3** %11, align 8
  store %struct.dwc3* %12, %struct.dwc3** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %13 = load %struct.dwc3_ep*, %struct.dwc3_ep** %3, align 8
  %14 = load %struct.dwc3_event_depevt*, %struct.dwc3_event_depevt** %4, align 8
  %15 = call i32 @dwc3_gadget_endpoint_frame_from_event(%struct.dwc3_ep* %13, %struct.dwc3_event_depevt* %14)
  %16 = load %struct.dwc3_event_depevt*, %struct.dwc3_event_depevt** %4, align 8
  %17 = getelementptr inbounds %struct.dwc3_event_depevt, %struct.dwc3_event_depevt* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @DEPEVT_STATUS_BUSERR, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @ECONNRESET, align 4
  %24 = sub i32 0, %23
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %22, %2
  %26 = load %struct.dwc3_event_depevt*, %struct.dwc3_event_depevt** %4, align 8
  %27 = getelementptr inbounds %struct.dwc3_event_depevt, %struct.dwc3_event_depevt* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @DEPEVT_STATUS_MISSED_ISOC, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %25
  %33 = load i32, i32* @EXDEV, align 4
  %34 = sub i32 0, %33
  store i32 %34, i32* %6, align 4
  %35 = load %struct.dwc3_ep*, %struct.dwc3_ep** %3, align 8
  %36 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %35, i32 0, i32 1
  %37 = call i64 @list_empty(i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  store i32 1, i32* %7, align 4
  br label %40

40:                                               ; preds = %39, %32
  br label %41

41:                                               ; preds = %40, %25
  %42 = load %struct.dwc3_ep*, %struct.dwc3_ep** %3, align 8
  %43 = load %struct.dwc3_event_depevt*, %struct.dwc3_event_depevt** %4, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @dwc3_gadget_ep_cleanup_completed_requests(%struct.dwc3_ep* %42, %struct.dwc3_event_depevt* %43, i32 %44)
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %41
  %49 = load %struct.dwc3_ep*, %struct.dwc3_ep** %3, align 8
  %50 = call i32 @dwc3_stop_active_transfer(%struct.dwc3_ep* %49, i32 1, i32 1)
  %51 = load i32, i32* @DWC3_EP_ENABLED, align 4
  %52 = load %struct.dwc3_ep*, %struct.dwc3_ep** %3, align 8
  %53 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  br label %54

54:                                               ; preds = %48, %41
  %55 = load %struct.dwc3*, %struct.dwc3** %5, align 8
  %56 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @DWC3_REVISION_183A, align 8
  %59 = icmp slt i64 %57, %58
  br i1 %59, label %60, label %109

60:                                               ; preds = %54
  store i32 0, i32* %9, align 4
  br label %61

61:                                               ; preds = %87, %60
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @DWC3_ENDPOINTS_NUM, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %90

65:                                               ; preds = %61
  %66 = load %struct.dwc3*, %struct.dwc3** %5, align 8
  %67 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %66, i32 0, i32 3
  %68 = load %struct.dwc3_ep**, %struct.dwc3_ep*** %67, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.dwc3_ep*, %struct.dwc3_ep** %68, i64 %70
  %72 = load %struct.dwc3_ep*, %struct.dwc3_ep** %71, align 8
  store %struct.dwc3_ep* %72, %struct.dwc3_ep** %3, align 8
  %73 = load %struct.dwc3_ep*, %struct.dwc3_ep** %3, align 8
  %74 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @DWC3_EP_ENABLED, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %65
  br label %87

80:                                               ; preds = %65
  %81 = load %struct.dwc3_ep*, %struct.dwc3_ep** %3, align 8
  %82 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %81, i32 0, i32 1
  %83 = call i64 @list_empty(i32* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %80
  br label %109

86:                                               ; preds = %80
  br label %87

87:                                               ; preds = %86, %79
  %88 = load i32, i32* %9, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %9, align 4
  br label %61

90:                                               ; preds = %61
  %91 = load %struct.dwc3*, %struct.dwc3** %5, align 8
  %92 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @DWC3_DCTL, align 4
  %95 = call i32 @dwc3_readl(i32 %93, i32 %94)
  store i32 %95, i32* %8, align 4
  %96 = load %struct.dwc3*, %struct.dwc3** %5, align 8
  %97 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* %8, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %8, align 4
  %101 = load %struct.dwc3*, %struct.dwc3** %5, align 8
  %102 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @DWC3_DCTL, align 4
  %105 = load i32, i32* %8, align 4
  %106 = call i32 @dwc3_writel(i32 %103, i32 %104, i32 %105)
  %107 = load %struct.dwc3*, %struct.dwc3** %5, align 8
  %108 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %107, i32 0, i32 1
  store i32 0, i32* %108, align 8
  br label %109

109:                                              ; preds = %85, %90, %54
  ret void
}

declare dso_local i32 @dwc3_gadget_endpoint_frame_from_event(%struct.dwc3_ep*, %struct.dwc3_event_depevt*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @dwc3_gadget_ep_cleanup_completed_requests(%struct.dwc3_ep*, %struct.dwc3_event_depevt*, i32) #1

declare dso_local i32 @dwc3_stop_active_transfer(%struct.dwc3_ep*, i32, i32) #1

declare dso_local i32 @dwc3_readl(i32, i32) #1

declare dso_local i32 @dwc3_writel(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
