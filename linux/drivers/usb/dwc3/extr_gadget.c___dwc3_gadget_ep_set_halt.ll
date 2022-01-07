; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_gadget.c___dwc3_gadget_ep_set_halt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_gadget.c___dwc3_gadget_ep_set_halt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3_ep = type { i32, i64, i32, i32, i64, i32, %struct.TYPE_2__, %struct.dwc3* }
%struct.TYPE_2__ = type { i32 }
%struct.dwc3 = type { i32, %struct.dwc3_trb* }
%struct.dwc3_trb = type { i32 }
%struct.dwc3_gadget_ep_cmd_params = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"%s is of Isochronous type\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DWC3_TRB_CTRL_HWO = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@DWC3_DEPCMD_SETSTALL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"failed to set STALL on %s\0A\00", align 1
@DWC3_EP_STALL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"failed to clear STALL on %s\0A\00", align 1
@DWC3_EP_WEDGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__dwc3_gadget_ep_set_halt(%struct.dwc3_ep* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dwc3_ep*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dwc3_gadget_ep_cmd_params, align 4
  %9 = alloca %struct.dwc3*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.dwc3_trb*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.dwc3_ep* %0, %struct.dwc3_ep** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.dwc3_ep*, %struct.dwc3_ep** %5, align 8
  %15 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %14, i32 0, i32 7
  %16 = load %struct.dwc3*, %struct.dwc3** %15, align 8
  store %struct.dwc3* %16, %struct.dwc3** %9, align 8
  %17 = load %struct.dwc3_ep*, %struct.dwc3_ep** %5, align 8
  %18 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %17, i32 0, i32 6
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @usb_endpoint_xfer_isoc(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %3
  %24 = load %struct.dwc3*, %struct.dwc3** %9, align 8
  %25 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.dwc3_ep*, %struct.dwc3_ep** %5, align 8
  %28 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @dev_err(i32 %26, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %135

33:                                               ; preds = %3
  %34 = call i32 @memset(%struct.dwc3_gadget_ep_cmd_params* %8, i32 0, i32 4)
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %110

37:                                               ; preds = %33
  %38 = load %struct.dwc3_ep*, %struct.dwc3_ep** %5, align 8
  %39 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp sgt i32 %40, 1
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load %struct.dwc3_ep*, %struct.dwc3_ep** %5, align 8
  %44 = load %struct.dwc3_ep*, %struct.dwc3_ep** %5, align 8
  %45 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = call %struct.dwc3_trb* @dwc3_ep_prev_trb(%struct.dwc3_ep* %43, i64 %46)
  store %struct.dwc3_trb* %47, %struct.dwc3_trb** %11, align 8
  br label %56

48:                                               ; preds = %37
  %49 = load %struct.dwc3*, %struct.dwc3** %9, align 8
  %50 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %49, i32 0, i32 1
  %51 = load %struct.dwc3_trb*, %struct.dwc3_trb** %50, align 8
  %52 = load %struct.dwc3_ep*, %struct.dwc3_ep** %5, align 8
  %53 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds %struct.dwc3_trb, %struct.dwc3_trb* %51, i64 %54
  store %struct.dwc3_trb* %55, %struct.dwc3_trb** %11, align 8
  br label %56

56:                                               ; preds = %48, %42
  %57 = load %struct.dwc3_trb*, %struct.dwc3_trb** %11, align 8
  %58 = getelementptr inbounds %struct.dwc3_trb, %struct.dwc3_trb* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @DWC3_TRB_CTRL_HWO, align 4
  %61 = and i32 %59, %60
  store i32 %61, i32* %12, align 4
  %62 = load %struct.dwc3_ep*, %struct.dwc3_ep** %5, align 8
  %63 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %62, i32 0, i32 5
  %64 = call i32 @list_empty(i32* %63)
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %89, label %70

70:                                               ; preds = %56
  %71 = load %struct.dwc3_ep*, %struct.dwc3_ep** %5, align 8
  %72 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %71, i32 0, i32 4
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load i32, i32* %12, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %86, label %78

78:                                               ; preds = %75, %70
  %79 = load %struct.dwc3_ep*, %struct.dwc3_ep** %5, align 8
  %80 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %79, i32 0, i32 4
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %89, label %83

83:                                               ; preds = %78
  %84 = load i32, i32* %13, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %83, %75
  %87 = load i32, i32* @EAGAIN, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %4, align 4
  br label %135

89:                                               ; preds = %83, %78, %56
  %90 = load %struct.dwc3_ep*, %struct.dwc3_ep** %5, align 8
  %91 = load i32, i32* @DWC3_DEPCMD_SETSTALL, align 4
  %92 = call i32 @dwc3_send_gadget_ep_cmd(%struct.dwc3_ep* %90, i32 %91, %struct.dwc3_gadget_ep_cmd_params* %8)
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* %10, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %89
  %96 = load %struct.dwc3*, %struct.dwc3** %9, align 8
  %97 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.dwc3_ep*, %struct.dwc3_ep** %5, align 8
  %100 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @dev_err(i32 %98, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %101)
  br label %109

103:                                              ; preds = %89
  %104 = load i32, i32* @DWC3_EP_STALL, align 4
  %105 = load %struct.dwc3_ep*, %struct.dwc3_ep** %5, align 8
  %106 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = or i32 %107, %104
  store i32 %108, i32* %106, align 8
  br label %109

109:                                              ; preds = %103, %95
  br label %133

110:                                              ; preds = %33
  %111 = load %struct.dwc3_ep*, %struct.dwc3_ep** %5, align 8
  %112 = call i32 @dwc3_send_clear_stall_ep_cmd(%struct.dwc3_ep* %111)
  store i32 %112, i32* %10, align 4
  %113 = load i32, i32* %10, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %110
  %116 = load %struct.dwc3*, %struct.dwc3** %9, align 8
  %117 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.dwc3_ep*, %struct.dwc3_ep** %5, align 8
  %120 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @dev_err(i32 %118, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %121)
  br label %132

123:                                              ; preds = %110
  %124 = load i32, i32* @DWC3_EP_STALL, align 4
  %125 = load i32, i32* @DWC3_EP_WEDGE, align 4
  %126 = or i32 %124, %125
  %127 = xor i32 %126, -1
  %128 = load %struct.dwc3_ep*, %struct.dwc3_ep** %5, align 8
  %129 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = and i32 %130, %127
  store i32 %131, i32* %129, align 8
  br label %132

132:                                              ; preds = %123, %115
  br label %133

133:                                              ; preds = %132, %109
  %134 = load i32, i32* %10, align 4
  store i32 %134, i32* %4, align 4
  br label %135

135:                                              ; preds = %133, %86, %23
  %136 = load i32, i32* %4, align 4
  ret i32 %136
}

declare dso_local i64 @usb_endpoint_xfer_isoc(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @memset(%struct.dwc3_gadget_ep_cmd_params*, i32, i32) #1

declare dso_local %struct.dwc3_trb* @dwc3_ep_prev_trb(%struct.dwc3_ep*, i64) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @dwc3_send_gadget_ep_cmd(%struct.dwc3_ep*, i32, %struct.dwc3_gadget_ep_cmd_params*) #1

declare dso_local i32 @dwc3_send_clear_stall_ep_cmd(%struct.dwc3_ep*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
