; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_sis_main.c_sis_malloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_sis_main.c_sis_malloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.sis_video_info* }
%struct.sis_video_info = type { %struct.TYPE_2__ }
%struct.sis_memreq = type { i64, i64 }

@sisfb_heap = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sis_malloc(%struct.sis_memreq* %0) #0 {
  %2 = alloca %struct.sis_memreq*, align 8
  %3 = alloca %struct.sis_video_info*, align 8
  store %struct.sis_memreq* %0, %struct.sis_memreq** %2, align 8
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sisfb_heap, align 8
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load %struct.sis_video_info*, %struct.sis_video_info** %5, align 8
  store %struct.sis_video_info* %6, %struct.sis_video_info** %3, align 8
  %7 = load %struct.sis_video_info*, %struct.sis_video_info** %3, align 8
  %8 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sisfb_heap, align 8
  %10 = icmp eq %struct.TYPE_2__* %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load %struct.sis_video_info*, %struct.sis_video_info** %3, align 8
  %13 = load %struct.sis_memreq*, %struct.sis_memreq** %2, align 8
  %14 = call i32 @sis_int_malloc(%struct.sis_video_info* %12, %struct.sis_memreq* %13)
  br label %20

15:                                               ; preds = %1
  %16 = load %struct.sis_memreq*, %struct.sis_memreq** %2, align 8
  %17 = getelementptr inbounds %struct.sis_memreq, %struct.sis_memreq* %16, i32 0, i32 0
  store i64 0, i64* %17, align 8
  %18 = load %struct.sis_memreq*, %struct.sis_memreq** %2, align 8
  %19 = getelementptr inbounds %struct.sis_memreq, %struct.sis_memreq* %18, i32 0, i32 1
  store i64 0, i64* %19, align 8
  br label %20

20:                                               ; preds = %15, %11
  ret void
}

declare dso_local i32 @sis_int_malloc(%struct.sis_video_info*, %struct.sis_memreq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
