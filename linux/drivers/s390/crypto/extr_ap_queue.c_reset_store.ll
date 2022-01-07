; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_ap_queue.c_reset_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_ap_queue.c_reset_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.ap_queue = type { i32, i32, i32 }

@AP_STATE_RESET_START = common dso_local global i32 0, align 4
@AP_EVENT_POLL = common dso_local global i32 0, align 4
@DBF_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"reset queue=%02x.%04x triggered by user\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @reset_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @reset_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ap_queue*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load %struct.device*, %struct.device** %5, align 8
  %11 = call %struct.ap_queue* @to_ap_queue(%struct.device* %10)
  store %struct.ap_queue* %11, %struct.ap_queue** %9, align 8
  %12 = load %struct.ap_queue*, %struct.ap_queue** %9, align 8
  %13 = getelementptr inbounds %struct.ap_queue, %struct.ap_queue* %12, i32 0, i32 1
  %14 = call i32 @spin_lock_bh(i32* %13)
  %15 = load %struct.ap_queue*, %struct.ap_queue** %9, align 8
  %16 = call i32 @__ap_flush_queue(%struct.ap_queue* %15)
  %17 = load i32, i32* @AP_STATE_RESET_START, align 4
  %18 = load %struct.ap_queue*, %struct.ap_queue** %9, align 8
  %19 = getelementptr inbounds %struct.ap_queue, %struct.ap_queue* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 4
  %20 = load %struct.ap_queue*, %struct.ap_queue** %9, align 8
  %21 = load i32, i32* @AP_EVENT_POLL, align 4
  %22 = call i32 @ap_sm_event(%struct.ap_queue* %20, i32 %21)
  %23 = call i32 @ap_wait(i32 %22)
  %24 = load %struct.ap_queue*, %struct.ap_queue** %9, align 8
  %25 = getelementptr inbounds %struct.ap_queue, %struct.ap_queue* %24, i32 0, i32 1
  %26 = call i32 @spin_unlock_bh(i32* %25)
  %27 = load i32, i32* @DBF_INFO, align 4
  %28 = load %struct.ap_queue*, %struct.ap_queue** %9, align 8
  %29 = getelementptr inbounds %struct.ap_queue, %struct.ap_queue* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @AP_QID_CARD(i32 %30)
  %32 = load %struct.ap_queue*, %struct.ap_queue** %9, align 8
  %33 = getelementptr inbounds %struct.ap_queue, %struct.ap_queue* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @AP_QID_QUEUE(i32 %34)
  %36 = call i32 @AP_DBF(i32 %27, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %35)
  %37 = load i64, i64* %8, align 8
  ret i64 %37
}

declare dso_local %struct.ap_queue* @to_ap_queue(%struct.device*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @__ap_flush_queue(%struct.ap_queue*) #1

declare dso_local i32 @ap_wait(i32) #1

declare dso_local i32 @ap_sm_event(%struct.ap_queue*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @AP_DBF(i32, i8*, i32, i32) #1

declare dso_local i32 @AP_QID_CARD(i32) #1

declare dso_local i32 @AP_QID_QUEUE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
