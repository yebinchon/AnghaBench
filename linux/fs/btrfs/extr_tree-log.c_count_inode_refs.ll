; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_tree-log.c_count_inode_refs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_tree-log.c_count_inode_refs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { i32 }
%struct.btrfs_inode = type { i32 }
%struct.btrfs_path = type { i64*, i32* }
%struct.btrfs_key = type { i64, i64, i64 }
%struct.btrfs_inode_ref = type { i32 }

@BTRFS_INODE_REF_KEY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_root*, %struct.btrfs_inode*, %struct.btrfs_path*)* @count_inode_refs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @count_inode_refs(%struct.btrfs_root* %0, %struct.btrfs_inode* %1, %struct.btrfs_path* %2) #0 {
  %4 = alloca %struct.btrfs_root*, align 8
  %5 = alloca %struct.btrfs_inode*, align 8
  %6 = alloca %struct.btrfs_path*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.btrfs_key, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.btrfs_inode_ref*, align 8
  store %struct.btrfs_root* %0, %struct.btrfs_root** %4, align 8
  store %struct.btrfs_inode* %1, %struct.btrfs_inode** %5, align 8
  store %struct.btrfs_path* %2, %struct.btrfs_path** %6, align 8
  store i32 0, i32* %9, align 4
  %15 = load %struct.btrfs_inode*, %struct.btrfs_inode** %5, align 8
  %16 = call i64 @btrfs_ino(%struct.btrfs_inode* %15)
  store i64 %16, i64* %13, align 8
  %17 = load i64, i64* %13, align 8
  %18 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %8, i32 0, i32 0
  store i64 %17, i64* %18, align 8
  %19 = load i64, i64* @BTRFS_INODE_REF_KEY, align 8
  %20 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %8, i32 0, i32 1
  store i64 %19, i64* %20, align 8
  %21 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %8, i32 0, i32 2
  store i64 -1, i64* %21, align 8
  br label %22

22:                                               ; preds = %3, %136
  %23 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %24 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %25 = call i32 @btrfs_search_slot(i32* null, %struct.btrfs_root* %23, %struct.btrfs_key* %8, %struct.btrfs_path* %24, i32 0, i32 0)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %142

29:                                               ; preds = %22
  %30 = load i32, i32* %7, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %29
  %33 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %34 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %142

40:                                               ; preds = %32
  %41 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %42 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %41, i32 0, i32 0
  %43 = load i64*, i64** %42, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 0
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, -1
  store i64 %46, i64* %44, align 8
  br label %47

47:                                               ; preds = %40, %29
  br label %48

48:                                               ; preds = %129, %47
  %49 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %50 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %55 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %54, i32 0, i32 0
  %56 = load i64*, i64** %55, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 0
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @btrfs_item_key_to_cpu(i32 %53, %struct.btrfs_key* %8, i64 %58)
  %60 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %8, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %13, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %69, label %64

64:                                               ; preds = %48
  %65 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %8, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @BTRFS_INODE_REF_KEY, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %64, %48
  br label %142

70:                                               ; preds = %64
  %71 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %72 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %77 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %76, i32 0, i32 0
  %78 = load i64*, i64** %77, align 8
  %79 = getelementptr inbounds i64, i64* %78, i64 0
  %80 = load i64, i64* %79, align 8
  %81 = call i64 @btrfs_item_ptr_offset(i32 %75, i64 %80)
  store i64 %81, i64* %10, align 8
  %82 = load i64, i64* %10, align 8
  %83 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %84 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %89 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %88, i32 0, i32 0
  %90 = load i64*, i64** %89, align 8
  %91 = getelementptr inbounds i64, i64* %90, i64 0
  %92 = load i64, i64* %91, align 8
  %93 = call i64 @btrfs_item_size_nr(i32 %87, i64 %92)
  %94 = add i64 %82, %93
  store i64 %94, i64* %11, align 8
  br label %95

95:                                               ; preds = %99, %70
  %96 = load i64, i64* %10, align 8
  %97 = load i64, i64* %11, align 8
  %98 = icmp ult i64 %96, %97
  br i1 %98, label %99, label %117

99:                                               ; preds = %95
  %100 = load i64, i64* %10, align 8
  %101 = inttoptr i64 %100 to %struct.btrfs_inode_ref*
  store %struct.btrfs_inode_ref* %101, %struct.btrfs_inode_ref** %14, align 8
  %102 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %103 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.btrfs_inode_ref*, %struct.btrfs_inode_ref** %14, align 8
  %108 = call i32 @btrfs_inode_ref_name_len(i32 %106, %struct.btrfs_inode_ref* %107)
  store i32 %108, i32* %12, align 4
  %109 = load %struct.btrfs_inode_ref*, %struct.btrfs_inode_ref** %14, align 8
  %110 = getelementptr inbounds %struct.btrfs_inode_ref, %struct.btrfs_inode_ref* %109, i64 1
  %111 = ptrtoint %struct.btrfs_inode_ref* %110 to i64
  %112 = load i32, i32* %12, align 4
  %113 = sext i32 %112 to i64
  %114 = add i64 %111, %113
  store i64 %114, i64* %10, align 8
  %115 = load i32, i32* %9, align 4
  %116 = add i32 %115, 1
  store i32 %116, i32* %9, align 4
  br label %95

117:                                              ; preds = %95
  %118 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %8, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %117
  br label %142

122:                                              ; preds = %117
  %123 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %124 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %123, i32 0, i32 0
  %125 = load i64*, i64** %124, align 8
  %126 = getelementptr inbounds i64, i64* %125, i64 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp sgt i64 %127, 0
  br i1 %128, label %129, label %136

129:                                              ; preds = %122
  %130 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %131 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %130, i32 0, i32 0
  %132 = load i64*, i64** %131, align 8
  %133 = getelementptr inbounds i64, i64* %132, i64 0
  %134 = load i64, i64* %133, align 8
  %135 = add nsw i64 %134, -1
  store i64 %135, i64* %133, align 8
  br label %48

136:                                              ; preds = %122
  %137 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %8, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = add nsw i64 %138, -1
  store i64 %139, i64* %137, align 8
  %140 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %141 = call i32 @btrfs_release_path(%struct.btrfs_path* %140)
  br label %22

142:                                              ; preds = %121, %69, %39, %28
  %143 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %144 = call i32 @btrfs_release_path(%struct.btrfs_path* %143)
  %145 = load i32, i32* %9, align 4
  ret i32 %145
}

declare dso_local i64 @btrfs_ino(%struct.btrfs_inode*) #1

declare dso_local i32 @btrfs_search_slot(i32*, %struct.btrfs_root*, %struct.btrfs_key*, %struct.btrfs_path*, i32, i32) #1

declare dso_local i32 @btrfs_item_key_to_cpu(i32, %struct.btrfs_key*, i64) #1

declare dso_local i64 @btrfs_item_ptr_offset(i32, i64) #1

declare dso_local i64 @btrfs_item_size_nr(i32, i64) #1

declare dso_local i32 @btrfs_inode_ref_name_len(i32, %struct.btrfs_inode_ref*) #1

declare dso_local i32 @btrfs_release_path(%struct.btrfs_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
