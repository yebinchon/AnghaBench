; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_tree-log.c_btrfs_check_ref_name_override.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_tree-log.c_btrfs_check_ref_name_override.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extent_buffer = type { i32 }
%struct.btrfs_key = type { i64, i64, i64 }
%struct.btrfs_inode = type { i32 }
%struct.btrfs_path = type { i32, i32, i32* }
%struct.btrfs_dir_item = type { i32 }
%struct.btrfs_inode_ref = type { i32 }
%struct.btrfs_inode_extref = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@BTRFS_INODE_REF_KEY = common dso_local global i64 0, align 8
@GFP_NOFS = common dso_local global i32 0, align 4
@BTRFS_INODE_ITEM_KEY = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.extent_buffer*, i32, %struct.btrfs_key*, %struct.btrfs_inode*, i64*, i64*)* @btrfs_check_ref_name_override to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfs_check_ref_name_override(%struct.extent_buffer* %0, i32 %1, %struct.btrfs_key* %2, %struct.btrfs_inode* %3, i64* %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.extent_buffer*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.btrfs_key*, align 8
  %11 = alloca %struct.btrfs_inode*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.btrfs_path*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca %struct.btrfs_dir_item*, align 8
  %26 = alloca %struct.btrfs_inode_ref*, align 8
  %27 = alloca %struct.btrfs_inode_extref*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca %struct.btrfs_key, align 8
  store %struct.extent_buffer* %0, %struct.extent_buffer** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.btrfs_key* %2, %struct.btrfs_key** %10, align 8
  store %struct.btrfs_inode* %3, %struct.btrfs_inode** %11, align 8
  store i64* %4, i64** %12, align 8
  store i64* %5, i64** %13, align 8
  store i8* null, i8** %16, align 8
  store i64 0, i64* %17, align 8
  %30 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i64 @btrfs_item_size_nr(%struct.extent_buffer* %30, i32 %31)
  store i64 %32, i64* %18, align 8
  store i64 0, i64* %19, align 8
  %33 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i64 @btrfs_item_ptr_offset(%struct.extent_buffer* %33, i32 %34)
  store i64 %35, i64* %20, align 8
  %36 = call %struct.btrfs_path* (...) @btrfs_alloc_path()
  store %struct.btrfs_path* %36, %struct.btrfs_path** %15, align 8
  %37 = load %struct.btrfs_path*, %struct.btrfs_path** %15, align 8
  %38 = icmp ne %struct.btrfs_path* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %6
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %7, align 4
  br label %178

42:                                               ; preds = %6
  %43 = load %struct.btrfs_path*, %struct.btrfs_path** %15, align 8
  %44 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %43, i32 0, i32 0
  store i32 1, i32* %44, align 8
  %45 = load %struct.btrfs_path*, %struct.btrfs_path** %15, align 8
  %46 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %45, i32 0, i32 1
  store i32 1, i32* %46, align 4
  br label %47

47:                                               ; preds = %165, %42
  %48 = load i64, i64* %19, align 8
  %49 = load i64, i64* %18, align 8
  %50 = icmp slt i64 %48, %49
  br i1 %50, label %51, label %171

51:                                               ; preds = %47
  %52 = load %struct.btrfs_key*, %struct.btrfs_key** %10, align 8
  %53 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @BTRFS_INODE_REF_KEY, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %73

57:                                               ; preds = %51
  %58 = load i64, i64* %20, align 8
  %59 = load i64, i64* %19, align 8
  %60 = add i64 %58, %59
  %61 = inttoptr i64 %60 to %struct.btrfs_inode_ref*
  store %struct.btrfs_inode_ref* %61, %struct.btrfs_inode_ref** %26, align 8
  %62 = load %struct.btrfs_key*, %struct.btrfs_key** %10, align 8
  %63 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %21, align 8
  %65 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %66 = load %struct.btrfs_inode_ref*, %struct.btrfs_inode_ref** %26, align 8
  %67 = call i64 @btrfs_inode_ref_name_len(%struct.extent_buffer* %65, %struct.btrfs_inode_ref* %66)
  store i64 %67, i64* %22, align 8
  %68 = load %struct.btrfs_inode_ref*, %struct.btrfs_inode_ref** %26, align 8
  %69 = getelementptr inbounds %struct.btrfs_inode_ref, %struct.btrfs_inode_ref* %68, i64 1
  %70 = ptrtoint %struct.btrfs_inode_ref* %69 to i64
  store i64 %70, i64* %24, align 8
  %71 = load i64, i64* %22, align 8
  %72 = add i64 4, %71
  store i64 %72, i64* %23, align 8
  br label %89

73:                                               ; preds = %51
  %74 = load i64, i64* %20, align 8
  %75 = load i64, i64* %19, align 8
  %76 = add i64 %74, %75
  %77 = inttoptr i64 %76 to %struct.btrfs_inode_extref*
  store %struct.btrfs_inode_extref* %77, %struct.btrfs_inode_extref** %27, align 8
  %78 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %79 = load %struct.btrfs_inode_extref*, %struct.btrfs_inode_extref** %27, align 8
  %80 = call i64 @btrfs_inode_extref_parent(%struct.extent_buffer* %78, %struct.btrfs_inode_extref* %79)
  store i64 %80, i64* %21, align 8
  %81 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %82 = load %struct.btrfs_inode_extref*, %struct.btrfs_inode_extref** %27, align 8
  %83 = call i64 @btrfs_inode_extref_name_len(%struct.extent_buffer* %81, %struct.btrfs_inode_extref* %82)
  store i64 %83, i64* %22, align 8
  %84 = load %struct.btrfs_inode_extref*, %struct.btrfs_inode_extref** %27, align 8
  %85 = getelementptr inbounds %struct.btrfs_inode_extref, %struct.btrfs_inode_extref* %84, i32 0, i32 0
  %86 = ptrtoint i32* %85 to i64
  store i64 %86, i64* %24, align 8
  %87 = load i64, i64* %22, align 8
  %88 = add i64 4, %87
  store i64 %88, i64* %23, align 8
  br label %89

89:                                               ; preds = %73, %57
  %90 = load i64, i64* %22, align 8
  %91 = load i64, i64* %17, align 8
  %92 = icmp sgt i64 %90, %91
  br i1 %92, label %93, label %106

93:                                               ; preds = %89
  %94 = load i8*, i8** %16, align 8
  %95 = load i64, i64* %22, align 8
  %96 = load i32, i32* @GFP_NOFS, align 4
  %97 = call i8* @krealloc(i8* %94, i64 %95, i32 %96)
  store i8* %97, i8** %28, align 8
  %98 = load i8*, i8** %28, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %103, label %100

100:                                              ; preds = %93
  %101 = load i32, i32* @ENOMEM, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %14, align 4
  br label %172

103:                                              ; preds = %93
  %104 = load i64, i64* %22, align 8
  store i64 %104, i64* %17, align 8
  %105 = load i8*, i8** %28, align 8
  store i8* %105, i8** %16, align 8
  br label %106

106:                                              ; preds = %103, %89
  %107 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %108 = load i8*, i8** %16, align 8
  %109 = load i64, i64* %24, align 8
  %110 = load i64, i64* %22, align 8
  %111 = call i32 @read_extent_buffer(%struct.extent_buffer* %107, i8* %108, i64 %109, i64 %110)
  %112 = load %struct.btrfs_inode*, %struct.btrfs_inode** %11, align 8
  %113 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.btrfs_path*, %struct.btrfs_path** %15, align 8
  %116 = load i64, i64* %21, align 8
  %117 = load i8*, i8** %16, align 8
  %118 = load i64, i64* %22, align 8
  %119 = call %struct.btrfs_dir_item* @btrfs_lookup_dir_item(i32* null, i32 %114, %struct.btrfs_path* %115, i64 %116, i8* %117, i64 %118, i32 0)
  store %struct.btrfs_dir_item* %119, %struct.btrfs_dir_item** %25, align 8
  %120 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %25, align 8
  %121 = icmp ne %struct.btrfs_dir_item* %120, null
  br i1 %121, label %122, label %157

122:                                              ; preds = %106
  %123 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %25, align 8
  %124 = call i64 @IS_ERR(%struct.btrfs_dir_item* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %157, label %126

126:                                              ; preds = %122
  %127 = load %struct.btrfs_path*, %struct.btrfs_path** %15, align 8
  %128 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %127, i32 0, i32 2
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 0
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %25, align 8
  %133 = call i32 @btrfs_dir_item_key_to_cpu(i32 %131, %struct.btrfs_dir_item* %132, %struct.btrfs_key* %29)
  %134 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %29, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @BTRFS_INODE_ITEM_KEY, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %153

138:                                              ; preds = %126
  %139 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %29, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.btrfs_key*, %struct.btrfs_key** %10, align 8
  %142 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %140, %143
  br i1 %144, label %145, label %151

145:                                              ; preds = %138
  store i32 1, i32* %14, align 4
  %146 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %29, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = load i64*, i64** %12, align 8
  store i64 %147, i64* %148, align 8
  %149 = load i64, i64* %21, align 8
  %150 = load i64*, i64** %13, align 8
  store i64 %149, i64* %150, align 8
  br label %152

151:                                              ; preds = %138
  store i32 0, i32* %14, align 4
  br label %152

152:                                              ; preds = %151, %145
  br label %156

153:                                              ; preds = %126
  %154 = load i32, i32* @EAGAIN, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %14, align 4
  br label %156

156:                                              ; preds = %153, %152
  br label %172

157:                                              ; preds = %122, %106
  %158 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %25, align 8
  %159 = call i64 @IS_ERR(%struct.btrfs_dir_item* %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %157
  %162 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %25, align 8
  %163 = call i32 @PTR_ERR(%struct.btrfs_dir_item* %162)
  store i32 %163, i32* %14, align 4
  br label %172

164:                                              ; preds = %157
  br label %165

165:                                              ; preds = %164
  %166 = load %struct.btrfs_path*, %struct.btrfs_path** %15, align 8
  %167 = call i32 @btrfs_release_path(%struct.btrfs_path* %166)
  %168 = load i64, i64* %23, align 8
  %169 = load i64, i64* %19, align 8
  %170 = add nsw i64 %169, %168
  store i64 %170, i64* %19, align 8
  br label %47

171:                                              ; preds = %47
  store i32 0, i32* %14, align 4
  br label %172

172:                                              ; preds = %171, %161, %156, %100
  %173 = load %struct.btrfs_path*, %struct.btrfs_path** %15, align 8
  %174 = call i32 @btrfs_free_path(%struct.btrfs_path* %173)
  %175 = load i8*, i8** %16, align 8
  %176 = call i32 @kfree(i8* %175)
  %177 = load i32, i32* %14, align 4
  store i32 %177, i32* %7, align 4
  br label %178

178:                                              ; preds = %172, %39
  %179 = load i32, i32* %7, align 4
  ret i32 %179
}

declare dso_local i64 @btrfs_item_size_nr(%struct.extent_buffer*, i32) #1

declare dso_local i64 @btrfs_item_ptr_offset(%struct.extent_buffer*, i32) #1

declare dso_local %struct.btrfs_path* @btrfs_alloc_path(...) #1

declare dso_local i64 @btrfs_inode_ref_name_len(%struct.extent_buffer*, %struct.btrfs_inode_ref*) #1

declare dso_local i64 @btrfs_inode_extref_parent(%struct.extent_buffer*, %struct.btrfs_inode_extref*) #1

declare dso_local i64 @btrfs_inode_extref_name_len(%struct.extent_buffer*, %struct.btrfs_inode_extref*) #1

declare dso_local i8* @krealloc(i8*, i64, i32) #1

declare dso_local i32 @read_extent_buffer(%struct.extent_buffer*, i8*, i64, i64) #1

declare dso_local %struct.btrfs_dir_item* @btrfs_lookup_dir_item(i32*, i32, %struct.btrfs_path*, i64, i8*, i64, i32) #1

declare dso_local i64 @IS_ERR(%struct.btrfs_dir_item*) #1

declare dso_local i32 @btrfs_dir_item_key_to_cpu(i32, %struct.btrfs_dir_item*, %struct.btrfs_key*) #1

declare dso_local i32 @PTR_ERR(%struct.btrfs_dir_item*) #1

declare dso_local i32 @btrfs_release_path(%struct.btrfs_path*) #1

declare dso_local i32 @btrfs_free_path(%struct.btrfs_path*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
