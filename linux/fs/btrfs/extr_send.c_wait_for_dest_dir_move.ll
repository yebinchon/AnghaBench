; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_wait_for_dest_dir_move.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_wait_for_dest_dir_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.send_ctx = type { i32, i32, i32, i32, %struct.TYPE_3__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { %struct.btrfs_fs_info* }
%struct.btrfs_fs_info = type { i32 }
%struct.recorded_ref = type { i32, i32, i32 }
%struct.btrfs_path = type { i32* }
%struct.btrfs_key = type { i64, i32, i32 }
%struct.btrfs_dir_item = type { i32 }
%struct.waiting_dir_move = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@BTRFS_DIR_ITEM_KEY = common dso_local global i64 0, align 8
@BTRFS_INODE_ITEM_KEY = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.send_ctx*, %struct.recorded_ref*, i32)* @wait_for_dest_dir_move to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_for_dest_dir_move(%struct.send_ctx* %0, %struct.recorded_ref* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.send_ctx*, align 8
  %6 = alloca %struct.recorded_ref*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.btrfs_fs_info*, align 8
  %9 = alloca %struct.btrfs_path*, align 8
  %10 = alloca %struct.btrfs_key, align 8
  %11 = alloca %struct.btrfs_key, align 8
  %12 = alloca %struct.btrfs_dir_item*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.waiting_dir_move*, align 8
  store %struct.send_ctx* %0, %struct.send_ctx** %5, align 8
  store %struct.recorded_ref* %1, %struct.recorded_ref** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load %struct.send_ctx*, %struct.send_ctx** %5, align 8
  %18 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %17, i32 0, i32 5
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %20, align 8
  store %struct.btrfs_fs_info* %21, %struct.btrfs_fs_info** %8, align 8
  store i32 0, i32* %15, align 4
  %22 = load %struct.send_ctx*, %struct.send_ctx** %5, align 8
  %23 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %22, i32 0, i32 6
  %24 = call i64 @RB_EMPTY_ROOT(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %156

27:                                               ; preds = %3
  %28 = call %struct.btrfs_path* (...) @alloc_path_for_send()
  store %struct.btrfs_path* %28, %struct.btrfs_path** %9, align 8
  %29 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %30 = icmp ne %struct.btrfs_path* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %156

34:                                               ; preds = %27
  %35 = load %struct.recorded_ref*, %struct.recorded_ref** %6, align 8
  %36 = getelementptr inbounds %struct.recorded_ref, %struct.recorded_ref* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %10, i32 0, i32 1
  store i32 %37, i32* %38, align 8
  %39 = load i64, i64* @BTRFS_DIR_ITEM_KEY, align 8
  %40 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %10, i32 0, i32 0
  store i64 %39, i64* %40, align 8
  %41 = load %struct.recorded_ref*, %struct.recorded_ref** %6, align 8
  %42 = getelementptr inbounds %struct.recorded_ref, %struct.recorded_ref* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.recorded_ref*, %struct.recorded_ref** %6, align 8
  %45 = getelementptr inbounds %struct.recorded_ref, %struct.recorded_ref* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @btrfs_name_hash(i32 %43, i32 %46)
  %48 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %10, i32 0, i32 2
  store i32 %47, i32* %48, align 4
  %49 = load %struct.send_ctx*, %struct.send_ctx** %5, align 8
  %50 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %49, i32 0, i32 5
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %53 = call i32 @btrfs_search_slot(i32* null, %struct.TYPE_3__* %51, %struct.btrfs_key* %10, %struct.btrfs_path* %52, i32 0, i32 0)
  store i32 %53, i32* %15, align 4
  %54 = load i32, i32* %15, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %34
  br label %152

57:                                               ; preds = %34
  %58 = load i32, i32* %15, align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  store i32 0, i32* %15, align 4
  br label %152

61:                                               ; preds = %57
  br label %62

62:                                               ; preds = %61
  %63 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %8, align 8
  %64 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %65 = load %struct.recorded_ref*, %struct.recorded_ref** %6, align 8
  %66 = getelementptr inbounds %struct.recorded_ref, %struct.recorded_ref* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.recorded_ref*, %struct.recorded_ref** %6, align 8
  %69 = getelementptr inbounds %struct.recorded_ref, %struct.recorded_ref* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call %struct.btrfs_dir_item* @btrfs_match_dir_item_name(%struct.btrfs_fs_info* %63, %struct.btrfs_path* %64, i32 %67, i32 %70)
  store %struct.btrfs_dir_item* %71, %struct.btrfs_dir_item** %12, align 8
  %72 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %12, align 8
  %73 = icmp ne %struct.btrfs_dir_item* %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %62
  store i32 0, i32* %15, align 4
  br label %152

75:                                               ; preds = %62
  %76 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %77 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %12, align 8
  %82 = call i32 @btrfs_dir_item_key_to_cpu(i32 %80, %struct.btrfs_dir_item* %81, %struct.btrfs_key* %11)
  %83 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %11, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @BTRFS_INODE_ITEM_KEY, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %75
  store i32 0, i32* %15, align 4
  br label %152

88:                                               ; preds = %75
  %89 = load %struct.send_ctx*, %struct.send_ctx** %5, align 8
  %90 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %89, i32 0, i32 5
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %90, align 8
  %92 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %11, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @get_inode_info(%struct.TYPE_3__* %91, i32 %93, i32* null, i64* %13, i32* null, i32* null, i32* null, i32* null)
  store i32 %94, i32* %15, align 4
  %95 = load i32, i32* %15, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %88
  br label %152

98:                                               ; preds = %88
  %99 = load %struct.send_ctx*, %struct.send_ctx** %5, align 8
  %100 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %99, i32 0, i32 4
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %100, align 8
  %102 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %11, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @get_inode_info(%struct.TYPE_3__* %101, i32 %103, i32* null, i64* %14, i32* null, i32* null, i32* null, i32* null)
  store i32 %104, i32* %15, align 4
  %105 = load i32, i32* %15, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %98
  %108 = load i32, i32* %15, align 4
  %109 = load i32, i32* @ENOENT, align 4
  %110 = sub nsw i32 0, %109
  %111 = icmp eq i32 %108, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %107
  store i32 0, i32* %15, align 4
  br label %113

113:                                              ; preds = %112, %107
  br label %152

114:                                              ; preds = %98
  %115 = load i64, i64* %14, align 8
  %116 = load i64, i64* %13, align 8
  %117 = icmp ne i64 %115, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %114
  store i32 0, i32* %15, align 4
  br label %152

119:                                              ; preds = %114
  %120 = load %struct.send_ctx*, %struct.send_ctx** %5, align 8
  %121 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %11, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = call %struct.waiting_dir_move* @get_waiting_dir_move(%struct.send_ctx* %120, i32 %122)
  store %struct.waiting_dir_move* %123, %struct.waiting_dir_move** %16, align 8
  %124 = load %struct.waiting_dir_move*, %struct.waiting_dir_move** %16, align 8
  %125 = icmp ne %struct.waiting_dir_move* %124, null
  br i1 %125, label %126, label %151

126:                                              ; preds = %119
  %127 = load %struct.waiting_dir_move*, %struct.waiting_dir_move** %16, align 8
  %128 = getelementptr inbounds %struct.waiting_dir_move, %struct.waiting_dir_move* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %151, label %131

131:                                              ; preds = %126
  %132 = load %struct.send_ctx*, %struct.send_ctx** %5, align 8
  %133 = load %struct.send_ctx*, %struct.send_ctx** %5, align 8
  %134 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.send_ctx*, %struct.send_ctx** %5, align 8
  %137 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %11, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.send_ctx*, %struct.send_ctx** %5, align 8
  %142 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %141, i32 0, i32 1
  %143 = load %struct.send_ctx*, %struct.send_ctx** %5, align 8
  %144 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %143, i32 0, i32 0
  %145 = load i32, i32* %7, align 4
  %146 = call i32 @add_pending_dir_move(%struct.send_ctx* %132, i32 %135, i32 %138, i32 %140, i32* %142, i32* %144, i32 %145)
  store i32 %146, i32* %15, align 4
  %147 = load i32, i32* %15, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %150, label %149

149:                                              ; preds = %131
  store i32 1, i32* %15, align 4
  br label %150

150:                                              ; preds = %149, %131
  br label %151

151:                                              ; preds = %150, %126, %119
  br label %152

152:                                              ; preds = %151, %118, %113, %97, %87, %74, %60, %56
  %153 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %154 = call i32 @btrfs_free_path(%struct.btrfs_path* %153)
  %155 = load i32, i32* %15, align 4
  store i32 %155, i32* %4, align 4
  br label %156

156:                                              ; preds = %152, %31, %26
  %157 = load i32, i32* %4, align 4
  ret i32 %157
}

declare dso_local i64 @RB_EMPTY_ROOT(i32*) #1

declare dso_local %struct.btrfs_path* @alloc_path_for_send(...) #1

declare dso_local i32 @btrfs_name_hash(i32, i32) #1

declare dso_local i32 @btrfs_search_slot(i32*, %struct.TYPE_3__*, %struct.btrfs_key*, %struct.btrfs_path*, i32, i32) #1

declare dso_local %struct.btrfs_dir_item* @btrfs_match_dir_item_name(%struct.btrfs_fs_info*, %struct.btrfs_path*, i32, i32) #1

declare dso_local i32 @btrfs_dir_item_key_to_cpu(i32, %struct.btrfs_dir_item*, %struct.btrfs_key*) #1

declare dso_local i32 @get_inode_info(%struct.TYPE_3__*, i32, i32*, i64*, i32*, i32*, i32*, i32*) #1

declare dso_local %struct.waiting_dir_move* @get_waiting_dir_move(%struct.send_ctx*, i32) #1

declare dso_local i32 @add_pending_dir_move(%struct.send_ctx*, i32, i32, i32, i32*, i32*, i32) #1

declare dso_local i32 @btrfs_free_path(%struct.btrfs_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
