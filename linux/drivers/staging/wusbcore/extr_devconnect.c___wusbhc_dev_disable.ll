; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_devconnect.c___wusbhc_dev_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_devconnect.c___wusbhc_dev_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wusbhc = type { %struct.device* }
%struct.device = type { i32 }
%struct.wusb_dev = type { i32 }
%struct.wuie_disconnect = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.wusb_dev* }

@.str = private unnamed_addr constant [44 x i8] c"DISCONNECT: no device at port %u, ignoring\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@WUIE_ID_DEVICE_DISCONNECT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"DISCONNECT: can't set MMC: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__wusbhc_dev_disable(%struct.wusbhc* %0, i32 %1) #0 {
  %3 = alloca %struct.wusbhc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.wusb_dev*, align 8
  %8 = alloca %struct.wuie_disconnect*, align 8
  store %struct.wusbhc* %0, %struct.wusbhc** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %10 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %9, i32 0, i32 0
  %11 = load %struct.device*, %struct.device** %10, align 8
  store %struct.device* %11, %struct.device** %6, align 8
  %12 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call %struct.TYPE_6__* @wusb_port_by_idx(%struct.wusbhc* %12, i32 %13)
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.wusb_dev*, %struct.wusb_dev** %15, align 8
  store %struct.wusb_dev* %16, %struct.wusb_dev** %7, align 8
  %17 = load %struct.wusb_dev*, %struct.wusb_dev** %7, align 8
  %18 = icmp eq %struct.wusb_dev* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load %struct.device*, %struct.device** %6, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @dev_dbg(%struct.device* %20, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %66

23:                                               ; preds = %2
  %24 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %25 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call %struct.TYPE_6__* @wusb_port_by_idx(%struct.wusbhc* %25, i32 %26)
  %28 = call i32 @__wusbhc_dev_disconnect(%struct.wusbhc* %24, %struct.TYPE_6__* %27)
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.wuie_disconnect* @kzalloc(i32 12, i32 %29)
  store %struct.wuie_disconnect* %30, %struct.wuie_disconnect** %8, align 8
  %31 = load %struct.wuie_disconnect*, %struct.wuie_disconnect** %8, align 8
  %32 = icmp eq %struct.wuie_disconnect* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  br label %66

34:                                               ; preds = %23
  %35 = load %struct.wuie_disconnect*, %struct.wuie_disconnect** %8, align 8
  %36 = getelementptr inbounds %struct.wuie_disconnect, %struct.wuie_disconnect* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  store i32 12, i32* %37, align 4
  %38 = load i32, i32* @WUIE_ID_DEVICE_DISCONNECT, align 4
  %39 = load %struct.wuie_disconnect*, %struct.wuie_disconnect** %8, align 8
  %40 = getelementptr inbounds %struct.wuie_disconnect, %struct.wuie_disconnect* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  store i32 %38, i32* %41, align 4
  %42 = load %struct.wusb_dev*, %struct.wusb_dev** %7, align 8
  %43 = getelementptr inbounds %struct.wusb_dev, %struct.wusb_dev* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.wuie_disconnect*, %struct.wuie_disconnect** %8, align 8
  %46 = getelementptr inbounds %struct.wuie_disconnect, %struct.wuie_disconnect* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %48 = load %struct.wuie_disconnect*, %struct.wuie_disconnect** %8, align 8
  %49 = getelementptr inbounds %struct.wuie_disconnect, %struct.wuie_disconnect* %48, i32 0, i32 0
  %50 = call i32 @wusbhc_mmcie_set(%struct.wusbhc* %47, i32 0, i32 0, %struct.TYPE_5__* %49)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %34
  %54 = load %struct.device*, %struct.device** %6, align 8
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @dev_err(%struct.device* %54, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  br label %63

57:                                               ; preds = %34
  %58 = call i32 @msleep(i32 28)
  %59 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %60 = load %struct.wuie_disconnect*, %struct.wuie_disconnect** %8, align 8
  %61 = getelementptr inbounds %struct.wuie_disconnect, %struct.wuie_disconnect* %60, i32 0, i32 0
  %62 = call i32 @wusbhc_mmcie_rm(%struct.wusbhc* %59, %struct.TYPE_5__* %61)
  br label %63

63:                                               ; preds = %57, %53
  %64 = load %struct.wuie_disconnect*, %struct.wuie_disconnect** %8, align 8
  %65 = call i32 @kfree(%struct.wuie_disconnect* %64)
  br label %66

66:                                               ; preds = %63, %33, %19
  ret void
}

declare dso_local %struct.TYPE_6__* @wusb_port_by_idx(%struct.wusbhc*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @__wusbhc_dev_disconnect(%struct.wusbhc*, %struct.TYPE_6__*) #1

declare dso_local %struct.wuie_disconnect* @kzalloc(i32, i32) #1

declare dso_local i32 @wusbhc_mmcie_set(%struct.wusbhc*, i32, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @wusbhc_mmcie_rm(%struct.wusbhc*, %struct.TYPE_5__*) #1

declare dso_local i32 @kfree(%struct.wuie_disconnect*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
