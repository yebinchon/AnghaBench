; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fc.c_zfcp_fc_exec_els_job.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fc.c_zfcp_fc_exec_els_job.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsg_job = type { i32, %struct.fc_bsg_request*, %struct.zfcp_fsf_ct_els* }
%struct.fc_bsg_request = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.zfcp_fsf_ct_els = type { i32 }
%struct.zfcp_adapter = type { i32 }
%struct.fc_rport = type { i32 }
%struct.zfcp_port = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@zfcp_fc_ct_els_job_handler = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bsg_job*, %struct.zfcp_adapter*)* @zfcp_fc_exec_els_job to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfcp_fc_exec_els_job(%struct.bsg_job* %0, %struct.zfcp_adapter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bsg_job*, align 8
  %5 = alloca %struct.zfcp_adapter*, align 8
  %6 = alloca %struct.zfcp_fsf_ct_els*, align 8
  %7 = alloca %struct.fc_rport*, align 8
  %8 = alloca %struct.fc_bsg_request*, align 8
  %9 = alloca %struct.zfcp_port*, align 8
  %10 = alloca i32, align 4
  store %struct.bsg_job* %0, %struct.bsg_job** %4, align 8
  store %struct.zfcp_adapter* %1, %struct.zfcp_adapter** %5, align 8
  %11 = load %struct.bsg_job*, %struct.bsg_job** %4, align 8
  %12 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %11, i32 0, i32 2
  %13 = load %struct.zfcp_fsf_ct_els*, %struct.zfcp_fsf_ct_els** %12, align 8
  store %struct.zfcp_fsf_ct_els* %13, %struct.zfcp_fsf_ct_els** %6, align 8
  %14 = load %struct.bsg_job*, %struct.bsg_job** %4, align 8
  %15 = call %struct.fc_rport* @fc_bsg_to_rport(%struct.bsg_job* %14)
  store %struct.fc_rport* %15, %struct.fc_rport** %7, align 8
  %16 = load %struct.bsg_job*, %struct.bsg_job** %4, align 8
  %17 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %16, i32 0, i32 1
  %18 = load %struct.fc_bsg_request*, %struct.fc_bsg_request** %17, align 8
  store %struct.fc_bsg_request* %18, %struct.fc_bsg_request** %8, align 8
  %19 = load %struct.fc_rport*, %struct.fc_rport** %7, align 8
  %20 = icmp ne %struct.fc_rport* %19, null
  br i1 %20, label %21, label %39

21:                                               ; preds = %2
  %22 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  %23 = load %struct.fc_rport*, %struct.fc_rport** %7, align 8
  %24 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.zfcp_port* @zfcp_get_port_by_wwpn(%struct.zfcp_adapter* %22, i32 %25)
  store %struct.zfcp_port* %26, %struct.zfcp_port** %9, align 8
  %27 = load %struct.zfcp_port*, %struct.zfcp_port** %9, align 8
  %28 = icmp ne %struct.zfcp_port* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %21
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %59

32:                                               ; preds = %21
  %33 = load %struct.zfcp_port*, %struct.zfcp_port** %9, align 8
  %34 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %10, align 4
  %36 = load %struct.zfcp_port*, %struct.zfcp_port** %9, align 8
  %37 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %36, i32 0, i32 0
  %38 = call i32 @put_device(i32* %37)
  br label %46

39:                                               ; preds = %2
  %40 = load %struct.fc_bsg_request*, %struct.fc_bsg_request** %8, align 8
  %41 = getelementptr inbounds %struct.fc_bsg_request, %struct.fc_bsg_request* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @ntoh24(i32 %44)
  store i32 %45, i32* %10, align 4
  br label %46

46:                                               ; preds = %39, %32
  %47 = load i32, i32* @zfcp_fc_ct_els_job_handler, align 4
  %48 = load %struct.zfcp_fsf_ct_els*, %struct.zfcp_fsf_ct_els** %6, align 8
  %49 = getelementptr inbounds %struct.zfcp_fsf_ct_els, %struct.zfcp_fsf_ct_els* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  %51 = load i32, i32* %10, align 4
  %52 = load %struct.zfcp_fsf_ct_els*, %struct.zfcp_fsf_ct_els** %6, align 8
  %53 = load %struct.bsg_job*, %struct.bsg_job** %4, align 8
  %54 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @HZ, align 4
  %57 = sdiv i32 %55, %56
  %58 = call i32 @zfcp_fsf_send_els(%struct.zfcp_adapter* %50, i32 %51, %struct.zfcp_fsf_ct_els* %52, i32 %57)
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %46, %29
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local %struct.fc_rport* @fc_bsg_to_rport(%struct.bsg_job*) #1

declare dso_local %struct.zfcp_port* @zfcp_get_port_by_wwpn(%struct.zfcp_adapter*, i32) #1

declare dso_local i32 @put_device(i32*) #1

declare dso_local i32 @ntoh24(i32) #1

declare dso_local i32 @zfcp_fsf_send_els(%struct.zfcp_adapter*, i32, %struct.zfcp_fsf_ct_els*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
