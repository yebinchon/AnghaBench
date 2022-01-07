; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vc04_services/interface/vchiq_arm/extr_vchiq_util.c_vchiu_queue_push.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vc04_services/interface/vchiq_arm/extr_vchiq_util.c_vchiu_queue_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vchiu_queue = type { i32, i32, i32, i32, %struct.vchiq_header**, i32, i32 }
%struct.vchiq_header = type { i32 }

@current = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vchiu_queue_push(%struct.vchiu_queue* %0, %struct.vchiq_header* %1) #0 {
  %3 = alloca %struct.vchiu_queue*, align 8
  %4 = alloca %struct.vchiq_header*, align 8
  store %struct.vchiu_queue* %0, %struct.vchiu_queue** %3, align 8
  store %struct.vchiq_header* %1, %struct.vchiq_header** %4, align 8
  %5 = load %struct.vchiu_queue*, %struct.vchiu_queue** %3, align 8
  %6 = getelementptr inbounds %struct.vchiu_queue, %struct.vchiu_queue* %5, i32 0, i32 6
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %54

10:                                               ; preds = %2
  br label %11

11:                                               ; preds = %31, %10
  %12 = load %struct.vchiu_queue*, %struct.vchiu_queue** %3, align 8
  %13 = getelementptr inbounds %struct.vchiu_queue, %struct.vchiu_queue* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.vchiu_queue*, %struct.vchiu_queue** %3, align 8
  %16 = getelementptr inbounds %struct.vchiu_queue, %struct.vchiu_queue* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.vchiu_queue*, %struct.vchiu_queue** %3, align 8
  %19 = getelementptr inbounds %struct.vchiu_queue, %struct.vchiu_queue* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %17, %20
  %22 = icmp eq i32 %14, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %11
  %24 = load %struct.vchiu_queue*, %struct.vchiu_queue** %3, align 8
  %25 = getelementptr inbounds %struct.vchiu_queue, %struct.vchiu_queue* %24, i32 0, i32 5
  %26 = call i64 @wait_for_completion_interruptible(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i32, i32* @current, align 4
  %30 = call i32 @flush_signals(i32 %29)
  br label %31

31:                                               ; preds = %28, %23
  br label %11

32:                                               ; preds = %11
  %33 = load %struct.vchiq_header*, %struct.vchiq_header** %4, align 8
  %34 = load %struct.vchiu_queue*, %struct.vchiu_queue** %3, align 8
  %35 = getelementptr inbounds %struct.vchiu_queue, %struct.vchiu_queue* %34, i32 0, i32 4
  %36 = load %struct.vchiq_header**, %struct.vchiq_header*** %35, align 8
  %37 = load %struct.vchiu_queue*, %struct.vchiu_queue** %3, align 8
  %38 = getelementptr inbounds %struct.vchiu_queue, %struct.vchiu_queue* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.vchiu_queue*, %struct.vchiu_queue** %3, align 8
  %41 = getelementptr inbounds %struct.vchiu_queue, %struct.vchiu_queue* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = sub nsw i32 %42, 1
  %44 = and i32 %39, %43
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.vchiq_header*, %struct.vchiq_header** %36, i64 %45
  store %struct.vchiq_header* %33, %struct.vchiq_header** %46, align 8
  %47 = load %struct.vchiu_queue*, %struct.vchiu_queue** %3, align 8
  %48 = getelementptr inbounds %struct.vchiu_queue, %struct.vchiu_queue* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 8
  %51 = load %struct.vchiu_queue*, %struct.vchiu_queue** %3, align 8
  %52 = getelementptr inbounds %struct.vchiu_queue, %struct.vchiu_queue* %51, i32 0, i32 3
  %53 = call i32 @complete(i32* %52)
  br label %54

54:                                               ; preds = %32, %9
  ret void
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
