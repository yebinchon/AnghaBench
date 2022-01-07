; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_io.c_snic_dr_req_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_io.c_snic_dr_req_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snic_host_req = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.snic = type { i32, i32* }
%struct.snic_req_info = type { %struct.snic_host_req* }

@SNIC_REQ_TM_CACHE = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"dr:Failed to alloc tm req.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.snic_host_req* @snic_dr_req_init(%struct.snic* %0, %struct.snic_req_info* %1) #0 {
  %3 = alloca %struct.snic_host_req*, align 8
  %4 = alloca %struct.snic*, align 8
  %5 = alloca %struct.snic_req_info*, align 8
  %6 = alloca %struct.snic_host_req*, align 8
  store %struct.snic* %0, %struct.snic** %4, align 8
  store %struct.snic_req_info* %1, %struct.snic_req_info** %5, align 8
  store %struct.snic_host_req* null, %struct.snic_host_req** %6, align 8
  %7 = load %struct.snic_req_info*, %struct.snic_req_info** %5, align 8
  %8 = icmp ne %struct.snic_req_info* %7, null
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i32 @SNIC_BUG_ON(i32 %10)
  %12 = load %struct.snic*, %struct.snic** %4, align 8
  %13 = getelementptr inbounds %struct.snic, %struct.snic* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = load i64, i64* @SNIC_REQ_TM_CACHE, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @GFP_ATOMIC, align 4
  %19 = call %struct.snic_host_req* @mempool_alloc(i32 %17, i32 %18)
  store %struct.snic_host_req* %19, %struct.snic_host_req** %6, align 8
  %20 = load %struct.snic_host_req*, %struct.snic_host_req** %6, align 8
  %21 = icmp ne %struct.snic_host_req* %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %2
  %23 = load %struct.snic*, %struct.snic** %4, align 8
  %24 = getelementptr inbounds %struct.snic, %struct.snic* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @SNIC_HOST_ERR(i32 %25, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %27 = call i32 @WARN_ON_ONCE(i32 1)
  store %struct.snic_host_req* null, %struct.snic_host_req** %3, align 8
  br label %46

28:                                               ; preds = %2
  %29 = load %struct.snic_req_info*, %struct.snic_req_info** %5, align 8
  %30 = getelementptr inbounds %struct.snic_req_info, %struct.snic_req_info* %29, i32 0, i32 0
  %31 = load %struct.snic_host_req*, %struct.snic_host_req** %30, align 8
  %32 = icmp ne %struct.snic_host_req* %31, null
  %33 = zext i1 %32 to i32
  %34 = call i32 @SNIC_BUG_ON(i32 %33)
  %35 = load %struct.snic_host_req*, %struct.snic_host_req** %6, align 8
  %36 = load %struct.snic_req_info*, %struct.snic_req_info** %5, align 8
  %37 = getelementptr inbounds %struct.snic_req_info, %struct.snic_req_info* %36, i32 0, i32 0
  store %struct.snic_host_req* %35, %struct.snic_host_req** %37, align 8
  %38 = load %struct.snic_host_req*, %struct.snic_host_req** %6, align 8
  %39 = call i32 @memset(%struct.snic_host_req* %38, i32 0, i32 8)
  %40 = load %struct.snic_req_info*, %struct.snic_req_info** %5, align 8
  %41 = ptrtoint %struct.snic_req_info* %40 to i64
  %42 = load %struct.snic_host_req*, %struct.snic_host_req** %6, align 8
  %43 = getelementptr inbounds %struct.snic_host_req, %struct.snic_host_req* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i64 %41, i64* %44, align 8
  %45 = load %struct.snic_host_req*, %struct.snic_host_req** %6, align 8
  store %struct.snic_host_req* %45, %struct.snic_host_req** %3, align 8
  br label %46

46:                                               ; preds = %28, %22
  %47 = load %struct.snic_host_req*, %struct.snic_host_req** %3, align 8
  ret %struct.snic_host_req* %47
}

declare dso_local i32 @SNIC_BUG_ON(i32) #1

declare dso_local %struct.snic_host_req* @mempool_alloc(i32, i32) #1

declare dso_local i32 @SNIC_HOST_ERR(i32, i8*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @memset(%struct.snic_host_req*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
