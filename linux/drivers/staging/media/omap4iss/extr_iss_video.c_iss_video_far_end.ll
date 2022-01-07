; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_video.c_iss_video_far_end.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_video.c_iss_video_far_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iss_video = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.media_entity }
%struct.media_entity = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.media_device* }
%struct.media_device = type { i32 }
%struct.media_graph = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iss_video* (%struct.iss_video*)* @iss_video_far_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iss_video* @iss_video_far_end(%struct.iss_video* %0) #0 {
  %2 = alloca %struct.iss_video*, align 8
  %3 = alloca %struct.iss_video*, align 8
  %4 = alloca %struct.media_graph, align 4
  %5 = alloca %struct.media_entity*, align 8
  %6 = alloca %struct.media_device*, align 8
  %7 = alloca %struct.iss_video*, align 8
  store %struct.iss_video* %0, %struct.iss_video** %3, align 8
  %8 = load %struct.iss_video*, %struct.iss_video** %3, align 8
  %9 = getelementptr inbounds %struct.iss_video, %struct.iss_video* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store %struct.media_entity* %10, %struct.media_entity** %5, align 8
  %11 = load %struct.media_entity*, %struct.media_entity** %5, align 8
  %12 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.media_device*, %struct.media_device** %13, align 8
  store %struct.media_device* %14, %struct.media_device** %6, align 8
  store %struct.iss_video* null, %struct.iss_video** %7, align 8
  %15 = load %struct.media_device*, %struct.media_device** %6, align 8
  %16 = getelementptr inbounds %struct.media_device, %struct.media_device* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.media_device*, %struct.media_device** %6, align 8
  %19 = call i64 @media_graph_walk_init(%struct.media_graph* %4, %struct.media_device* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load %struct.media_device*, %struct.media_device** %6, align 8
  %23 = getelementptr inbounds %struct.media_device, %struct.media_device* %22, i32 0, i32 0
  %24 = call i32 @mutex_unlock(i32* %23)
  store %struct.iss_video* null, %struct.iss_video** %2, align 8
  br label %62

25:                                               ; preds = %1
  %26 = load %struct.media_entity*, %struct.media_entity** %5, align 8
  %27 = call i32 @media_graph_walk_start(%struct.media_graph* %4, %struct.media_entity* %26)
  br label %28

28:                                               ; preds = %55, %42, %37, %25
  %29 = call %struct.media_entity* @media_graph_walk_next(%struct.media_graph* %4)
  store %struct.media_entity* %29, %struct.media_entity** %5, align 8
  %30 = icmp ne %struct.media_entity* %29, null
  br i1 %30, label %31, label %56

31:                                               ; preds = %28
  %32 = load %struct.media_entity*, %struct.media_entity** %5, align 8
  %33 = load %struct.iss_video*, %struct.iss_video** %3, align 8
  %34 = getelementptr inbounds %struct.iss_video, %struct.iss_video* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = icmp eq %struct.media_entity* %32, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %28

38:                                               ; preds = %31
  %39 = load %struct.media_entity*, %struct.media_entity** %5, align 8
  %40 = call i32 @is_media_entity_v4l2_video_device(%struct.media_entity* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  br label %28

43:                                               ; preds = %38
  %44 = load %struct.media_entity*, %struct.media_entity** %5, align 8
  %45 = call i32 @media_entity_to_video_device(%struct.media_entity* %44)
  %46 = call %struct.iss_video* @to_iss_video(i32 %45)
  store %struct.iss_video* %46, %struct.iss_video** %7, align 8
  %47 = load %struct.iss_video*, %struct.iss_video** %7, align 8
  %48 = getelementptr inbounds %struct.iss_video, %struct.iss_video* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.iss_video*, %struct.iss_video** %3, align 8
  %51 = getelementptr inbounds %struct.iss_video, %struct.iss_video* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %49, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %43
  br label %56

55:                                               ; preds = %43
  store %struct.iss_video* null, %struct.iss_video** %7, align 8
  br label %28

56:                                               ; preds = %54, %28
  %57 = load %struct.media_device*, %struct.media_device** %6, align 8
  %58 = getelementptr inbounds %struct.media_device, %struct.media_device* %57, i32 0, i32 0
  %59 = call i32 @mutex_unlock(i32* %58)
  %60 = call i32 @media_graph_walk_cleanup(%struct.media_graph* %4)
  %61 = load %struct.iss_video*, %struct.iss_video** %7, align 8
  store %struct.iss_video* %61, %struct.iss_video** %2, align 8
  br label %62

62:                                               ; preds = %56, %21
  %63 = load %struct.iss_video*, %struct.iss_video** %2, align 8
  ret %struct.iss_video* %63
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @media_graph_walk_init(%struct.media_graph*, %struct.media_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @media_graph_walk_start(%struct.media_graph*, %struct.media_entity*) #1

declare dso_local %struct.media_entity* @media_graph_walk_next(%struct.media_graph*) #1

declare dso_local i32 @is_media_entity_v4l2_video_device(%struct.media_entity*) #1

declare dso_local %struct.iss_video* @to_iss_video(i32) #1

declare dso_local i32 @media_entity_to_video_device(%struct.media_entity*) #1

declare dso_local i32 @media_graph_walk_cleanup(%struct.media_graph*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
