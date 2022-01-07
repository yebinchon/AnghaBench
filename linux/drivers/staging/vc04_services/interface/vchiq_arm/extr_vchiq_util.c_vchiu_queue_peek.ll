; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vc04_services/interface/vchiq_arm/extr_vchiq_util.c_vchiu_queue_peek.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vc04_services/interface/vchiq_arm/extr_vchiq_util.c_vchiu_queue_peek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vchiq_header = type { i32 }
%struct.vchiu_queue = type { i32, i32, i32, %struct.vchiq_header**, i32 }

@current = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vchiq_header* @vchiu_queue_peek(%struct.vchiu_queue* %0) #0 {
  %2 = alloca %struct.vchiu_queue*, align 8
  store %struct.vchiu_queue* %0, %struct.vchiu_queue** %2, align 8
  br label %3

3:                                                ; preds = %19, %1
  %4 = load %struct.vchiu_queue*, %struct.vchiu_queue** %2, align 8
  %5 = getelementptr inbounds %struct.vchiu_queue, %struct.vchiu_queue* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load %struct.vchiu_queue*, %struct.vchiu_queue** %2, align 8
  %8 = getelementptr inbounds %struct.vchiu_queue, %struct.vchiu_queue* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %6, %9
  br i1 %10, label %11, label %20

11:                                               ; preds = %3
  %12 = load %struct.vchiu_queue*, %struct.vchiu_queue** %2, align 8
  %13 = getelementptr inbounds %struct.vchiu_queue, %struct.vchiu_queue* %12, i32 0, i32 4
  %14 = call i64 @wait_for_completion_interruptible(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load i32, i32* @current, align 4
  %18 = call i32 @flush_signals(i32 %17)
  br label %19

19:                                               ; preds = %16, %11
  br label %3

20:                                               ; preds = %3
  %21 = load %struct.vchiu_queue*, %struct.vchiu_queue** %2, align 8
  %22 = getelementptr inbounds %struct.vchiu_queue, %struct.vchiu_queue* %21, i32 0, i32 4
  %23 = call i32 @complete(i32* %22)
  %24 = load %struct.vchiu_queue*, %struct.vchiu_queue** %2, align 8
  %25 = getelementptr inbounds %struct.vchiu_queue, %struct.vchiu_queue* %24, i32 0, i32 3
  %26 = load %struct.vchiq_header**, %struct.vchiq_header*** %25, align 8
  %27 = load %struct.vchiu_queue*, %struct.vchiu_queue** %2, align 8
  %28 = getelementptr inbounds %struct.vchiu_queue, %struct.vchiu_queue* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.vchiu_queue*, %struct.vchiu_queue** %2, align 8
  %31 = getelementptr inbounds %struct.vchiu_queue, %struct.vchiu_queue* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = sub nsw i32 %32, 1
  %34 = and i32 %29, %33
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.vchiq_header*, %struct.vchiq_header** %26, i64 %35
  %37 = load %struct.vchiq_header*, %struct.vchiq_header** %36, align 8
  ret %struct.vchiq_header* %37
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
