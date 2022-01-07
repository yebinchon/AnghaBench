; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_inode.c_btrfs_submit_dio_bio.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_inode.c_btrfs_submit_dio_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { %struct.btrfs_dio_private* }
%struct.btrfs_dio_private = type { i32 }
%struct.inode = type { i32 }
%struct.btrfs_fs_info = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@REQ_OP_WRITE = common dso_local global i64 0, align 8
@BTRFS_WQ_ENDIO_DATA = common dso_local global i32 0, align 4
@BTRFS_INODE_NODATASUM = common dso_local global i32 0, align 4
@btrfs_submit_bio_start_direct_io = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.bio*, %struct.inode*, i32, i32)* @btrfs_submit_dio_bio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @btrfs_submit_dio_bio(%struct.bio* %0, %struct.inode* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.bio*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.btrfs_fs_info*, align 8
  %10 = alloca %struct.btrfs_dio_private*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.bio* %0, %struct.bio** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.inode*, %struct.inode** %6, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.btrfs_fs_info* @btrfs_sb(i32 %15)
  store %struct.btrfs_fs_info* %16, %struct.btrfs_fs_info** %9, align 8
  %17 = load %struct.bio*, %struct.bio** %5, align 8
  %18 = getelementptr inbounds %struct.bio, %struct.bio* %17, i32 0, i32 0
  %19 = load %struct.btrfs_dio_private*, %struct.btrfs_dio_private** %18, align 8
  store %struct.btrfs_dio_private* %19, %struct.btrfs_dio_private** %10, align 8
  %20 = load %struct.bio*, %struct.bio** %5, align 8
  %21 = call i64 @bio_op(%struct.bio* %20)
  %22 = load i64, i64* @REQ_OP_WRITE, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %4
  %28 = load %struct.inode*, %struct.inode** %6, align 8
  %29 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %28)
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = call i32 @atomic_read(i32* %30)
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %27, %4
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %47, label %38

38:                                               ; preds = %35
  %39 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %9, align 8
  %40 = load %struct.bio*, %struct.bio** %5, align 8
  %41 = load i32, i32* @BTRFS_WQ_ENDIO_DATA, align 4
  %42 = call i64 @btrfs_bio_wq_end_io(%struct.btrfs_fs_info* %39, %struct.bio* %40, i32 %41)
  store i64 %42, i64* %12, align 8
  %43 = load i64, i64* %12, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  br label %97

46:                                               ; preds = %38
  br label %47

47:                                               ; preds = %46, %35
  %48 = load %struct.inode*, %struct.inode** %6, align 8
  %49 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %48)
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @BTRFS_INODE_NODATASUM, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  br label %93

56:                                               ; preds = %47
  %57 = load i32, i32* %11, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %56
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %59
  %63 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %9, align 8
  %64 = load %struct.bio*, %struct.bio** %5, align 8
  %65 = load i32, i32* %7, align 4
  %66 = load %struct.inode*, %struct.inode** %6, align 8
  %67 = load i32, i32* @btrfs_submit_bio_start_direct_io, align 4
  %68 = call i64 @btrfs_wq_submit_bio(%struct.btrfs_fs_info* %63, %struct.bio* %64, i32 0, i32 0, i32 %65, %struct.inode* %66, i32 %67)
  store i64 %68, i64* %12, align 8
  br label %97

69:                                               ; preds = %59, %56
  %70 = load i32, i32* %11, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %69
  %73 = load %struct.inode*, %struct.inode** %6, align 8
  %74 = load %struct.bio*, %struct.bio** %5, align 8
  %75 = load i32, i32* %7, align 4
  %76 = call i64 @btrfs_csum_one_bio(%struct.inode* %73, %struct.bio* %74, i32 %75, i32 1)
  store i64 %76, i64* %12, align 8
  %77 = load i64, i64* %12, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %72
  br label %97

80:                                               ; preds = %72
  br label %91

81:                                               ; preds = %69
  %82 = load %struct.inode*, %struct.inode** %6, align 8
  %83 = load %struct.btrfs_dio_private*, %struct.btrfs_dio_private** %10, align 8
  %84 = load %struct.bio*, %struct.bio** %5, align 8
  %85 = load i32, i32* %7, align 4
  %86 = call i64 @btrfs_lookup_and_bind_dio_csum(%struct.inode* %82, %struct.btrfs_dio_private* %83, %struct.bio* %84, i32 %85)
  store i64 %86, i64* %12, align 8
  %87 = load i64, i64* %12, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %81
  br label %97

90:                                               ; preds = %81
  br label %91

91:                                               ; preds = %90, %80
  br label %92

92:                                               ; preds = %91
  br label %93

93:                                               ; preds = %92, %55
  %94 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %9, align 8
  %95 = load %struct.bio*, %struct.bio** %5, align 8
  %96 = call i64 @btrfs_map_bio(%struct.btrfs_fs_info* %94, %struct.bio* %95, i32 0, i32 0)
  store i64 %96, i64* %12, align 8
  br label %97

97:                                               ; preds = %93, %89, %79, %62, %45
  %98 = load i64, i64* %12, align 8
  ret i64 %98
}

declare dso_local %struct.btrfs_fs_info* @btrfs_sb(i32) #1

declare dso_local i64 @bio_op(%struct.bio*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local %struct.TYPE_2__* @BTRFS_I(%struct.inode*) #1

declare dso_local i64 @btrfs_bio_wq_end_io(%struct.btrfs_fs_info*, %struct.bio*, i32) #1

declare dso_local i64 @btrfs_wq_submit_bio(%struct.btrfs_fs_info*, %struct.bio*, i32, i32, i32, %struct.inode*, i32) #1

declare dso_local i64 @btrfs_csum_one_bio(%struct.inode*, %struct.bio*, i32, i32) #1

declare dso_local i64 @btrfs_lookup_and_bind_dio_csum(%struct.inode*, %struct.btrfs_dio_private*, %struct.bio*, i32) #1

declare dso_local i64 @btrfs_map_bio(%struct.btrfs_fs_info*, %struct.bio*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
