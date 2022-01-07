; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_ap_queue.c_ap_sm_reset_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_ap_queue.c_ap_sm_reset_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ap_queue = type { i64, i32, i32, i64 }
%struct.ap_queue_status = type { i32 }

@AP_STATE_SETIRQ_WAIT = common dso_local global i32 0, align 4
@AP_STATE_WORKING = common dso_local global i32 0, align 4
@AP_STATE_IDLE = common dso_local global i32 0, align 4
@AP_WAIT_AGAIN = common dso_local global i32 0, align 4
@AP_WAIT_TIMEOUT = common dso_local global i32 0, align 4
@AP_STATE_BORKED = common dso_local global i32 0, align 4
@AP_WAIT_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ap_queue*)* @ap_sm_reset_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ap_sm_reset_wait(%struct.ap_queue* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ap_queue*, align 8
  %4 = alloca %struct.ap_queue_status, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ap_queue_status, align 4
  %7 = alloca %struct.ap_queue_status, align 4
  store %struct.ap_queue* %0, %struct.ap_queue** %3, align 8
  %8 = load %struct.ap_queue*, %struct.ap_queue** %3, align 8
  %9 = getelementptr inbounds %struct.ap_queue, %struct.ap_queue* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %1
  %13 = load %struct.ap_queue*, %struct.ap_queue** %3, align 8
  %14 = getelementptr inbounds %struct.ap_queue, %struct.ap_queue* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  %18 = load %struct.ap_queue*, %struct.ap_queue** %3, align 8
  %19 = call i32 @ap_sm_recv(%struct.ap_queue* %18)
  %20 = getelementptr inbounds %struct.ap_queue_status, %struct.ap_queue_status* %6, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  %21 = bitcast %struct.ap_queue_status* %4 to i8*
  %22 = bitcast %struct.ap_queue_status* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 %22, i64 4, i1 false)
  br label %31

23:                                               ; preds = %12, %1
  %24 = load %struct.ap_queue*, %struct.ap_queue** %3, align 8
  %25 = getelementptr inbounds %struct.ap_queue, %struct.ap_queue* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ap_tapq(i32 %26, i32* null)
  %28 = getelementptr inbounds %struct.ap_queue_status, %struct.ap_queue_status* %7, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = bitcast %struct.ap_queue_status* %4 to i8*
  %30 = bitcast %struct.ap_queue_status* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %29, i8* align 4 %30, i64 4, i1 false)
  br label %31

31:                                               ; preds = %23, %17
  %32 = getelementptr inbounds %struct.ap_queue_status, %struct.ap_queue_status* %4, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  switch i32 %33, label %65 [
    i32 130, label %34
    i32 133, label %62
    i32 128, label %62
    i32 129, label %64
    i32 131, label %64
    i32 132, label %64
  ]

34:                                               ; preds = %31
  %35 = call i8* (...) @ap_airq_ptr()
  store i8* %35, i8** %5, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %47

38:                                               ; preds = %34
  %39 = load %struct.ap_queue*, %struct.ap_queue** %3, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = call i32 @ap_queue_enable_interruption(%struct.ap_queue* %39, i8* %40)
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load i32, i32* @AP_STATE_SETIRQ_WAIT, align 4
  %45 = load %struct.ap_queue*, %struct.ap_queue** %3, align 8
  %46 = getelementptr inbounds %struct.ap_queue, %struct.ap_queue* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 8
  br label %60

47:                                               ; preds = %38, %34
  %48 = load %struct.ap_queue*, %struct.ap_queue** %3, align 8
  %49 = getelementptr inbounds %struct.ap_queue, %struct.ap_queue* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp sgt i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32, i32* @AP_STATE_WORKING, align 4
  br label %56

54:                                               ; preds = %47
  %55 = load i32, i32* @AP_STATE_IDLE, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32 [ %53, %52 ], [ %55, %54 ]
  %58 = load %struct.ap_queue*, %struct.ap_queue** %3, align 8
  %59 = getelementptr inbounds %struct.ap_queue, %struct.ap_queue* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 8
  br label %60

60:                                               ; preds = %56, %43
  %61 = load i32, i32* @AP_WAIT_AGAIN, align 4
  store i32 %61, i32* %2, align 4
  br label %70

62:                                               ; preds = %31, %31
  %63 = load i32, i32* @AP_WAIT_TIMEOUT, align 4
  store i32 %63, i32* %2, align 4
  br label %70

64:                                               ; preds = %31, %31, %31
  br label %65

65:                                               ; preds = %31, %64
  %66 = load i32, i32* @AP_STATE_BORKED, align 4
  %67 = load %struct.ap_queue*, %struct.ap_queue** %3, align 8
  %68 = getelementptr inbounds %struct.ap_queue, %struct.ap_queue* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* @AP_WAIT_NONE, align 4
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %65, %62, %60
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @ap_sm_recv(%struct.ap_queue*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ap_tapq(i32, i32*) #1

declare dso_local i8* @ap_airq_ptr(...) #1

declare dso_local i32 @ap_queue_enable_interruption(%struct.ap_queue*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
