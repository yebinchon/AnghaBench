; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_inode.c_btrfs_submit_bio_hook.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_inode.c_btrfs_submit_bio_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.bio = type { i64 }
%struct.btrfs_fs_info = type { i32 }
%struct.btrfs_root = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_5__ = type { i32, i32, %struct.btrfs_root* }

@BTRFS_WQ_ENDIO_DATA = common dso_local global i32 0, align 4
@BTRFS_INODE_NODATASUM = common dso_local global i32 0, align 4
@BTRFS_WQ_ENDIO_FREE_SPACE = common dso_local global i32 0, align 4
@REQ_OP_WRITE = common dso_local global i64 0, align 8
@EXTENT_BIO_COMPRESSED = common dso_local global i64 0, align 8
@BTRFS_DATA_RELOC_TREE_OBJECTID = common dso_local global i64 0, align 8
@btrfs_submit_bio_start = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.inode*, %struct.bio*, i32, i64)* @btrfs_submit_bio_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @btrfs_submit_bio_hook(%struct.inode* %0, %struct.bio* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.bio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.btrfs_fs_info*, align 8
  %10 = alloca %struct.btrfs_root*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.bio* %1, %struct.bio** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %15 = load %struct.inode*, %struct.inode** %5, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.btrfs_fs_info* @btrfs_sb(i32 %17)
  store %struct.btrfs_fs_info* %18, %struct.btrfs_fs_info** %9, align 8
  %19 = load %struct.inode*, %struct.inode** %5, align 8
  %20 = call %struct.TYPE_5__* @BTRFS_I(%struct.inode* %19)
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 2
  %22 = load %struct.btrfs_root*, %struct.btrfs_root** %21, align 8
  store %struct.btrfs_root* %22, %struct.btrfs_root** %10, align 8
  %23 = load i32, i32* @BTRFS_WQ_ENDIO_DATA, align 4
  store i32 %23, i32* %11, align 4
  store i64 0, i64* %12, align 8
  %24 = load %struct.inode*, %struct.inode** %5, align 8
  %25 = call %struct.TYPE_5__* @BTRFS_I(%struct.inode* %24)
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = call i32 @atomic_read(i32* %26)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %14, align 4
  %31 = load %struct.inode*, %struct.inode** %5, align 8
  %32 = call %struct.TYPE_5__* @BTRFS_I(%struct.inode* %31)
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @BTRFS_INODE_NODATASUM, align 4
  %36 = and i32 %34, %35
  store i32 %36, i32* %13, align 4
  %37 = load %struct.inode*, %struct.inode** %5, align 8
  %38 = call %struct.TYPE_5__* @BTRFS_I(%struct.inode* %37)
  %39 = call i64 @btrfs_is_free_space_inode(%struct.TYPE_5__* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %4
  %42 = load i32, i32* @BTRFS_WQ_ENDIO_FREE_SPACE, align 4
  store i32 %42, i32* %11, align 4
  br label %43

43:                                               ; preds = %41, %4
  %44 = load %struct.bio*, %struct.bio** %6, align 8
  %45 = call i64 @bio_op(%struct.bio* %44)
  %46 = load i64, i64* @REQ_OP_WRITE, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %80

48:                                               ; preds = %43
  %49 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %9, align 8
  %50 = load %struct.bio*, %struct.bio** %6, align 8
  %51 = load i32, i32* %11, align 4
  %52 = call i64 @btrfs_bio_wq_end_io(%struct.btrfs_fs_info* %49, %struct.bio* %50, i32 %51)
  store i64 %52, i64* %12, align 8
  %53 = load i64, i64* %12, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  br label %121

56:                                               ; preds = %48
  %57 = load i64, i64* %8, align 8
  %58 = load i64, i64* @EXTENT_BIO_COMPRESSED, align 8
  %59 = and i64 %57, %58
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %56
  %62 = load %struct.inode*, %struct.inode** %5, align 8
  %63 = load %struct.bio*, %struct.bio** %6, align 8
  %64 = load i32, i32* %7, align 4
  %65 = load i64, i64* %8, align 8
  %66 = call i64 @btrfs_submit_compressed_read(%struct.inode* %62, %struct.bio* %63, i32 %64, i64 %65)
  store i64 %66, i64* %12, align 8
  br label %121

67:                                               ; preds = %56
  %68 = load i32, i32* %13, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %78, label %70

70:                                               ; preds = %67
  %71 = load %struct.inode*, %struct.inode** %5, align 8
  %72 = load %struct.bio*, %struct.bio** %6, align 8
  %73 = call i64 @btrfs_lookup_bio_sums(%struct.inode* %71, %struct.bio* %72, i32* null)
  store i64 %73, i64* %12, align 8
  %74 = load i64, i64* %12, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  br label %121

77:                                               ; preds = %70
  br label %78

78:                                               ; preds = %77, %67
  br label %79

79:                                               ; preds = %78
  br label %116

80:                                               ; preds = %43
  %81 = load i32, i32* %14, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %102

83:                                               ; preds = %80
  %84 = load i32, i32* %13, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %102, label %86

86:                                               ; preds = %83
  %87 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %88 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @BTRFS_DATA_RELOC_TREE_OBJECTID, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %86
  br label %116

94:                                               ; preds = %86
  %95 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %9, align 8
  %96 = load %struct.bio*, %struct.bio** %6, align 8
  %97 = load i32, i32* %7, align 4
  %98 = load i64, i64* %8, align 8
  %99 = load %struct.inode*, %struct.inode** %5, align 8
  %100 = load i32, i32* @btrfs_submit_bio_start, align 4
  %101 = call i64 @btrfs_wq_submit_bio(%struct.btrfs_fs_info* %95, %struct.bio* %96, i32 %97, i64 %98, i32 0, %struct.inode* %99, i32 %100)
  store i64 %101, i64* %12, align 8
  br label %121

102:                                              ; preds = %83, %80
  %103 = load i32, i32* %13, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %113, label %105

105:                                              ; preds = %102
  %106 = load %struct.inode*, %struct.inode** %5, align 8
  %107 = load %struct.bio*, %struct.bio** %6, align 8
  %108 = call i64 @btrfs_csum_one_bio(%struct.inode* %106, %struct.bio* %107, i32 0, i32 0)
  store i64 %108, i64* %12, align 8
  %109 = load i64, i64* %12, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %105
  br label %121

112:                                              ; preds = %105
  br label %113

113:                                              ; preds = %112, %102
  br label %114

114:                                              ; preds = %113
  br label %115

115:                                              ; preds = %114
  br label %116

116:                                              ; preds = %115, %93, %79
  %117 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %9, align 8
  %118 = load %struct.bio*, %struct.bio** %6, align 8
  %119 = load i32, i32* %7, align 4
  %120 = call i64 @btrfs_map_bio(%struct.btrfs_fs_info* %117, %struct.bio* %118, i32 %119, i32 0)
  store i64 %120, i64* %12, align 8
  br label %121

121:                                              ; preds = %116, %111, %94, %76, %61, %55
  %122 = load i64, i64* %12, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %121
  %125 = load i64, i64* %12, align 8
  %126 = load %struct.bio*, %struct.bio** %6, align 8
  %127 = getelementptr inbounds %struct.bio, %struct.bio* %126, i32 0, i32 0
  store i64 %125, i64* %127, align 8
  %128 = load %struct.bio*, %struct.bio** %6, align 8
  %129 = call i32 @bio_endio(%struct.bio* %128)
  br label %130

130:                                              ; preds = %124, %121
  %131 = load i64, i64* %12, align 8
  ret i64 %131
}

declare dso_local %struct.btrfs_fs_info* @btrfs_sb(i32) #1

declare dso_local %struct.TYPE_5__* @BTRFS_I(%struct.inode*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i64 @btrfs_is_free_space_inode(%struct.TYPE_5__*) #1

declare dso_local i64 @bio_op(%struct.bio*) #1

declare dso_local i64 @btrfs_bio_wq_end_io(%struct.btrfs_fs_info*, %struct.bio*, i32) #1

declare dso_local i64 @btrfs_submit_compressed_read(%struct.inode*, %struct.bio*, i32, i64) #1

declare dso_local i64 @btrfs_lookup_bio_sums(%struct.inode*, %struct.bio*, i32*) #1

declare dso_local i64 @btrfs_wq_submit_bio(%struct.btrfs_fs_info*, %struct.bio*, i32, i64, i32, %struct.inode*, i32) #1

declare dso_local i64 @btrfs_csum_one_bio(%struct.inode*, %struct.bio*, i32, i32) #1

declare dso_local i64 @btrfs_map_bio(%struct.btrfs_fs_info*, %struct.bio*, i32, i32) #1

declare dso_local i32 @bio_endio(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
