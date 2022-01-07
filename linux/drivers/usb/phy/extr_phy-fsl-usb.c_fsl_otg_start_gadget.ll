; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-fsl-usb.c_fsl_otg_start_gadget.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-fsl-usb.c_fsl_otg_start_gadget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.otg_fsm = type { %struct.usb_otg* }
%struct.usb_otg = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.device* }
%struct.device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.device*, i32)*, i32 (%struct.device*)* }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"gadget %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@otg_suspend_state = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fsl_otg_start_gadget(%struct.otg_fsm* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.otg_fsm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_otg*, align 8
  %7 = alloca %struct.device*, align 8
  store %struct.otg_fsm* %0, %struct.otg_fsm** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.otg_fsm*, %struct.otg_fsm** %4, align 8
  %9 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %8, i32 0, i32 0
  %10 = load %struct.usb_otg*, %struct.usb_otg** %9, align 8
  store %struct.usb_otg* %10, %struct.usb_otg** %6, align 8
  %11 = load %struct.usb_otg*, %struct.usb_otg** %6, align 8
  %12 = getelementptr inbounds %struct.usb_otg, %struct.usb_otg* %11, i32 0, i32 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = icmp ne %struct.TYPE_5__* %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load %struct.usb_otg*, %struct.usb_otg** %6, align 8
  %17 = getelementptr inbounds %struct.usb_otg, %struct.usb_otg* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.device*, %struct.device** %20, align 8
  %22 = icmp ne %struct.device* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %15, %2
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %74

26:                                               ; preds = %15
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %31 = call i32 @VDBG(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %30)
  %32 = load %struct.usb_otg*, %struct.usb_otg** %6, align 8
  %33 = getelementptr inbounds %struct.usb_otg, %struct.usb_otg* %32, i32 0, i32 0
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load %struct.device*, %struct.device** %36, align 8
  store %struct.device* %37, %struct.device** %7, align 8
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %56

40:                                               ; preds = %26
  %41 = load %struct.device*, %struct.device** %7, align 8
  %42 = getelementptr inbounds %struct.device, %struct.device* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i32 (%struct.device*)*, i32 (%struct.device*)** %44, align 8
  %46 = icmp ne i32 (%struct.device*)* %45, null
  br i1 %46, label %47, label %55

47:                                               ; preds = %40
  %48 = load %struct.device*, %struct.device** %7, align 8
  %49 = getelementptr inbounds %struct.device, %struct.device* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i32 (%struct.device*)*, i32 (%struct.device*)** %51, align 8
  %53 = load %struct.device*, %struct.device** %7, align 8
  %54 = call i32 %52(%struct.device* %53)
  br label %55

55:                                               ; preds = %47, %40
  br label %73

56:                                               ; preds = %26
  %57 = load %struct.device*, %struct.device** %7, align 8
  %58 = getelementptr inbounds %struct.device, %struct.device* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32 (%struct.device*, i32)*, i32 (%struct.device*, i32)** %60, align 8
  %62 = icmp ne i32 (%struct.device*, i32)* %61, null
  br i1 %62, label %63, label %72

63:                                               ; preds = %56
  %64 = load %struct.device*, %struct.device** %7, align 8
  %65 = getelementptr inbounds %struct.device, %struct.device* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32 (%struct.device*, i32)*, i32 (%struct.device*, i32)** %67, align 8
  %69 = load %struct.device*, %struct.device** %7, align 8
  %70 = load i32, i32* @otg_suspend_state, align 4
  %71 = call i32 %68(%struct.device* %69, i32 %70)
  br label %72

72:                                               ; preds = %63, %56
  br label %73

73:                                               ; preds = %72, %55
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %73, %23
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @VDBG(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
