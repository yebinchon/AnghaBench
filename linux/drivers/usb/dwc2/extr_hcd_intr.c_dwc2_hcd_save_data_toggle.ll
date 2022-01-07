; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd_intr.c_dwc2_hcd_save_data_toggle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd_intr.c_dwc2_hcd_save_data_toggle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { i32 }
%struct.dwc2_host_chan = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }
%struct.dwc2_qtd = type { i8* }

@TSIZ_SC_MC_PID_MASK = common dso_local global i64 0, align 8
@TSIZ_SC_MC_PID_SHIFT = common dso_local global i64 0, align 8
@USB_ENDPOINT_XFER_CONTROL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"chan->qh must be specified for non-control eps\0A\00", align 1
@TSIZ_SC_MC_PID_DATA0 = common dso_local global i64 0, align 8
@DWC2_HC_PID_DATA0 = common dso_local global i8* null, align 8
@DWC2_HC_PID_DATA1 = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"qtd must be specified for control eps\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dwc2_hcd_save_data_toggle(%struct.dwc2_hsotg* %0, %struct.dwc2_host_chan* %1, i32 %2, %struct.dwc2_qtd* %3) #0 {
  %5 = alloca %struct.dwc2_hsotg*, align 8
  %6 = alloca %struct.dwc2_host_chan*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dwc2_qtd*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %5, align 8
  store %struct.dwc2_host_chan* %1, %struct.dwc2_host_chan** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.dwc2_qtd* %3, %struct.dwc2_qtd** %8, align 8
  %11 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @HCTSIZ(i32 %12)
  %14 = call i64 @dwc2_readl(%struct.dwc2_hsotg* %11, i32 %13)
  store i64 %14, i64* %9, align 8
  %15 = load i64, i64* %9, align 8
  %16 = load i64, i64* @TSIZ_SC_MC_PID_MASK, align 8
  %17 = and i64 %15, %16
  %18 = load i64, i64* @TSIZ_SC_MC_PID_SHIFT, align 8
  %19 = ashr i64 %17, %18
  store i64 %19, i64* %10, align 8
  %20 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %6, align 8
  %21 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @USB_ENDPOINT_XFER_CONTROL, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %57

25:                                               ; preds = %4
  %26 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %6, align 8
  %27 = icmp ne %struct.dwc2_host_chan* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %6, align 8
  %30 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = icmp ne %struct.TYPE_2__* %31, null
  %33 = xor i1 %32, true
  br label %34

34:                                               ; preds = %28, %25
  %35 = phi i1 [ true, %25 ], [ %33, %28 ]
  %36 = zext i1 %35 to i32
  %37 = call i64 @WARN(i32 %36, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %78

40:                                               ; preds = %34
  %41 = load i64, i64* %10, align 8
  %42 = load i64, i64* @TSIZ_SC_MC_PID_DATA0, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %40
  %45 = load i8*, i8** @DWC2_HC_PID_DATA0, align 8
  %46 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %6, align 8
  %47 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i8* %45, i8** %49, align 8
  br label %56

50:                                               ; preds = %40
  %51 = load i8*, i8** @DWC2_HC_PID_DATA1, align 8
  %52 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %6, align 8
  %53 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i8* %51, i8** %55, align 8
  br label %56

56:                                               ; preds = %50, %44
  br label %78

57:                                               ; preds = %4
  %58 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %8, align 8
  %59 = icmp ne %struct.dwc2_qtd* %58, null
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = call i64 @WARN(i32 %61, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  br label %78

65:                                               ; preds = %57
  %66 = load i64, i64* %10, align 8
  %67 = load i64, i64* @TSIZ_SC_MC_PID_DATA0, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = load i8*, i8** @DWC2_HC_PID_DATA0, align 8
  %71 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %8, align 8
  %72 = getelementptr inbounds %struct.dwc2_qtd, %struct.dwc2_qtd* %71, i32 0, i32 0
  store i8* %70, i8** %72, align 8
  br label %77

73:                                               ; preds = %65
  %74 = load i8*, i8** @DWC2_HC_PID_DATA1, align 8
  %75 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %8, align 8
  %76 = getelementptr inbounds %struct.dwc2_qtd, %struct.dwc2_qtd* %75, i32 0, i32 0
  store i8* %74, i8** %76, align 8
  br label %77

77:                                               ; preds = %73, %69
  br label %78

78:                                               ; preds = %39, %64, %77, %56
  ret void
}

declare dso_local i64 @dwc2_readl(%struct.dwc2_hsotg*, i32) #1

declare dso_local i32 @HCTSIZ(i32) #1

declare dso_local i64 @WARN(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
