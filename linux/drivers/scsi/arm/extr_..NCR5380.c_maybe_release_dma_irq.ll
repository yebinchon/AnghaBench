; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/arm/extr_..NCR5380.c_maybe_release_dma_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/arm/extr_..NCR5380.c_maybe_release_dma_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }
%struct.NCR5380_hostdata = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Scsi_Host*)* @maybe_release_dma_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @maybe_release_dma_irq(%struct.Scsi_Host* %0) #0 {
  %2 = alloca %struct.Scsi_Host*, align 8
  %3 = alloca %struct.NCR5380_hostdata*, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %2, align 8
  %4 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %5 = call %struct.NCR5380_hostdata* @shost_priv(%struct.Scsi_Host* %4)
  store %struct.NCR5380_hostdata* %5, %struct.NCR5380_hostdata** %3, align 8
  %6 = load %struct.NCR5380_hostdata*, %struct.NCR5380_hostdata** %3, align 8
  %7 = getelementptr inbounds %struct.NCR5380_hostdata, %struct.NCR5380_hostdata* %6, i32 0, i32 4
  %8 = call i64 @list_empty(i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %33

10:                                               ; preds = %1
  %11 = load %struct.NCR5380_hostdata*, %struct.NCR5380_hostdata** %3, align 8
  %12 = getelementptr inbounds %struct.NCR5380_hostdata, %struct.NCR5380_hostdata* %11, i32 0, i32 3
  %13 = call i64 @list_empty(i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %33

15:                                               ; preds = %10
  %16 = load %struct.NCR5380_hostdata*, %struct.NCR5380_hostdata** %3, align 8
  %17 = getelementptr inbounds %struct.NCR5380_hostdata, %struct.NCR5380_hostdata* %16, i32 0, i32 2
  %18 = call i64 @list_empty(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %15
  %21 = load %struct.NCR5380_hostdata*, %struct.NCR5380_hostdata** %3, align 8
  %22 = getelementptr inbounds %struct.NCR5380_hostdata, %struct.NCR5380_hostdata* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %20
  %26 = load %struct.NCR5380_hostdata*, %struct.NCR5380_hostdata** %3, align 8
  %27 = getelementptr inbounds %struct.NCR5380_hostdata, %struct.NCR5380_hostdata* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %32 = call i32 @NCR5380_release_dma_irq(%struct.Scsi_Host* %31)
  br label %33

33:                                               ; preds = %30, %25, %20, %15, %10, %1
  ret void
}

declare dso_local %struct.NCR5380_hostdata* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @NCR5380_release_dma_irq(%struct.Scsi_Host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
