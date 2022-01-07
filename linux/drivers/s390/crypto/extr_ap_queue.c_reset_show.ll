; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_ap_queue.c_reset_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_ap_queue.c_reset_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.ap_queue = type { i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Reset in progress.\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Reset Timer armed.\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"No Reset Timer set.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @reset_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reset_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ap_queue*, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.ap_queue* @to_ap_queue(%struct.device* %9)
  store %struct.ap_queue* %10, %struct.ap_queue** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.ap_queue*, %struct.ap_queue** %7, align 8
  %12 = getelementptr inbounds %struct.ap_queue, %struct.ap_queue* %11, i32 0, i32 1
  %13 = call i32 @spin_lock_bh(i32* %12)
  %14 = load %struct.ap_queue*, %struct.ap_queue** %7, align 8
  %15 = getelementptr inbounds %struct.ap_queue, %struct.ap_queue* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %25 [
    i32 130, label %17
    i32 129, label %17
    i32 128, label %21
    i32 131, label %21
  ]

17:                                               ; preds = %3, %3
  %18 = load i8*, i8** %6, align 8
  %19 = load i32, i32* @PAGE_SIZE, align 4
  %20 = call i32 @snprintf(i8* %18, i32 %19, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 %20, i32* %8, align 4
  br label %29

21:                                               ; preds = %3, %3
  %22 = load i8*, i8** %6, align 8
  %23 = load i32, i32* @PAGE_SIZE, align 4
  %24 = call i32 @snprintf(i8* %22, i32 %23, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store i32 %24, i32* %8, align 4
  br label %29

25:                                               ; preds = %3
  %26 = load i8*, i8** %6, align 8
  %27 = load i32, i32* @PAGE_SIZE, align 4
  %28 = call i32 @snprintf(i8* %26, i32 %27, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  store i32 %28, i32* %8, align 4
  br label %29

29:                                               ; preds = %25, %21, %17
  %30 = load %struct.ap_queue*, %struct.ap_queue** %7, align 8
  %31 = getelementptr inbounds %struct.ap_queue, %struct.ap_queue* %30, i32 0, i32 1
  %32 = call i32 @spin_unlock_bh(i32* %31)
  %33 = load i32, i32* %8, align 4
  ret i32 %33
}

declare dso_local %struct.ap_queue* @to_ap_queue(%struct.device*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
