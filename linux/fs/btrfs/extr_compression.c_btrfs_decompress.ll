; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_compression.c_btrfs_decompress.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_compression.c_btrfs_decompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.list_head*, i8*, %struct.page*, i64, i64, i64)* }
%struct.list_head = type { i32 }
%struct.page = type { i32 }

@btrfs_compress_op = common dso_local global %struct.TYPE_2__** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_decompress(i32 %0, i8* %1, %struct.page* %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.page*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.list_head*, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store %struct.page* %2, %struct.page** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call %struct.list_head* @get_workspace(i32 %15, i32 0)
  store %struct.list_head* %16, %struct.list_head** %13, align 8
  %17 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @btrfs_compress_op, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %17, i64 %19
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32 (%struct.list_head*, i8*, %struct.page*, i64, i64, i64)*, i32 (%struct.list_head*, i8*, %struct.page*, i64, i64, i64)** %22, align 8
  %24 = load %struct.list_head*, %struct.list_head** %13, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = load %struct.page*, %struct.page** %9, align 8
  %27 = load i64, i64* %10, align 8
  %28 = load i64, i64* %11, align 8
  %29 = load i64, i64* %12, align 8
  %30 = call i32 %23(%struct.list_head* %24, i8* %25, %struct.page* %26, i64 %27, i64 %28, i64 %29)
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.list_head*, %struct.list_head** %13, align 8
  %33 = call i32 @put_workspace(i32 %31, %struct.list_head* %32)
  %34 = load i32, i32* %14, align 4
  ret i32 %34
}

declare dso_local %struct.list_head* @get_workspace(i32, i32) #1

declare dso_local i32 @put_workspace(i32, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
