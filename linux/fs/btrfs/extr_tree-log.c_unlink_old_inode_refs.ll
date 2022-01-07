; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_tree-log.c_unlink_old_inode_refs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_tree-log.c_unlink_old_inode_refs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_root = type { i32 }
%struct.btrfs_path = type { i32*, %struct.extent_buffer** }
%struct.btrfs_inode = type { i32 }
%struct.extent_buffer = type { i32 }
%struct.btrfs_key = type { i64, i32 }
%struct.inode = type { i32 }

@BTRFS_INODE_EXTREF_KEY = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_path*, %struct.btrfs_inode*, %struct.extent_buffer*, i32, %struct.btrfs_key*)* @unlink_old_inode_refs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unlink_old_inode_refs(%struct.btrfs_trans_handle* %0, %struct.btrfs_root* %1, %struct.btrfs_path* %2, %struct.btrfs_inode* %3, %struct.extent_buffer* %4, i32 %5, %struct.btrfs_key* %6) #0 {
  %8 = alloca %struct.btrfs_trans_handle*, align 8
  %9 = alloca %struct.btrfs_root*, align 8
  %10 = alloca %struct.btrfs_path*, align 8
  %11 = alloca %struct.btrfs_inode*, align 8
  %12 = alloca %struct.extent_buffer*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.btrfs_key*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.extent_buffer*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.inode*, align 8
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %8, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %9, align 8
  store %struct.btrfs_path* %2, %struct.btrfs_path** %10, align 8
  store %struct.btrfs_inode* %3, %struct.btrfs_inode** %11, align 8
  store %struct.extent_buffer* %4, %struct.extent_buffer** %12, align 8
  store i32 %5, i32* %13, align 4
  store %struct.btrfs_key* %6, %struct.btrfs_key** %14, align 8
  br label %23

23:                                               ; preds = %143, %7
  %24 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %25 = call i32 @btrfs_release_path(%struct.btrfs_path* %24)
  %26 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %27 = load %struct.btrfs_key*, %struct.btrfs_key** %14, align 8
  %28 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %29 = call i32 @btrfs_search_slot(i32* null, %struct.btrfs_root* %26, %struct.btrfs_key* %27, %struct.btrfs_path* %28, i32 0, i32 0)
  store i32 %29, i32* %15, align 4
  %30 = load i32, i32* %15, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  store i32 0, i32* %15, align 4
  br label %164

33:                                               ; preds = %23
  %34 = load i32, i32* %15, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  br label %164

37:                                               ; preds = %33
  %38 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %39 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %38, i32 0, i32 1
  %40 = load %struct.extent_buffer**, %struct.extent_buffer*** %39, align 8
  %41 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %40, i64 0
  %42 = load %struct.extent_buffer*, %struct.extent_buffer** %41, align 8
  store %struct.extent_buffer* %42, %struct.extent_buffer** %18, align 8
  %43 = load %struct.extent_buffer*, %struct.extent_buffer** %18, align 8
  %44 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %45 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @btrfs_item_ptr_offset(%struct.extent_buffer* %43, i32 %48)
  store i64 %49, i64* %16, align 8
  %50 = load i64, i64* %16, align 8
  %51 = load %struct.extent_buffer*, %struct.extent_buffer** %18, align 8
  %52 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %53 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @btrfs_item_size_nr(%struct.extent_buffer* %51, i32 %56)
  %58 = add i64 %50, %57
  store i64 %58, i64* %17, align 8
  br label %59

59:                                               ; preds = %162, %37
  %60 = load i64, i64* %16, align 8
  %61 = load i64, i64* %17, align 8
  %62 = icmp ult i64 %60, %61
  br i1 %62, label %63, label %163

63:                                               ; preds = %59
  store i8* null, i8** %19, align 8
  %64 = load %struct.btrfs_key*, %struct.btrfs_key** %14, align 8
  %65 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @BTRFS_INODE_EXTREF_KEY, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %63
  %70 = load %struct.extent_buffer*, %struct.extent_buffer** %18, align 8
  %71 = load i64, i64* %16, align 8
  %72 = call i32 @extref_get_fields(%struct.extent_buffer* %70, i64 %71, i32* %20, i8** %19, i32* null, i32* %21)
  store i32 %72, i32* %15, align 4
  br label %80

73:                                               ; preds = %63
  %74 = load %struct.btrfs_key*, %struct.btrfs_key** %14, align 8
  %75 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  store i32 %76, i32* %21, align 4
  %77 = load %struct.extent_buffer*, %struct.extent_buffer** %18, align 8
  %78 = load i64, i64* %16, align 8
  %79 = call i32 @ref_get_fields(%struct.extent_buffer* %77, i64 %78, i32* %20, i8** %19, i32* null)
  store i32 %79, i32* %15, align 4
  br label %80

80:                                               ; preds = %73, %69
  %81 = load i32, i32* %15, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  br label %164

84:                                               ; preds = %80
  %85 = load %struct.btrfs_key*, %struct.btrfs_key** %14, align 8
  %86 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @BTRFS_INODE_EXTREF_KEY, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %101

90:                                               ; preds = %84
  %91 = load %struct.extent_buffer*, %struct.extent_buffer** %12, align 8
  %92 = load i32, i32* %13, align 4
  %93 = load i32, i32* %21, align 4
  %94 = load i8*, i8** %19, align 8
  %95 = load i32, i32* %20, align 4
  %96 = call i32 @btrfs_find_name_in_ext_backref(%struct.extent_buffer* %91, i32 %92, i32 %93, i8* %94, i32 %95)
  %97 = icmp ne i32 %96, 0
  %98 = xor i1 %97, true
  %99 = xor i1 %98, true
  %100 = zext i1 %99 to i32
  store i32 %100, i32* %15, align 4
  br label %111

101:                                              ; preds = %84
  %102 = load %struct.extent_buffer*, %struct.extent_buffer** %12, align 8
  %103 = load i32, i32* %13, align 4
  %104 = load i8*, i8** %19, align 8
  %105 = load i32, i32* %20, align 4
  %106 = call i32 @btrfs_find_name_in_backref(%struct.extent_buffer* %102, i32 %103, i8* %104, i32 %105)
  %107 = icmp ne i32 %106, 0
  %108 = xor i1 %107, true
  %109 = xor i1 %108, true
  %110 = zext i1 %109 to i32
  store i32 %110, i32* %15, align 4
  br label %111

111:                                              ; preds = %101, %90
  %112 = load i32, i32* %15, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %144, label %114

114:                                              ; preds = %111
  %115 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %116 = call i32 @btrfs_release_path(%struct.btrfs_path* %115)
  %117 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %118 = load i32, i32* %21, align 4
  %119 = call %struct.inode* @read_one_inode(%struct.btrfs_root* %117, i32 %118)
  store %struct.inode* %119, %struct.inode** %22, align 8
  %120 = load %struct.inode*, %struct.inode** %22, align 8
  %121 = icmp ne %struct.inode* %120, null
  br i1 %121, label %127, label %122

122:                                              ; preds = %114
  %123 = load i32, i32* @ENOENT, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %15, align 4
  %125 = load i8*, i8** %19, align 8
  %126 = call i32 @kfree(i8* %125)
  br label %164

127:                                              ; preds = %114
  %128 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %129 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %130 = load %struct.inode*, %struct.inode** %22, align 8
  %131 = call i32 @BTRFS_I(%struct.inode* %130)
  %132 = load %struct.btrfs_inode*, %struct.btrfs_inode** %11, align 8
  %133 = load i8*, i8** %19, align 8
  %134 = load i32, i32* %20, align 4
  %135 = call i32 @btrfs_unlink_inode(%struct.btrfs_trans_handle* %128, %struct.btrfs_root* %129, i32 %131, %struct.btrfs_inode* %132, i8* %133, i32 %134)
  store i32 %135, i32* %15, align 4
  %136 = load i8*, i8** %19, align 8
  %137 = call i32 @kfree(i8* %136)
  %138 = load %struct.inode*, %struct.inode** %22, align 8
  %139 = call i32 @iput(%struct.inode* %138)
  %140 = load i32, i32* %15, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %127
  br label %164

143:                                              ; preds = %127
  br label %23

144:                                              ; preds = %111
  %145 = load i8*, i8** %19, align 8
  %146 = call i32 @kfree(i8* %145)
  %147 = load i32, i32* %20, align 4
  %148 = sext i32 %147 to i64
  %149 = load i64, i64* %16, align 8
  %150 = add i64 %149, %148
  store i64 %150, i64* %16, align 8
  %151 = load %struct.btrfs_key*, %struct.btrfs_key** %14, align 8
  %152 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @BTRFS_INODE_EXTREF_KEY, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %159

156:                                              ; preds = %144
  %157 = load i64, i64* %16, align 8
  %158 = add i64 %157, 4
  store i64 %158, i64* %16, align 8
  br label %162

159:                                              ; preds = %144
  %160 = load i64, i64* %16, align 8
  %161 = add i64 %160, 4
  store i64 %161, i64* %16, align 8
  br label %162

162:                                              ; preds = %159, %156
  br label %59

163:                                              ; preds = %59
  store i32 0, i32* %15, align 4
  br label %164

164:                                              ; preds = %163, %142, %122, %83, %36, %32
  %165 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %166 = call i32 @btrfs_release_path(%struct.btrfs_path* %165)
  %167 = load i32, i32* %15, align 4
  ret i32 %167
}

declare dso_local i32 @btrfs_release_path(%struct.btrfs_path*) #1

declare dso_local i32 @btrfs_search_slot(i32*, %struct.btrfs_root*, %struct.btrfs_key*, %struct.btrfs_path*, i32, i32) #1

declare dso_local i64 @btrfs_item_ptr_offset(%struct.extent_buffer*, i32) #1

declare dso_local i64 @btrfs_item_size_nr(%struct.extent_buffer*, i32) #1

declare dso_local i32 @extref_get_fields(%struct.extent_buffer*, i64, i32*, i8**, i32*, i32*) #1

declare dso_local i32 @ref_get_fields(%struct.extent_buffer*, i64, i32*, i8**, i32*) #1

declare dso_local i32 @btrfs_find_name_in_ext_backref(%struct.extent_buffer*, i32, i32, i8*, i32) #1

declare dso_local i32 @btrfs_find_name_in_backref(%struct.extent_buffer*, i32, i8*, i32) #1

declare dso_local %struct.inode* @read_one_inode(%struct.btrfs_root*, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @btrfs_unlink_inode(%struct.btrfs_trans_handle*, %struct.btrfs_root*, i32, %struct.btrfs_inode*, i8*, i32) #1

declare dso_local i32 @BTRFS_I(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
