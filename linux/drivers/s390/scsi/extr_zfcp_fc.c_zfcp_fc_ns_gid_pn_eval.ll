; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fc.c_zfcp_fc_ns_gid_pn_eval.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fc.c_zfcp_fc_ns_gid_pn_eval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_fc_req = type { %struct.TYPE_7__, %struct.zfcp_fsf_ct_els }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.zfcp_fc_gid_pn_rsp }
%struct.zfcp_fc_gid_pn_rsp = type { %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i64 }
%struct.zfcp_fsf_ct_els = type { %struct.TYPE_9__*, i64 }
%struct.TYPE_9__ = type { i32 }

@FC_FS_ACC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zfcp_fc_req*)* @zfcp_fc_ns_gid_pn_eval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfcp_fc_ns_gid_pn_eval(%struct.zfcp_fc_req* %0) #0 {
  %2 = alloca %struct.zfcp_fc_req*, align 8
  %3 = alloca %struct.zfcp_fsf_ct_els*, align 8
  %4 = alloca %struct.zfcp_fc_gid_pn_rsp*, align 8
  store %struct.zfcp_fc_req* %0, %struct.zfcp_fc_req** %2, align 8
  %5 = load %struct.zfcp_fc_req*, %struct.zfcp_fc_req** %2, align 8
  %6 = getelementptr inbounds %struct.zfcp_fc_req, %struct.zfcp_fc_req* %5, i32 0, i32 1
  store %struct.zfcp_fsf_ct_els* %6, %struct.zfcp_fsf_ct_els** %3, align 8
  %7 = load %struct.zfcp_fc_req*, %struct.zfcp_fc_req** %2, align 8
  %8 = getelementptr inbounds %struct.zfcp_fc_req, %struct.zfcp_fc_req* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  store %struct.zfcp_fc_gid_pn_rsp* %10, %struct.zfcp_fc_gid_pn_rsp** %4, align 8
  %11 = load %struct.zfcp_fsf_ct_els*, %struct.zfcp_fsf_ct_els** %3, align 8
  %12 = getelementptr inbounds %struct.zfcp_fsf_ct_els, %struct.zfcp_fsf_ct_els* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %35

16:                                               ; preds = %1
  %17 = load %struct.zfcp_fc_gid_pn_rsp*, %struct.zfcp_fc_gid_pn_rsp** %4, align 8
  %18 = getelementptr inbounds %struct.zfcp_fc_gid_pn_rsp, %struct.zfcp_fc_gid_pn_rsp* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* @FC_FS_ACC, align 4
  %22 = call i64 @cpu_to_be16(i32 %21)
  %23 = icmp ne i64 %20, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  br label %35

25:                                               ; preds = %16
  %26 = load %struct.zfcp_fc_gid_pn_rsp*, %struct.zfcp_fc_gid_pn_rsp** %4, align 8
  %27 = getelementptr inbounds %struct.zfcp_fc_gid_pn_rsp, %struct.zfcp_fc_gid_pn_rsp* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @ntoh24(i32 %29)
  %31 = load %struct.zfcp_fsf_ct_els*, %struct.zfcp_fsf_ct_els** %3, align 8
  %32 = getelementptr inbounds %struct.zfcp_fsf_ct_els, %struct.zfcp_fsf_ct_els* %31, i32 0, i32 0
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  store i32 %30, i32* %34, align 4
  br label %35

35:                                               ; preds = %25, %24, %15
  ret void
}

declare dso_local i64 @cpu_to_be16(i32) #1

declare dso_local i32 @ntoh24(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
