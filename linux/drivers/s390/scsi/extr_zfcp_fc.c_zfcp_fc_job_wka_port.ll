; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fc.c_zfcp_fc_job_wka_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fc.c_zfcp_fc_job_wka_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_fc_wka_port = type { i32 }
%struct.bsg_job = type { %struct.fc_bsg_request* }
%struct.fc_bsg_request = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.zfcp_adapter = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.zfcp_fc_wka_port, %struct.zfcp_fc_wka_port, %struct.zfcp_fc_wka_port, %struct.zfcp_fc_wka_port }
%struct.fc_rport = type { i32 }
%struct.Scsi_Host = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.zfcp_fc_wka_port* (%struct.bsg_job*)* @zfcp_fc_job_wka_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.zfcp_fc_wka_port* @zfcp_fc_job_wka_port(%struct.bsg_job* %0) #0 {
  %2 = alloca %struct.zfcp_fc_wka_port*, align 8
  %3 = alloca %struct.bsg_job*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.zfcp_adapter*, align 8
  %7 = alloca %struct.fc_bsg_request*, align 8
  %8 = alloca %struct.fc_rport*, align 8
  %9 = alloca %struct.Scsi_Host*, align 8
  store %struct.bsg_job* %0, %struct.bsg_job** %3, align 8
  %10 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %11 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %10, i32 0, i32 0
  %12 = load %struct.fc_bsg_request*, %struct.fc_bsg_request** %11, align 8
  store %struct.fc_bsg_request* %12, %struct.fc_bsg_request** %7, align 8
  %13 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %14 = call %struct.fc_rport* @fc_bsg_to_rport(%struct.bsg_job* %13)
  store %struct.fc_rport* %14, %struct.fc_rport** %8, align 8
  %15 = load %struct.fc_bsg_request*, %struct.fc_bsg_request** %7, align 8
  %16 = getelementptr inbounds %struct.fc_bsg_request, %struct.fc_bsg_request* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = and i32 %20, -16777216
  %22 = lshr i32 %21, 24
  store i32 %22, i32* %5, align 4
  %23 = load %struct.fc_rport*, %struct.fc_rport** %8, align 8
  %24 = icmp ne %struct.fc_rport* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %1
  %26 = load %struct.fc_rport*, %struct.fc_rport** %8, align 8
  %27 = call %struct.Scsi_Host* @rport_to_shost(%struct.fc_rport* %26)
  br label %31

28:                                               ; preds = %1
  %29 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %30 = call %struct.Scsi_Host* @fc_bsg_to_shost(%struct.bsg_job* %29)
  br label %31

31:                                               ; preds = %28, %25
  %32 = phi %struct.Scsi_Host* [ %27, %25 ], [ %30, %28 ]
  store %struct.Scsi_Host* %32, %struct.Scsi_Host** %9, align 8
  %33 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %34 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 0
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to %struct.zfcp_adapter*
  store %struct.zfcp_adapter* %38, %struct.zfcp_adapter** %6, align 8
  %39 = load i32, i32* %5, align 4
  switch i32 %39, label %60 [
    i32 131, label %40
    i32 129, label %45
    i32 128, label %50
    i32 130, label %55
  ]

40:                                               ; preds = %31
  %41 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %6, align 8
  %42 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %41, i32 0, i32 0
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 3
  store %struct.zfcp_fc_wka_port* %44, %struct.zfcp_fc_wka_port** %2, align 8
  br label %61

45:                                               ; preds = %31
  %46 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %6, align 8
  %47 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %46, i32 0, i32 0
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 2
  store %struct.zfcp_fc_wka_port* %49, %struct.zfcp_fc_wka_port** %2, align 8
  br label %61

50:                                               ; preds = %31
  %51 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %6, align 8
  %52 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %51, i32 0, i32 0
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  store %struct.zfcp_fc_wka_port* %54, %struct.zfcp_fc_wka_port** %2, align 8
  br label %61

55:                                               ; preds = %31
  %56 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %6, align 8
  %57 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %56, i32 0, i32 0
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  store %struct.zfcp_fc_wka_port* %59, %struct.zfcp_fc_wka_port** %2, align 8
  br label %61

60:                                               ; preds = %31
  store %struct.zfcp_fc_wka_port* null, %struct.zfcp_fc_wka_port** %2, align 8
  br label %61

61:                                               ; preds = %60, %55, %50, %45, %40
  %62 = load %struct.zfcp_fc_wka_port*, %struct.zfcp_fc_wka_port** %2, align 8
  ret %struct.zfcp_fc_wka_port* %62
}

declare dso_local %struct.fc_rport* @fc_bsg_to_rport(%struct.bsg_job*) #1

declare dso_local %struct.Scsi_Host* @rport_to_shost(%struct.fc_rport*) #1

declare dso_local %struct.Scsi_Host* @fc_bsg_to_shost(%struct.bsg_job*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
