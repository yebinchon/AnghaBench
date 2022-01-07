; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd.c_dwc2_hcd_urb_enqueue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd.c_dwc2_hcd_urb_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { i32, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.dwc2_hcd_urb = type { i32 }
%struct.dwc2_qh = type { i32 }
%struct.dwc2_qtd = type { %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64 }

@.str = private unnamed_addr constant [15 x i8] c"Not connected\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@USB_SPEED_LOW = common dso_local global i32 0, align 4
@GHWCFG2_FS_PHY_TYPE_DEDICATED = common dso_local global i64 0, align 8
@GHWCFG2_HS_PHY_TYPE_UTMI = common dso_local global i64 0, align 8
@HPRT0 = common dso_local global i32 0, align 4
@HPRT0_SPD_MASK = common dso_local global i64 0, align 8
@HPRT0_SPD_SHIFT = common dso_local global i64 0, align 8
@HPRT0_SPD_FULL_SPEED = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [60 x i8] c"DWC OTG HCD URB Enqueue failed adding QTD. Error status %d\0A\00", align 1
@GINTMSK = common dso_local global i32 0, align 4
@GINTSTS_SOF = common dso_local global i64 0, align 8
@USB_ENDPOINT_XFER_BULK = common dso_local global i64 0, align 8
@URB_GIVEBACK_ASAP = common dso_local global i32 0, align 4
@DWC2_TRANSACTION_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwc2_hsotg*, %struct.dwc2_hcd_urb*, %struct.dwc2_qh*, %struct.dwc2_qtd*)* @dwc2_hcd_urb_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc2_hcd_urb_enqueue(%struct.dwc2_hsotg* %0, %struct.dwc2_hcd_urb* %1, %struct.dwc2_qh* %2, %struct.dwc2_qtd* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dwc2_hsotg*, align 8
  %7 = alloca %struct.dwc2_hcd_urb*, align 8
  %8 = alloca %struct.dwc2_qh*, align 8
  %9 = alloca %struct.dwc2_qtd*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %6, align 8
  store %struct.dwc2_hcd_urb* %1, %struct.dwc2_hcd_urb** %7, align 8
  store %struct.dwc2_qh* %2, %struct.dwc2_qh** %8, align 8
  store %struct.dwc2_qtd* %3, %struct.dwc2_qtd** %9, align 8
  %16 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %6, align 8
  %17 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %4
  %23 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %6, align 8
  %24 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 (i32, i8*, ...) @dev_err(i32 %25, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %129

29:                                               ; preds = %4
  %30 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %6, align 8
  %31 = load %struct.dwc2_hcd_urb*, %struct.dwc2_hcd_urb** %7, align 8
  %32 = getelementptr inbounds %struct.dwc2_hcd_urb, %struct.dwc2_hcd_urb* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @dwc2_host_get_speed(%struct.dwc2_hsotg* %30, i32 %33)
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* @USB_SPEED_LOW, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %68

38:                                               ; preds = %29
  %39 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %6, align 8
  %40 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @GHWCFG2_FS_PHY_TYPE_DEDICATED, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %68

45:                                               ; preds = %38
  %46 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %6, align 8
  %47 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @GHWCFG2_HS_PHY_TYPE_UTMI, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %68

52:                                               ; preds = %45
  %53 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %6, align 8
  %54 = load i32, i32* @HPRT0, align 4
  %55 = call i64 @dwc2_readl(%struct.dwc2_hsotg* %53, i32 %54)
  store i64 %55, i64* %13, align 8
  %56 = load i64, i64* %13, align 8
  %57 = load i64, i64* @HPRT0_SPD_MASK, align 8
  %58 = and i64 %56, %57
  %59 = load i64, i64* @HPRT0_SPD_SHIFT, align 8
  %60 = ashr i64 %58, %59
  store i64 %60, i64* %14, align 8
  %61 = load i64, i64* %14, align 8
  %62 = load i64, i64* @HPRT0_SPD_FULL_SPEED, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %52
  %65 = load i32, i32* @ENODEV, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %5, align 4
  br label %129

67:                                               ; preds = %52
  br label %68

68:                                               ; preds = %67, %45, %38, %29
  %69 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %9, align 8
  %70 = icmp ne %struct.dwc2_qtd* %69, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %68
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %5, align 4
  br label %129

74:                                               ; preds = %68
  %75 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %9, align 8
  %76 = load %struct.dwc2_hcd_urb*, %struct.dwc2_hcd_urb** %7, align 8
  %77 = call i32 @dwc2_hcd_qtd_init(%struct.dwc2_qtd* %75, %struct.dwc2_hcd_urb* %76)
  %78 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %6, align 8
  %79 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %9, align 8
  %80 = load %struct.dwc2_qh*, %struct.dwc2_qh** %8, align 8
  %81 = call i32 @dwc2_hcd_qtd_add(%struct.dwc2_hsotg* %78, %struct.dwc2_qtd* %79, %struct.dwc2_qh* %80)
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %11, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %74
  %85 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %6, align 8
  %86 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %11, align 4
  %89 = call i32 (i32, i8*, ...) @dev_err(i32 %87, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* %11, align 4
  store i32 %90, i32* %5, align 4
  br label %129

91:                                               ; preds = %74
  %92 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %6, align 8
  %93 = load i32, i32* @GINTMSK, align 4
  %94 = call i64 @dwc2_readl(%struct.dwc2_hsotg* %92, i32 %93)
  store i64 %94, i64* %10, align 8
  %95 = load i64, i64* %10, align 8
  %96 = load i64, i64* @GINTSTS_SOF, align 8
  %97 = and i64 %95, %96
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %128, label %99

99:                                               ; preds = %91
  %100 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %9, align 8
  %101 = getelementptr inbounds %struct.dwc2_qtd, %struct.dwc2_qtd* %100, i32 0, i32 1
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @USB_ENDPOINT_XFER_BULK, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %117

107:                                              ; preds = %99
  %108 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %9, align 8
  %109 = getelementptr inbounds %struct.dwc2_qtd, %struct.dwc2_qtd* %108, i32 0, i32 0
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @URB_GIVEBACK_ASAP, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %107
  store i32 0, i32* %5, align 4
  br label %129

117:                                              ; preds = %107, %99
  %118 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %6, align 8
  %119 = call i32 @dwc2_hcd_select_transactions(%struct.dwc2_hsotg* %118)
  store i32 %119, i32* %15, align 4
  %120 = load i32, i32* %15, align 4
  %121 = load i32, i32* @DWC2_TRANSACTION_NONE, align 4
  %122 = icmp ne i32 %120, %121
  br i1 %122, label %123, label %127

123:                                              ; preds = %117
  %124 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %6, align 8
  %125 = load i32, i32* %15, align 4
  %126 = call i32 @dwc2_hcd_queue_transactions(%struct.dwc2_hsotg* %124, i32 %125)
  br label %127

127:                                              ; preds = %123, %117
  br label %128

128:                                              ; preds = %127, %91
  store i32 0, i32* %5, align 4
  br label %129

129:                                              ; preds = %128, %116, %84, %71, %64, %22
  %130 = load i32, i32* %5, align 4
  ret i32 %130
}

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @dwc2_host_get_speed(%struct.dwc2_hsotg*, i32) #1

declare dso_local i64 @dwc2_readl(%struct.dwc2_hsotg*, i32) #1

declare dso_local i32 @dwc2_hcd_qtd_init(%struct.dwc2_qtd*, %struct.dwc2_hcd_urb*) #1

declare dso_local i32 @dwc2_hcd_qtd_add(%struct.dwc2_hsotg*, %struct.dwc2_qtd*, %struct.dwc2_qh*) #1

declare dso_local i32 @dwc2_hcd_select_transactions(%struct.dwc2_hsotg*) #1

declare dso_local i32 @dwc2_hcd_queue_transactions(%struct.dwc2_hsotg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
