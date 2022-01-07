; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_mvumi.c_mvumi_reset_host_9580.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_mvumi.c_mvumi_reset_host_9580.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvumi_hba = type { %struct.TYPE_6__*, %struct.TYPE_5__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }

@FW_STATE_ABORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"enable device failed\0A\00", align 1
@FAILED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"set master failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mvumi_hba*)* @mvumi_reset_host_9580 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvumi_reset_host_9580(%struct.mvumi_hba* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mvumi_hba*, align 8
  store %struct.mvumi_hba* %0, %struct.mvumi_hba** %3, align 8
  %4 = load i32, i32* @FW_STATE_ABORT, align 4
  %5 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %6 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %5, i32 0, i32 2
  store i32 %4, i32* %6, align 8
  %7 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %8 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %7, i32 0, i32 1
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @iowrite32(i32 0, i32 %11)
  %13 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %14 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %13, i32 0, i32 1
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @iowrite32(i32 15, i32 %17)
  %19 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %20 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %19, i32 0, i32 1
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @iowrite32(i32 16, i32 %23)
  %25 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %26 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %25, i32 0, i32 1
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @iowrite32(i32 16, i32 %29)
  %31 = call i32 @msleep(i32 100)
  %32 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %33 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = call i32 @pci_disable_device(%struct.TYPE_6__* %34)
  %36 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %37 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = call i64 @pci_enable_device(%struct.TYPE_6__* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %1
  %42 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %43 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %42, i32 0, i32 0
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = call i32 @dev_err(i32* %45, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* @FAILED, align 4
  store i32 %47, i32* %2, align 4
  br label %73

48:                                               ; preds = %1
  %49 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %50 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %49, i32 0, i32 0
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = call i64 @mvumi_pci_set_master(%struct.TYPE_6__* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %48
  %55 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %56 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %55, i32 0, i32 0
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = call i32 @dev_err(i32* %58, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i32, i32* @FAILED, align 4
  store i32 %60, i32* %2, align 4
  br label %73

61:                                               ; preds = %48
  %62 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %63 = call i32 @mvumi_restore_bar_addr(%struct.mvumi_hba* %62)
  %64 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %65 = call i32 @mvumi_wait_for_fw(%struct.mvumi_hba* %64)
  %66 = load i32, i32* @FAILED, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %61
  %69 = load i32, i32* @FAILED, align 4
  store i32 %69, i32* %2, align 4
  br label %73

70:                                               ; preds = %61
  %71 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %72 = call i32 @mvumi_wait_for_outstanding(%struct.mvumi_hba* %71)
  store i32 %72, i32* %2, align 4
  br label %73

73:                                               ; preds = %70, %68, %54, %41
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i32 @iowrite32(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @pci_disable_device(%struct.TYPE_6__*) #1

declare dso_local i64 @pci_enable_device(%struct.TYPE_6__*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i64 @mvumi_pci_set_master(%struct.TYPE_6__*) #1

declare dso_local i32 @mvumi_restore_bar_addr(%struct.mvumi_hba*) #1

declare dso_local i32 @mvumi_wait_for_fw(%struct.mvumi_hba*) #1

declare dso_local i32 @mvumi_wait_for_outstanding(%struct.mvumi_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
