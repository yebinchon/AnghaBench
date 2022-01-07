; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_is_ancestor.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_is_ancestor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { i32 }
%struct.fs_path = type { i32 }
%struct.btrfs_path = type { i32*, %struct.extent_buffer** }
%struct.extent_buffer = type { i32 }
%struct.btrfs_key = type { i64, i64, i64 }
%struct.btrfs_inode_extref = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@BTRFS_INODE_REF_KEY = common dso_local global i64 0, align 8
@BTRFS_INODE_EXTREF_KEY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_root*, i64, i64, i64, %struct.fs_path*)* @is_ancestor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_ancestor(%struct.btrfs_root* %0, i64 %1, i64 %2, i64 %3, %struct.fs_path* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.btrfs_root*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.fs_path*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.btrfs_path*, align 8
  %15 = alloca %struct.btrfs_key, align 8
  %16 = alloca %struct.extent_buffer*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca %struct.btrfs_inode_extref*, align 8
  store %struct.btrfs_root* %0, %struct.btrfs_root** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.fs_path* %4, %struct.fs_path** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store %struct.btrfs_path* null, %struct.btrfs_path** %14, align 8
  %24 = load %struct.fs_path*, %struct.fs_path** %11, align 8
  %25 = icmp ne %struct.fs_path* %24, null
  br i1 %25, label %34, label %26

26:                                               ; preds = %5
  %27 = call %struct.fs_path* (...) @fs_path_alloc()
  store %struct.fs_path* %27, %struct.fs_path** %11, align 8
  %28 = load %struct.fs_path*, %struct.fs_path** %11, align 8
  %29 = icmp ne %struct.fs_path* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %173

33:                                               ; preds = %26
  store i32 1, i32* %12, align 4
  br label %34

34:                                               ; preds = %33, %5
  %35 = call %struct.btrfs_path* (...) @alloc_path_for_send()
  store %struct.btrfs_path* %35, %struct.btrfs_path** %14, align 8
  %36 = load %struct.btrfs_path*, %struct.btrfs_path** %14, align 8
  %37 = icmp ne %struct.btrfs_path* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %13, align 4
  br label %163

41:                                               ; preds = %34
  %42 = load i64, i64* %10, align 8
  %43 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %15, i32 0, i32 0
  store i64 %42, i64* %43, align 8
  %44 = load i64, i64* @BTRFS_INODE_REF_KEY, align 8
  %45 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %15, i32 0, i32 1
  store i64 %44, i64* %45, align 8
  %46 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %15, i32 0, i32 2
  store i64 0, i64* %46, align 8
  %47 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %48 = load %struct.btrfs_path*, %struct.btrfs_path** %14, align 8
  %49 = call i32 @btrfs_search_slot(i32* null, %struct.btrfs_root* %47, %struct.btrfs_key* %15, %struct.btrfs_path* %48, i32 0, i32 0)
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %41
  br label %163

53:                                               ; preds = %41
  br label %54

54:                                               ; preds = %53, %80, %155
  %55 = load %struct.btrfs_path*, %struct.btrfs_path** %14, align 8
  %56 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %55, i32 0, i32 1
  %57 = load %struct.extent_buffer**, %struct.extent_buffer*** %56, align 8
  %58 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %57, i64 0
  %59 = load %struct.extent_buffer*, %struct.extent_buffer** %58, align 8
  store %struct.extent_buffer* %59, %struct.extent_buffer** %16, align 8
  %60 = load %struct.btrfs_path*, %struct.btrfs_path** %14, align 8
  %61 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %17, align 4
  store i64 0, i64* %18, align 8
  %65 = load i32, i32* %17, align 4
  %66 = load %struct.extent_buffer*, %struct.extent_buffer** %16, align 8
  %67 = call i32 @btrfs_header_nritems(%struct.extent_buffer* %66)
  %68 = icmp sge i32 %65, %67
  br i1 %68, label %69, label %81

69:                                               ; preds = %54
  %70 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %71 = load %struct.btrfs_path*, %struct.btrfs_path** %14, align 8
  %72 = call i32 @btrfs_next_leaf(%struct.btrfs_root* %70, %struct.btrfs_path* %71)
  store i32 %72, i32* %13, align 4
  %73 = load i32, i32* %13, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  br label %163

76:                                               ; preds = %69
  %77 = load i32, i32* %13, align 4
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  br label %162

80:                                               ; preds = %76
  br label %54

81:                                               ; preds = %54
  %82 = load %struct.extent_buffer*, %struct.extent_buffer** %16, align 8
  %83 = load i32, i32* %17, align 4
  %84 = call i32 @btrfs_item_key_to_cpu(%struct.extent_buffer* %82, %struct.btrfs_key* %15, i32 %83)
  %85 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %15, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* %10, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %81
  br label %162

90:                                               ; preds = %81
  %91 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %15, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @BTRFS_INODE_REF_KEY, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %101

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %15, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @BTRFS_INODE_EXTREF_KEY, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %95
  br label %162

101:                                              ; preds = %95, %90
  %102 = load %struct.extent_buffer*, %struct.extent_buffer** %16, align 8
  %103 = load i32, i32* %17, align 4
  %104 = call i64 @btrfs_item_size_nr(%struct.extent_buffer* %102, i32 %103)
  store i64 %104, i64* %19, align 8
  br label %105

105:                                              ; preds = %154, %101
  %106 = load i64, i64* %18, align 8
  %107 = load i64, i64* %19, align 8
  %108 = icmp slt i64 %106, %107
  br i1 %108, label %109, label %155

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %15, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @BTRFS_INODE_EXTREF_KEY, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %132

114:                                              ; preds = %109
  %115 = load %struct.extent_buffer*, %struct.extent_buffer** %16, align 8
  %116 = load i32, i32* %17, align 4
  %117 = call i64 @btrfs_item_ptr_offset(%struct.extent_buffer* %115, i32 %116)
  store i64 %117, i64* %22, align 8
  %118 = load i64, i64* %22, align 8
  %119 = load i64, i64* %18, align 8
  %120 = add i64 %118, %119
  %121 = inttoptr i64 %120 to %struct.btrfs_inode_extref*
  store %struct.btrfs_inode_extref* %121, %struct.btrfs_inode_extref** %23, align 8
  %122 = load %struct.extent_buffer*, %struct.extent_buffer** %16, align 8
  %123 = load %struct.btrfs_inode_extref*, %struct.btrfs_inode_extref** %23, align 8
  %124 = call i64 @btrfs_inode_extref_parent(%struct.extent_buffer* %122, %struct.btrfs_inode_extref* %123)
  store i64 %124, i64* %20, align 8
  %125 = load i64, i64* %18, align 8
  %126 = add i64 %125, 4
  store i64 %126, i64* %18, align 8
  %127 = load %struct.extent_buffer*, %struct.extent_buffer** %16, align 8
  %128 = load %struct.btrfs_inode_extref*, %struct.btrfs_inode_extref** %23, align 8
  %129 = call i64 @btrfs_inode_extref_name_len(%struct.extent_buffer* %127, %struct.btrfs_inode_extref* %128)
  %130 = load i64, i64* %18, align 8
  %131 = add nsw i64 %130, %129
  store i64 %131, i64* %18, align 8
  br label %136

132:                                              ; preds = %109
  %133 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %15, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  store i64 %134, i64* %20, align 8
  %135 = load i64, i64* %19, align 8
  store i64 %135, i64* %18, align 8
  br label %136

136:                                              ; preds = %132, %114
  %137 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %138 = load i64, i64* %20, align 8
  %139 = call i32 @get_inode_info(%struct.btrfs_root* %137, i64 %138, i32* null, i64* %21, i32* null, i32* null, i32* null, i32* null)
  store i32 %139, i32* %13, align 4
  %140 = load i32, i32* %13, align 4
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %136
  br label %163

143:                                              ; preds = %136
  %144 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %145 = load i64, i64* %8, align 8
  %146 = load i64, i64* %9, align 8
  %147 = load i64, i64* %20, align 8
  %148 = load i64, i64* %21, align 8
  %149 = load %struct.fs_path*, %struct.fs_path** %11, align 8
  %150 = call i32 @check_ino_in_path(%struct.btrfs_root* %144, i64 %145, i64 %146, i64 %147, i64 %148, %struct.fs_path* %149)
  store i32 %150, i32* %13, align 4
  %151 = load i32, i32* %13, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %143
  br label %163

154:                                              ; preds = %143
  br label %105

155:                                              ; preds = %105
  %156 = load %struct.btrfs_path*, %struct.btrfs_path** %14, align 8
  %157 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %156, i32 0, i32 0
  %158 = load i32*, i32** %157, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 0
  %160 = load i32, i32* %159, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %159, align 4
  br label %54

162:                                              ; preds = %100, %89, %79
  store i32 0, i32* %13, align 4
  br label %163

163:                                              ; preds = %162, %153, %142, %75, %52, %38
  %164 = load %struct.btrfs_path*, %struct.btrfs_path** %14, align 8
  %165 = call i32 @btrfs_free_path(%struct.btrfs_path* %164)
  %166 = load i32, i32* %12, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %163
  %169 = load %struct.fs_path*, %struct.fs_path** %11, align 8
  %170 = call i32 @fs_path_free(%struct.fs_path* %169)
  br label %171

171:                                              ; preds = %168, %163
  %172 = load i32, i32* %13, align 4
  store i32 %172, i32* %6, align 4
  br label %173

173:                                              ; preds = %171, %30
  %174 = load i32, i32* %6, align 4
  ret i32 %174
}

declare dso_local %struct.fs_path* @fs_path_alloc(...) #1

declare dso_local %struct.btrfs_path* @alloc_path_for_send(...) #1

declare dso_local i32 @btrfs_search_slot(i32*, %struct.btrfs_root*, %struct.btrfs_key*, %struct.btrfs_path*, i32, i32) #1

declare dso_local i32 @btrfs_header_nritems(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_next_leaf(%struct.btrfs_root*, %struct.btrfs_path*) #1

declare dso_local i32 @btrfs_item_key_to_cpu(%struct.extent_buffer*, %struct.btrfs_key*, i32) #1

declare dso_local i64 @btrfs_item_size_nr(%struct.extent_buffer*, i32) #1

declare dso_local i64 @btrfs_item_ptr_offset(%struct.extent_buffer*, i32) #1

declare dso_local i64 @btrfs_inode_extref_parent(%struct.extent_buffer*, %struct.btrfs_inode_extref*) #1

declare dso_local i64 @btrfs_inode_extref_name_len(%struct.extent_buffer*, %struct.btrfs_inode_extref*) #1

declare dso_local i32 @get_inode_info(%struct.btrfs_root*, i64, i32*, i64*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @check_ino_in_path(%struct.btrfs_root*, i64, i64, i64, i64, %struct.fs_path*) #1

declare dso_local i32 @btrfs_free_path(%struct.btrfs_path*) #1

declare dso_local i32 @fs_path_free(%struct.fs_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
