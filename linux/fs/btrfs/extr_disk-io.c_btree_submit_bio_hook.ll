; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_disk-io.c_btree_submit_bio_hook.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_disk-io.c_btree_submit_bio_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.bio = type { i64 }
%struct.btrfs_fs_info = type { i32 }

@REQ_OP_WRITE = common dso_local global i64 0, align 8
@BTRFS_WQ_ENDIO_METADATA = common dso_local global i32 0, align 4
@btree_submit_bio_start = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.inode*, %struct.bio*, i32, i64)* @btree_submit_bio_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @btree_submit_bio_hook(%struct.inode* %0, %struct.bio* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.bio*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.btrfs_fs_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.bio* %1, %struct.bio** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %13 = load %struct.inode*, %struct.inode** %6, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.btrfs_fs_info* @btrfs_sb(i32 %15)
  store %struct.btrfs_fs_info* %16, %struct.btrfs_fs_info** %10, align 8
  %17 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %10, align 8
  %18 = load %struct.inode*, %struct.inode** %6, align 8
  %19 = call i32 @BTRFS_I(%struct.inode* %18)
  %20 = call i32 @check_async_write(%struct.btrfs_fs_info* %17, i32 %19)
  store i32 %20, i32* %11, align 4
  %21 = load %struct.bio*, %struct.bio** %7, align 8
  %22 = call i64 @bio_op(%struct.bio* %21)
  %23 = load i64, i64* @REQ_OP_WRITE, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %38

25:                                               ; preds = %4
  %26 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %10, align 8
  %27 = load %struct.bio*, %struct.bio** %7, align 8
  %28 = load i32, i32* @BTRFS_WQ_ENDIO_METADATA, align 4
  %29 = call i64 @btrfs_bio_wq_end_io(%struct.btrfs_fs_info* %26, %struct.bio* %27, i32 %28)
  store i64 %29, i64* %12, align 8
  %30 = load i64, i64* %12, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %65

33:                                               ; preds = %25
  %34 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %10, align 8
  %35 = load %struct.bio*, %struct.bio** %7, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i64 @btrfs_map_bio(%struct.btrfs_fs_info* %34, %struct.bio* %35, i32 %36, i32 0)
  store i64 %37, i64* %12, align 8
  br label %60

38:                                               ; preds = %4
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %52, label %41

41:                                               ; preds = %38
  %42 = load %struct.bio*, %struct.bio** %7, align 8
  %43 = call i64 @btree_csum_one_bio(%struct.bio* %42)
  store i64 %43, i64* %12, align 8
  %44 = load i64, i64* %12, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %65

47:                                               ; preds = %41
  %48 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %10, align 8
  %49 = load %struct.bio*, %struct.bio** %7, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i64 @btrfs_map_bio(%struct.btrfs_fs_info* %48, %struct.bio* %49, i32 %50, i32 0)
  store i64 %51, i64* %12, align 8
  br label %59

52:                                               ; preds = %38
  %53 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %10, align 8
  %54 = load %struct.bio*, %struct.bio** %7, align 8
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.inode*, %struct.inode** %6, align 8
  %57 = load i32, i32* @btree_submit_bio_start, align 4
  %58 = call i64 @btrfs_wq_submit_bio(%struct.btrfs_fs_info* %53, %struct.bio* %54, i32 %55, i32 0, i32 0, %struct.inode* %56, i32 %57)
  store i64 %58, i64* %12, align 8
  br label %59

59:                                               ; preds = %52, %47
  br label %60

60:                                               ; preds = %59, %33
  %61 = load i64, i64* %12, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  br label %65

64:                                               ; preds = %60
  store i64 0, i64* %5, align 8
  br label %72

65:                                               ; preds = %63, %46, %32
  %66 = load i64, i64* %12, align 8
  %67 = load %struct.bio*, %struct.bio** %7, align 8
  %68 = getelementptr inbounds %struct.bio, %struct.bio* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  %69 = load %struct.bio*, %struct.bio** %7, align 8
  %70 = call i32 @bio_endio(%struct.bio* %69)
  %71 = load i64, i64* %12, align 8
  store i64 %71, i64* %5, align 8
  br label %72

72:                                               ; preds = %65, %64
  %73 = load i64, i64* %5, align 8
  ret i64 %73
}

declare dso_local %struct.btrfs_fs_info* @btrfs_sb(i32) #1

declare dso_local i32 @check_async_write(%struct.btrfs_fs_info*, i32) #1

declare dso_local i32 @BTRFS_I(%struct.inode*) #1

declare dso_local i64 @bio_op(%struct.bio*) #1

declare dso_local i64 @btrfs_bio_wq_end_io(%struct.btrfs_fs_info*, %struct.bio*, i32) #1

declare dso_local i64 @btrfs_map_bio(%struct.btrfs_fs_info*, %struct.bio*, i32, i32) #1

declare dso_local i64 @btree_csum_one_bio(%struct.bio*) #1

declare dso_local i64 @btrfs_wq_submit_bio(%struct.btrfs_fs_info*, %struct.bio*, i32, i32, i32, %struct.inode*, i32) #1

declare dso_local i32 @bio_endio(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
