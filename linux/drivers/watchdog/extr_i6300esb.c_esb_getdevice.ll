; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_i6300esb.c_esb_getdevice.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_i6300esb.c_esb_getdevice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esb_dev = type { %struct.TYPE_6__*, i32* }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"failed to enable device\0A\00", align 1
@ESB_MODULE_NAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to request region\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"failed to get BASEADDR\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.esb_dev*)* @esb_getdevice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @esb_getdevice(%struct.esb_dev* %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.esb_dev*, align 8
  store %struct.esb_dev* %0, %struct.esb_dev** %3, align 8
  %4 = load %struct.esb_dev*, %struct.esb_dev** %3, align 8
  %5 = getelementptr inbounds %struct.esb_dev, %struct.esb_dev* %4, i32 0, i32 0
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %7 = call i64 @pci_enable_device(%struct.TYPE_6__* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.esb_dev*, %struct.esb_dev** %3, align 8
  %11 = getelementptr inbounds %struct.esb_dev, %struct.esb_dev* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = call i32 @dev_err(i32* %13, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %62

15:                                               ; preds = %1
  %16 = load %struct.esb_dev*, %struct.esb_dev** %3, align 8
  %17 = getelementptr inbounds %struct.esb_dev, %struct.esb_dev* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = load i32, i32* @ESB_MODULE_NAME, align 4
  %20 = call i64 @pci_request_region(%struct.TYPE_6__* %18, i32 0, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %15
  %23 = load %struct.esb_dev*, %struct.esb_dev** %3, align 8
  %24 = getelementptr inbounds %struct.esb_dev, %struct.esb_dev* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = call i32 @dev_err(i32* %26, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %57

28:                                               ; preds = %15
  %29 = load %struct.esb_dev*, %struct.esb_dev** %3, align 8
  %30 = getelementptr inbounds %struct.esb_dev, %struct.esb_dev* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = call i32* @pci_ioremap_bar(%struct.TYPE_6__* %31, i32 0)
  %33 = load %struct.esb_dev*, %struct.esb_dev** %3, align 8
  %34 = getelementptr inbounds %struct.esb_dev, %struct.esb_dev* %33, i32 0, i32 1
  store i32* %32, i32** %34, align 8
  %35 = load %struct.esb_dev*, %struct.esb_dev** %3, align 8
  %36 = getelementptr inbounds %struct.esb_dev, %struct.esb_dev* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %28
  %40 = load %struct.esb_dev*, %struct.esb_dev** %3, align 8
  %41 = getelementptr inbounds %struct.esb_dev, %struct.esb_dev* %40, i32 0, i32 0
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = call i32 @dev_err(i32* %43, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %52

45:                                               ; preds = %28
  %46 = load %struct.esb_dev*, %struct.esb_dev** %3, align 8
  %47 = getelementptr inbounds %struct.esb_dev, %struct.esb_dev* %46, i32 0, i32 0
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load %struct.esb_dev*, %struct.esb_dev** %3, align 8
  %51 = call i32 @dev_set_drvdata(i32* %49, %struct.esb_dev* %50)
  store i8 1, i8* %2, align 1
  br label %63

52:                                               ; preds = %39
  %53 = load %struct.esb_dev*, %struct.esb_dev** %3, align 8
  %54 = getelementptr inbounds %struct.esb_dev, %struct.esb_dev* %53, i32 0, i32 0
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = call i32 @pci_release_region(%struct.TYPE_6__* %55, i32 0)
  br label %57

57:                                               ; preds = %52, %22
  %58 = load %struct.esb_dev*, %struct.esb_dev** %3, align 8
  %59 = getelementptr inbounds %struct.esb_dev, %struct.esb_dev* %58, i32 0, i32 0
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = call i32 @pci_disable_device(%struct.TYPE_6__* %60)
  br label %62

62:                                               ; preds = %57, %9
  store i8 0, i8* %2, align 1
  br label %63

63:                                               ; preds = %62, %45
  %64 = load i8, i8* %2, align 1
  ret i8 %64
}

declare dso_local i64 @pci_enable_device(%struct.TYPE_6__*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i64 @pci_request_region(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32* @pci_ioremap_bar(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.esb_dev*) #1

declare dso_local i32 @pci_release_region(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @pci_disable_device(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
