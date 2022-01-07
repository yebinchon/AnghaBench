; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_ap_queue.c_ap_sm_setirq_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_ap_queue.c_ap_sm_setirq_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ap_queue = type { i64, i32, i32, i32, i64 }
%struct.ap_queue_status = type { i32, i32 }

@AP_INTR_ENABLED = common dso_local global i32 0, align 4
@AP_STATE_WORKING = common dso_local global i32 0, align 4
@AP_STATE_IDLE = common dso_local global i32 0, align 4
@AP_WAIT_AGAIN = common dso_local global i32 0, align 4
@AP_WAIT_TIMEOUT = common dso_local global i32 0, align 4
@AP_STATE_BORKED = common dso_local global i32 0, align 4
@AP_WAIT_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ap_queue*)* @ap_sm_setirq_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ap_sm_setirq_wait(%struct.ap_queue* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ap_queue*, align 8
  %4 = alloca %struct.ap_queue_status, align 4
  %5 = alloca %struct.ap_queue_status, align 4
  %6 = alloca %struct.ap_queue_status, align 4
  store %struct.ap_queue* %0, %struct.ap_queue** %3, align 8
  %7 = load %struct.ap_queue*, %struct.ap_queue** %3, align 8
  %8 = getelementptr inbounds %struct.ap_queue, %struct.ap_queue* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %1
  %12 = load %struct.ap_queue*, %struct.ap_queue** %3, align 8
  %13 = getelementptr inbounds %struct.ap_queue, %struct.ap_queue* %12, i32 0, i32 4
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %11
  %17 = load %struct.ap_queue*, %struct.ap_queue** %3, align 8
  %18 = call i64 @ap_sm_recv(%struct.ap_queue* %17)
  %19 = bitcast %struct.ap_queue_status* %5 to i64*
  store i64 %18, i64* %19, align 4
  %20 = bitcast %struct.ap_queue_status* %4 to i8*
  %21 = bitcast %struct.ap_queue_status* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 %21, i64 8, i1 false)
  br label %30

22:                                               ; preds = %11, %1
  %23 = load %struct.ap_queue*, %struct.ap_queue** %3, align 8
  %24 = getelementptr inbounds %struct.ap_queue, %struct.ap_queue* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @ap_tapq(i32 %25, i32* null)
  %27 = bitcast %struct.ap_queue_status* %6 to i64*
  store i64 %26, i64* %27, align 4
  %28 = bitcast %struct.ap_queue_status* %4 to i8*
  %29 = bitcast %struct.ap_queue_status* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %28, i8* align 4 %29, i64 8, i1 false)
  br label %30

30:                                               ; preds = %22, %16
  %31 = getelementptr inbounds %struct.ap_queue_status, %struct.ap_queue_status* %4, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %50

34:                                               ; preds = %30
  %35 = load i32, i32* @AP_INTR_ENABLED, align 4
  %36 = load %struct.ap_queue*, %struct.ap_queue** %3, align 8
  %37 = getelementptr inbounds %struct.ap_queue, %struct.ap_queue* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  %38 = load %struct.ap_queue*, %struct.ap_queue** %3, align 8
  %39 = getelementptr inbounds %struct.ap_queue, %struct.ap_queue* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp sgt i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = load i32, i32* @AP_STATE_WORKING, align 4
  br label %46

44:                                               ; preds = %34
  %45 = load i32, i32* @AP_STATE_IDLE, align 4
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i32 [ %43, %42 ], [ %45, %44 ]
  %48 = load %struct.ap_queue*, %struct.ap_queue** %3, align 8
  %49 = getelementptr inbounds %struct.ap_queue, %struct.ap_queue* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 8
  br label %50

50:                                               ; preds = %46, %30
  %51 = getelementptr inbounds %struct.ap_queue_status, %struct.ap_queue_status* %4, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  switch i32 %52, label %63 [
    i32 129, label %53
    i32 128, label %61
  ]

53:                                               ; preds = %50
  %54 = load %struct.ap_queue*, %struct.ap_queue** %3, align 8
  %55 = getelementptr inbounds %struct.ap_queue, %struct.ap_queue* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp sgt i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i32, i32* @AP_WAIT_AGAIN, align 4
  store i32 %59, i32* %2, align 4
  br label %68

60:                                               ; preds = %53
  br label %61

61:                                               ; preds = %50, %60
  %62 = load i32, i32* @AP_WAIT_TIMEOUT, align 4
  store i32 %62, i32* %2, align 4
  br label %68

63:                                               ; preds = %50
  %64 = load i32, i32* @AP_STATE_BORKED, align 4
  %65 = load %struct.ap_queue*, %struct.ap_queue** %3, align 8
  %66 = getelementptr inbounds %struct.ap_queue, %struct.ap_queue* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 8
  %67 = load i32, i32* @AP_WAIT_NONE, align 4
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %63, %61, %58
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i64 @ap_sm_recv(%struct.ap_queue*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @ap_tapq(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
