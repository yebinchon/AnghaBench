; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_camera.c_gb_camera_debugfs_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_camera.c_gb_camera_debugfs_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_camera = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.gb_camera_debugfs_buffer* }
%struct.gb_camera_debugfs_buffer = type { i32, i32 }

@GB_CAMERA_DEBUGFS_BUFFER_FLUSH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_camera*, i8*, i64)* @gb_camera_debugfs_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_camera_debugfs_flush(%struct.gb_camera* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gb_camera*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.gb_camera_debugfs_buffer*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.gb_camera* %0, %struct.gb_camera** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.gb_camera*, %struct.gb_camera** %5, align 8
  %12 = getelementptr inbounds %struct.gb_camera, %struct.gb_camera* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.gb_camera_debugfs_buffer*, %struct.gb_camera_debugfs_buffer** %13, align 8
  %15 = load i64, i64* @GB_CAMERA_DEBUGFS_BUFFER_FLUSH, align 8
  %16 = getelementptr inbounds %struct.gb_camera_debugfs_buffer, %struct.gb_camera_debugfs_buffer* %14, i64 %15
  store %struct.gb_camera_debugfs_buffer* %16, %struct.gb_camera_debugfs_buffer** %8, align 8
  %17 = load %struct.gb_camera*, %struct.gb_camera** %5, align 8
  %18 = call i32 @gb_camera_flush(%struct.gb_camera* %17, i32* %9)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* %10, align 4
  store i32 %22, i32* %4, align 4
  br label %33

23:                                               ; preds = %3
  %24 = load %struct.gb_camera_debugfs_buffer*, %struct.gb_camera_debugfs_buffer** %8, align 8
  %25 = getelementptr inbounds %struct.gb_camera_debugfs_buffer, %struct.gb_camera_debugfs_buffer* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @sprintf(i32 %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load %struct.gb_camera_debugfs_buffer*, %struct.gb_camera_debugfs_buffer** %8, align 8
  %30 = getelementptr inbounds %struct.gb_camera_debugfs_buffer, %struct.gb_camera_debugfs_buffer* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load i64, i64* %7, align 8
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %23, %21
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i32 @gb_camera_flush(%struct.gb_camera*, i32*) #1

declare dso_local i32 @sprintf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
