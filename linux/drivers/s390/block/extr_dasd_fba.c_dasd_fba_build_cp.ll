; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_fba.c_dasd_fba_build_cp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_fba.c_dasd_fba_build_cp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_ccw_req = type { i32 }
%struct.dasd_device = type { i32 }
%struct.dasd_block = type { i32 }
%struct.request = type { i32 }

@REQ_OP_DISCARD = common dso_local global i64 0, align 8
@REQ_OP_WRITE_ZEROES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dasd_ccw_req* (%struct.dasd_device*, %struct.dasd_block*, %struct.request*)* @dasd_fba_build_cp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dasd_ccw_req* @dasd_fba_build_cp(%struct.dasd_device* %0, %struct.dasd_block* %1, %struct.request* %2) #0 {
  %4 = alloca %struct.dasd_ccw_req*, align 8
  %5 = alloca %struct.dasd_device*, align 8
  %6 = alloca %struct.dasd_block*, align 8
  %7 = alloca %struct.request*, align 8
  store %struct.dasd_device* %0, %struct.dasd_device** %5, align 8
  store %struct.dasd_block* %1, %struct.dasd_block** %6, align 8
  store %struct.request* %2, %struct.request** %7, align 8
  %8 = load %struct.request*, %struct.request** %7, align 8
  %9 = call i64 @req_op(%struct.request* %8)
  %10 = load i64, i64* @REQ_OP_DISCARD, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %17, label %12

12:                                               ; preds = %3
  %13 = load %struct.request*, %struct.request** %7, align 8
  %14 = call i64 @req_op(%struct.request* %13)
  %15 = load i64, i64* @REQ_OP_WRITE_ZEROES, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %12, %3
  %18 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %19 = load %struct.dasd_block*, %struct.dasd_block** %6, align 8
  %20 = load %struct.request*, %struct.request** %7, align 8
  %21 = call %struct.dasd_ccw_req* @dasd_fba_build_cp_discard(%struct.dasd_device* %18, %struct.dasd_block* %19, %struct.request* %20)
  store %struct.dasd_ccw_req* %21, %struct.dasd_ccw_req** %4, align 8
  br label %27

22:                                               ; preds = %12
  %23 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %24 = load %struct.dasd_block*, %struct.dasd_block** %6, align 8
  %25 = load %struct.request*, %struct.request** %7, align 8
  %26 = call %struct.dasd_ccw_req* @dasd_fba_build_cp_regular(%struct.dasd_device* %23, %struct.dasd_block* %24, %struct.request* %25)
  store %struct.dasd_ccw_req* %26, %struct.dasd_ccw_req** %4, align 8
  br label %27

27:                                               ; preds = %22, %17
  %28 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  ret %struct.dasd_ccw_req* %28
}

declare dso_local i64 @req_op(%struct.request*) #1

declare dso_local %struct.dasd_ccw_req* @dasd_fba_build_cp_discard(%struct.dasd_device*, %struct.dasd_block*, %struct.request*) #1

declare dso_local %struct.dasd_ccw_req* @dasd_fba_build_cp_regular(%struct.dasd_device*, %struct.dasd_block*, %struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
