; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_task.c_isci_device_io_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_task.c_isci_device_io_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_remote_device = type { i32 }
%struct.sas_task = type { i32 }

@IDEV_IO_READY = common dso_local global i32 0, align 4
@IDEV_IO_NCQERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isci_remote_device*, %struct.sas_task*)* @isci_device_io_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isci_device_io_ready(%struct.isci_remote_device* %0, %struct.sas_task* %1) #0 {
  %3 = alloca %struct.isci_remote_device*, align 8
  %4 = alloca %struct.sas_task*, align 8
  store %struct.isci_remote_device* %0, %struct.isci_remote_device** %3, align 8
  store %struct.sas_task* %1, %struct.sas_task** %4, align 8
  %5 = load %struct.isci_remote_device*, %struct.isci_remote_device** %3, align 8
  %6 = icmp ne %struct.isci_remote_device* %5, null
  br i1 %6, label %7, label %28

7:                                                ; preds = %2
  %8 = load i32, i32* @IDEV_IO_READY, align 4
  %9 = load %struct.isci_remote_device*, %struct.isci_remote_device** %3, align 8
  %10 = getelementptr inbounds %struct.isci_remote_device, %struct.isci_remote_device* %9, i32 0, i32 0
  %11 = call i64 @test_bit(i32 %8, i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %25, label %13

13:                                               ; preds = %7
  %14 = load i32, i32* @IDEV_IO_NCQERROR, align 4
  %15 = load %struct.isci_remote_device*, %struct.isci_remote_device** %3, align 8
  %16 = getelementptr inbounds %struct.isci_remote_device, %struct.isci_remote_device* %15, i32 0, i32 0
  %17 = call i64 @test_bit(i32 %14, i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = load %struct.sas_task*, %struct.sas_task** %4, align 8
  %21 = call i64 @isci_task_is_ncq_recovery(%struct.sas_task* %20)
  %22 = icmp ne i64 %21, 0
  br label %23

23:                                               ; preds = %19, %13
  %24 = phi i1 [ false, %13 ], [ %22, %19 ]
  br label %25

25:                                               ; preds = %23, %7
  %26 = phi i1 [ true, %7 ], [ %24, %23 ]
  %27 = zext i1 %26 to i32
  br label %29

28:                                               ; preds = %2
  br label %29

29:                                               ; preds = %28, %25
  %30 = phi i32 [ %27, %25 ], [ 0, %28 ]
  ret i32 %30
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @isci_task_is_ncq_recovery(%struct.sas_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
