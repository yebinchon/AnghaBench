; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_scrub.c_scrub_recheck_block_checksum.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_scrub.c_scrub_recheck_block_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scrub_block = type { %struct.TYPE_2__**, i64, i64, i64 }
%struct.TYPE_2__ = type { i32 }

@BTRFS_EXTENT_FLAG_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scrub_block*)* @scrub_recheck_block_checksum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scrub_recheck_block_checksum(%struct.scrub_block* %0) #0 {
  %2 = alloca %struct.scrub_block*, align 8
  store %struct.scrub_block* %0, %struct.scrub_block** %2, align 8
  %3 = load %struct.scrub_block*, %struct.scrub_block** %2, align 8
  %4 = getelementptr inbounds %struct.scrub_block, %struct.scrub_block* %3, i32 0, i32 3
  store i64 0, i64* %4, align 8
  %5 = load %struct.scrub_block*, %struct.scrub_block** %2, align 8
  %6 = getelementptr inbounds %struct.scrub_block, %struct.scrub_block* %5, i32 0, i32 2
  store i64 0, i64* %6, align 8
  %7 = load %struct.scrub_block*, %struct.scrub_block** %2, align 8
  %8 = getelementptr inbounds %struct.scrub_block, %struct.scrub_block* %7, i32 0, i32 1
  store i64 0, i64* %8, align 8
  %9 = load %struct.scrub_block*, %struct.scrub_block** %2, align 8
  %10 = getelementptr inbounds %struct.scrub_block, %struct.scrub_block* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %11, i64 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @BTRFS_EXTENT_FLAG_DATA, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load %struct.scrub_block*, %struct.scrub_block** %2, align 8
  %21 = call i32 @scrub_checksum_data(%struct.scrub_block* %20)
  br label %25

22:                                               ; preds = %1
  %23 = load %struct.scrub_block*, %struct.scrub_block** %2, align 8
  %24 = call i32 @scrub_checksum_tree_block(%struct.scrub_block* %23)
  br label %25

25:                                               ; preds = %22, %19
  ret void
}

declare dso_local i32 @scrub_checksum_data(%struct.scrub_block*) #1

declare dso_local i32 @scrub_checksum_tree_block(%struct.scrub_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
