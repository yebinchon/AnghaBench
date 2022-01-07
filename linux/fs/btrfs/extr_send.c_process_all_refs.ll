; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_process_all_refs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_process_all_refs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.send_ctx = type { %struct.TYPE_2__*, %struct.btrfs_root*, %struct.btrfs_root* }
%struct.TYPE_2__ = type { i64 }
%struct.btrfs_root = type { i32 }
%struct.btrfs_path = type { i32*, %struct.extent_buffer** }
%struct.extent_buffer = type { i32 }
%struct.btrfs_key = type { i64, i64, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@BTRFS_COMPARE_TREE_NEW = common dso_local global i32 0, align 4
@__record_new_ref = common dso_local global i32 0, align 4
@BTRFS_COMPARE_TREE_DELETED = common dso_local global i32 0, align 4
@__record_deleted_ref = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Wrong command %d in process_all_refs\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@BTRFS_INODE_REF_KEY = common dso_local global i64 0, align 8
@BTRFS_INODE_EXTREF_KEY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.send_ctx*, i32)* @process_all_refs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_all_refs(%struct.send_ctx* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.send_ctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.btrfs_root*, align 8
  %8 = alloca %struct.btrfs_path*, align 8
  %9 = alloca %struct.btrfs_key, align 8
  %10 = alloca %struct.btrfs_key, align 8
  %11 = alloca %struct.extent_buffer*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.send_ctx* %0, %struct.send_ctx** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %14, align 4
  %15 = call %struct.btrfs_path* (...) @alloc_path_for_send()
  store %struct.btrfs_path* %15, %struct.btrfs_path** %8, align 8
  %16 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %17 = icmp ne %struct.btrfs_path* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %140

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @BTRFS_COMPARE_TREE_NEW, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %27 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %26, i32 0, i32 1
  %28 = load %struct.btrfs_root*, %struct.btrfs_root** %27, align 8
  store %struct.btrfs_root* %28, %struct.btrfs_root** %7, align 8
  %29 = load i32, i32* @__record_new_ref, align 4
  store i32 %29, i32* %13, align 4
  br label %50

30:                                               ; preds = %21
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @BTRFS_COMPARE_TREE_DELETED, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %36 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %35, i32 0, i32 2
  %37 = load %struct.btrfs_root*, %struct.btrfs_root** %36, align 8
  store %struct.btrfs_root* %37, %struct.btrfs_root** %7, align 8
  %38 = load i32, i32* @__record_deleted_ref, align 4
  store i32 %38, i32* %13, align 4
  br label %49

39:                                               ; preds = %30
  %40 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %41 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %40, i32 0, i32 1
  %42 = load %struct.btrfs_root*, %struct.btrfs_root** %41, align 8
  %43 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @btrfs_err(i32 %44, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %6, align 4
  br label %136

49:                                               ; preds = %34
  br label %50

50:                                               ; preds = %49, %25
  %51 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %52 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %9, i32 0, i32 0
  store i64 %55, i64* %56, align 8
  %57 = load i64, i64* @BTRFS_INODE_REF_KEY, align 8
  %58 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %9, i32 0, i32 1
  store i64 %57, i64* %58, align 8
  %59 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %9, i32 0, i32 2
  store i64 0, i64* %59, align 8
  %60 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %61 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %62 = call i32 @btrfs_search_slot(i32* null, %struct.btrfs_root* %60, %struct.btrfs_key* %9, %struct.btrfs_path* %61, i32 0, i32 0)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %50
  br label %136

66:                                               ; preds = %50
  br label %67

67:                                               ; preds = %66, %94, %124
  %68 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %69 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %68, i32 0, i32 1
  %70 = load %struct.extent_buffer**, %struct.extent_buffer*** %69, align 8
  %71 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %70, i64 0
  %72 = load %struct.extent_buffer*, %struct.extent_buffer** %71, align 8
  store %struct.extent_buffer* %72, %struct.extent_buffer** %11, align 8
  %73 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %74 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* %12, align 4
  %79 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %80 = call i32 @btrfs_header_nritems(%struct.extent_buffer* %79)
  %81 = icmp sge i32 %78, %80
  br i1 %81, label %82, label %95

82:                                               ; preds = %67
  %83 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %84 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %85 = call i32 @btrfs_next_leaf(%struct.btrfs_root* %83, %struct.btrfs_path* %84)
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* %6, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  br label %136

89:                                               ; preds = %82
  %90 = load i32, i32* %6, align 4
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  br label %131

93:                                               ; preds = %89
  br label %94

94:                                               ; preds = %93
  br label %67

95:                                               ; preds = %67
  %96 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %97 = load i32, i32* %12, align 4
  %98 = call i32 @btrfs_item_key_to_cpu(%struct.extent_buffer* %96, %struct.btrfs_key* %10, i32 %97)
  %99 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %10, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %9, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %100, %102
  br i1 %103, label %114, label %104

104:                                              ; preds = %95
  %105 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %10, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @BTRFS_INODE_REF_KEY, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %109, label %115

109:                                              ; preds = %104
  %110 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %10, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @BTRFS_INODE_EXTREF_KEY, align 8
  %113 = icmp ne i64 %111, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %109, %95
  br label %131

115:                                              ; preds = %109, %104
  %116 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %117 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %118 = load i32, i32* %13, align 4
  %119 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %120 = call i32 @iterate_inode_ref(%struct.btrfs_root* %116, %struct.btrfs_path* %117, %struct.btrfs_key* %10, i32 0, i32 %118, %struct.send_ctx* %119)
  store i32 %120, i32* %6, align 4
  %121 = load i32, i32* %6, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %115
  br label %136

124:                                              ; preds = %115
  %125 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %126 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 0
  %129 = load i32, i32* %128, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %128, align 4
  br label %67

131:                                              ; preds = %114, %92
  %132 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %133 = call i32 @btrfs_release_path(%struct.btrfs_path* %132)
  %134 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %135 = call i32 @process_recorded_refs(%struct.send_ctx* %134, i32* %14)
  store i32 %135, i32* %6, align 4
  br label %136

136:                                              ; preds = %131, %123, %88, %65, %39
  %137 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %138 = call i32 @btrfs_free_path(%struct.btrfs_path* %137)
  %139 = load i32, i32* %6, align 4
  store i32 %139, i32* %3, align 4
  br label %140

140:                                              ; preds = %136, %18
  %141 = load i32, i32* %3, align 4
  ret i32 %141
}

declare dso_local %struct.btrfs_path* @alloc_path_for_send(...) #1

declare dso_local i32 @btrfs_err(i32, i8*, i32) #1

declare dso_local i32 @btrfs_search_slot(i32*, %struct.btrfs_root*, %struct.btrfs_key*, %struct.btrfs_path*, i32, i32) #1

declare dso_local i32 @btrfs_header_nritems(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_next_leaf(%struct.btrfs_root*, %struct.btrfs_path*) #1

declare dso_local i32 @btrfs_item_key_to_cpu(%struct.extent_buffer*, %struct.btrfs_key*, i32) #1

declare dso_local i32 @iterate_inode_ref(%struct.btrfs_root*, %struct.btrfs_path*, %struct.btrfs_key*, i32, i32, %struct.send_ctx*) #1

declare dso_local i32 @btrfs_release_path(%struct.btrfs_path*) #1

declare dso_local i32 @process_recorded_refs(%struct.send_ctx*, i32*) #1

declare dso_local i32 @btrfs_free_path(%struct.btrfs_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
