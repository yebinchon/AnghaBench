; ModuleID = '/home/carl/AnghaBench/linux/fs/configfs/extr_file.c_flush_write_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/fs/configfs/extr_file.c_flush_write_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.configfs_buffer = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i32, i64)* }
%struct.configfs_fragment = type { i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.configfs_buffer*, i64)* @flush_write_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flush_write_buffer(%struct.file* %0, %struct.configfs_buffer* %1, i64 %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.configfs_buffer*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.configfs_fragment*, align 8
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.configfs_buffer* %1, %struct.configfs_buffer** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = call %struct.configfs_fragment* @to_frag(%struct.file* %9)
  store %struct.configfs_fragment* %10, %struct.configfs_fragment** %7, align 8
  %11 = load i32, i32* @ENOENT, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %8, align 4
  %13 = load %struct.configfs_fragment*, %struct.configfs_fragment** %7, align 8
  %14 = getelementptr inbounds %struct.configfs_fragment, %struct.configfs_fragment* %13, i32 0, i32 0
  %15 = call i32 @down_read(i32* %14)
  %16 = load %struct.configfs_fragment*, %struct.configfs_fragment** %7, align 8
  %17 = getelementptr inbounds %struct.configfs_fragment, %struct.configfs_fragment* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %34, label %20

20:                                               ; preds = %3
  %21 = load %struct.configfs_buffer*, %struct.configfs_buffer** %5, align 8
  %22 = getelementptr inbounds %struct.configfs_buffer, %struct.configfs_buffer* %21, i32 0, i32 2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32 (i32, i32, i64)*, i32 (i32, i32, i64)** %24, align 8
  %26 = load %struct.configfs_buffer*, %struct.configfs_buffer** %5, align 8
  %27 = getelementptr inbounds %struct.configfs_buffer, %struct.configfs_buffer* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.configfs_buffer*, %struct.configfs_buffer** %5, align 8
  %30 = getelementptr inbounds %struct.configfs_buffer, %struct.configfs_buffer* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i64, i64* %6, align 8
  %33 = call i32 %25(i32 %28, i32 %31, i64 %32)
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %20, %3
  %35 = load %struct.configfs_fragment*, %struct.configfs_fragment** %7, align 8
  %36 = getelementptr inbounds %struct.configfs_fragment, %struct.configfs_fragment* %35, i32 0, i32 0
  %37 = call i32 @up_read(i32* %36)
  %38 = load i32, i32* %8, align 4
  ret i32 %38
}

declare dso_local %struct.configfs_fragment* @to_frag(%struct.file*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
