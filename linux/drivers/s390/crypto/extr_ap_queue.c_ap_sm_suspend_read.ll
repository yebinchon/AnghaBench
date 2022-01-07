; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_ap_queue.c_ap_sm_suspend_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_ap_queue.c_ap_sm_suspend_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ap_queue = type { i32, i32 }
%struct.ap_queue_status = type { i32 }

@AP_WAIT_NONE = common dso_local global i32 0, align 4
@AP_WAIT_AGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ap_queue*)* @ap_sm_suspend_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ap_sm_suspend_read(%struct.ap_queue* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ap_queue*, align 8
  %4 = alloca %struct.ap_queue_status, align 4
  %5 = alloca %struct.ap_queue_status, align 4
  store %struct.ap_queue* %0, %struct.ap_queue** %3, align 8
  %6 = load %struct.ap_queue*, %struct.ap_queue** %3, align 8
  %7 = getelementptr inbounds %struct.ap_queue, %struct.ap_queue* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @AP_WAIT_NONE, align 4
  store i32 %11, i32* %2, align 4
  br label %30

12:                                               ; preds = %1
  %13 = load %struct.ap_queue*, %struct.ap_queue** %3, align 8
  %14 = call i32 @ap_sm_recv(%struct.ap_queue* %13)
  %15 = getelementptr inbounds %struct.ap_queue_status, %struct.ap_queue_status* %5, i32 0, i32 0
  store i32 %14, i32* %15, align 4
  %16 = bitcast %struct.ap_queue_status* %4 to i8*
  %17 = bitcast %struct.ap_queue_status* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 %17, i64 4, i1 false)
  %18 = getelementptr inbounds %struct.ap_queue_status, %struct.ap_queue_status* %4, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %28 [
    i32 128, label %20
  ]

20:                                               ; preds = %12
  %21 = load %struct.ap_queue*, %struct.ap_queue** %3, align 8
  %22 = getelementptr inbounds %struct.ap_queue, %struct.ap_queue* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* @AP_WAIT_AGAIN, align 4
  store i32 %26, i32* %2, align 4
  br label %30

27:                                               ; preds = %20
  br label %28

28:                                               ; preds = %12, %27
  %29 = load i32, i32* @AP_WAIT_NONE, align 4
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %28, %25, %10
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @ap_sm_recv(%struct.ap_queue*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
