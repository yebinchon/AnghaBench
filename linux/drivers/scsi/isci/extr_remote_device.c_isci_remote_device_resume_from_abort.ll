; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_remote_device.c_isci_remote_device_resume_from_abort.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_remote_device.c_isci_remote_device_resume_from_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_host = type { i32 }
%struct.isci_remote_device = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@SCI_SUCCESS = common dso_local global i32 0, align 4
@IDEV_ABORT_PATH_RESUME_PENDING = common dso_local global i32 0, align 4
@IDEV_ABORT_PATH_ACTIVE = common dso_local global i32 0, align 4
@isci_remote_device_resume_from_abort_complete = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isci_remote_device_resume_from_abort(%struct.isci_host* %0, %struct.isci_remote_device* %1) #0 {
  %3 = alloca %struct.isci_host*, align 8
  %4 = alloca %struct.isci_remote_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.isci_host* %0, %struct.isci_host** %3, align 8
  store %struct.isci_remote_device* %1, %struct.isci_remote_device** %4, align 8
  %8 = load i32, i32* @SCI_SUCCESS, align 4
  store i32 %8, i32* %6, align 4
  %9 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %10 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %9, i32 0, i32 0
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.isci_remote_device*, %struct.isci_remote_device** %4, align 8
  %14 = getelementptr inbounds %struct.isci_remote_device, %struct.isci_remote_device* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.isci_remote_device*, %struct.isci_remote_device** %4, align 8
  %18 = getelementptr inbounds %struct.isci_remote_device, %struct.isci_remote_device* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 4
  %19 = load %struct.isci_remote_device*, %struct.isci_remote_device** %4, align 8
  %20 = getelementptr inbounds %struct.isci_remote_device, %struct.isci_remote_device* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.isci_remote_device*, %struct.isci_remote_device** %4, align 8
  %24 = getelementptr inbounds %struct.isci_remote_device, %struct.isci_remote_device* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @IDEV_ABORT_PATH_RESUME_PENDING, align 4
  %26 = load %struct.isci_remote_device*, %struct.isci_remote_device** %4, align 8
  %27 = getelementptr inbounds %struct.isci_remote_device, %struct.isci_remote_device* %26, i32 0, i32 0
  %28 = call i32 @set_bit(i32 %25, i32* %27)
  %29 = load i32, i32* @IDEV_ABORT_PATH_ACTIVE, align 4
  %30 = load %struct.isci_remote_device*, %struct.isci_remote_device** %4, align 8
  %31 = getelementptr inbounds %struct.isci_remote_device, %struct.isci_remote_device* %30, i32 0, i32 0
  %32 = call i32 @clear_bit(i32 %29, i32* %31)
  %33 = load %struct.isci_remote_device*, %struct.isci_remote_device** %4, align 8
  %34 = getelementptr inbounds %struct.isci_remote_device, %struct.isci_remote_device* %33, i32 0, i32 1
  %35 = call i32 @sci_remote_node_context_is_being_destroyed(%struct.TYPE_2__* %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %2
  %39 = load %struct.isci_remote_device*, %struct.isci_remote_device** %4, align 8
  %40 = load i32, i32* @isci_remote_device_resume_from_abort_complete, align 4
  %41 = load %struct.isci_remote_device*, %struct.isci_remote_device** %4, align 8
  %42 = call i32 @sci_remote_device_resume(%struct.isci_remote_device* %39, i32 %40, %struct.isci_remote_device* %41)
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %38, %2
  %44 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %45 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %44, i32 0, i32 0
  %46 = load i64, i64* %5, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32* %45, i64 %46)
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %58, label %50

50:                                               ; preds = %43
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @SCI_SUCCESS, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %56 = load %struct.isci_remote_device*, %struct.isci_remote_device** %4, align 8
  %57 = call i32 @isci_remote_device_wait_for_resume_from_abort(%struct.isci_host* %55, %struct.isci_remote_device* %56)
  br label %63

58:                                               ; preds = %50, %43
  %59 = load i32, i32* @IDEV_ABORT_PATH_RESUME_PENDING, align 4
  %60 = load %struct.isci_remote_device*, %struct.isci_remote_device** %4, align 8
  %61 = getelementptr inbounds %struct.isci_remote_device, %struct.isci_remote_device* %60, i32 0, i32 0
  %62 = call i32 @clear_bit(i32 %59, i32* %61)
  br label %63

63:                                               ; preds = %58, %54
  %64 = load i32, i32* %6, align 4
  ret i32 %64
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @sci_remote_node_context_is_being_destroyed(%struct.TYPE_2__*) #1

declare dso_local i32 @sci_remote_device_resume(%struct.isci_remote_device*, i32, %struct.isci_remote_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @isci_remote_device_wait_for_resume_from_abort(%struct.isci_host*, %struct.isci_remote_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
