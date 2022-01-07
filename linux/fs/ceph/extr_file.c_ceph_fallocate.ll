; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_file.c_ceph_fallocate.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_file.c_ceph_fallocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.ceph_file_info* }
%struct.ceph_file_info = type { i32 }
%struct.inode = type { i32 }
%struct.ceph_inode_info = type { i64, i32 }
%struct.ceph_cap_flush = type { i32 }

@FALLOC_FL_KEEP_SIZE = common dso_local global i32 0, align 4
@FALLOC_FL_PUNCH_HOLE = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@CEPH_NOSNAP = common dso_local global i64 0, align 8
@EROFS = common dso_local global i32 0, align 4
@CEPH_INLINE_NONE = common dso_local global i64 0, align 8
@CEPH_FILE_MODE_LAZY = common dso_local global i32 0, align 4
@CEPH_CAP_FILE_BUFFER = common dso_local global i32 0, align 4
@CEPH_CAP_FILE_LAZYIO = common dso_local global i32 0, align 4
@CEPH_CAP_FILE_WR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i32, i64, i64)* @ceph_fallocate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ceph_fallocate(%struct.file* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ceph_file_info*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca %struct.ceph_inode_info*, align 8
  %13 = alloca %struct.ceph_cap_flush*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %20 = load %struct.file*, %struct.file** %6, align 8
  %21 = getelementptr inbounds %struct.file, %struct.file* %20, i32 0, i32 0
  %22 = load %struct.ceph_file_info*, %struct.ceph_file_info** %21, align 8
  store %struct.ceph_file_info* %22, %struct.ceph_file_info** %10, align 8
  %23 = load %struct.file*, %struct.file** %6, align 8
  %24 = call %struct.inode* @file_inode(%struct.file* %23)
  store %struct.inode* %24, %struct.inode** %11, align 8
  %25 = load %struct.inode*, %struct.inode** %11, align 8
  %26 = call %struct.ceph_inode_info* @ceph_inode(%struct.inode* %25)
  store %struct.ceph_inode_info* %26, %struct.ceph_inode_info** %12, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %17, align 4
  store i64 0, i64* %18, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @FALLOC_FL_KEEP_SIZE, align 4
  %29 = load i32, i32* @FALLOC_FL_PUNCH_HOLE, align 4
  %30 = or i32 %28, %29
  %31 = icmp ne i32 %27, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %4
  %33 = load i64, i64* @EOPNOTSUPP, align 8
  %34 = sub nsw i64 0, %33
  store i64 %34, i64* %5, align 8
  br label %155

35:                                               ; preds = %4
  %36 = load %struct.inode*, %struct.inode** %11, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @S_ISREG(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %35
  %42 = load i64, i64* @EOPNOTSUPP, align 8
  %43 = sub nsw i64 0, %42
  store i64 %43, i64* %5, align 8
  br label %155

44:                                               ; preds = %35
  %45 = call %struct.ceph_cap_flush* (...) @ceph_alloc_cap_flush()
  store %struct.ceph_cap_flush* %45, %struct.ceph_cap_flush** %13, align 8
  %46 = load %struct.ceph_cap_flush*, %struct.ceph_cap_flush** %13, align 8
  %47 = icmp ne %struct.ceph_cap_flush* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %44
  %49 = load i64, i64* @ENOMEM, align 8
  %50 = sub nsw i64 0, %49
  store i64 %50, i64* %5, align 8
  br label %155

51:                                               ; preds = %44
  %52 = load %struct.inode*, %struct.inode** %11, align 8
  %53 = call i32 @inode_lock(%struct.inode* %52)
  %54 = load %struct.inode*, %struct.inode** %11, align 8
  %55 = call i64 @ceph_snap(%struct.inode* %54)
  %56 = load i64, i64* @CEPH_NOSNAP, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %51
  %59 = load i32, i32* @EROFS, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %17, align 4
  br label %148

61:                                               ; preds = %51
  %62 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %12, align 8
  %63 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @CEPH_INLINE_NONE, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %61
  %68 = load %struct.file*, %struct.file** %6, align 8
  %69 = call i32 @ceph_uninline_data(%struct.file* %68, i32* null)
  store i32 %69, i32* %17, align 4
  %70 = load i32, i32* %17, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  br label %148

73:                                               ; preds = %67
  br label %74

74:                                               ; preds = %73, %61
  %75 = load %struct.inode*, %struct.inode** %11, align 8
  %76 = call i64 @i_size_read(%struct.inode* %75)
  store i64 %76, i64* %19, align 8
  %77 = load i64, i64* %8, align 8
  %78 = load i64, i64* %19, align 8
  %79 = icmp sge i64 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  br label %148

81:                                               ; preds = %74
  %82 = load i64, i64* %8, align 8
  %83 = load i64, i64* %9, align 8
  %84 = add nsw i64 %82, %83
  %85 = load i64, i64* %19, align 8
  %86 = icmp sgt i64 %84, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %81
  %88 = load i64, i64* %19, align 8
  %89 = load i64, i64* %8, align 8
  %90 = sub nsw i64 %88, %89
  store i64 %90, i64* %9, align 8
  br label %91

91:                                               ; preds = %87, %81
  %92 = load %struct.ceph_file_info*, %struct.ceph_file_info** %10, align 8
  %93 = getelementptr inbounds %struct.ceph_file_info, %struct.ceph_file_info* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @CEPH_FILE_MODE_LAZY, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %91
  %99 = load i32, i32* @CEPH_CAP_FILE_BUFFER, align 4
  %100 = load i32, i32* @CEPH_CAP_FILE_LAZYIO, align 4
  %101 = or i32 %99, %100
  store i32 %101, i32* %14, align 4
  br label %104

102:                                              ; preds = %91
  %103 = load i32, i32* @CEPH_CAP_FILE_BUFFER, align 4
  store i32 %103, i32* %14, align 4
  br label %104

104:                                              ; preds = %102, %98
  %105 = load %struct.file*, %struct.file** %6, align 8
  %106 = load i32, i32* @CEPH_CAP_FILE_WR, align 4
  %107 = load i32, i32* %14, align 4
  %108 = load i64, i64* %18, align 8
  %109 = call i32 @ceph_get_caps(%struct.file* %105, i32 %106, i32 %107, i64 %108, i32* %15, i32* null)
  store i32 %109, i32* %17, align 4
  %110 = load i32, i32* %17, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %104
  br label %148

113:                                              ; preds = %104
  %114 = load %struct.inode*, %struct.inode** %11, align 8
  %115 = load i64, i64* %8, align 8
  %116 = load i64, i64* %9, align 8
  %117 = call i32 @ceph_zero_pagecache_range(%struct.inode* %114, i64 %115, i64 %116)
  %118 = load %struct.inode*, %struct.inode** %11, align 8
  %119 = load i64, i64* %8, align 8
  %120 = load i64, i64* %9, align 8
  %121 = call i32 @ceph_zero_objects(%struct.inode* %118, i64 %119, i64 %120)
  store i32 %121, i32* %17, align 4
  %122 = load i32, i32* %17, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %144, label %124

124:                                              ; preds = %113
  %125 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %12, align 8
  %126 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %125, i32 0, i32 1
  %127 = call i32 @spin_lock(i32* %126)
  %128 = load i64, i64* @CEPH_INLINE_NONE, align 8
  %129 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %12, align 8
  %130 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %129, i32 0, i32 0
  store i64 %128, i64* %130, align 8
  %131 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %12, align 8
  %132 = load i32, i32* @CEPH_CAP_FILE_WR, align 4
  %133 = call i32 @__ceph_mark_dirty_caps(%struct.ceph_inode_info* %131, i32 %132, %struct.ceph_cap_flush** %13)
  store i32 %133, i32* %16, align 4
  %134 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %12, align 8
  %135 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %134, i32 0, i32 1
  %136 = call i32 @spin_unlock(i32* %135)
  %137 = load i32, i32* %16, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %124
  %140 = load %struct.inode*, %struct.inode** %11, align 8
  %141 = load i32, i32* %16, align 4
  %142 = call i32 @__mark_inode_dirty(%struct.inode* %140, i32 %141)
  br label %143

143:                                              ; preds = %139, %124
  br label %144

144:                                              ; preds = %143, %113
  %145 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %12, align 8
  %146 = load i32, i32* %15, align 4
  %147 = call i32 @ceph_put_cap_refs(%struct.ceph_inode_info* %145, i32 %146)
  br label %148

148:                                              ; preds = %144, %112, %80, %72, %58
  %149 = load %struct.inode*, %struct.inode** %11, align 8
  %150 = call i32 @inode_unlock(%struct.inode* %149)
  %151 = load %struct.ceph_cap_flush*, %struct.ceph_cap_flush** %13, align 8
  %152 = call i32 @ceph_free_cap_flush(%struct.ceph_cap_flush* %151)
  %153 = load i32, i32* %17, align 4
  %154 = sext i32 %153 to i64
  store i64 %154, i64* %5, align 8
  br label %155

155:                                              ; preds = %148, %48, %41, %32
  %156 = load i64, i64* %5, align 8
  ret i64 %156
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local %struct.ceph_inode_info* @ceph_inode(%struct.inode*) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local %struct.ceph_cap_flush* @ceph_alloc_cap_flush(...) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i64 @ceph_snap(%struct.inode*) #1

declare dso_local i32 @ceph_uninline_data(%struct.file*, i32*) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i32 @ceph_get_caps(%struct.file*, i32, i32, i64, i32*, i32*) #1

declare dso_local i32 @ceph_zero_pagecache_range(%struct.inode*, i64, i64) #1

declare dso_local i32 @ceph_zero_objects(%struct.inode*, i64, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__ceph_mark_dirty_caps(%struct.ceph_inode_info*, i32, %struct.ceph_cap_flush**) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @__mark_inode_dirty(%struct.inode*, i32) #1

declare dso_local i32 @ceph_put_cap_refs(%struct.ceph_inode_info*, i32) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

declare dso_local i32 @ceph_free_cap_flush(%struct.ceph_cap_flush*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
