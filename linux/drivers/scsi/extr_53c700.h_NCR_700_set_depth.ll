; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_53c700.h_NCR_700_set_depth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_53c700.h_NCR_700_set_depth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { %struct.NCR_700_Device_Parameters* }
%struct.NCR_700_Device_Parameters = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_device*, i32)* @NCR_700_set_depth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @NCR_700_set_depth(%struct.scsi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.NCR_700_Device_Parameters*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %7 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %6, i32 0, i32 0
  %8 = load %struct.NCR_700_Device_Parameters*, %struct.NCR_700_Device_Parameters** %7, align 8
  store %struct.NCR_700_Device_Parameters* %8, %struct.NCR_700_Device_Parameters** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.NCR_700_Device_Parameters*, %struct.NCR_700_Device_Parameters** %5, align 8
  %11 = getelementptr inbounds %struct.NCR_700_Device_Parameters, %struct.NCR_700_Device_Parameters* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
