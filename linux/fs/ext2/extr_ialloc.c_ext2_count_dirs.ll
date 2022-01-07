; ModuleID = '/home/carl/AnghaBench/linux/fs/ext2/extr_ialloc.c_ext2_count_dirs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext2/extr_ialloc.c_ext2_count_dirs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ext2_group_desc = type { i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ext2_count_dirs(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ext2_group_desc*, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  store i64 0, i64* %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %27, %1
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.super_block*, %struct.super_block** %2, align 8
  %9 = call %struct.TYPE_2__* @EXT2_SB(%struct.super_block* %8)
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp slt i32 %7, %11
  br i1 %12, label %13, label %30

13:                                               ; preds = %6
  %14 = load %struct.super_block*, %struct.super_block** %2, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call %struct.ext2_group_desc* @ext2_get_group_desc(%struct.super_block* %14, i32 %15, i32* null)
  store %struct.ext2_group_desc* %16, %struct.ext2_group_desc** %5, align 8
  %17 = load %struct.ext2_group_desc*, %struct.ext2_group_desc** %5, align 8
  %18 = icmp ne %struct.ext2_group_desc* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %13
  br label %27

20:                                               ; preds = %13
  %21 = load %struct.ext2_group_desc*, %struct.ext2_group_desc** %5, align 8
  %22 = getelementptr inbounds %struct.ext2_group_desc, %struct.ext2_group_desc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @le16_to_cpu(i32 %23)
  %25 = load i64, i64* %3, align 8
  %26 = add i64 %25, %24
  store i64 %26, i64* %3, align 8
  br label %27

27:                                               ; preds = %20, %19
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %4, align 4
  br label %6

30:                                               ; preds = %6
  %31 = load i64, i64* %3, align 8
  ret i64 %31
}

declare dso_local %struct.TYPE_2__* @EXT2_SB(%struct.super_block*) #1

declare dso_local %struct.ext2_group_desc* @ext2_get_group_desc(%struct.super_block*, i32, i32*) #1

declare dso_local i64 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
