; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_gadget.c___dwc3_gadget_start_isoc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_gadget.c___dwc3_gadget_start_isoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3_ep = type { i32, i64, i32, i32, %struct.dwc3* }
%struct.dwc3 = type { i64, i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@DWC3_EP_PENDING_REQUEST = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@DWC3_USB31_REVISION_160A = common dso_local global i64 0, align 8
@DWC3_USB31_REVISION_170A = common dso_local global i64 0, align 8
@DWC31_VERSIONTYPE_EA01 = common dso_local global i64 0, align 8
@DWC31_VERSIONTYPE_EA06 = common dso_local global i64 0, align 8
@USB_SPEED_HIGH = common dso_local global i64 0, align 8
@DWC3_ISOC_MAX_RETRIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwc3_ep*)* @__dwc3_gadget_start_isoc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__dwc3_gadget_start_isoc(%struct.dwc3_ep* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dwc3_ep*, align 8
  %4 = alloca %struct.dwc3*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dwc3_ep* %0, %struct.dwc3_ep** %3, align 8
  %7 = load %struct.dwc3_ep*, %struct.dwc3_ep** %3, align 8
  %8 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %7, i32 0, i32 4
  %9 = load %struct.dwc3*, %struct.dwc3** %8, align 8
  store %struct.dwc3* %9, %struct.dwc3** %4, align 8
  %10 = load %struct.dwc3_ep*, %struct.dwc3_ep** %3, align 8
  %11 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %10, i32 0, i32 3
  %12 = call i64 @list_empty(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %1
  %15 = load i32, i32* @DWC3_EP_PENDING_REQUEST, align 4
  %16 = load %struct.dwc3_ep*, %struct.dwc3_ep** %3, align 8
  %17 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 8
  %20 = load i32, i32* @EAGAIN, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %96

22:                                               ; preds = %1
  %23 = load %struct.dwc3*, %struct.dwc3** %4, align 8
  %24 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %71, label %27

27:                                               ; preds = %22
  %28 = load %struct.dwc3*, %struct.dwc3** %4, align 8
  %29 = call i64 @dwc3_is_usb31(%struct.dwc3* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %71

31:                                               ; preds = %27
  %32 = load %struct.dwc3*, %struct.dwc3** %4, align 8
  %33 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @DWC3_USB31_REVISION_160A, align 8
  %36 = icmp sle i64 %34, %35
  br i1 %36, label %55, label %37

37:                                               ; preds = %31
  %38 = load %struct.dwc3*, %struct.dwc3** %4, align 8
  %39 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @DWC3_USB31_REVISION_170A, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %71

43:                                               ; preds = %37
  %44 = load %struct.dwc3*, %struct.dwc3** %4, align 8
  %45 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @DWC31_VERSIONTYPE_EA01, align 8
  %48 = icmp sge i64 %46, %47
  br i1 %48, label %49, label %71

49:                                               ; preds = %43
  %50 = load %struct.dwc3*, %struct.dwc3** %4, align 8
  %51 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @DWC31_VERSIONTYPE_EA06, align 8
  %54 = icmp sle i64 %52, %53
  br i1 %54, label %55, label %71

55:                                               ; preds = %49, %31
  %56 = load %struct.dwc3*, %struct.dwc3** %4, align 8
  %57 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @USB_SPEED_HIGH, align 8
  %61 = icmp sle i64 %59, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %55
  %63 = load %struct.dwc3_ep*, %struct.dwc3_ep** %3, align 8
  %64 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load %struct.dwc3_ep*, %struct.dwc3_ep** %3, align 8
  %69 = call i32 @dwc3_gadget_start_isoc_quirk(%struct.dwc3_ep* %68)
  store i32 %69, i32* %2, align 4
  br label %96

70:                                               ; preds = %62, %55
  br label %71

71:                                               ; preds = %70, %49, %43, %37, %27, %22
  store i32 0, i32* %6, align 4
  br label %72

72:                                               ; preds = %91, %71
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @DWC3_ISOC_MAX_RETRIES, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %94

76:                                               ; preds = %72
  %77 = load %struct.dwc3_ep*, %struct.dwc3_ep** %3, align 8
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, 1
  %80 = call i32 @DWC3_ALIGN_FRAME(%struct.dwc3_ep* %77, i32 %79)
  %81 = load %struct.dwc3_ep*, %struct.dwc3_ep** %3, align 8
  %82 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = load %struct.dwc3_ep*, %struct.dwc3_ep** %3, align 8
  %84 = call i32 @__dwc3_gadget_kick_transfer(%struct.dwc3_ep* %83)
  store i32 %84, i32* %5, align 4
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* @EAGAIN, align 4
  %87 = sub nsw i32 0, %86
  %88 = icmp ne i32 %85, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %76
  br label %94

90:                                               ; preds = %76
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %6, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %6, align 4
  br label %72

94:                                               ; preds = %89, %72
  %95 = load i32, i32* %5, align 4
  store i32 %95, i32* %2, align 4
  br label %96

96:                                               ; preds = %94, %67, %14
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i64 @dwc3_is_usb31(%struct.dwc3*) #1

declare dso_local i32 @dwc3_gadget_start_isoc_quirk(%struct.dwc3_ep*) #1

declare dso_local i32 @DWC3_ALIGN_FRAME(%struct.dwc3_ep*, i32) #1

declare dso_local i32 @__dwc3_gadget_kick_transfer(%struct.dwc3_ep*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
