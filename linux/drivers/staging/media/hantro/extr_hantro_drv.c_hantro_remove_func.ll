; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_drv.c_hantro_remove_func.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_drv.c_hantro_remove_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hantro_dev = type { %struct.hantro_func*, %struct.hantro_func* }
%struct.hantro_func = type { i32 }

@MEDIA_ENT_F_PROC_VIDEO_ENCODER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hantro_dev*, i32)* @hantro_remove_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hantro_remove_func(%struct.hantro_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.hantro_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hantro_func*, align 8
  store %struct.hantro_dev* %0, %struct.hantro_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @MEDIA_ENT_F_PROC_VIDEO_ENCODER, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load %struct.hantro_dev*, %struct.hantro_dev** %3, align 8
  %11 = getelementptr inbounds %struct.hantro_dev, %struct.hantro_dev* %10, i32 0, i32 1
  %12 = load %struct.hantro_func*, %struct.hantro_func** %11, align 8
  store %struct.hantro_func* %12, %struct.hantro_func** %5, align 8
  br label %17

13:                                               ; preds = %2
  %14 = load %struct.hantro_dev*, %struct.hantro_dev** %3, align 8
  %15 = getelementptr inbounds %struct.hantro_dev, %struct.hantro_dev* %14, i32 0, i32 0
  %16 = load %struct.hantro_func*, %struct.hantro_func** %15, align 8
  store %struct.hantro_func* %16, %struct.hantro_func** %5, align 8
  br label %17

17:                                               ; preds = %13, %9
  %18 = load %struct.hantro_func*, %struct.hantro_func** %5, align 8
  %19 = icmp ne %struct.hantro_func* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  br label %27

21:                                               ; preds = %17
  %22 = load %struct.hantro_func*, %struct.hantro_func** %5, align 8
  %23 = call i32 @hantro_detach_func(%struct.hantro_func* %22)
  %24 = load %struct.hantro_func*, %struct.hantro_func** %5, align 8
  %25 = getelementptr inbounds %struct.hantro_func, %struct.hantro_func* %24, i32 0, i32 0
  %26 = call i32 @video_unregister_device(i32* %25)
  br label %27

27:                                               ; preds = %21, %20
  ret void
}

declare dso_local i32 @hantro_detach_func(%struct.hantro_func*) #1

declare dso_local i32 @video_unregister_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
