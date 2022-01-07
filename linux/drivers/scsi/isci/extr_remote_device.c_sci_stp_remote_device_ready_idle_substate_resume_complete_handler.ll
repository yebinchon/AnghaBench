; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_remote_device.c_sci_stp_remote_device_ready_idle_substate_resume_complete_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_remote_device.c_sci_stp_remote_device_ready_idle_substate_resume_complete_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_remote_device = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { %struct.isci_host* }
%struct.isci_host = type { i32 }

@SCI_STP_DEV_NCQ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @sci_stp_remote_device_ready_idle_substate_resume_complete_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sci_stp_remote_device_ready_idle_substate_resume_complete_handler(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.isci_remote_device*, align 8
  %4 = alloca %struct.isci_host*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.isci_remote_device*
  store %struct.isci_remote_device* %6, %struct.isci_remote_device** %3, align 8
  %7 = load %struct.isci_remote_device*, %struct.isci_remote_device** %3, align 8
  %8 = getelementptr inbounds %struct.isci_remote_device, %struct.isci_remote_device* %7, i32 0, i32 1
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.isci_host*, %struct.isci_host** %10, align 8
  store %struct.isci_host* %11, %struct.isci_host** %4, align 8
  %12 = load %struct.isci_remote_device*, %struct.isci_remote_device** %3, align 8
  %13 = getelementptr inbounds %struct.isci_remote_device, %struct.isci_remote_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SCI_STP_DEV_NCQ, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load %struct.isci_host*, %struct.isci_host** %4, align 8
  %20 = load %struct.isci_remote_device*, %struct.isci_remote_device** %3, align 8
  %21 = call i32 @isci_remote_device_ready(%struct.isci_host* %19, %struct.isci_remote_device* %20)
  br label %22

22:                                               ; preds = %18, %1
  ret void
}

declare dso_local i32 @isci_remote_device_ready(%struct.isci_host*, %struct.isci_remote_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
