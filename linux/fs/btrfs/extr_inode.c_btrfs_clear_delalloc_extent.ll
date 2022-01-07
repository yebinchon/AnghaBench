; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_inode.c_btrfs_clear_delalloc_extent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_inode.c_btrfs_clear_delalloc_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.extent_state = type { i32, i64, i64 }
%struct.btrfs_inode = type { i64, i32, i64, i32, i32, %struct.btrfs_root*, i64 }
%struct.btrfs_root = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.btrfs_fs_info = type { i32, i32, %struct.btrfs_root* }

@EXTENT_DEFRAG = common dso_local global i32 0, align 4
@EXTENT_DELALLOC = common dso_local global i32 0, align 4
@EXTENT_CLEAR_META_RESV = common dso_local global i32 0, align 4
@BTRFS_DATA_RELOC_TREE_OBJECTID = common dso_local global i64 0, align 8
@EXTENT_NORESERVE = common dso_local global i32 0, align 4
@EXTENT_CLEAR_DATA_RESV = common dso_local global i32 0, align 4
@BTRFS_INODE_IN_DELALLOC_LIST = common dso_local global i32 0, align 4
@EXTENT_DELALLOC_NEW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btrfs_clear_delalloc_extent(%struct.inode* %0, %struct.extent_state* %1, i32* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.extent_state*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.btrfs_inode*, align 8
  %8 = alloca %struct.btrfs_fs_info*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.btrfs_root*, align 8
  %12 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.extent_state* %1, %struct.extent_state** %5, align 8
  store i32* %2, i32** %6, align 8
  %13 = load %struct.inode*, %struct.inode** %4, align 8
  %14 = call %struct.btrfs_inode* @BTRFS_I(%struct.inode* %13)
  store %struct.btrfs_inode* %14, %struct.btrfs_inode** %7, align 8
  %15 = load %struct.inode*, %struct.inode** %4, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.btrfs_fs_info* @btrfs_sb(i32 %17)
  store %struct.btrfs_fs_info* %18, %struct.btrfs_fs_info** %8, align 8
  %19 = load %struct.extent_state*, %struct.extent_state** %5, align 8
  %20 = getelementptr inbounds %struct.extent_state, %struct.extent_state* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %21, 1
  %23 = load %struct.extent_state*, %struct.extent_state** %5, align 8
  %24 = getelementptr inbounds %struct.extent_state, %struct.extent_state* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = sub nsw i64 %22, %25
  store i64 %26, i64* %9, align 8
  %27 = load i64, i64* %9, align 8
  %28 = call i32 @count_max_extents(i64 %27)
  store i32 %28, i32* %10, align 4
  %29 = load %struct.extent_state*, %struct.extent_state** %5, align 8
  %30 = getelementptr inbounds %struct.extent_state, %struct.extent_state* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @EXTENT_DEFRAG, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %53

35:                                               ; preds = %3
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @EXTENT_DEFRAG, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %35
  %42 = load %struct.btrfs_inode*, %struct.btrfs_inode** %7, align 8
  %43 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %42, i32 0, i32 1
  %44 = call i32 @spin_lock(i32* %43)
  %45 = load i64, i64* %9, align 8
  %46 = load %struct.btrfs_inode*, %struct.btrfs_inode** %7, align 8
  %47 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %46, i32 0, i32 6
  %48 = load i64, i64* %47, align 8
  %49 = sub nsw i64 %48, %45
  store i64 %49, i64* %47, align 8
  %50 = load %struct.btrfs_inode*, %struct.btrfs_inode** %7, align 8
  %51 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %50, i32 0, i32 1
  %52 = call i32 @spin_unlock(i32* %51)
  br label %53

53:                                               ; preds = %41, %35, %3
  %54 = load %struct.extent_state*, %struct.extent_state** %5, align 8
  %55 = getelementptr inbounds %struct.extent_state, %struct.extent_state* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @EXTENT_DELALLOC, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %174

60:                                               ; preds = %53
  %61 = load i32*, i32** %6, align 8
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @EXTENT_DELALLOC, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %174

66:                                               ; preds = %60
  %67 = load %struct.btrfs_inode*, %struct.btrfs_inode** %7, align 8
  %68 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %67, i32 0, i32 5
  %69 = load %struct.btrfs_root*, %struct.btrfs_root** %68, align 8
  store %struct.btrfs_root* %69, %struct.btrfs_root** %11, align 8
  %70 = load %struct.btrfs_inode*, %struct.btrfs_inode** %7, align 8
  %71 = call i32 @btrfs_is_free_space_inode(%struct.btrfs_inode* %70)
  %72 = icmp ne i32 %71, 0
  %73 = xor i1 %72, true
  %74 = zext i1 %73 to i32
  store i32 %74, i32* %12, align 4
  %75 = load %struct.btrfs_inode*, %struct.btrfs_inode** %7, align 8
  %76 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %75, i32 0, i32 1
  %77 = call i32 @spin_lock(i32* %76)
  %78 = load %struct.btrfs_inode*, %struct.btrfs_inode** %7, align 8
  %79 = load i32, i32* %10, align 4
  %80 = sub nsw i32 0, %79
  %81 = call i32 @btrfs_mod_outstanding_extents(%struct.btrfs_inode* %78, i32 %80)
  %82 = load %struct.btrfs_inode*, %struct.btrfs_inode** %7, align 8
  %83 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %82, i32 0, i32 1
  %84 = call i32 @spin_unlock(i32* %83)
  %85 = load i32*, i32** %6, align 8
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @EXTENT_CLEAR_META_RESV, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %100

90:                                               ; preds = %66
  %91 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %92 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %8, align 8
  %93 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %92, i32 0, i32 2
  %94 = load %struct.btrfs_root*, %struct.btrfs_root** %93, align 8
  %95 = icmp ne %struct.btrfs_root* %91, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %90
  %97 = load %struct.btrfs_inode*, %struct.btrfs_inode** %7, align 8
  %98 = load i64, i64* %9, align 8
  %99 = call i32 @btrfs_delalloc_release_metadata(%struct.btrfs_inode* %97, i64 %98, i32 0)
  br label %100

100:                                              ; preds = %96, %90, %66
  %101 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %8, align 8
  %102 = call i64 @btrfs_is_testing(%struct.btrfs_fs_info* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %100
  br label %206

105:                                              ; preds = %100
  %106 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %107 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @BTRFS_DATA_RELOC_TREE_OBJECTID, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %112, label %136

112:                                              ; preds = %105
  %113 = load i32, i32* %12, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %136

115:                                              ; preds = %112
  %116 = load %struct.extent_state*, %struct.extent_state** %5, align 8
  %117 = getelementptr inbounds %struct.extent_state, %struct.extent_state* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @EXTENT_NORESERVE, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %136, label %122

122:                                              ; preds = %115
  %123 = load i32*, i32** %6, align 8
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @EXTENT_CLEAR_DATA_RESV, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %136

128:                                              ; preds = %122
  %129 = load %struct.btrfs_inode*, %struct.btrfs_inode** %7, align 8
  %130 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %129, i32 0, i32 4
  %131 = load %struct.extent_state*, %struct.extent_state** %5, align 8
  %132 = getelementptr inbounds %struct.extent_state, %struct.extent_state* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* %9, align 8
  %135 = call i32 @btrfs_free_reserved_data_space_noquota(i32* %130, i64 %133, i64 %134)
  br label %136

136:                                              ; preds = %128, %122, %115, %112, %105
  %137 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %8, align 8
  %138 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %137, i32 0, i32 1
  %139 = load i64, i64* %9, align 8
  %140 = sub nsw i64 0, %139
  %141 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %8, align 8
  %142 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @percpu_counter_add_batch(i32* %138, i64 %140, i32 %143)
  %145 = load %struct.btrfs_inode*, %struct.btrfs_inode** %7, align 8
  %146 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %145, i32 0, i32 1
  %147 = call i32 @spin_lock(i32* %146)
  %148 = load i64, i64* %9, align 8
  %149 = load %struct.btrfs_inode*, %struct.btrfs_inode** %7, align 8
  %150 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = sub nsw i64 %151, %148
  store i64 %152, i64* %150, align 8
  %153 = load i32, i32* %12, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %170

155:                                              ; preds = %136
  %156 = load %struct.btrfs_inode*, %struct.btrfs_inode** %7, align 8
  %157 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %160, label %170

160:                                              ; preds = %155
  %161 = load i32, i32* @BTRFS_INODE_IN_DELALLOC_LIST, align 4
  %162 = load %struct.btrfs_inode*, %struct.btrfs_inode** %7, align 8
  %163 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %162, i32 0, i32 3
  %164 = call i64 @test_bit(i32 %161, i32* %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %170

166:                                              ; preds = %160
  %167 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %168 = load %struct.btrfs_inode*, %struct.btrfs_inode** %7, align 8
  %169 = call i32 @btrfs_del_delalloc_inode(%struct.btrfs_root* %167, %struct.btrfs_inode* %168)
  br label %170

170:                                              ; preds = %166, %160, %155, %136
  %171 = load %struct.btrfs_inode*, %struct.btrfs_inode** %7, align 8
  %172 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %171, i32 0, i32 1
  %173 = call i32 @spin_unlock(i32* %172)
  br label %174

174:                                              ; preds = %170, %60, %53
  %175 = load %struct.extent_state*, %struct.extent_state** %5, align 8
  %176 = getelementptr inbounds %struct.extent_state, %struct.extent_state* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* @EXTENT_DELALLOC_NEW, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %206

181:                                              ; preds = %174
  %182 = load i32*, i32** %6, align 8
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @EXTENT_DELALLOC_NEW, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %206

187:                                              ; preds = %181
  %188 = load %struct.btrfs_inode*, %struct.btrfs_inode** %7, align 8
  %189 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %188, i32 0, i32 1
  %190 = call i32 @spin_lock(i32* %189)
  %191 = load %struct.btrfs_inode*, %struct.btrfs_inode** %7, align 8
  %192 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %191, i32 0, i32 2
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* %9, align 8
  %195 = icmp sge i64 %193, %194
  %196 = zext i1 %195 to i32
  %197 = call i32 @ASSERT(i32 %196)
  %198 = load i64, i64* %9, align 8
  %199 = load %struct.btrfs_inode*, %struct.btrfs_inode** %7, align 8
  %200 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %199, i32 0, i32 2
  %201 = load i64, i64* %200, align 8
  %202 = sub nsw i64 %201, %198
  store i64 %202, i64* %200, align 8
  %203 = load %struct.btrfs_inode*, %struct.btrfs_inode** %7, align 8
  %204 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %203, i32 0, i32 1
  %205 = call i32 @spin_unlock(i32* %204)
  br label %206

206:                                              ; preds = %104, %187, %181, %174
  ret void
}

declare dso_local %struct.btrfs_inode* @BTRFS_I(%struct.inode*) #1

declare dso_local %struct.btrfs_fs_info* @btrfs_sb(i32) #1

declare dso_local i32 @count_max_extents(i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @btrfs_is_free_space_inode(%struct.btrfs_inode*) #1

declare dso_local i32 @btrfs_mod_outstanding_extents(%struct.btrfs_inode*, i32) #1

declare dso_local i32 @btrfs_delalloc_release_metadata(%struct.btrfs_inode*, i64, i32) #1

declare dso_local i64 @btrfs_is_testing(%struct.btrfs_fs_info*) #1

declare dso_local i32 @btrfs_free_reserved_data_space_noquota(i32*, i64, i64) #1

declare dso_local i32 @percpu_counter_add_batch(i32*, i64, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @btrfs_del_delalloc_inode(%struct.btrfs_root*, %struct.btrfs_inode*) #1

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
