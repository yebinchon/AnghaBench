; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_ap_queue.c_ap_sm_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_ap_queue.c_ap_sm_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ap_queue = type { i8*, i32, i32 }
%struct.ap_queue_status = type { i32 }

@AP_WAIT_NONE = common dso_local global i32 0, align 4
@AP_STATE_WORKING = common dso_local global i8* null, align 8
@AP_WAIT_AGAIN = common dso_local global i32 0, align 4
@AP_STATE_IDLE = common dso_local global i8* null, align 8
@AP_WAIT_INTERRUPT = common dso_local global i32 0, align 4
@AP_STATE_BORKED = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ap_queue*)* @ap_sm_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ap_sm_read(%struct.ap_queue* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ap_queue*, align 8
  %4 = alloca %struct.ap_queue_status, align 4
  %5 = alloca %struct.ap_queue_status, align 4
  store %struct.ap_queue* %0, %struct.ap_queue** %3, align 8
  %6 = load %struct.ap_queue*, %struct.ap_queue** %3, align 8
  %7 = getelementptr inbounds %struct.ap_queue, %struct.ap_queue* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @AP_WAIT_NONE, align 4
  store i32 %11, i32* %2, align 4
  br label %52

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
  switch i32 %19, label %47 [
    i32 129, label %20
    i32 128, label %35
  ]

20:                                               ; preds = %12
  %21 = load %struct.ap_queue*, %struct.ap_queue** %3, align 8
  %22 = getelementptr inbounds %struct.ap_queue, %struct.ap_queue* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load i8*, i8** @AP_STATE_WORKING, align 8
  %27 = load %struct.ap_queue*, %struct.ap_queue** %3, align 8
  %28 = getelementptr inbounds %struct.ap_queue, %struct.ap_queue* %27, i32 0, i32 0
  store i8* %26, i8** %28, align 8
  %29 = load i32, i32* @AP_WAIT_AGAIN, align 4
  store i32 %29, i32* %2, align 4
  br label %52

30:                                               ; preds = %20
  %31 = load i8*, i8** @AP_STATE_IDLE, align 8
  %32 = load %struct.ap_queue*, %struct.ap_queue** %3, align 8
  %33 = getelementptr inbounds %struct.ap_queue, %struct.ap_queue* %32, i32 0, i32 0
  store i8* %31, i8** %33, align 8
  %34 = load i32, i32* @AP_WAIT_NONE, align 4
  store i32 %34, i32* %2, align 4
  br label %52

35:                                               ; preds = %12
  %36 = load %struct.ap_queue*, %struct.ap_queue** %3, align 8
  %37 = getelementptr inbounds %struct.ap_queue, %struct.ap_queue* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* @AP_WAIT_INTERRUPT, align 4
  store i32 %41, i32* %2, align 4
  br label %52

42:                                               ; preds = %35
  %43 = load i8*, i8** @AP_STATE_IDLE, align 8
  %44 = load %struct.ap_queue*, %struct.ap_queue** %3, align 8
  %45 = getelementptr inbounds %struct.ap_queue, %struct.ap_queue* %44, i32 0, i32 0
  store i8* %43, i8** %45, align 8
  %46 = load i32, i32* @AP_WAIT_NONE, align 4
  store i32 %46, i32* %2, align 4
  br label %52

47:                                               ; preds = %12
  %48 = load i8*, i8** @AP_STATE_BORKED, align 8
  %49 = load %struct.ap_queue*, %struct.ap_queue** %3, align 8
  %50 = getelementptr inbounds %struct.ap_queue, %struct.ap_queue* %49, i32 0, i32 0
  store i8* %48, i8** %50, align 8
  %51 = load i32, i32* @AP_WAIT_NONE, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %47, %42, %40, %30, %25, %10
  %53 = load i32, i32* %2, align 4
  ret i32 %53
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
