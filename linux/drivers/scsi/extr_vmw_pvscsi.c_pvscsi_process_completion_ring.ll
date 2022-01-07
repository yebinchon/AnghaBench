; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_vmw_pvscsi.c_pvscsi_process_completion_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_vmw_pvscsi.c_pvscsi_process_completion_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvscsi_adapter = type { %struct.PVSCSIRingCmpDesc*, %struct.PVSCSIRingsState* }
%struct.PVSCSIRingCmpDesc = type { i32 }
%struct.PVSCSIRingsState = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pvscsi_adapter*)* @pvscsi_process_completion_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pvscsi_process_completion_ring(%struct.pvscsi_adapter* %0) #0 {
  %2 = alloca %struct.pvscsi_adapter*, align 8
  %3 = alloca %struct.PVSCSIRingsState*, align 8
  %4 = alloca %struct.PVSCSIRingCmpDesc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.PVSCSIRingCmpDesc*, align 8
  store %struct.pvscsi_adapter* %0, %struct.pvscsi_adapter** %2, align 8
  %7 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %7, i32 0, i32 1
  %9 = load %struct.PVSCSIRingsState*, %struct.PVSCSIRingsState** %8, align 8
  store %struct.PVSCSIRingsState* %9, %struct.PVSCSIRingsState** %3, align 8
  %10 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %10, i32 0, i32 0
  %12 = load %struct.PVSCSIRingCmpDesc*, %struct.PVSCSIRingCmpDesc** %11, align 8
  store %struct.PVSCSIRingCmpDesc* %12, %struct.PVSCSIRingCmpDesc** %4, align 8
  %13 = load %struct.PVSCSIRingsState*, %struct.PVSCSIRingsState** %3, align 8
  %14 = getelementptr inbounds %struct.PVSCSIRingsState, %struct.PVSCSIRingsState* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %5, align 4
  br label %16

16:                                               ; preds = %24, %1
  %17 = load %struct.PVSCSIRingsState*, %struct.PVSCSIRingsState** %3, align 8
  %18 = getelementptr inbounds %struct.PVSCSIRingsState, %struct.PVSCSIRingsState* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.PVSCSIRingsState*, %struct.PVSCSIRingsState** %3, align 8
  %21 = getelementptr inbounds %struct.PVSCSIRingsState, %struct.PVSCSIRingsState* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %19, %22
  br i1 %23, label %24, label %43

24:                                               ; preds = %16
  %25 = load %struct.PVSCSIRingCmpDesc*, %struct.PVSCSIRingCmpDesc** %4, align 8
  %26 = load %struct.PVSCSIRingsState*, %struct.PVSCSIRingsState** %3, align 8
  %27 = getelementptr inbounds %struct.PVSCSIRingsState, %struct.PVSCSIRingsState* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @MASK(i32 %29)
  %31 = and i32 %28, %30
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.PVSCSIRingCmpDesc, %struct.PVSCSIRingCmpDesc* %25, i64 %32
  store %struct.PVSCSIRingCmpDesc* %33, %struct.PVSCSIRingCmpDesc** %6, align 8
  %34 = call i32 (...) @barrier()
  %35 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %2, align 8
  %36 = load %struct.PVSCSIRingCmpDesc*, %struct.PVSCSIRingCmpDesc** %6, align 8
  %37 = call i32 @pvscsi_complete_request(%struct.pvscsi_adapter* %35, %struct.PVSCSIRingCmpDesc* %36)
  %38 = call i32 (...) @barrier()
  %39 = load %struct.PVSCSIRingsState*, %struct.PVSCSIRingsState** %3, align 8
  %40 = getelementptr inbounds %struct.PVSCSIRingsState, %struct.PVSCSIRingsState* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4
  br label %16

43:                                               ; preds = %16
  ret void
}

declare dso_local i32 @MASK(i32) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i32 @pvscsi_complete_request(%struct.pvscsi_adapter*, %struct.PVSCSIRingCmpDesc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
