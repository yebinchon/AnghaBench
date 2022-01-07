; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_super.c_ffsRemoveDir.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_super.c_ffsRemoveDir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.file_id_t = type { i32, i64, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32, i32 }
%struct.chain_t = type { i64, i32, i32 }
%struct.fs_info_t = type { i64, i64, i32, i32, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.super_block*, %struct.chain_t*, i32)* }
%struct.TYPE_6__ = type { %struct.fs_info_t }

@FFS_SUCCESS = common dso_local global i32 0, align 4
@FFS_INVALIDFID = common dso_local global i32 0, align 4
@EXFAT = common dso_local global i64 0, align 8
@FFS_PERMISSIONERR = common dso_local global i32 0, align 4
@FFS_FILEEXIST = common dso_local global i32 0, align 4
@VOL_DIRTY = common dso_local global i32 0, align 4
@FFS_MEDIAERR = common dso_local global i32 0, align 4
@VOL_CLEAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file_id_t*)* @ffsRemoveDir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ffsRemoveDir(%struct.inode* %0, %struct.file_id_t* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file_id_t*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.chain_t, align 8
  %9 = alloca %struct.chain_t, align 8
  %10 = alloca %struct.super_block*, align 8
  %11 = alloca %struct.fs_info_t*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file_id_t* %1, %struct.file_id_t** %5, align 8
  %12 = load i32, i32* @FFS_SUCCESS, align 4
  store i32 %12, i32* %7, align 4
  %13 = load %struct.inode*, %struct.inode** %4, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 0
  %15 = load %struct.super_block*, %struct.super_block** %14, align 8
  store %struct.super_block* %15, %struct.super_block** %10, align 8
  %16 = load %struct.super_block*, %struct.super_block** %10, align 8
  %17 = call %struct.TYPE_6__* @EXFAT_SB(%struct.super_block* %16)
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  store %struct.fs_info_t* %18, %struct.fs_info_t** %11, align 8
  %19 = load %struct.file_id_t*, %struct.file_id_t** %5, align 8
  %20 = icmp ne %struct.file_id_t* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @FFS_INVALIDFID, align 4
  store i32 %22, i32* %3, align 4
  br label %127

23:                                               ; preds = %2
  %24 = load %struct.file_id_t*, %struct.file_id_t** %5, align 8
  %25 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %24, i32 0, i32 4
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %8, i32 0, i32 0
  store i64 %27, i64* %28, align 8
  %29 = load %struct.file_id_t*, %struct.file_id_t** %5, align 8
  %30 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %8, i32 0, i32 1
  store i32 %32, i32* %33, align 8
  %34 = load %struct.file_id_t*, %struct.file_id_t** %5, align 8
  %35 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %34, i32 0, i32 4
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %8, i32 0, i32 2
  store i32 %37, i32* %38, align 4
  %39 = load %struct.file_id_t*, %struct.file_id_t** %5, align 8
  %40 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %6, align 4
  %42 = load %struct.fs_info_t*, %struct.fs_info_t** %11, align 8
  %43 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @EXFAT, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %60

47:                                               ; preds = %23
  %48 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %8, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.fs_info_t*, %struct.fs_info_t** %11, align 8
  %51 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %49, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %47
  %55 = load i32, i32* %6, align 4
  %56 = icmp slt i32 %55, 2
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = load i32, i32* @FFS_PERMISSIONERR, align 4
  store i32 %58, i32* %3, align 4
  br label %127

59:                                               ; preds = %54, %47
  br label %60

60:                                               ; preds = %59, %23
  %61 = load %struct.fs_info_t*, %struct.fs_info_t** %11, align 8
  %62 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %61, i32 0, i32 3
  %63 = call i32 @down(i32* %62)
  %64 = load %struct.file_id_t*, %struct.file_id_t** %5, align 8
  %65 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %9, i32 0, i32 0
  store i64 %66, i64* %67, align 8
  %68 = load %struct.file_id_t*, %struct.file_id_t** %5, align 8
  %69 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = sub nsw i32 %70, 1
  %72 = load %struct.fs_info_t*, %struct.fs_info_t** %11, align 8
  %73 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = ashr i32 %71, %74
  %76 = add nsw i32 %75, 1
  %77 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %9, i32 0, i32 1
  store i32 %76, i32* %77, align 8
  %78 = load %struct.file_id_t*, %struct.file_id_t** %5, align 8
  %79 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %9, i32 0, i32 2
  store i32 %80, i32* %81, align 4
  %82 = load %struct.super_block*, %struct.super_block** %10, align 8
  %83 = call i32 @is_dir_empty(%struct.super_block* %82, %struct.chain_t* %9)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %60
  %86 = load i32, i32* @FFS_FILEEXIST, align 4
  store i32 %86, i32* %7, align 4
  br label %122

87:                                               ; preds = %60
  %88 = load %struct.super_block*, %struct.super_block** %10, align 8
  %89 = load i32, i32* @VOL_DIRTY, align 4
  %90 = call i32 @fs_set_vol_flags(%struct.super_block* %88, i32 %89)
  %91 = load %struct.inode*, %struct.inode** %4, align 8
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @remove_file(%struct.inode* %91, %struct.chain_t* %8, i32 %92)
  %94 = load %struct.fs_info_t*, %struct.fs_info_t** %11, align 8
  %95 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %94, i32 0, i32 5
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load i32 (%struct.super_block*, %struct.chain_t*, i32)*, i32 (%struct.super_block*, %struct.chain_t*, i32)** %97, align 8
  %99 = load %struct.super_block*, %struct.super_block** %10, align 8
  %100 = call i32 %98(%struct.super_block* %99, %struct.chain_t* %9, i32 1)
  %101 = load %struct.file_id_t*, %struct.file_id_t** %5, align 8
  %102 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %101, i32 0, i32 2
  store i32 0, i32* %102, align 8
  %103 = call i64 @CLUSTER_32(i32 -1)
  %104 = load %struct.file_id_t*, %struct.file_id_t** %5, align 8
  %105 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %104, i32 0, i32 1
  store i64 %103, i64* %105, align 8
  %106 = load %struct.fs_info_t*, %struct.fs_info_t** %11, align 8
  %107 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @EXFAT, align 8
  %110 = icmp eq i64 %108, %109
  %111 = zext i1 %110 to i64
  %112 = select i1 %110, i32 3, i32 1
  %113 = load %struct.file_id_t*, %struct.file_id_t** %5, align 8
  %114 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %113, i32 0, i32 3
  store i32 %112, i32* %114, align 4
  %115 = load %struct.fs_info_t*, %struct.fs_info_t** %11, align 8
  %116 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %115, i32 0, i32 4
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %87
  %120 = load i32, i32* @FFS_MEDIAERR, align 4
  store i32 %120, i32* %7, align 4
  br label %121

121:                                              ; preds = %119, %87
  br label %122

122:                                              ; preds = %121, %85
  %123 = load %struct.fs_info_t*, %struct.fs_info_t** %11, align 8
  %124 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %123, i32 0, i32 3
  %125 = call i32 @up(i32* %124)
  %126 = load i32, i32* %7, align 4
  store i32 %126, i32* %3, align 4
  br label %127

127:                                              ; preds = %122, %57, %21
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local %struct.TYPE_6__* @EXFAT_SB(%struct.super_block*) #1

declare dso_local i32 @down(i32*) #1

declare dso_local i32 @is_dir_empty(%struct.super_block*, %struct.chain_t*) #1

declare dso_local i32 @fs_set_vol_flags(%struct.super_block*, i32) #1

declare dso_local i32 @remove_file(%struct.inode*, %struct.chain_t*, i32) #1

declare dso_local i64 @CLUSTER_32(i32) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
