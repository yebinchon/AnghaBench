; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss.c_omap4iss_module_sync_idle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss.c_omap4iss_module_sync_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.media_entity = type { i32 }
%struct.iss_pipeline = type { i64, %struct.iss_video* }
%struct.iss_video = type { i32, i32 }

@ISS_PIPELINE_STREAM_STOPPED = common dso_local global i64 0, align 8
@ISS_PIPELINE_STREAM_SINGLESHOT = common dso_local global i64 0, align 8
@ISS_VIDEO_DMAQUEUE_UNDERRUN = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omap4iss_module_sync_idle(%struct.media_entity* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.media_entity*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.iss_pipeline*, align 8
  %9 = alloca %struct.iss_video*, align 8
  %10 = alloca i64, align 8
  store %struct.media_entity* %0, %struct.media_entity** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.media_entity*, %struct.media_entity** %5, align 8
  %12 = call %struct.iss_pipeline* @to_iss_pipeline(%struct.media_entity* %11)
  store %struct.iss_pipeline* %12, %struct.iss_pipeline** %8, align 8
  %13 = load %struct.iss_pipeline*, %struct.iss_pipeline** %8, align 8
  %14 = getelementptr inbounds %struct.iss_pipeline, %struct.iss_pipeline* %13, i32 0, i32 1
  %15 = load %struct.iss_video*, %struct.iss_video** %14, align 8
  store %struct.iss_video* %15, %struct.iss_video** %9, align 8
  %16 = load %struct.iss_pipeline*, %struct.iss_pipeline** %8, align 8
  %17 = getelementptr inbounds %struct.iss_pipeline, %struct.iss_pipeline* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @ISS_PIPELINE_STREAM_STOPPED, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %31, label %21

21:                                               ; preds = %3
  %22 = load %struct.iss_pipeline*, %struct.iss_pipeline** %8, align 8
  %23 = getelementptr inbounds %struct.iss_pipeline, %struct.iss_pipeline* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @ISS_PIPELINE_STREAM_SINGLESHOT, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = load %struct.iss_pipeline*, %struct.iss_pipeline** %8, align 8
  %29 = call i32 @iss_pipeline_ready(%struct.iss_pipeline* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %27, %3
  store i32 0, i32* %4, align 4
  br label %81

32:                                               ; preds = %27, %21
  %33 = load i32*, i32** %7, align 8
  %34 = call i32 @atomic_set(i32* %33, i32 1)
  %35 = call i32 (...) @smp_wmb()
  %36 = load %struct.media_entity*, %struct.media_entity** %5, align 8
  %37 = call i32 @iss_pipeline_is_last(%struct.media_entity* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %81

40:                                               ; preds = %32
  %41 = load %struct.iss_video*, %struct.iss_video** %9, align 8
  %42 = getelementptr inbounds %struct.iss_video, %struct.iss_video* %41, i32 0, i32 1
  %43 = load i64, i64* %10, align 8
  %44 = call i32 @spin_lock_irqsave(i32* %42, i64 %43)
  %45 = load %struct.iss_video*, %struct.iss_video** %9, align 8
  %46 = getelementptr inbounds %struct.iss_video, %struct.iss_video* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @ISS_VIDEO_DMAQUEUE_UNDERRUN, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %40
  %52 = load %struct.iss_video*, %struct.iss_video** %9, align 8
  %53 = getelementptr inbounds %struct.iss_video, %struct.iss_video* %52, i32 0, i32 1
  %54 = load i64, i64* %10, align 8
  %55 = call i32 @spin_unlock_irqrestore(i32* %53, i64 %54)
  %56 = load i32*, i32** %7, align 8
  %57 = call i32 @atomic_set(i32* %56, i32 0)
  %58 = call i32 (...) @smp_wmb()
  store i32 0, i32* %4, align 4
  br label %81

59:                                               ; preds = %40
  %60 = load %struct.iss_video*, %struct.iss_video** %9, align 8
  %61 = getelementptr inbounds %struct.iss_video, %struct.iss_video* %60, i32 0, i32 1
  %62 = load i64, i64* %10, align 8
  %63 = call i32 @spin_unlock_irqrestore(i32* %61, i64 %62)
  %64 = load i32*, i32** %6, align 8
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %7, align 8
  %67 = call i32 @atomic_read(i32* %66)
  %68 = icmp ne i32 %67, 0
  %69 = xor i1 %68, true
  %70 = zext i1 %69 to i32
  %71 = call i32 @msecs_to_jiffies(i32 1000)
  %72 = call i32 @wait_event_timeout(i32 %65, i32 %70, i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %59
  %75 = load i32*, i32** %7, align 8
  %76 = call i32 @atomic_set(i32* %75, i32 0)
  %77 = call i32 (...) @smp_wmb()
  %78 = load i32, i32* @ETIMEDOUT, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %4, align 4
  br label %81

80:                                               ; preds = %59
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %80, %74, %51, %39, %31
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local %struct.iss_pipeline* @to_iss_pipeline(%struct.media_entity*) #1

declare dso_local i32 @iss_pipeline_ready(%struct.iss_pipeline*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @iss_pipeline_is_last(%struct.media_entity*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
