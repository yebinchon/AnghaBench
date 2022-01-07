; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_fc.c_fc_bsg_dispatch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_fc.c_fc_bsg_dispatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsg_job = type { i32 }
%struct.Scsi_Host = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bsg_job*)* @fc_bsg_dispatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fc_bsg_dispatch(%struct.bsg_job* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bsg_job*, align 8
  %4 = alloca %struct.Scsi_Host*, align 8
  store %struct.bsg_job* %0, %struct.bsg_job** %3, align 8
  %5 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %6 = call %struct.Scsi_Host* @fc_bsg_to_shost(%struct.bsg_job* %5)
  store %struct.Scsi_Host* %6, %struct.Scsi_Host** %4, align 8
  %7 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %8 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @scsi_is_fc_rport(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %14 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %15 = call i32 @fc_bsg_rport_dispatch(%struct.Scsi_Host* %13, %struct.bsg_job* %14)
  store i32 %15, i32* %2, align 4
  br label %20

16:                                               ; preds = %1
  %17 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %18 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %19 = call i32 @fc_bsg_host_dispatch(%struct.Scsi_Host* %17, %struct.bsg_job* %18)
  store i32 %19, i32* %2, align 4
  br label %20

20:                                               ; preds = %16, %12
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local %struct.Scsi_Host* @fc_bsg_to_shost(%struct.bsg_job*) #1

declare dso_local i64 @scsi_is_fc_rport(i32) #1

declare dso_local i32 @fc_bsg_rport_dispatch(%struct.Scsi_Host*, %struct.bsg_job*) #1

declare dso_local i32 @fc_bsg_host_dispatch(%struct.Scsi_Host*, %struct.bsg_job*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
