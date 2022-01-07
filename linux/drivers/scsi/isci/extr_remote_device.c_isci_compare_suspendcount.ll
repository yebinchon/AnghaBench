; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_remote_device.c_isci_compare_suspendcount.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_remote_device.c_isci_compare_suspendcount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_remote_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isci_remote_device*, i64)* @isci_compare_suspendcount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isci_compare_suspendcount(%struct.isci_remote_device* %0, i64 %1) #0 {
  %3 = alloca %struct.isci_remote_device*, align 8
  %4 = alloca i64, align 8
  store %struct.isci_remote_device* %0, %struct.isci_remote_device** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = call i32 (...) @smp_rmb()
  %6 = load i64, i64* %4, align 8
  %7 = load %struct.isci_remote_device*, %struct.isci_remote_device** %3, align 8
  %8 = getelementptr inbounds %struct.isci_remote_device, %struct.isci_remote_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %6, %10
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = load %struct.isci_remote_device*, %struct.isci_remote_device** %3, align 8
  %14 = getelementptr inbounds %struct.isci_remote_device, %struct.isci_remote_device* %13, i32 0, i32 0
  %15 = call i64 @sci_remote_node_context_is_being_destroyed(%struct.TYPE_2__* %14)
  %16 = icmp ne i64 %15, 0
  br label %17

17:                                               ; preds = %12, %2
  %18 = phi i1 [ true, %2 ], [ %16, %12 ]
  %19 = zext i1 %18 to i32
  ret i32 %19
}

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i64 @sci_remote_node_context_is_being_destroyed(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
