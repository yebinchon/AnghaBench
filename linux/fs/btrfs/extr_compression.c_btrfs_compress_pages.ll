; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_compression.c_btrfs_compress_pages.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_compression.c_btrfs_compress_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.list_head*, %struct.address_space*, i32, %struct.page**, i64*, i64*, i64*)* }
%struct.list_head = type { i32 }
%struct.address_space = type { i32 }
%struct.page = type { i32 }

@btrfs_compress_op = common dso_local global %struct.TYPE_2__** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_compress_pages(i32 %0, %struct.address_space* %1, i32 %2, %struct.page** %3, i64* %4, i64* %5, i64* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.address_space*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.page**, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.list_head*, align 8
  %18 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store %struct.address_space* %1, %struct.address_space** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.page** %3, %struct.page*** %11, align 8
  store i64* %4, i64** %12, align 8
  store i64* %5, i64** %13, align 8
  store i64* %6, i64** %14, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @btrfs_compress_type(i32 %19)
  store i32 %20, i32* %15, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @btrfs_compress_level(i32 %21)
  store i32 %22, i32* %16, align 4
  %23 = load i32, i32* %15, align 4
  %24 = load i32, i32* %16, align 4
  %25 = call i32 @btrfs_compress_set_level(i32 %23, i32 %24)
  store i32 %25, i32* %16, align 4
  %26 = load i32, i32* %15, align 4
  %27 = load i32, i32* %16, align 4
  %28 = call %struct.list_head* @get_workspace(i32 %26, i32 %27)
  store %struct.list_head* %28, %struct.list_head** %17, align 8
  %29 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @btrfs_compress_op, align 8
  %30 = load i32, i32* %15, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %29, i64 %31
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32 (%struct.list_head*, %struct.address_space*, i32, %struct.page**, i64*, i64*, i64*)*, i32 (%struct.list_head*, %struct.address_space*, i32, %struct.page**, i64*, i64*, i64*)** %34, align 8
  %36 = load %struct.list_head*, %struct.list_head** %17, align 8
  %37 = load %struct.address_space*, %struct.address_space** %9, align 8
  %38 = load i32, i32* %10, align 4
  %39 = load %struct.page**, %struct.page*** %11, align 8
  %40 = load i64*, i64** %12, align 8
  %41 = load i64*, i64** %13, align 8
  %42 = load i64*, i64** %14, align 8
  %43 = call i32 %35(%struct.list_head* %36, %struct.address_space* %37, i32 %38, %struct.page** %39, i64* %40, i64* %41, i64* %42)
  store i32 %43, i32* %18, align 4
  %44 = load i32, i32* %15, align 4
  %45 = load %struct.list_head*, %struct.list_head** %17, align 8
  %46 = call i32 @put_workspace(i32 %44, %struct.list_head* %45)
  %47 = load i32, i32* %18, align 4
  ret i32 %47
}

declare dso_local i32 @btrfs_compress_type(i32) #1

declare dso_local i32 @btrfs_compress_level(i32) #1

declare dso_local i32 @btrfs_compress_set_level(i32, i32) #1

declare dso_local %struct.list_head* @get_workspace(i32, i32) #1

declare dso_local i32 @put_workspace(i32, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
