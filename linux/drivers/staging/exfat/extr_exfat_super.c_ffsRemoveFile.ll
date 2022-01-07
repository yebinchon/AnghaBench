; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_super.c_ffsRemoveFile.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_super.c_ffsRemoveFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.file_id_t = type { i32, i32, i32, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64, i32 }
%struct.chain_t = type { i32, i64, i32 }
%struct.dentry_t = type { i32 }
%struct.fs_info_t = type { i32, i64, i32, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.dentry_t*)*, i32 (%struct.super_block*, %struct.chain_t*, i32)* }
%struct.TYPE_6__ = type { %struct.fs_info_t }

@FFS_SUCCESS = common dso_local global i32 0, align 4
@FFS_INVALIDFID = common dso_local global i32 0, align 4
@FFS_MEDIAERR = common dso_local global i32 0, align 4
@ATTR_READONLY = common dso_local global i32 0, align 4
@FFS_PERMISSIONERR = common dso_local global i32 0, align 4
@VOL_DIRTY = common dso_local global i32 0, align 4
@EXFAT = common dso_local global i64 0, align 8
@VOL_CLEAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file_id_t*)* @ffsRemoveFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ffsRemoveFile(%struct.inode* %0, %struct.file_id_t* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file_id_t*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.chain_t, align 8
  %9 = alloca %struct.chain_t, align 8
  %10 = alloca %struct.dentry_t*, align 8
  %11 = alloca %struct.super_block*, align 8
  %12 = alloca %struct.fs_info_t*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file_id_t* %1, %struct.file_id_t** %5, align 8
  %13 = load i32, i32* @FFS_SUCCESS, align 4
  store i32 %13, i32* %7, align 4
  %14 = load %struct.inode*, %struct.inode** %4, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 0
  %16 = load %struct.super_block*, %struct.super_block** %15, align 8
  store %struct.super_block* %16, %struct.super_block** %11, align 8
  %17 = load %struct.super_block*, %struct.super_block** %11, align 8
  %18 = call %struct.TYPE_6__* @EXFAT_SB(%struct.super_block* %17)
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  store %struct.fs_info_t* %19, %struct.fs_info_t** %12, align 8
  %20 = load %struct.file_id_t*, %struct.file_id_t** %5, align 8
  %21 = icmp ne %struct.file_id_t* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @FFS_INVALIDFID, align 4
  store i32 %23, i32* %3, align 4
  br label %125

24:                                               ; preds = %2
  %25 = load %struct.fs_info_t*, %struct.fs_info_t** %12, align 8
  %26 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %25, i32 0, i32 2
  %27 = call i32 @down(i32* %26)
  %28 = load %struct.file_id_t*, %struct.file_id_t** %5, align 8
  %29 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %8, i32 0, i32 2
  store i32 %31, i32* %32, align 8
  %33 = load %struct.file_id_t*, %struct.file_id_t** %5, align 8
  %34 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %33, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %8, i32 0, i32 1
  store i64 %36, i64* %37, align 8
  %38 = load %struct.file_id_t*, %struct.file_id_t** %5, align 8
  %39 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %8, i32 0, i32 0
  store i32 %41, i32* %42, align 8
  %43 = load %struct.file_id_t*, %struct.file_id_t** %5, align 8
  %44 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %6, align 8
  %46 = load %struct.super_block*, %struct.super_block** %11, align 8
  %47 = load i64, i64* %6, align 8
  %48 = call %struct.dentry_t* @get_entry_in_dir(%struct.super_block* %46, %struct.chain_t* %8, i64 %47, i32* null)
  store %struct.dentry_t* %48, %struct.dentry_t** %10, align 8
  %49 = load %struct.dentry_t*, %struct.dentry_t** %10, align 8
  %50 = icmp ne %struct.dentry_t* %49, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %24
  %52 = load i32, i32* @FFS_MEDIAERR, align 4
  store i32 %52, i32* %7, align 4
  br label %120

53:                                               ; preds = %24
  %54 = load %struct.fs_info_t*, %struct.fs_info_t** %12, align 8
  %55 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %54, i32 0, i32 4
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32 (%struct.dentry_t*)*, i32 (%struct.dentry_t*)** %57, align 8
  %59 = load %struct.dentry_t*, %struct.dentry_t** %10, align 8
  %60 = call i32 %58(%struct.dentry_t* %59)
  %61 = load i32, i32* @ATTR_READONLY, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %53
  %65 = load i32, i32* @FFS_PERMISSIONERR, align 4
  store i32 %65, i32* %7, align 4
  br label %120

66:                                               ; preds = %53
  %67 = load %struct.super_block*, %struct.super_block** %11, align 8
  %68 = load i32, i32* @VOL_DIRTY, align 4
  %69 = call i32 @fs_set_vol_flags(%struct.super_block* %67, i32 %68)
  %70 = load %struct.inode*, %struct.inode** %4, align 8
  %71 = load i64, i64* %6, align 8
  %72 = call i32 @remove_file(%struct.inode* %70, %struct.chain_t* %8, i64 %71)
  %73 = load %struct.file_id_t*, %struct.file_id_t** %5, align 8
  %74 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %9, i32 0, i32 2
  store i32 %75, i32* %76, align 8
  %77 = load %struct.file_id_t*, %struct.file_id_t** %5, align 8
  %78 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = sub nsw i32 %79, 1
  %81 = load %struct.fs_info_t*, %struct.fs_info_t** %12, align 8
  %82 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = ashr i32 %80, %83
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %85, 1
  %87 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %9, i32 0, i32 1
  store i64 %86, i64* %87, align 8
  %88 = load %struct.file_id_t*, %struct.file_id_t** %5, align 8
  %89 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %9, i32 0, i32 0
  store i32 %90, i32* %91, align 8
  %92 = load %struct.fs_info_t*, %struct.fs_info_t** %12, align 8
  %93 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %92, i32 0, i32 4
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 1
  %96 = load i32 (%struct.super_block*, %struct.chain_t*, i32)*, i32 (%struct.super_block*, %struct.chain_t*, i32)** %95, align 8
  %97 = load %struct.super_block*, %struct.super_block** %11, align 8
  %98 = call i32 %96(%struct.super_block* %97, %struct.chain_t* %9, i32 0)
  %99 = load %struct.file_id_t*, %struct.file_id_t** %5, align 8
  %100 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %99, i32 0, i32 0
  store i32 0, i32* %100, align 8
  %101 = call i32 @CLUSTER_32(i32 -1)
  %102 = load %struct.file_id_t*, %struct.file_id_t** %5, align 8
  %103 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %102, i32 0, i32 2
  store i32 %101, i32* %103, align 8
  %104 = load %struct.fs_info_t*, %struct.fs_info_t** %12, align 8
  %105 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @EXFAT, align 8
  %108 = icmp eq i64 %106, %107
  %109 = zext i1 %108 to i64
  %110 = select i1 %108, i32 3, i32 1
  %111 = load %struct.file_id_t*, %struct.file_id_t** %5, align 8
  %112 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 4
  %113 = load %struct.fs_info_t*, %struct.fs_info_t** %12, align 8
  %114 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %113, i32 0, i32 3
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %66
  %118 = load i32, i32* @FFS_MEDIAERR, align 4
  store i32 %118, i32* %7, align 4
  br label %119

119:                                              ; preds = %117, %66
  br label %120

120:                                              ; preds = %119, %64, %51
  %121 = load %struct.fs_info_t*, %struct.fs_info_t** %12, align 8
  %122 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %121, i32 0, i32 2
  %123 = call i32 @up(i32* %122)
  %124 = load i32, i32* %7, align 4
  store i32 %124, i32* %3, align 4
  br label %125

125:                                              ; preds = %120, %22
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local %struct.TYPE_6__* @EXFAT_SB(%struct.super_block*) #1

declare dso_local i32 @down(i32*) #1

declare dso_local %struct.dentry_t* @get_entry_in_dir(%struct.super_block*, %struct.chain_t*, i64, i32*) #1

declare dso_local i32 @fs_set_vol_flags(%struct.super_block*, i32) #1

declare dso_local i32 @remove_file(%struct.inode*, %struct.chain_t*, i64) #1

declare dso_local i32 @CLUSTER_32(i32) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
