; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_super.c_ffsCreateFile.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_super.c_ffsCreateFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.file_id_t = type { i32 }
%struct.chain_t = type { i32 }
%struct.uni_name_t = type { i32 }
%struct.fs_info_t = type { i32, i64 }
%struct.TYPE_2__ = type { %struct.fs_info_t }

@FFS_ERROR = common dso_local global i32 0, align 4
@VOL_DIRTY = common dso_local global i32 0, align 4
@FFS_MEDIAERR = common dso_local global i32 0, align 4
@VOL_CLEAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i8*, i32, %struct.file_id_t*)* @ffsCreateFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ffsCreateFile(%struct.inode* %0, i8* %1, i32 %2, %struct.file_id_t* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.file_id_t*, align 8
  %10 = alloca %struct.chain_t, align 4
  %11 = alloca %struct.uni_name_t, align 4
  %12 = alloca %struct.super_block*, align 8
  %13 = alloca %struct.fs_info_t*, align 8
  %14 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.file_id_t* %3, %struct.file_id_t** %9, align 8
  %15 = load %struct.inode*, %struct.inode** %6, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 0
  %17 = load %struct.super_block*, %struct.super_block** %16, align 8
  store %struct.super_block* %17, %struct.super_block** %12, align 8
  %18 = load %struct.super_block*, %struct.super_block** %12, align 8
  %19 = call %struct.TYPE_2__* @EXFAT_SB(%struct.super_block* %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store %struct.fs_info_t* %20, %struct.fs_info_t** %13, align 8
  %21 = load %struct.file_id_t*, %struct.file_id_t** %9, align 8
  %22 = icmp ne %struct.file_id_t* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %4
  %24 = load i8*, i8** %7, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load i8*, i8** %7, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26, %23, %4
  %32 = load i32, i32* @FFS_ERROR, align 4
  store i32 %32, i32* %5, align 4
  br label %63

33:                                               ; preds = %26
  %34 = load %struct.fs_info_t*, %struct.fs_info_t** %13, align 8
  %35 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %34, i32 0, i32 0
  %36 = call i32 @down(i32* %35)
  %37 = load %struct.inode*, %struct.inode** %6, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = call i32 @resolve_path(%struct.inode* %37, i8* %38, %struct.chain_t* %10, %struct.uni_name_t* %11)
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* %14, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  br label %58

43:                                               ; preds = %33
  %44 = load %struct.super_block*, %struct.super_block** %12, align 8
  %45 = load i32, i32* @VOL_DIRTY, align 4
  %46 = call i32 @fs_set_vol_flags(%struct.super_block* %44, i32 %45)
  %47 = load %struct.inode*, %struct.inode** %6, align 8
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.file_id_t*, %struct.file_id_t** %9, align 8
  %50 = call i32 @create_file(%struct.inode* %47, %struct.chain_t* %10, %struct.uni_name_t* %11, i32 %48, %struct.file_id_t* %49)
  store i32 %50, i32* %14, align 4
  %51 = load %struct.fs_info_t*, %struct.fs_info_t** %13, align 8
  %52 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %43
  %56 = load i32, i32* @FFS_MEDIAERR, align 4
  store i32 %56, i32* %14, align 4
  br label %57

57:                                               ; preds = %55, %43
  br label %58

58:                                               ; preds = %57, %42
  %59 = load %struct.fs_info_t*, %struct.fs_info_t** %13, align 8
  %60 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %59, i32 0, i32 0
  %61 = call i32 @up(i32* %60)
  %62 = load i32, i32* %14, align 4
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %58, %31
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local %struct.TYPE_2__* @EXFAT_SB(%struct.super_block*) #1

declare dso_local i32 @down(i32*) #1

declare dso_local i32 @resolve_path(%struct.inode*, i8*, %struct.chain_t*, %struct.uni_name_t*) #1

declare dso_local i32 @fs_set_vol_flags(%struct.super_block*, i32) #1

declare dso_local i32 @create_file(%struct.inode*, %struct.chain_t*, %struct.uni_name_t*, i32, %struct.file_id_t*) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
