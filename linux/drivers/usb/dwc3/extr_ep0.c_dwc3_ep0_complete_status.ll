; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_ep0.c_dwc3_ep0_complete_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_ep0.c_dwc3_ep0_complete_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3 = type { i32, i32, i32, i32, i64, %struct.dwc3_trb*, %struct.dwc3_ep** }
%struct.dwc3_trb = type { i32 }
%struct.dwc3_ep = type { i32 }
%struct.dwc3_event_depevt = type { i32 }
%struct.dwc3_request = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"invalid test #%d\0A\00", align 1
@DWC3_TRBSTS_SETUP_PENDING = common dso_local global i64 0, align 8
@EP0_SETUP_PHASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc3*, %struct.dwc3_event_depevt*)* @dwc3_ep0_complete_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc3_ep0_complete_status(%struct.dwc3* %0, %struct.dwc3_event_depevt* %1) #0 {
  %3 = alloca %struct.dwc3*, align 8
  %4 = alloca %struct.dwc3_event_depevt*, align 8
  %5 = alloca %struct.dwc3_request*, align 8
  %6 = alloca %struct.dwc3_ep*, align 8
  %7 = alloca %struct.dwc3_trb*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.dwc3* %0, %struct.dwc3** %3, align 8
  store %struct.dwc3_event_depevt* %1, %struct.dwc3_event_depevt** %4, align 8
  %10 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %11 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %10, i32 0, i32 6
  %12 = load %struct.dwc3_ep**, %struct.dwc3_ep*** %11, align 8
  %13 = getelementptr inbounds %struct.dwc3_ep*, %struct.dwc3_ep** %12, i64 0
  %14 = load %struct.dwc3_ep*, %struct.dwc3_ep** %13, align 8
  store %struct.dwc3_ep* %14, %struct.dwc3_ep** %6, align 8
  %15 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %16 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %15, i32 0, i32 5
  %17 = load %struct.dwc3_trb*, %struct.dwc3_trb** %16, align 8
  store %struct.dwc3_trb* %17, %struct.dwc3_trb** %7, align 8
  %18 = load %struct.dwc3_ep*, %struct.dwc3_ep** %6, align 8
  %19 = load %struct.dwc3_trb*, %struct.dwc3_trb** %7, align 8
  %20 = call i32 @trace_dwc3_complete_trb(%struct.dwc3_ep* %18, %struct.dwc3_trb* %19)
  %21 = load %struct.dwc3_ep*, %struct.dwc3_ep** %6, align 8
  %22 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %21, i32 0, i32 0
  %23 = call i32 @list_empty(i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %2
  %26 = load %struct.dwc3_ep*, %struct.dwc3_ep** %6, align 8
  %27 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %26, i32 0, i32 0
  %28 = call %struct.dwc3_request* @next_request(i32* %27)
  store %struct.dwc3_request* %28, %struct.dwc3_request** %5, align 8
  %29 = load %struct.dwc3_ep*, %struct.dwc3_ep** %6, align 8
  %30 = load %struct.dwc3_request*, %struct.dwc3_request** %5, align 8
  %31 = call i32 @dwc3_gadget_giveback(%struct.dwc3_ep* %29, %struct.dwc3_request* %30, i32 0)
  br label %32

32:                                               ; preds = %25, %2
  %33 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %34 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %56

37:                                               ; preds = %32
  %38 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %39 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %40 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @dwc3_gadget_set_test_mode(%struct.dwc3* %38, i32 %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %37
  %46 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %47 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %50 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @dev_err(i32 %48, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %54 = call i32 @dwc3_ep0_stall_and_restart(%struct.dwc3* %53)
  br label %73

55:                                               ; preds = %37
  br label %56

56:                                               ; preds = %55, %32
  %57 = load %struct.dwc3_trb*, %struct.dwc3_trb** %7, align 8
  %58 = getelementptr inbounds %struct.dwc3_trb, %struct.dwc3_trb* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @DWC3_TRB_SIZE_TRBSTS(i32 %59)
  store i64 %60, i64* %8, align 8
  %61 = load i64, i64* %8, align 8
  %62 = load i64, i64* @DWC3_TRBSTS_SETUP_PENDING, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %56
  %65 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %66 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %65, i32 0, i32 0
  store i32 1, i32* %66, align 8
  br label %67

67:                                               ; preds = %64, %56
  %68 = load i32, i32* @EP0_SETUP_PHASE, align 4
  %69 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %70 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %72 = call i32 @dwc3_ep0_out_start(%struct.dwc3* %71)
  br label %73

73:                                               ; preds = %67, %45
  ret void
}

declare dso_local i32 @trace_dwc3_complete_trb(%struct.dwc3_ep*, %struct.dwc3_trb*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local %struct.dwc3_request* @next_request(i32*) #1

declare dso_local i32 @dwc3_gadget_giveback(%struct.dwc3_ep*, %struct.dwc3_request*, i32) #1

declare dso_local i32 @dwc3_gadget_set_test_mode(%struct.dwc3*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @dwc3_ep0_stall_and_restart(%struct.dwc3*) #1

declare dso_local i64 @DWC3_TRB_SIZE_TRBSTS(i32) #1

declare dso_local i32 @dwc3_ep0_out_start(%struct.dwc3*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
