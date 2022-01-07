; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fc.c_zfcp_fc_exec_bsg_job.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fc.c_zfcp_fc_exec_bsg_job.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsg_job = type { %struct.TYPE_4__, %struct.TYPE_3__, %struct.fc_bsg_request*, %struct.zfcp_fsf_ct_els* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.fc_bsg_request = type { i32 }
%struct.zfcp_fsf_ct_els = type { %struct.bsg_job*, i32, i32 }
%struct.Scsi_Host = type { i64* }
%struct.zfcp_adapter = type { i32 }
%struct.fc_rport = type { i32 }

@ZFCP_STATUS_COMMON_OPEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfcp_fc_exec_bsg_job(%struct.bsg_job* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bsg_job*, align 8
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.zfcp_adapter*, align 8
  %6 = alloca %struct.zfcp_fsf_ct_els*, align 8
  %7 = alloca %struct.fc_bsg_request*, align 8
  %8 = alloca %struct.fc_rport*, align 8
  store %struct.bsg_job* %0, %struct.bsg_job** %3, align 8
  %9 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %10 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %9, i32 0, i32 3
  %11 = load %struct.zfcp_fsf_ct_els*, %struct.zfcp_fsf_ct_els** %10, align 8
  store %struct.zfcp_fsf_ct_els* %11, %struct.zfcp_fsf_ct_els** %6, align 8
  %12 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %13 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %12, i32 0, i32 2
  %14 = load %struct.fc_bsg_request*, %struct.fc_bsg_request** %13, align 8
  store %struct.fc_bsg_request* %14, %struct.fc_bsg_request** %7, align 8
  %15 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %16 = call %struct.fc_rport* @fc_bsg_to_rport(%struct.bsg_job* %15)
  store %struct.fc_rport* %16, %struct.fc_rport** %8, align 8
  %17 = load %struct.fc_rport*, %struct.fc_rport** %8, align 8
  %18 = icmp ne %struct.fc_rport* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load %struct.fc_rport*, %struct.fc_rport** %8, align 8
  %21 = call %struct.Scsi_Host* @rport_to_shost(%struct.fc_rport* %20)
  br label %25

22:                                               ; preds = %1
  %23 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %24 = call %struct.Scsi_Host* @fc_bsg_to_shost(%struct.bsg_job* %23)
  br label %25

25:                                               ; preds = %22, %19
  %26 = phi %struct.Scsi_Host* [ %21, %19 ], [ %24, %22 ]
  store %struct.Scsi_Host* %26, %struct.Scsi_Host** %4, align 8
  %27 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %28 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 0
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to %struct.zfcp_adapter*
  store %struct.zfcp_adapter* %32, %struct.zfcp_adapter** %5, align 8
  %33 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  %34 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %33, i32 0, i32 0
  %35 = call i32 @atomic_read(i32* %34)
  %36 = load i32, i32* @ZFCP_STATUS_COMMON_OPEN, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %25
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %72

42:                                               ; preds = %25
  %43 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %44 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.zfcp_fsf_ct_els*, %struct.zfcp_fsf_ct_els** %6, align 8
  %48 = getelementptr inbounds %struct.zfcp_fsf_ct_els, %struct.zfcp_fsf_ct_els* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  %49 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %50 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.zfcp_fsf_ct_els*, %struct.zfcp_fsf_ct_els** %6, align 8
  %54 = getelementptr inbounds %struct.zfcp_fsf_ct_els, %struct.zfcp_fsf_ct_els* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 8
  %55 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %56 = load %struct.zfcp_fsf_ct_els*, %struct.zfcp_fsf_ct_els** %6, align 8
  %57 = getelementptr inbounds %struct.zfcp_fsf_ct_els, %struct.zfcp_fsf_ct_els* %56, i32 0, i32 0
  store %struct.bsg_job* %55, %struct.bsg_job** %57, align 8
  %58 = load %struct.fc_bsg_request*, %struct.fc_bsg_request** %7, align 8
  %59 = getelementptr inbounds %struct.fc_bsg_request, %struct.fc_bsg_request* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  switch i32 %60, label %69 [
    i32 128, label %61
    i32 130, label %61
    i32 129, label %65
    i32 131, label %65
  ]

61:                                               ; preds = %42, %42
  %62 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %63 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  %64 = call i32 @zfcp_fc_exec_els_job(%struct.bsg_job* %62, %struct.zfcp_adapter* %63)
  store i32 %64, i32* %2, align 4
  br label %72

65:                                               ; preds = %42, %42
  %66 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %67 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  %68 = call i32 @zfcp_fc_exec_ct_job(%struct.bsg_job* %66, %struct.zfcp_adapter* %67)
  store i32 %68, i32* %2, align 4
  br label %72

69:                                               ; preds = %42
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %69, %65, %61, %39
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local %struct.fc_rport* @fc_bsg_to_rport(%struct.bsg_job*) #1

declare dso_local %struct.Scsi_Host* @rport_to_shost(%struct.fc_rport*) #1

declare dso_local %struct.Scsi_Host* @fc_bsg_to_shost(%struct.bsg_job*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @zfcp_fc_exec_els_job(%struct.bsg_job*, %struct.zfcp_adapter*) #1

declare dso_local i32 @zfcp_fc_exec_ct_job(%struct.bsg_job*, %struct.zfcp_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
