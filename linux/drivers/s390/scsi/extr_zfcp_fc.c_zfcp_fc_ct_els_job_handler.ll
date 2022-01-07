; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fc.c_zfcp_fc_ct_els_job_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fc.c_zfcp_fc_ct_els_job_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsg_job = type { %struct.TYPE_4__, %struct.fc_bsg_reply*, %struct.zfcp_fsf_ct_els* }
%struct.TYPE_4__ = type { i32 }
%struct.fc_bsg_reply = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.zfcp_fsf_ct_els = type { i64 }

@FC_CTELS_STATUS_OK = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @zfcp_fc_ct_els_job_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfcp_fc_ct_els_job_handler(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.bsg_job*, align 8
  %4 = alloca %struct.zfcp_fsf_ct_els*, align 8
  %5 = alloca %struct.fc_bsg_reply*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.bsg_job*
  store %struct.bsg_job* %7, %struct.bsg_job** %3, align 8
  %8 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %9 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %8, i32 0, i32 2
  %10 = load %struct.zfcp_fsf_ct_els*, %struct.zfcp_fsf_ct_els** %9, align 8
  store %struct.zfcp_fsf_ct_els* %10, %struct.zfcp_fsf_ct_els** %4, align 8
  %11 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %12 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %11, i32 0, i32 1
  %13 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %12, align 8
  store %struct.fc_bsg_reply* %13, %struct.fc_bsg_reply** %5, align 8
  %14 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %15 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %5, align 8
  %19 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @FC_CTELS_STATUS_OK, align 4
  %21 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %5, align 8
  %22 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  store i32 %20, i32* %24, align 4
  %25 = load %struct.zfcp_fsf_ct_els*, %struct.zfcp_fsf_ct_els** %4, align 8
  %26 = getelementptr inbounds %struct.zfcp_fsf_ct_els, %struct.zfcp_fsf_ct_els* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %1
  %30 = load i32, i32* @EIO, align 4
  %31 = sub nsw i32 0, %30
  br label %33

32:                                               ; preds = %1
  br label %33

33:                                               ; preds = %32, %29
  %34 = phi i32 [ %31, %29 ], [ 0, %32 ]
  %35 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %5, align 8
  %36 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %38 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %5, align 8
  %39 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %5, align 8
  %42 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @bsg_job_done(%struct.bsg_job* %37, i32 %40, i32 %43)
  ret void
}

declare dso_local i32 @bsg_job_done(%struct.bsg_job*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
