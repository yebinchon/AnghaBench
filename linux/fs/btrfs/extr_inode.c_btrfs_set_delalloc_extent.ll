; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_inode.c_btrfs_set_delalloc_extent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_inode.c_btrfs_set_delalloc_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.extent_state = type { i32, i64, i64 }
%struct.btrfs_fs_info = type { i32, i32 }
%struct.btrfs_root = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, %struct.btrfs_root* }

@EXTENT_DEFRAG = common dso_local global i32 0, align 4
@EXTENT_DELALLOC = common dso_local global i32 0, align 4
@BTRFS_INODE_IN_DELALLOC_LIST = common dso_local global i32 0, align 4
@EXTENT_DELALLOC_NEW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btrfs_set_delalloc_extent(%struct.inode* %0, %struct.extent_state* %1, i32* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.extent_state*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.btrfs_fs_info*, align 8
  %8 = alloca %struct.btrfs_root*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.extent_state* %1, %struct.extent_state** %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = load %struct.inode*, %struct.inode** %4, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.btrfs_fs_info* @btrfs_sb(i32 %14)
  store %struct.btrfs_fs_info* %15, %struct.btrfs_fs_info** %7, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @EXTENT_DEFRAG, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %3
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @EXTENT_DELALLOC, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %21
  %28 = call i32 @WARN_ON(i32 1)
  br label %29

29:                                               ; preds = %27, %21, %3
  %30 = load %struct.extent_state*, %struct.extent_state** %5, align 8
  %31 = getelementptr inbounds %struct.extent_state, %struct.extent_state* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @EXTENT_DELALLOC, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %132, label %36

36:                                               ; preds = %29
  %37 = load i32*, i32** %6, align 8
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @EXTENT_DELALLOC, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %132

42:                                               ; preds = %36
  %43 = load %struct.inode*, %struct.inode** %4, align 8
  %44 = call %struct.TYPE_4__* @BTRFS_I(%struct.inode* %43)
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 5
  %46 = load %struct.btrfs_root*, %struct.btrfs_root** %45, align 8
  store %struct.btrfs_root* %46, %struct.btrfs_root** %8, align 8
  %47 = load %struct.extent_state*, %struct.extent_state** %5, align 8
  %48 = getelementptr inbounds %struct.extent_state, %struct.extent_state* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, 1
  %51 = load %struct.extent_state*, %struct.extent_state** %5, align 8
  %52 = getelementptr inbounds %struct.extent_state, %struct.extent_state* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = sub nsw i64 %50, %53
  store i64 %54, i64* %9, align 8
  %55 = load i64, i64* %9, align 8
  %56 = call i32 @count_max_extents(i64 %55)
  store i32 %56, i32* %10, align 4
  %57 = load %struct.inode*, %struct.inode** %4, align 8
  %58 = call %struct.TYPE_4__* @BTRFS_I(%struct.inode* %57)
  %59 = call i32 @btrfs_is_free_space_inode(%struct.TYPE_4__* %58)
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  store i32 %62, i32* %11, align 4
  %63 = load %struct.inode*, %struct.inode** %4, align 8
  %64 = call %struct.TYPE_4__* @BTRFS_I(%struct.inode* %63)
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = call i32 @spin_lock(i32* %65)
  %67 = load %struct.inode*, %struct.inode** %4, align 8
  %68 = call %struct.TYPE_4__* @BTRFS_I(%struct.inode* %67)
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @btrfs_mod_outstanding_extents(%struct.TYPE_4__* %68, i32 %69)
  %71 = load %struct.inode*, %struct.inode** %4, align 8
  %72 = call %struct.TYPE_4__* @BTRFS_I(%struct.inode* %71)
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = call i32 @spin_unlock(i32* %73)
  %75 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %76 = call i64 @btrfs_is_testing(%struct.btrfs_fs_info* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %42
  br label %169

79:                                               ; preds = %42
  %80 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %81 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %80, i32 0, i32 1
  %82 = load i64, i64* %9, align 8
  %83 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %84 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @percpu_counter_add_batch(i32* %81, i64 %82, i32 %85)
  %87 = load %struct.inode*, %struct.inode** %4, align 8
  %88 = call %struct.TYPE_4__* @BTRFS_I(%struct.inode* %87)
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = call i32 @spin_lock(i32* %89)
  %91 = load i64, i64* %9, align 8
  %92 = load %struct.inode*, %struct.inode** %4, align 8
  %93 = call %struct.TYPE_4__* @BTRFS_I(%struct.inode* %92)
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = sext i32 %95 to i64
  %97 = add nsw i64 %96, %91
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %94, align 8
  %99 = load i32*, i32** %6, align 8
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @EXTENT_DEFRAG, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %113

104:                                              ; preds = %79
  %105 = load i64, i64* %9, align 8
  %106 = load %struct.inode*, %struct.inode** %4, align 8
  %107 = call %struct.TYPE_4__* @BTRFS_I(%struct.inode* %106)
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = sext i32 %109 to i64
  %111 = add nsw i64 %110, %105
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* %108, align 4
  br label %113

113:                                              ; preds = %104, %79
  %114 = load i32, i32* %11, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %127

116:                                              ; preds = %113
  %117 = load i32, i32* @BTRFS_INODE_IN_DELALLOC_LIST, align 4
  %118 = load %struct.inode*, %struct.inode** %4, align 8
  %119 = call %struct.TYPE_4__* @BTRFS_I(%struct.inode* %118)
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 2
  %121 = call i32 @test_bit(i32 %117, i32* %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %127, label %123

123:                                              ; preds = %116
  %124 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %125 = load %struct.inode*, %struct.inode** %4, align 8
  %126 = call i32 @btrfs_add_delalloc_inodes(%struct.btrfs_root* %124, %struct.inode* %125)
  br label %127

127:                                              ; preds = %123, %116, %113
  %128 = load %struct.inode*, %struct.inode** %4, align 8
  %129 = call %struct.TYPE_4__* @BTRFS_I(%struct.inode* %128)
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = call i32 @spin_unlock(i32* %130)
  br label %132

132:                                              ; preds = %127, %36, %29
  %133 = load %struct.extent_state*, %struct.extent_state** %5, align 8
  %134 = getelementptr inbounds %struct.extent_state, %struct.extent_state* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @EXTENT_DELALLOC_NEW, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %169, label %139

139:                                              ; preds = %132
  %140 = load i32*, i32** %6, align 8
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @EXTENT_DELALLOC_NEW, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %169

145:                                              ; preds = %139
  %146 = load %struct.inode*, %struct.inode** %4, align 8
  %147 = call %struct.TYPE_4__* @BTRFS_I(%struct.inode* %146)
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  %149 = call i32 @spin_lock(i32* %148)
  %150 = load %struct.extent_state*, %struct.extent_state** %5, align 8
  %151 = getelementptr inbounds %struct.extent_state, %struct.extent_state* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = add nsw i64 %152, 1
  %154 = load %struct.extent_state*, %struct.extent_state** %5, align 8
  %155 = getelementptr inbounds %struct.extent_state, %struct.extent_state* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = sub nsw i64 %153, %156
  %158 = load %struct.inode*, %struct.inode** %4, align 8
  %159 = call %struct.TYPE_4__* @BTRFS_I(%struct.inode* %158)
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = sext i32 %161 to i64
  %163 = add nsw i64 %162, %157
  %164 = trunc i64 %163 to i32
  store i32 %164, i32* %160, align 4
  %165 = load %struct.inode*, %struct.inode** %4, align 8
  %166 = call %struct.TYPE_4__* @BTRFS_I(%struct.inode* %165)
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 0
  %168 = call i32 @spin_unlock(i32* %167)
  br label %169

169:                                              ; preds = %78, %145, %139, %132
  ret void
}

declare dso_local %struct.btrfs_fs_info* @btrfs_sb(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local %struct.TYPE_4__* @BTRFS_I(%struct.inode*) #1

declare dso_local i32 @count_max_extents(i64) #1

declare dso_local i32 @btrfs_is_free_space_inode(%struct.TYPE_4__*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @btrfs_mod_outstanding_extents(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @btrfs_is_testing(%struct.btrfs_fs_info*) #1

declare dso_local i32 @percpu_counter_add_batch(i32*, i64, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @btrfs_add_delalloc_inodes(%struct.btrfs_root*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
