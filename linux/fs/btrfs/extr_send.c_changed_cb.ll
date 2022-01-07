; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_changed_cb.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_changed_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_path = type { i32 }
%struct.btrfs_key = type { i64, i64 }
%struct.send_ctx = type { i32, %struct.btrfs_key*, %struct.btrfs_path*, %struct.btrfs_path* }

@BTRFS_COMPARE_TREE_SAME = common dso_local global i32 0, align 4
@BTRFS_INODE_REF_KEY = common dso_local global i64 0, align 8
@BTRFS_INODE_EXTREF_KEY = common dso_local global i64 0, align 8
@BTRFS_EXTENT_DATA_KEY = common dso_local global i64 0, align 8
@BTRFS_COMPARE_TREE_CHANGED = common dso_local global i32 0, align 4
@BTRFS_FREE_INO_OBJECTID = common dso_local global i64 0, align 8
@BTRFS_FREE_SPACE_OBJECTID = common dso_local global i64 0, align 8
@BTRFS_INODE_ITEM_KEY = common dso_local global i64 0, align 8
@BTRFS_XATTR_ITEM_KEY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_path*, %struct.btrfs_path*, %struct.btrfs_key*, i32, i8*)* @changed_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @changed_cb(%struct.btrfs_path* %0, %struct.btrfs_path* %1, %struct.btrfs_key* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.btrfs_path*, align 8
  %8 = alloca %struct.btrfs_path*, align 8
  %9 = alloca %struct.btrfs_key*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.send_ctx*, align 8
  store %struct.btrfs_path* %0, %struct.btrfs_path** %7, align 8
  store %struct.btrfs_path* %1, %struct.btrfs_path** %8, align 8
  store %struct.btrfs_key* %2, %struct.btrfs_key** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i32 0, i32* %12, align 4
  %14 = load i8*, i8** %11, align 8
  %15 = bitcast i8* %14 to %struct.send_ctx*
  store %struct.send_ctx* %15, %struct.send_ctx** %13, align 8
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* @BTRFS_COMPARE_TREE_SAME, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %59

19:                                               ; preds = %5
  %20 = load %struct.btrfs_key*, %struct.btrfs_key** %9, align 8
  %21 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @BTRFS_INODE_REF_KEY, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %31, label %25

25:                                               ; preds = %19
  %26 = load %struct.btrfs_key*, %struct.btrfs_key** %9, align 8
  %27 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @BTRFS_INODE_EXTREF_KEY, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %45

31:                                               ; preds = %25, %19
  %32 = load %struct.send_ctx*, %struct.send_ctx** %13, align 8
  %33 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %34 = load %struct.btrfs_key*, %struct.btrfs_key** %9, align 8
  %35 = call i32 @compare_refs(%struct.send_ctx* %32, %struct.btrfs_path* %33, %struct.btrfs_key* %34)
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %31
  store i32 0, i32* %6, align 4
  br label %145

39:                                               ; preds = %31
  %40 = load i32, i32* %12, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load i32, i32* %12, align 4
  store i32 %43, i32* %6, align 4
  br label %145

44:                                               ; preds = %39
  br label %57

45:                                               ; preds = %25
  %46 = load %struct.btrfs_key*, %struct.btrfs_key** %9, align 8
  %47 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @BTRFS_EXTENT_DATA_KEY, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %45
  %52 = load %struct.send_ctx*, %struct.send_ctx** %13, align 8
  %53 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %54 = load %struct.btrfs_key*, %struct.btrfs_key** %9, align 8
  %55 = call i32 @maybe_send_hole(%struct.send_ctx* %52, %struct.btrfs_path* %53, %struct.btrfs_key* %54)
  store i32 %55, i32* %6, align 4
  br label %145

56:                                               ; preds = %45
  store i32 0, i32* %6, align 4
  br label %145

57:                                               ; preds = %44
  %58 = load i32, i32* @BTRFS_COMPARE_TREE_CHANGED, align 4
  store i32 %58, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %59

59:                                               ; preds = %57, %5
  %60 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %61 = load %struct.send_ctx*, %struct.send_ctx** %13, align 8
  %62 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %61, i32 0, i32 3
  store %struct.btrfs_path* %60, %struct.btrfs_path** %62, align 8
  %63 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %64 = load %struct.send_ctx*, %struct.send_ctx** %13, align 8
  %65 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %64, i32 0, i32 2
  store %struct.btrfs_path* %63, %struct.btrfs_path** %65, align 8
  %66 = load %struct.btrfs_key*, %struct.btrfs_key** %9, align 8
  %67 = load %struct.send_ctx*, %struct.send_ctx** %13, align 8
  %68 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %67, i32 0, i32 1
  store %struct.btrfs_key* %66, %struct.btrfs_key** %68, align 8
  %69 = load %struct.send_ctx*, %struct.send_ctx** %13, align 8
  %70 = call i32 @finish_inode_if_needed(%struct.send_ctx* %69, i32 0)
  store i32 %70, i32* %12, align 4
  %71 = load i32, i32* %12, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %59
  br label %143

74:                                               ; preds = %59
  %75 = load %struct.btrfs_key*, %struct.btrfs_key** %9, align 8
  %76 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @BTRFS_FREE_INO_OBJECTID, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %86, label %80

80:                                               ; preds = %74
  %81 = load %struct.btrfs_key*, %struct.btrfs_key** %9, align 8
  %82 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @BTRFS_FREE_SPACE_OBJECTID, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %80, %74
  br label %143

87:                                               ; preds = %80
  %88 = load %struct.btrfs_key*, %struct.btrfs_key** %9, align 8
  %89 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @BTRFS_INODE_ITEM_KEY, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %87
  %94 = load %struct.send_ctx*, %struct.send_ctx** %13, align 8
  %95 = load i32, i32* %10, align 4
  %96 = call i32 @changed_inode(%struct.send_ctx* %94, i32 %95)
  store i32 %96, i32* %12, align 4
  br label %142

97:                                               ; preds = %87
  %98 = load %struct.send_ctx*, %struct.send_ctx** %13, align 8
  %99 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %141, label %102

102:                                              ; preds = %97
  %103 = load %struct.btrfs_key*, %struct.btrfs_key** %9, align 8
  %104 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @BTRFS_INODE_REF_KEY, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %114, label %108

108:                                              ; preds = %102
  %109 = load %struct.btrfs_key*, %struct.btrfs_key** %9, align 8
  %110 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @BTRFS_INODE_EXTREF_KEY, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %108, %102
  %115 = load %struct.send_ctx*, %struct.send_ctx** %13, align 8
  %116 = load i32, i32* %10, align 4
  %117 = call i32 @changed_ref(%struct.send_ctx* %115, i32 %116)
  store i32 %117, i32* %12, align 4
  br label %140

118:                                              ; preds = %108
  %119 = load %struct.btrfs_key*, %struct.btrfs_key** %9, align 8
  %120 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @BTRFS_XATTR_ITEM_KEY, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %128

124:                                              ; preds = %118
  %125 = load %struct.send_ctx*, %struct.send_ctx** %13, align 8
  %126 = load i32, i32* %10, align 4
  %127 = call i32 @changed_xattr(%struct.send_ctx* %125, i32 %126)
  store i32 %127, i32* %12, align 4
  br label %139

128:                                              ; preds = %118
  %129 = load %struct.btrfs_key*, %struct.btrfs_key** %9, align 8
  %130 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @BTRFS_EXTENT_DATA_KEY, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %138

134:                                              ; preds = %128
  %135 = load %struct.send_ctx*, %struct.send_ctx** %13, align 8
  %136 = load i32, i32* %10, align 4
  %137 = call i32 @changed_extent(%struct.send_ctx* %135, i32 %136)
  store i32 %137, i32* %12, align 4
  br label %138

138:                                              ; preds = %134, %128
  br label %139

139:                                              ; preds = %138, %124
  br label %140

140:                                              ; preds = %139, %114
  br label %141

141:                                              ; preds = %140, %97
  br label %142

142:                                              ; preds = %141, %93
  br label %143

143:                                              ; preds = %142, %86, %73
  %144 = load i32, i32* %12, align 4
  store i32 %144, i32* %6, align 4
  br label %145

145:                                              ; preds = %143, %56, %51, %42, %38
  %146 = load i32, i32* %6, align 4
  ret i32 %146
}

declare dso_local i32 @compare_refs(%struct.send_ctx*, %struct.btrfs_path*, %struct.btrfs_key*) #1

declare dso_local i32 @maybe_send_hole(%struct.send_ctx*, %struct.btrfs_path*, %struct.btrfs_key*) #1

declare dso_local i32 @finish_inode_if_needed(%struct.send_ctx*, i32) #1

declare dso_local i32 @changed_inode(%struct.send_ctx*, i32) #1

declare dso_local i32 @changed_ref(%struct.send_ctx*, i32) #1

declare dso_local i32 @changed_xattr(%struct.send_ctx*, i32) #1

declare dso_local i32 @changed_extent(%struct.send_ctx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
