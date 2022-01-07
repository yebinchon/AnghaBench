; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vc04_services/interface/vchiq_arm/extr_vchiq_util.c_vchiu_queue_pop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vc04_services/interface/vchiq_arm/extr_vchiq_util.c_vchiu_queue_pop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vchiq_header = type { i32 }
%struct.vchiu_queue = type { i32, i32, i32, i32, %struct.vchiq_header**, i32 }

@current = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vchiq_header* @vchiu_queue_pop(%struct.vchiu_queue* %0) #0 {
  %2 = alloca %struct.vchiu_queue*, align 8
  %3 = alloca %struct.vchiq_header*, align 8
  store %struct.vchiu_queue* %0, %struct.vchiu_queue** %2, align 8
  br label %4

4:                                                ; preds = %20, %1
  %5 = load %struct.vchiu_queue*, %struct.vchiu_queue** %2, align 8
  %6 = getelementptr inbounds %struct.vchiu_queue, %struct.vchiu_queue* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.vchiu_queue*, %struct.vchiu_queue** %2, align 8
  %9 = getelementptr inbounds %struct.vchiu_queue, %struct.vchiu_queue* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %7, %10
  br i1 %11, label %12, label %21

12:                                               ; preds = %4
  %13 = load %struct.vchiu_queue*, %struct.vchiu_queue** %2, align 8
  %14 = getelementptr inbounds %struct.vchiu_queue, %struct.vchiu_queue* %13, i32 0, i32 5
  %15 = call i64 @wait_for_completion_interruptible(i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load i32, i32* @current, align 4
  %19 = call i32 @flush_signals(i32 %18)
  br label %20

20:                                               ; preds = %17, %12
  br label %4

21:                                               ; preds = %4
  %22 = load %struct.vchiu_queue*, %struct.vchiu_queue** %2, align 8
  %23 = getelementptr inbounds %struct.vchiu_queue, %struct.vchiu_queue* %22, i32 0, i32 4
  %24 = load %struct.vchiq_header**, %struct.vchiq_header*** %23, align 8
  %25 = load %struct.vchiu_queue*, %struct.vchiu_queue** %2, align 8
  %26 = getelementptr inbounds %struct.vchiu_queue, %struct.vchiu_queue* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.vchiu_queue*, %struct.vchiu_queue** %2, align 8
  %29 = getelementptr inbounds %struct.vchiu_queue, %struct.vchiu_queue* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = sub nsw i32 %30, 1
  %32 = and i32 %27, %31
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.vchiq_header*, %struct.vchiq_header** %24, i64 %33
  %35 = load %struct.vchiq_header*, %struct.vchiq_header** %34, align 8
  store %struct.vchiq_header* %35, %struct.vchiq_header** %3, align 8
  %36 = load %struct.vchiu_queue*, %struct.vchiu_queue** %2, align 8
  %37 = getelementptr inbounds %struct.vchiu_queue, %struct.vchiu_queue* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  %40 = load %struct.vchiu_queue*, %struct.vchiu_queue** %2, align 8
  %41 = getelementptr inbounds %struct.vchiu_queue, %struct.vchiu_queue* %40, i32 0, i32 3
  %42 = call i32 @complete(i32* %41)
  %43 = load %struct.vchiq_header*, %struct.vchiq_header** %3, align 8
  ret %struct.vchiq_header* %43
}

declare dso_local i64 @wait_for_completion_interruptible(i32*) #1

declare dso_local i32 @flush_signals(i32) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
