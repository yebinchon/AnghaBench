; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_host.h_scirdev_to_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_host.h_scirdev_to_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.isci_remote_device = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.device }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.device* (%struct.isci_remote_device*)* @scirdev_to_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.device* @scirdev_to_dev(%struct.isci_remote_device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.isci_remote_device*, align 8
  store %struct.isci_remote_device* %0, %struct.isci_remote_device** %3, align 8
  %4 = load %struct.isci_remote_device*, %struct.isci_remote_device** %3, align 8
  %5 = icmp ne %struct.isci_remote_device* %4, null
  br i1 %5, label %6, label %18

6:                                                ; preds = %1
  %7 = load %struct.isci_remote_device*, %struct.isci_remote_device** %3, align 8
  %8 = getelementptr inbounds %struct.isci_remote_device, %struct.isci_remote_device* %7, i32 0, i32 0
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = icmp ne %struct.TYPE_6__* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %6
  %12 = load %struct.isci_remote_device*, %struct.isci_remote_device** %3, align 8
  %13 = getelementptr inbounds %struct.isci_remote_device, %struct.isci_remote_device* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = icmp ne %struct.TYPE_5__* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %11, %6, %1
  store %struct.device* null, %struct.device** %2, align 8
  br label %28

19:                                               ; preds = %11
  %20 = load %struct.isci_remote_device*, %struct.isci_remote_device** %3, align 8
  %21 = getelementptr inbounds %struct.isci_remote_device, %struct.isci_remote_device* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store %struct.device* %27, %struct.device** %2, align 8
  br label %28

28:                                               ; preds = %19, %18
  %29 = load %struct.device*, %struct.device** %2, align 8
  ret %struct.device* %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
