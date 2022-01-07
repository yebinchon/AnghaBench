; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fc.c_zfcp_fc_exec_ct_job.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fc.c_zfcp_fc_exec_ct_job.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsg_job = type { i32, %struct.zfcp_fsf_ct_els* }
%struct.zfcp_fsf_ct_els = type { i32 }
%struct.zfcp_adapter = type { i32 }
%struct.zfcp_fc_wka_port = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@zfcp_fc_ct_job_handler = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bsg_job*, %struct.zfcp_adapter*)* @zfcp_fc_exec_ct_job to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfcp_fc_exec_ct_job(%struct.bsg_job* %0, %struct.zfcp_adapter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bsg_job*, align 8
  %5 = alloca %struct.zfcp_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.zfcp_fsf_ct_els*, align 8
  %8 = alloca %struct.zfcp_fc_wka_port*, align 8
  store %struct.bsg_job* %0, %struct.bsg_job** %4, align 8
  store %struct.zfcp_adapter* %1, %struct.zfcp_adapter** %5, align 8
  %9 = load %struct.bsg_job*, %struct.bsg_job** %4, align 8
  %10 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %9, i32 0, i32 1
  %11 = load %struct.zfcp_fsf_ct_els*, %struct.zfcp_fsf_ct_els** %10, align 8
  store %struct.zfcp_fsf_ct_els* %11, %struct.zfcp_fsf_ct_els** %7, align 8
  %12 = load %struct.bsg_job*, %struct.bsg_job** %4, align 8
  %13 = call %struct.zfcp_fc_wka_port* @zfcp_fc_job_wka_port(%struct.bsg_job* %12)
  store %struct.zfcp_fc_wka_port* %13, %struct.zfcp_fc_wka_port** %8, align 8
  %14 = load %struct.zfcp_fc_wka_port*, %struct.zfcp_fc_wka_port** %8, align 8
  %15 = icmp ne %struct.zfcp_fc_wka_port* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %45

19:                                               ; preds = %2
  %20 = load %struct.zfcp_fc_wka_port*, %struct.zfcp_fc_wka_port** %8, align 8
  %21 = call i32 @zfcp_fc_wka_port_get(%struct.zfcp_fc_wka_port* %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %3, align 4
  br label %45

26:                                               ; preds = %19
  %27 = load i32, i32* @zfcp_fc_ct_job_handler, align 4
  %28 = load %struct.zfcp_fsf_ct_els*, %struct.zfcp_fsf_ct_els** %7, align 8
  %29 = getelementptr inbounds %struct.zfcp_fsf_ct_els, %struct.zfcp_fsf_ct_els* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.zfcp_fc_wka_port*, %struct.zfcp_fc_wka_port** %8, align 8
  %31 = load %struct.zfcp_fsf_ct_els*, %struct.zfcp_fsf_ct_els** %7, align 8
  %32 = load %struct.bsg_job*, %struct.bsg_job** %4, align 8
  %33 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @HZ, align 4
  %36 = sdiv i32 %34, %35
  %37 = call i32 @zfcp_fsf_send_ct(%struct.zfcp_fc_wka_port* %30, %struct.zfcp_fsf_ct_els* %31, i32* null, i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %26
  %41 = load %struct.zfcp_fc_wka_port*, %struct.zfcp_fc_wka_port** %8, align 8
  %42 = call i32 @zfcp_fc_wka_port_put(%struct.zfcp_fc_wka_port* %41)
  br label %43

43:                                               ; preds = %40, %26
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %43, %24, %16
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local %struct.zfcp_fc_wka_port* @zfcp_fc_job_wka_port(%struct.bsg_job*) #1

declare dso_local i32 @zfcp_fc_wka_port_get(%struct.zfcp_fc_wka_port*) #1

declare dso_local i32 @zfcp_fsf_send_ct(%struct.zfcp_fc_wka_port*, %struct.zfcp_fsf_ct_els*, i32*, i32) #1

declare dso_local i32 @zfcp_fc_wka_port_put(%struct.zfcp_fc_wka_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
