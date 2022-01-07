; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_port.c_port_state_machine_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_port.c_port_state_machine_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_port = type { i32, %struct.sci_base_state_machine }
%struct.sci_base_state_machine = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isci_port*, i32)* @port_state_machine_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @port_state_machine_change(%struct.isci_port* %0, i32 %1) #0 {
  %3 = alloca %struct.isci_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sci_base_state_machine*, align 8
  %6 = alloca i32, align 4
  store %struct.isci_port* %0, %struct.isci_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.isci_port*, %struct.isci_port** %3, align 8
  %8 = getelementptr inbounds %struct.isci_port, %struct.isci_port* %7, i32 0, i32 1
  store %struct.sci_base_state_machine* %8, %struct.sci_base_state_machine** %5, align 8
  %9 = load %struct.sci_base_state_machine*, %struct.sci_base_state_machine** %5, align 8
  %10 = getelementptr inbounds %struct.sci_base_state_machine, %struct.sci_base_state_machine* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i64 @is_port_ready_state(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = call i64 @is_port_ready_state(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = load %struct.isci_port*, %struct.isci_port** %3, align 8
  %21 = getelementptr inbounds %struct.isci_port, %struct.isci_port* %20, i32 0, i32 0
  store i32 1, i32* %21, align 4
  br label %22

22:                                               ; preds = %19, %15, %2
  %23 = load %struct.sci_base_state_machine*, %struct.sci_base_state_machine** %5, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @sci_change_state(%struct.sci_base_state_machine* %23, i32 %24)
  %26 = load %struct.isci_port*, %struct.isci_port** %3, align 8
  %27 = getelementptr inbounds %struct.isci_port, %struct.isci_port* %26, i32 0, i32 0
  store i32 0, i32* %27, align 4
  ret void
}

declare dso_local i64 @is_port_ready_state(i32) #1

declare dso_local i32 @sci_change_state(%struct.sci_base_state_machine*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
