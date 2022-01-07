; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_ap_queue.c_ap_queue_enable_interruption.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_ap_queue.c_ap_queue_enable_interruption.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ap_queue = type { i32 }
%struct.ap_queue_status = type { i32 }
%struct.ap_qirq_ctrl = type { i32, i32, i32 }

@AP_ISC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"Registering adapter interrupts for AP device %02x.%04x failed\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ap_queue*, i8*)* @ap_queue_enable_interruption to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ap_queue_enable_interruption(%struct.ap_queue* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ap_queue*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ap_queue_status, align 4
  %7 = alloca %struct.ap_qirq_ctrl, align 4
  %8 = alloca %struct.ap_queue_status, align 4
  %9 = alloca { i64, i32 }, align 4
  store %struct.ap_queue* %0, %struct.ap_queue** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = bitcast %struct.ap_qirq_ctrl* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 12, i1 false)
  %11 = getelementptr inbounds %struct.ap_qirq_ctrl, %struct.ap_qirq_ctrl* %7, i32 0, i32 0
  store i32 1, i32* %11, align 4
  %12 = load i32, i32* @AP_ISC, align 4
  %13 = getelementptr inbounds %struct.ap_qirq_ctrl, %struct.ap_qirq_ctrl* %7, i32 0, i32 1
  store i32 %12, i32* %13, align 4
  %14 = load %struct.ap_queue*, %struct.ap_queue** %4, align 8
  %15 = getelementptr inbounds %struct.ap_queue, %struct.ap_queue* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i8*, i8** %5, align 8
  %18 = bitcast { i64, i32 }* %9 to i8*
  %19 = bitcast %struct.ap_qirq_ctrl* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 %19, i64 12, i1 false)
  %20 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %9, i32 0, i32 0
  %21 = load i64, i64* %20, align 4
  %22 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %9, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ap_aqic(i32 %16, i64 %21, i32 %23, i8* %17)
  %25 = getelementptr inbounds %struct.ap_queue_status, %struct.ap_queue_status* %8, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  %26 = bitcast %struct.ap_queue_status* %6 to i8*
  %27 = bitcast %struct.ap_queue_status* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %26, i8* align 4 %27, i64 4, i1 false)
  %28 = getelementptr inbounds %struct.ap_queue_status, %struct.ap_queue_status* %6, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %44 [
    i32 131, label %30
    i32 130, label %30
    i32 129, label %31
    i32 133, label %31
    i32 134, label %31
    i32 132, label %31
    i32 128, label %43
    i32 135, label %43
  ]

30:                                               ; preds = %2, %2
  store i32 0, i32* %3, align 4
  br label %47

31:                                               ; preds = %2, %2, %2, %2
  %32 = load %struct.ap_queue*, %struct.ap_queue** %4, align 8
  %33 = getelementptr inbounds %struct.ap_queue, %struct.ap_queue* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @AP_QID_CARD(i32 %34)
  %36 = load %struct.ap_queue*, %struct.ap_queue** %4, align 8
  %37 = getelementptr inbounds %struct.ap_queue, %struct.ap_queue* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @AP_QID_QUEUE(i32 %38)
  %40 = call i32 @pr_err(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %39)
  %41 = load i32, i32* @EOPNOTSUPP, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %47

43:                                               ; preds = %2, %2
  br label %44

44:                                               ; preds = %2, %43
  %45 = load i32, i32* @EBUSY, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %44, %31, %30
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ap_aqic(i32, i64, i32, i8*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #2

declare dso_local i32 @AP_QID_CARD(i32) #2

declare dso_local i32 @AP_QID_QUEUE(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
