; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd_ddma.c_dwc2_hcd_qh_init_ddma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd_ddma.c_dwc2_hcd_qh_init_ddma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { i32, i32 }
%struct.dwc2_qh = type { i64, i64, i64 }

@.str = private unnamed_addr constant [59 x i8] c"SPLIT Transfers are not supported in Descriptor DMA mode.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@USB_ENDPOINT_XFER_ISOC = common dso_local global i64 0, align 8
@USB_ENDPOINT_XFER_INT = common dso_local global i64 0, align 8
@HCFG_FRLISTEN_64 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dwc2_hcd_qh_init_ddma(%struct.dwc2_hsotg* %0, %struct.dwc2_qh* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dwc2_hsotg*, align 8
  %6 = alloca %struct.dwc2_qh*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %5, align 8
  store %struct.dwc2_qh* %1, %struct.dwc2_qh** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.dwc2_qh*, %struct.dwc2_qh** %6, align 8
  %10 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %3
  %14 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %15 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @dev_err(i32 %16, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %8, align 4
  br label %64

20:                                               ; preds = %3
  %21 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %22 = load %struct.dwc2_qh*, %struct.dwc2_qh** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @dwc2_desc_list_alloc(%struct.dwc2_hsotg* %21, %struct.dwc2_qh* %22, i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %64

28:                                               ; preds = %20
  %29 = load %struct.dwc2_qh*, %struct.dwc2_qh** %6, align 8
  %30 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @USB_ENDPOINT_XFER_ISOC, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %40, label %34

34:                                               ; preds = %28
  %35 = load %struct.dwc2_qh*, %struct.dwc2_qh** %6, align 8
  %36 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @USB_ENDPOINT_XFER_INT, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %57

40:                                               ; preds = %34, %28
  %41 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %42 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %56, label %45

45:                                               ; preds = %40
  %46 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @dwc2_frame_list_alloc(%struct.dwc2_hsotg* %46, i32 %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %60

52:                                               ; preds = %45
  %53 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %54 = load i32, i32* @HCFG_FRLISTEN_64, align 4
  %55 = call i32 @dwc2_per_sched_enable(%struct.dwc2_hsotg* %53, i32 %54)
  br label %56

56:                                               ; preds = %52, %40
  br label %57

57:                                               ; preds = %56, %34
  %58 = load %struct.dwc2_qh*, %struct.dwc2_qh** %6, align 8
  %59 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %58, i32 0, i32 1
  store i64 0, i64* %59, align 8
  store i32 0, i32* %4, align 4
  br label %66

60:                                               ; preds = %51
  %61 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %62 = load %struct.dwc2_qh*, %struct.dwc2_qh** %6, align 8
  %63 = call i32 @dwc2_desc_list_free(%struct.dwc2_hsotg* %61, %struct.dwc2_qh* %62)
  br label %64

64:                                               ; preds = %60, %27, %13
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %64, %57
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dwc2_desc_list_alloc(%struct.dwc2_hsotg*, %struct.dwc2_qh*, i32) #1

declare dso_local i32 @dwc2_frame_list_alloc(%struct.dwc2_hsotg*, i32) #1

declare dso_local i32 @dwc2_per_sched_enable(%struct.dwc2_hsotg*, i32) #1

declare dso_local i32 @dwc2_desc_list_free(%struct.dwc2_hsotg*, %struct.dwc2_qh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
