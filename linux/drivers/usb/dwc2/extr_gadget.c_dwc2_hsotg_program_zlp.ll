; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_gadget.c_dwc2_hsotg_program_zlp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_gadget.c_dwc2_hsotg_program_zlp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { i32 }
%struct.dwc2_hsotg_ep = type { i32, i64, i32 }

@.str = private unnamed_addr constant [36 x i8] c"Sending zero-length packet on ep%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Receiving zero-length packet on ep%d\0A\00", align 1
@DXEPCTL_CNAK = common dso_local global i32 0, align 4
@DXEPCTL_EPENA = common dso_local global i32 0, align 4
@DXEPCTL_USBACTEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc2_hsotg*, %struct.dwc2_hsotg_ep*)* @dwc2_hsotg_program_zlp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc2_hsotg_program_zlp(%struct.dwc2_hsotg* %0, %struct.dwc2_hsotg_ep* %1) #0 {
  %3 = alloca %struct.dwc2_hsotg*, align 8
  %4 = alloca %struct.dwc2_hsotg_ep*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %3, align 8
  store %struct.dwc2_hsotg_ep* %1, %struct.dwc2_hsotg_ep** %4, align 8
  %10 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %4, align 8
  %11 = getelementptr inbounds %struct.dwc2_hsotg_ep, %struct.dwc2_hsotg_ep* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %6, align 4
  %13 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %4, align 8
  %14 = getelementptr inbounds %struct.dwc2_hsotg_ep, %struct.dwc2_hsotg_ep* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @DIEPCTL(i32 %18)
  br label %23

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @DOEPCTL(i32 %21)
  br label %23

23:                                               ; preds = %20, %17
  %24 = phi i32 [ %19, %17 ], [ %22, %20 ]
  store i32 %24, i32* %7, align 4
  %25 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %4, align 8
  %26 = getelementptr inbounds %struct.dwc2_hsotg_ep, %struct.dwc2_hsotg_ep* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @DIEPTSIZ(i32 %30)
  br label %35

32:                                               ; preds = %23
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @DOEPTSIZ(i32 %33)
  br label %35

35:                                               ; preds = %32, %29
  %36 = phi i32 [ %31, %29 ], [ %34, %32 ]
  store i32 %36, i32* %8, align 4
  %37 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %4, align 8
  %38 = getelementptr inbounds %struct.dwc2_hsotg_ep, %struct.dwc2_hsotg_ep* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %35
  %42 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %43 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @dev_dbg(i32 %44, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %45)
  br label %53

47:                                               ; preds = %35
  %48 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %49 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @dev_dbg(i32 %50, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %47, %41
  %54 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %55 = call i64 @using_desc_dma(%struct.dwc2_hsotg* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %71

57:                                               ; preds = %53
  %58 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %4, align 8
  %59 = getelementptr inbounds %struct.dwc2_hsotg_ep, %struct.dwc2_hsotg_ep* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %57
  %64 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %65 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %4, align 8
  %66 = call i32 @dwc2_gadget_set_ep0_desc_chain(%struct.dwc2_hsotg* %64, %struct.dwc2_hsotg_ep* %65)
  br label %67

67:                                               ; preds = %63, %57
  %68 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %4, align 8
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @dwc2_gadget_config_nonisoc_xfer_ddma(%struct.dwc2_hsotg_ep* %68, i32 %69, i32 0)
  br label %80

71:                                               ; preds = %53
  %72 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %73 = call i32 @DXEPTSIZ_MC(i32 1)
  %74 = call i32 @DXEPTSIZ_PKTCNT(i32 1)
  %75 = or i32 %73, %74
  %76 = call i32 @DXEPTSIZ_XFERSIZE(i32 0)
  %77 = or i32 %75, %76
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @dwc2_writel(%struct.dwc2_hsotg* %72, i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %71, %67
  %81 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @dwc2_readl(%struct.dwc2_hsotg* %81, i32 %82)
  store i32 %83, i32* %5, align 4
  %84 = load i32, i32* @DXEPCTL_CNAK, align 4
  %85 = load i32, i32* %5, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %5, align 4
  %87 = load i32, i32* @DXEPCTL_EPENA, align 4
  %88 = load i32, i32* %5, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %5, align 4
  %90 = load i32, i32* @DXEPCTL_USBACTEP, align 4
  %91 = load i32, i32* %5, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %5, align 4
  %93 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @dwc2_writel(%struct.dwc2_hsotg* %93, i32 %94, i32 %95)
  ret void
}

declare dso_local i32 @DIEPCTL(i32) #1

declare dso_local i32 @DOEPCTL(i32) #1

declare dso_local i32 @DIEPTSIZ(i32) #1

declare dso_local i32 @DOEPTSIZ(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i64 @using_desc_dma(%struct.dwc2_hsotg*) #1

declare dso_local i32 @dwc2_gadget_set_ep0_desc_chain(%struct.dwc2_hsotg*, %struct.dwc2_hsotg_ep*) #1

declare dso_local i32 @dwc2_gadget_config_nonisoc_xfer_ddma(%struct.dwc2_hsotg_ep*, i32, i32) #1

declare dso_local i32 @dwc2_writel(%struct.dwc2_hsotg*, i32, i32) #1

declare dso_local i32 @DXEPTSIZ_MC(i32) #1

declare dso_local i32 @DXEPTSIZ_PKTCNT(i32) #1

declare dso_local i32 @DXEPTSIZ_XFERSIZE(i32) #1

declare dso_local i32 @dwc2_readl(%struct.dwc2_hsotg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
