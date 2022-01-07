; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_ap_queue.c_ap_sm_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_ap_queue.c_ap_sm_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ap_queue = type { i32, i32, i32 }
%struct.ap_queue_status = type { i32 }

@AP_STATE_RESET_WAIT = common dso_local global i32 0, align 4
@AP_INTR_DISABLED = common dso_local global i32 0, align 4
@AP_WAIT_TIMEOUT = common dso_local global i32 0, align 4
@AP_STATE_BORKED = common dso_local global i32 0, align 4
@AP_WAIT_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ap_queue*)* @ap_sm_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ap_sm_reset(%struct.ap_queue* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ap_queue*, align 8
  %4 = alloca %struct.ap_queue_status, align 4
  %5 = alloca %struct.ap_queue_status, align 4
  store %struct.ap_queue* %0, %struct.ap_queue** %3, align 8
  %6 = load %struct.ap_queue*, %struct.ap_queue** %3, align 8
  %7 = getelementptr inbounds %struct.ap_queue, %struct.ap_queue* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @ap_rapq(i32 %8)
  %10 = getelementptr inbounds %struct.ap_queue_status, %struct.ap_queue_status* %5, i32 0, i32 0
  store i32 %9, i32* %10, align 4
  %11 = bitcast %struct.ap_queue_status* %4 to i8*
  %12 = bitcast %struct.ap_queue_status* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 %12, i64 4, i1 false)
  %13 = getelementptr inbounds %struct.ap_queue_status, %struct.ap_queue_status* %4, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %26 [
    i32 130, label %15
    i32 128, label %15
    i32 133, label %23
    i32 129, label %25
    i32 131, label %25
    i32 132, label %25
  ]

15:                                               ; preds = %1, %1
  %16 = load i32, i32* @AP_STATE_RESET_WAIT, align 4
  %17 = load %struct.ap_queue*, %struct.ap_queue** %3, align 8
  %18 = getelementptr inbounds %struct.ap_queue, %struct.ap_queue* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @AP_INTR_DISABLED, align 4
  %20 = load %struct.ap_queue*, %struct.ap_queue** %3, align 8
  %21 = getelementptr inbounds %struct.ap_queue, %struct.ap_queue* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @AP_WAIT_TIMEOUT, align 4
  store i32 %22, i32* %2, align 4
  br label %31

23:                                               ; preds = %1
  %24 = load i32, i32* @AP_WAIT_TIMEOUT, align 4
  store i32 %24, i32* %2, align 4
  br label %31

25:                                               ; preds = %1, %1, %1
  br label %26

26:                                               ; preds = %1, %25
  %27 = load i32, i32* @AP_STATE_BORKED, align 4
  %28 = load %struct.ap_queue*, %struct.ap_queue** %3, align 8
  %29 = getelementptr inbounds %struct.ap_queue, %struct.ap_queue* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @AP_WAIT_NONE, align 4
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %26, %23, %15
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @ap_rapq(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
