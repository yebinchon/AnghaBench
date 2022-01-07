; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_core.c_dwc2_force_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_core.c_dwc2_force_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { i64, i32 }

@.str = private unnamed_addr constant [20 x i8] c"Forcing mode to %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"host\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@USB_DR_MODE_PERIPHERAL = common dso_local global i64 0, align 8
@USB_DR_MODE_HOST = common dso_local global i64 0, align 8
@GUSBCFG = common dso_local global i32 0, align 4
@GUSBCFG_FORCEHOSTMODE = common dso_local global i32 0, align 4
@GUSBCFG_FORCEDEVMODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dwc2_force_mode(%struct.dwc2_hsotg* %0, i32 %1) #0 {
  %3 = alloca %struct.dwc2_hsotg*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %9 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %15 = call i32 @dev_dbg(i32 %10, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %14)
  %16 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %17 = call i32 @dwc2_hw_is_otg(%struct.dwc2_hsotg* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  br label %84

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %25 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @USB_DR_MODE_PERIPHERAL, align 8
  %28 = icmp eq i64 %26, %27
  br label %29

29:                                               ; preds = %23, %20
  %30 = phi i1 [ false, %20 ], [ %28, %23 ]
  %31 = zext i1 %30 to i32
  %32 = call i64 @WARN_ON(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %84

35:                                               ; preds = %29
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %35
  %39 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %40 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @USB_DR_MODE_HOST, align 8
  %43 = icmp eq i64 %41, %42
  br label %44

44:                                               ; preds = %38, %35
  %45 = phi i1 [ false, %35 ], [ %43, %38 ]
  %46 = zext i1 %45 to i32
  %47 = call i64 @WARN_ON(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %84

50:                                               ; preds = %44
  %51 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %52 = load i32, i32* @GUSBCFG, align 4
  %53 = call i32 @dwc2_readl(%struct.dwc2_hsotg* %51, i32 %52)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %4, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = load i32, i32* @GUSBCFG_FORCEHOSTMODE, align 4
  br label %60

58:                                               ; preds = %50
  %59 = load i32, i32* @GUSBCFG_FORCEDEVMODE, align 4
  br label %60

60:                                               ; preds = %58, %56
  %61 = phi i32 [ %57, %56 ], [ %59, %58 ]
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %4, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load i32, i32* @GUSBCFG_FORCEDEVMODE, align 4
  br label %68

66:                                               ; preds = %60
  %67 = load i32, i32* @GUSBCFG_FORCEHOSTMODE, align 4
  br label %68

68:                                               ; preds = %66, %64
  %69 = phi i32 [ %65, %64 ], [ %67, %66 ]
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = xor i32 %70, -1
  %72 = load i32, i32* %5, align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* %5, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %5, align 4
  %77 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* @GUSBCFG, align 4
  %80 = call i32 @dwc2_writel(%struct.dwc2_hsotg* %77, i32 %78, i32 %79)
  %81 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %82 = load i32, i32* %4, align 4
  %83 = call i32 @dwc2_wait_for_mode(%struct.dwc2_hsotg* %81, i32 %82)
  br label %84

84:                                               ; preds = %68, %49, %34, %19
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, i8*) #1

declare dso_local i32 @dwc2_hw_is_otg(%struct.dwc2_hsotg*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @dwc2_readl(%struct.dwc2_hsotg*, i32) #1

declare dso_local i32 @dwc2_writel(%struct.dwc2_hsotg*, i32, i32) #1

declare dso_local i32 @dwc2_wait_for_mode(%struct.dwc2_hsotg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
