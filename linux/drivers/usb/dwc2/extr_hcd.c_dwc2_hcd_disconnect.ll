; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd.c_dwc2_hcd_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd.c_dwc2_hcd_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64 }

@GINTMSK = common dso_local global i32 0, align 4
@GINTSTS_NPTXFEMP = common dso_local global i32 0, align 4
@GINTSTS_PTXFEMP = common dso_local global i32 0, align 4
@GINTSTS_HCHINT = common dso_local global i32 0, align 4
@GINTSTS = common dso_local global i32 0, align 4
@OTG_STATE_A_SUSPEND = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"Disconnect: PortPower off\0A\00", align 1
@HPRT0 = common dso_local global i32 0, align 4
@HPRT0_CONNDET = common dso_local global i32 0, align 4
@HPRT0_CONNSTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dwc2_hcd_disconnect(%struct.dwc2_hsotg* %0, i32 %1) #0 {
  %3 = alloca %struct.dwc2_hsotg*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %8 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store i32 1, i32* %10, align 8
  %11 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %12 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  store i64 0, i64* %14, align 8
  %15 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %16 = load i32, i32* @GINTMSK, align 4
  %17 = call i32 @dwc2_readl(%struct.dwc2_hsotg* %15, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* @GINTSTS_NPTXFEMP, align 4
  %19 = load i32, i32* @GINTSTS_PTXFEMP, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @GINTSTS_HCHINT, align 4
  %22 = or i32 %20, %21
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %5, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %5, align 4
  %26 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @GINTMSK, align 4
  %29 = call i32 @dwc2_writel(%struct.dwc2_hsotg* %26, i32 %27, i32 %28)
  %30 = load i32, i32* @GINTSTS_NPTXFEMP, align 4
  %31 = load i32, i32* @GINTSTS_PTXFEMP, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @GINTSTS_HCHINT, align 4
  %34 = or i32 %32, %33
  store i32 %34, i32* %5, align 4
  %35 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @GINTSTS, align 4
  %38 = call i32 @dwc2_writel(%struct.dwc2_hsotg* %35, i32 %36, i32 %37)
  %39 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %40 = call i64 @dwc2_is_device_mode(%struct.dwc2_hsotg* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %59

42:                                               ; preds = %2
  %43 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %44 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @OTG_STATE_A_SUSPEND, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %42
  %49 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %50 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @dev_dbg(i32 %51, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %53 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %54 = load i32, i32* @HPRT0, align 4
  %55 = call i32 @dwc2_writel(%struct.dwc2_hsotg* %53, i32 0, i32 %54)
  br label %56

56:                                               ; preds = %48, %42
  %57 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %58 = call i32 @dwc2_disable_host_interrupts(%struct.dwc2_hsotg* %57)
  br label %59

59:                                               ; preds = %56, %2
  %60 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %61 = call i32 @dwc2_kill_all_urbs(%struct.dwc2_hsotg* %60)
  %62 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %63 = call i64 @dwc2_is_host_mode(%struct.dwc2_hsotg* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %67 = call i32 @dwc2_hcd_cleanup_channels(%struct.dwc2_hsotg* %66)
  br label %68

68:                                               ; preds = %65, %59
  %69 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %70 = call i32 @dwc2_host_disconnect(%struct.dwc2_hsotg* %69)
  %71 = load i32, i32* %4, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %90, label %73

73:                                               ; preds = %68
  %74 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %75 = load i32, i32* @HPRT0, align 4
  %76 = call i32 @dwc2_readl(%struct.dwc2_hsotg* %74, i32 %75)
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @HPRT0_CONNDET, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %89, label %81

81:                                               ; preds = %73
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* @HPRT0_CONNSTS, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %88 = call i32 @dwc2_hcd_connect(%struct.dwc2_hsotg* %87)
  br label %89

89:                                               ; preds = %86, %81, %73
  br label %90

90:                                               ; preds = %89, %68
  ret void
}

declare dso_local i32 @dwc2_readl(%struct.dwc2_hsotg*, i32) #1

declare dso_local i32 @dwc2_writel(%struct.dwc2_hsotg*, i32, i32) #1

declare dso_local i64 @dwc2_is_device_mode(%struct.dwc2_hsotg*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @dwc2_disable_host_interrupts(%struct.dwc2_hsotg*) #1

declare dso_local i32 @dwc2_kill_all_urbs(%struct.dwc2_hsotg*) #1

declare dso_local i64 @dwc2_is_host_mode(%struct.dwc2_hsotg*) #1

declare dso_local i32 @dwc2_hcd_cleanup_channels(%struct.dwc2_hsotg*) #1

declare dso_local i32 @dwc2_host_disconnect(%struct.dwc2_hsotg*) #1

declare dso_local i32 @dwc2_hcd_connect(%struct.dwc2_hsotg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
