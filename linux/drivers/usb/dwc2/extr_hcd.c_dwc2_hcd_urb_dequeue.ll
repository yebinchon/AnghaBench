; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd.c_dwc2_hcd_urb_dequeue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd.c_dwc2_hcd_urb_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { %struct.TYPE_6__, %struct.TYPE_5__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.dwc2_hcd_urb = type { i32*, %struct.dwc2_qtd* }
%struct.dwc2_qtd = type { i64, %struct.dwc2_qh* }
%struct.dwc2_qh = type { i32, i32* }

@.str = private unnamed_addr constant [23 x i8] c"## Urb QTD is NULL ##\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"## Urb QTD QH is NULL ##\0A\00", align 1
@DWC2_HC_XFER_URB_DEQUEUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwc2_hsotg*, %struct.dwc2_hcd_urb*)* @dwc2_hcd_urb_dequeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc2_hcd_urb_dequeue(%struct.dwc2_hsotg* %0, %struct.dwc2_hcd_urb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dwc2_hsotg*, align 8
  %5 = alloca %struct.dwc2_hcd_urb*, align 8
  %6 = alloca %struct.dwc2_qh*, align 8
  %7 = alloca %struct.dwc2_qtd*, align 8
  %8 = alloca i64, align 8
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %4, align 8
  store %struct.dwc2_hcd_urb* %1, %struct.dwc2_hcd_urb** %5, align 8
  %9 = load %struct.dwc2_hcd_urb*, %struct.dwc2_hcd_urb** %5, align 8
  %10 = getelementptr inbounds %struct.dwc2_hcd_urb, %struct.dwc2_hcd_urb* %9, i32 0, i32 1
  %11 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %10, align 8
  store %struct.dwc2_qtd* %11, %struct.dwc2_qtd** %7, align 8
  %12 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %7, align 8
  %13 = icmp ne %struct.dwc2_qtd* %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %2
  %15 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %16 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @dev_dbg(i32 %17, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %105

21:                                               ; preds = %2
  %22 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %7, align 8
  %23 = getelementptr inbounds %struct.dwc2_qtd, %struct.dwc2_qtd* %22, i32 0, i32 1
  %24 = load %struct.dwc2_qh*, %struct.dwc2_qh** %23, align 8
  store %struct.dwc2_qh* %24, %struct.dwc2_qh** %6, align 8
  %25 = load %struct.dwc2_qh*, %struct.dwc2_qh** %6, align 8
  %26 = icmp ne %struct.dwc2_qh* %25, null
  br i1 %26, label %34, label %27

27:                                               ; preds = %21
  %28 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %29 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @dev_dbg(i32 %30, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %105

34:                                               ; preds = %21
  %35 = load %struct.dwc2_hcd_urb*, %struct.dwc2_hcd_urb** %5, align 8
  %36 = getelementptr inbounds %struct.dwc2_hcd_urb, %struct.dwc2_hcd_urb* %35, i32 0, i32 0
  store i32* null, i32** %36, align 8
  %37 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %7, align 8
  %38 = getelementptr inbounds %struct.dwc2_qtd, %struct.dwc2_qtd* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %66

41:                                               ; preds = %34
  %42 = load %struct.dwc2_qh*, %struct.dwc2_qh** %6, align 8
  %43 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %66

46:                                               ; preds = %41
  %47 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %48 = load %struct.dwc2_qh*, %struct.dwc2_qh** %6, align 8
  %49 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @dwc2_dump_channel_info(%struct.dwc2_hsotg* %47, i32* %50)
  %52 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %53 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %46
  %59 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %60 = load %struct.dwc2_qh*, %struct.dwc2_qh** %6, align 8
  %61 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* @DWC2_HC_XFER_URB_DEQUEUE, align 4
  %64 = call i32 @dwc2_hc_halt(%struct.dwc2_hsotg* %59, i32* %62, i32 %63)
  br label %65

65:                                               ; preds = %58, %46
  br label %66

66:                                               ; preds = %65, %41, %34
  %67 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %68 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %99, label %72

72:                                               ; preds = %66
  %73 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %7, align 8
  %74 = getelementptr inbounds %struct.dwc2_qtd, %struct.dwc2_qtd* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  store i64 %75, i64* %8, align 8
  %76 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %77 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %7, align 8
  %78 = load %struct.dwc2_qh*, %struct.dwc2_qh** %6, align 8
  %79 = call i32 @dwc2_hcd_qtd_unlink_and_free(%struct.dwc2_hsotg* %76, %struct.dwc2_qtd* %77, %struct.dwc2_qh* %78)
  %80 = load i64, i64* %8, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %72
  %83 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %84 = load %struct.dwc2_qh*, %struct.dwc2_qh** %6, align 8
  %85 = call i32 @dwc2_hcd_qh_deactivate(%struct.dwc2_hsotg* %83, %struct.dwc2_qh* %84, i32 0)
  %86 = load %struct.dwc2_qh*, %struct.dwc2_qh** %6, align 8
  %87 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %86, i32 0, i32 1
  store i32* null, i32** %87, align 8
  br label %98

88:                                               ; preds = %72
  %89 = load %struct.dwc2_qh*, %struct.dwc2_qh** %6, align 8
  %90 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %89, i32 0, i32 0
  %91 = call i64 @list_empty(i32* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %88
  %94 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %95 = load %struct.dwc2_qh*, %struct.dwc2_qh** %6, align 8
  %96 = call i32 @dwc2_hcd_qh_unlink(%struct.dwc2_hsotg* %94, %struct.dwc2_qh* %95)
  br label %97

97:                                               ; preds = %93, %88
  br label %98

98:                                               ; preds = %97, %82
  br label %104

99:                                               ; preds = %66
  %100 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %101 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %7, align 8
  %102 = load %struct.dwc2_qh*, %struct.dwc2_qh** %6, align 8
  %103 = call i32 @dwc2_hcd_qtd_unlink_and_free(%struct.dwc2_hsotg* %100, %struct.dwc2_qtd* %101, %struct.dwc2_qh* %102)
  br label %104

104:                                              ; preds = %99, %98
  store i32 0, i32* %3, align 4
  br label %105

105:                                              ; preds = %104, %27, %14
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @dwc2_dump_channel_info(%struct.dwc2_hsotg*, i32*) #1

declare dso_local i32 @dwc2_hc_halt(%struct.dwc2_hsotg*, i32*, i32) #1

declare dso_local i32 @dwc2_hcd_qtd_unlink_and_free(%struct.dwc2_hsotg*, %struct.dwc2_qtd*, %struct.dwc2_qh*) #1

declare dso_local i32 @dwc2_hcd_qh_deactivate(%struct.dwc2_hsotg*, %struct.dwc2_qh*, i32) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @dwc2_hcd_qh_unlink(%struct.dwc2_hsotg*, %struct.dwc2_qh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
