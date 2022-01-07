; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_disk-io.c_btrfs_read_roots.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_disk-io.c_btrfs_read_roots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { %struct.btrfs_root*, %struct.btrfs_root*, %struct.btrfs_root*, i32, %struct.btrfs_root*, %struct.btrfs_root*, %struct.btrfs_root*, %struct.btrfs_root* }
%struct.btrfs_root = type { i32 }
%struct.btrfs_key = type { i32, i64, i32 }

@BTRFS_EXTENT_TREE_OBJECTID = common dso_local global i32 0, align 4
@BTRFS_ROOT_ITEM_KEY = common dso_local global i32 0, align 4
@BTRFS_ROOT_TRACK_DIRTY = common dso_local global i32 0, align 4
@BTRFS_DEV_TREE_OBJECTID = common dso_local global i32 0, align 4
@BTRFS_CSUM_TREE_OBJECTID = common dso_local global i32 0, align 4
@BTRFS_QUOTA_TREE_OBJECTID = common dso_local global i32 0, align 4
@BTRFS_FS_QUOTA_ENABLED = common dso_local global i32 0, align 4
@BTRFS_UUID_TREE_OBJECTID = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@FREE_SPACE_TREE = common dso_local global i32 0, align 4
@BTRFS_FREE_SPACE_TREE_OBJECTID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"failed to read root (objectid=%llu): %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_fs_info*)* @btrfs_read_roots to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfs_read_roots(%struct.btrfs_fs_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.btrfs_fs_info*, align 8
  %4 = alloca %struct.btrfs_root*, align 8
  %5 = alloca %struct.btrfs_root*, align 8
  %6 = alloca %struct.btrfs_key, align 8
  %7 = alloca i32, align 4
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %3, align 8
  %8 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %9 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %8, i32 0, i32 7
  %10 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  store %struct.btrfs_root* %10, %struct.btrfs_root** %4, align 8
  %11 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %12 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %11, i32 0, i32 7
  %13 = load %struct.btrfs_root*, %struct.btrfs_root** %12, align 8
  %14 = icmp ne %struct.btrfs_root* %13, null
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load i32, i32* @BTRFS_EXTENT_TREE_OBJECTID, align 4
  %19 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %6, i32 0, i32 0
  store i32 %18, i32* %19, align 8
  %20 = load i32, i32* @BTRFS_ROOT_ITEM_KEY, align 4
  %21 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %6, i32 0, i32 2
  store i32 %20, i32* %21, align 8
  %22 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %6, i32 0, i32 1
  store i64 0, i64* %22, align 8
  %23 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %24 = call %struct.btrfs_root* @btrfs_read_tree_root(%struct.btrfs_root* %23, %struct.btrfs_key* %6)
  store %struct.btrfs_root* %24, %struct.btrfs_root** %5, align 8
  %25 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %26 = call i64 @IS_ERR(%struct.btrfs_root* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %1
  %29 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %30 = call i32 @PTR_ERR(%struct.btrfs_root* %29)
  store i32 %30, i32* %7, align 4
  br label %146

31:                                               ; preds = %1
  %32 = load i32, i32* @BTRFS_ROOT_TRACK_DIRTY, align 4
  %33 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %34 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %33, i32 0, i32 0
  %35 = call i32 @set_bit(i32 %32, i32* %34)
  %36 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %37 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %38 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %37, i32 0, i32 6
  store %struct.btrfs_root* %36, %struct.btrfs_root** %38, align 8
  %39 = load i32, i32* @BTRFS_DEV_TREE_OBJECTID, align 4
  %40 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %6, i32 0, i32 0
  store i32 %39, i32* %40, align 8
  %41 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %42 = call %struct.btrfs_root* @btrfs_read_tree_root(%struct.btrfs_root* %41, %struct.btrfs_key* %6)
  store %struct.btrfs_root* %42, %struct.btrfs_root** %5, align 8
  %43 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %44 = call i64 @IS_ERR(%struct.btrfs_root* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %31
  %47 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %48 = call i32 @PTR_ERR(%struct.btrfs_root* %47)
  store i32 %48, i32* %7, align 4
  br label %146

49:                                               ; preds = %31
  %50 = load i32, i32* @BTRFS_ROOT_TRACK_DIRTY, align 4
  %51 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %52 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %51, i32 0, i32 0
  %53 = call i32 @set_bit(i32 %50, i32* %52)
  %54 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %55 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %56 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %55, i32 0, i32 5
  store %struct.btrfs_root* %54, %struct.btrfs_root** %56, align 8
  %57 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %58 = call i32 @btrfs_init_devices_late(%struct.btrfs_fs_info* %57)
  %59 = load i32, i32* @BTRFS_CSUM_TREE_OBJECTID, align 4
  %60 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %6, i32 0, i32 0
  store i32 %59, i32* %60, align 8
  %61 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %62 = call %struct.btrfs_root* @btrfs_read_tree_root(%struct.btrfs_root* %61, %struct.btrfs_key* %6)
  store %struct.btrfs_root* %62, %struct.btrfs_root** %5, align 8
  %63 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %64 = call i64 @IS_ERR(%struct.btrfs_root* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %49
  %67 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %68 = call i32 @PTR_ERR(%struct.btrfs_root* %67)
  store i32 %68, i32* %7, align 4
  br label %146

69:                                               ; preds = %49
  %70 = load i32, i32* @BTRFS_ROOT_TRACK_DIRTY, align 4
  %71 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %72 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %71, i32 0, i32 0
  %73 = call i32 @set_bit(i32 %70, i32* %72)
  %74 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %75 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %76 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %75, i32 0, i32 4
  store %struct.btrfs_root* %74, %struct.btrfs_root** %76, align 8
  %77 = load i32, i32* @BTRFS_QUOTA_TREE_OBJECTID, align 4
  %78 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %6, i32 0, i32 0
  store i32 %77, i32* %78, align 8
  %79 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %80 = call %struct.btrfs_root* @btrfs_read_tree_root(%struct.btrfs_root* %79, %struct.btrfs_key* %6)
  store %struct.btrfs_root* %80, %struct.btrfs_root** %5, align 8
  %81 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %82 = call i64 @IS_ERR(%struct.btrfs_root* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %96, label %84

84:                                               ; preds = %69
  %85 = load i32, i32* @BTRFS_ROOT_TRACK_DIRTY, align 4
  %86 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %87 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %86, i32 0, i32 0
  %88 = call i32 @set_bit(i32 %85, i32* %87)
  %89 = load i32, i32* @BTRFS_FS_QUOTA_ENABLED, align 4
  %90 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %91 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %90, i32 0, i32 3
  %92 = call i32 @set_bit(i32 %89, i32* %91)
  %93 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %94 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %95 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %94, i32 0, i32 2
  store %struct.btrfs_root* %93, %struct.btrfs_root** %95, align 8
  br label %96

96:                                               ; preds = %84, %69
  %97 = load i32, i32* @BTRFS_UUID_TREE_OBJECTID, align 4
  %98 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %6, i32 0, i32 0
  store i32 %97, i32* %98, align 8
  %99 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %100 = call %struct.btrfs_root* @btrfs_read_tree_root(%struct.btrfs_root* %99, %struct.btrfs_key* %6)
  store %struct.btrfs_root* %100, %struct.btrfs_root** %5, align 8
  %101 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %102 = call i64 @IS_ERR(%struct.btrfs_root* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %113

104:                                              ; preds = %96
  %105 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %106 = call i32 @PTR_ERR(%struct.btrfs_root* %105)
  store i32 %106, i32* %7, align 4
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* @ENOENT, align 4
  %109 = sub nsw i32 0, %108
  %110 = icmp ne i32 %107, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %104
  br label %146

112:                                              ; preds = %104
  br label %121

113:                                              ; preds = %96
  %114 = load i32, i32* @BTRFS_ROOT_TRACK_DIRTY, align 4
  %115 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %116 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %115, i32 0, i32 0
  %117 = call i32 @set_bit(i32 %114, i32* %116)
  %118 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %119 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %120 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %119, i32 0, i32 1
  store %struct.btrfs_root* %118, %struct.btrfs_root** %120, align 8
  br label %121

121:                                              ; preds = %113, %112
  %122 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %123 = load i32, i32* @FREE_SPACE_TREE, align 4
  %124 = call i64 @btrfs_fs_compat_ro(%struct.btrfs_fs_info* %122, i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %145

126:                                              ; preds = %121
  %127 = load i32, i32* @BTRFS_FREE_SPACE_TREE_OBJECTID, align 4
  %128 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %6, i32 0, i32 0
  store i32 %127, i32* %128, align 8
  %129 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %130 = call %struct.btrfs_root* @btrfs_read_tree_root(%struct.btrfs_root* %129, %struct.btrfs_key* %6)
  store %struct.btrfs_root* %130, %struct.btrfs_root** %5, align 8
  %131 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %132 = call i64 @IS_ERR(%struct.btrfs_root* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %126
  %135 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %136 = call i32 @PTR_ERR(%struct.btrfs_root* %135)
  store i32 %136, i32* %7, align 4
  br label %146

137:                                              ; preds = %126
  %138 = load i32, i32* @BTRFS_ROOT_TRACK_DIRTY, align 4
  %139 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %140 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %139, i32 0, i32 0
  %141 = call i32 @set_bit(i32 %138, i32* %140)
  %142 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %143 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %144 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %143, i32 0, i32 0
  store %struct.btrfs_root* %142, %struct.btrfs_root** %144, align 8
  br label %145

145:                                              ; preds = %137, %121
  store i32 0, i32* %2, align 4
  br label %153

146:                                              ; preds = %134, %111, %66, %46, %28
  %147 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %148 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %6, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* %7, align 4
  %151 = call i32 @btrfs_warn(%struct.btrfs_fs_info* %147, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %149, i32 %150)
  %152 = load i32, i32* %7, align 4
  store i32 %152, i32* %2, align 4
  br label %153

153:                                              ; preds = %146, %145
  %154 = load i32, i32* %2, align 4
  ret i32 %154
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.btrfs_root* @btrfs_read_tree_root(%struct.btrfs_root*, %struct.btrfs_key*) #1

declare dso_local i64 @IS_ERR(%struct.btrfs_root*) #1

declare dso_local i32 @PTR_ERR(%struct.btrfs_root*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @btrfs_init_devices_late(%struct.btrfs_fs_info*) #1

declare dso_local i64 @btrfs_fs_compat_ro(%struct.btrfs_fs_info*, i32) #1

declare dso_local i32 @btrfs_warn(%struct.btrfs_fs_info*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
