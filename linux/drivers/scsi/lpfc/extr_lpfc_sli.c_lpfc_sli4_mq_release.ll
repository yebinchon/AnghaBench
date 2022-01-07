; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_mq_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_mq_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_queue = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_queue*)* @lpfc_sli4_mq_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_sli4_mq_release(%struct.lpfc_queue* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lpfc_queue*, align 8
  store %struct.lpfc_queue* %0, %struct.lpfc_queue** %3, align 8
  %4 = load %struct.lpfc_queue*, %struct.lpfc_queue** %3, align 8
  %5 = icmp ne %struct.lpfc_queue* %4, null
  %6 = xor i1 %5, true
  %7 = zext i1 %6 to i32
  %8 = call i64 @unlikely(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %26

11:                                               ; preds = %1
  %12 = load %struct.lpfc_queue*, %struct.lpfc_queue** %3, align 8
  %13 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32* null, i32** %15, align 8
  %16 = load %struct.lpfc_queue*, %struct.lpfc_queue** %3, align 8
  %17 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = add nsw i32 %18, 1
  %20 = load %struct.lpfc_queue*, %struct.lpfc_queue** %3, align 8
  %21 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = srem i32 %19, %22
  %24 = load %struct.lpfc_queue*, %struct.lpfc_queue** %3, align 8
  %25 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  store i32 1, i32* %2, align 4
  br label %26

26:                                               ; preds = %11, %10
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
