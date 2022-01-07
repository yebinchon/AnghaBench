; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_remote_device.c_isci_dev_set_hang_detection_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_remote_device.c_isci_dev_set_hang_detection_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_remote_device = type { i32, i32, i32 }

@IDEV_RNC_LLHANG_ENABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @isci_dev_set_hang_detection_timeout(%struct.isci_remote_device* %0, i64 %1) #0 {
  %3 = alloca %struct.isci_remote_device*, align 8
  %4 = alloca i64, align 8
  store %struct.isci_remote_device* %0, %struct.isci_remote_device** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.isci_remote_device*, %struct.isci_remote_device** %3, align 8
  %6 = getelementptr inbounds %struct.isci_remote_device, %struct.isci_remote_device* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = call i64 @dev_is_sata(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %35

10:                                               ; preds = %2
  %11 = load i64, i64* %4, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %10
  %14 = load i32, i32* @IDEV_RNC_LLHANG_ENABLED, align 4
  %15 = load %struct.isci_remote_device*, %struct.isci_remote_device** %3, align 8
  %16 = getelementptr inbounds %struct.isci_remote_device, %struct.isci_remote_device* %15, i32 0, i32 1
  %17 = call i64 @test_and_set_bit(i32 %14, i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %35

20:                                               ; preds = %13
  br label %29

21:                                               ; preds = %10
  %22 = load i32, i32* @IDEV_RNC_LLHANG_ENABLED, align 4
  %23 = load %struct.isci_remote_device*, %struct.isci_remote_device** %3, align 8
  %24 = getelementptr inbounds %struct.isci_remote_device, %struct.isci_remote_device* %23, i32 0, i32 1
  %25 = call i32 @test_and_clear_bit(i32 %22, i32* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  br label %35

28:                                               ; preds = %21
  br label %29

29:                                               ; preds = %28, %20
  %30 = load %struct.isci_remote_device*, %struct.isci_remote_device** %3, align 8
  %31 = getelementptr inbounds %struct.isci_remote_device, %struct.isci_remote_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i64, i64* %4, align 8
  %34 = call i32 @sci_port_set_hang_detection_timeout(i32 %32, i64 %33)
  br label %35

35:                                               ; preds = %19, %27, %29, %2
  ret void
}

declare dso_local i64 @dev_is_sata(i32) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @sci_port_set_hang_detection_timeout(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
