; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_compression.c_btrfs_decompress_bio.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_compression.c_btrfs_decompress_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.list_head*, %struct.compressed_bio*)* }
%struct.list_head = type { i32 }
%struct.compressed_bio = type { i32 }

@btrfs_compress_op = common dso_local global %struct.TYPE_2__** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.compressed_bio*)* @btrfs_decompress_bio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfs_decompress_bio(%struct.compressed_bio* %0) #0 {
  %2 = alloca %struct.compressed_bio*, align 8
  %3 = alloca %struct.list_head*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.compressed_bio* %0, %struct.compressed_bio** %2, align 8
  %6 = load %struct.compressed_bio*, %struct.compressed_bio** %2, align 8
  %7 = getelementptr inbounds %struct.compressed_bio, %struct.compressed_bio* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.list_head* @get_workspace(i32 %9, i32 0)
  store %struct.list_head* %10, %struct.list_head** %3, align 8
  %11 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @btrfs_compress_op, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %11, i64 %13
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32 (%struct.list_head*, %struct.compressed_bio*)*, i32 (%struct.list_head*, %struct.compressed_bio*)** %16, align 8
  %18 = load %struct.list_head*, %struct.list_head** %3, align 8
  %19 = load %struct.compressed_bio*, %struct.compressed_bio** %2, align 8
  %20 = call i32 %17(%struct.list_head* %18, %struct.compressed_bio* %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.list_head*, %struct.list_head** %3, align 8
  %23 = call i32 @put_workspace(i32 %21, %struct.list_head* %22)
  %24 = load i32, i32* %4, align 4
  ret i32 %24
}

declare dso_local %struct.list_head* @get_workspace(i32, i32) #1

declare dso_local i32 @put_workspace(i32, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
