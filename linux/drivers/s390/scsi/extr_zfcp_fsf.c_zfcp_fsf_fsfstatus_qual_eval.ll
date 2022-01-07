; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_fsfstatus_qual_eval.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_fsfstatus_qual_eval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_fsf_req = type { i32, %struct.TYPE_11__*, %struct.TYPE_9__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }

@.str = private unnamed_addr constant [61 x i8] c"The FCP adapter reported a problem that cannot be recovered\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"fsfsqe1\00", align 1
@ZFCP_STATUS_FSFREQ_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zfcp_fsf_req*)* @zfcp_fsf_fsfstatus_qual_eval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfcp_fsf_fsfstatus_qual_eval(%struct.zfcp_fsf_req* %0) #0 {
  %2 = alloca %struct.zfcp_fsf_req*, align 8
  store %struct.zfcp_fsf_req* %0, %struct.zfcp_fsf_req** %2, align 8
  %3 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %4 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %3, i32 0, i32 2
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %30 [
    i32 132, label %12
    i32 131, label %12
    i32 129, label %12
    i32 128, label %12
    i32 133, label %13
    i32 130, label %14
  ]

12:                                               ; preds = %1, %1, %1, %1
  br label %36

13:                                               ; preds = %1
  br label %30

14:                                               ; preds = %1
  %15 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %16 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %15, i32 0, i32 1
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = call i32 @dev_err(i32* %20, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %23 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %22, i32 0, i32 1
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %23, align 8
  %25 = call i32 @zfcp_qdio_siosl(%struct.TYPE_11__* %24)
  %26 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %27 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %26, i32 0, i32 1
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %27, align 8
  %29 = call i32 @zfcp_erp_adapter_shutdown(%struct.TYPE_11__* %28, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %30

30:                                               ; preds = %1, %14, %13
  %31 = load i32, i32* @ZFCP_STATUS_FSFREQ_ERROR, align 4
  %32 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %33 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 8
  br label %36

36:                                               ; preds = %30, %12
  ret void
}

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @zfcp_qdio_siosl(%struct.TYPE_11__*) #1

declare dso_local i32 @zfcp_erp_adapter_shutdown(%struct.TYPE_11__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
