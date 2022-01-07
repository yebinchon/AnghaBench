; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/ipu3/extr_ipu3-v4l2.c_imgu_v4l2_nodes_cleanup_pipe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/ipu3/extr_ipu3-v4l2.c_imgu_v4l2_nodes_cleanup_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imgu_device = type { %struct.imgu_media_pipe* }
%struct.imgu_media_pipe = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.imgu_device*, i32, i32)* @imgu_v4l2_nodes_cleanup_pipe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imgu_v4l2_nodes_cleanup_pipe(%struct.imgu_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.imgu_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.imgu_media_pipe*, align 8
  store %struct.imgu_device* %0, %struct.imgu_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.imgu_device*, %struct.imgu_device** %4, align 8
  %10 = getelementptr inbounds %struct.imgu_device, %struct.imgu_device* %9, i32 0, i32 0
  %11 = load %struct.imgu_media_pipe*, %struct.imgu_media_pipe** %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.imgu_media_pipe, %struct.imgu_media_pipe* %11, i64 %13
  store %struct.imgu_media_pipe* %14, %struct.imgu_media_pipe** %8, align 8
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %45, %3
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %48

19:                                               ; preds = %15
  %20 = load %struct.imgu_media_pipe*, %struct.imgu_media_pipe** %8, align 8
  %21 = getelementptr inbounds %struct.imgu_media_pipe, %struct.imgu_media_pipe* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = call i32 @video_unregister_device(%struct.TYPE_4__* %26)
  %28 = load %struct.imgu_media_pipe*, %struct.imgu_media_pipe** %8, align 8
  %29 = getelementptr inbounds %struct.imgu_media_pipe, %struct.imgu_media_pipe* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = call i32 @media_entity_cleanup(i32* %35)
  %37 = load %struct.imgu_media_pipe*, %struct.imgu_media_pipe** %8, align 8
  %38 = getelementptr inbounds %struct.imgu_media_pipe, %struct.imgu_media_pipe* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = call i32 @mutex_destroy(i32* %43)
  br label %45

45:                                               ; preds = %19
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %7, align 4
  br label %15

48:                                               ; preds = %15
  ret void
}

declare dso_local i32 @video_unregister_device(%struct.TYPE_4__*) #1

declare dso_local i32 @media_entity_cleanup(i32*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
