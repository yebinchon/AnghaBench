; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_super.c_ffsUmountVol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_super.c_ffsUmountVol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.fs_info_t = type { i64, i32, i64 }
%struct.TYPE_2__ = type { %struct.fs_info_t }

@FFS_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"[EXFAT] trying to unmount...\0A\00", align 1
@z_sem = common dso_local global i32 0, align 4
@VOL_CLEAN = common dso_local global i32 0, align 4
@EXFAT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [65 x i8] c"[EXFAT] unmounted with media errors. Device is already ejected.\0A\00", align 1
@FFS_MEDIAERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"[EXFAT] unmounted successfully\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*)* @ffsUmountVol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ffsUmountVol(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.fs_info_t*, align 8
  %4 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %5 = load %struct.super_block*, %struct.super_block** %2, align 8
  %6 = call %struct.TYPE_2__* @EXFAT_SB(%struct.super_block* %5)
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  store %struct.fs_info_t* %7, %struct.fs_info_t** %3, align 8
  %8 = load i32, i32* @FFS_SUCCESS, align 4
  store i32 %8, i32* %4, align 4
  %9 = call i32 @pr_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %10 = call i32 @down(i32* @z_sem)
  %11 = load %struct.fs_info_t*, %struct.fs_info_t** %3, align 8
  %12 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %11, i32 0, i32 1
  %13 = call i32 @down(i32* %12)
  %14 = load %struct.super_block*, %struct.super_block** %2, align 8
  %15 = call i32 @fs_sync(%struct.super_block* %14, i32 0)
  %16 = load %struct.super_block*, %struct.super_block** %2, align 8
  %17 = load i32, i32* @VOL_CLEAN, align 4
  %18 = call i32 @fs_set_vol_flags(%struct.super_block* %16, i32 %17)
  %19 = load %struct.fs_info_t*, %struct.fs_info_t** %3, align 8
  %20 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @EXFAT, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %1
  %25 = load %struct.super_block*, %struct.super_block** %2, align 8
  %26 = call i32 @free_upcase_table(%struct.super_block* %25)
  %27 = load %struct.super_block*, %struct.super_block** %2, align 8
  %28 = call i32 @free_alloc_bitmap(%struct.super_block* %27)
  br label %29

29:                                               ; preds = %24, %1
  %30 = load %struct.super_block*, %struct.super_block** %2, align 8
  %31 = call i32 @FAT_release_all(%struct.super_block* %30)
  %32 = load %struct.super_block*, %struct.super_block** %2, align 8
  %33 = call i32 @buf_release_all(%struct.super_block* %32)
  %34 = load %struct.super_block*, %struct.super_block** %2, align 8
  %35 = call i32 @bdev_close(%struct.super_block* %34)
  %36 = load %struct.fs_info_t*, %struct.fs_info_t** %3, align 8
  %37 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %29
  %41 = call i32 @pr_info(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* @FFS_MEDIAERR, align 4
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %40, %29
  %44 = load %struct.super_block*, %struct.super_block** %2, align 8
  %45 = call i32 @buf_shutdown(%struct.super_block* %44)
  %46 = load %struct.fs_info_t*, %struct.fs_info_t** %3, align 8
  %47 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %46, i32 0, i32 1
  %48 = call i32 @up(i32* %47)
  %49 = call i32 @up(i32* @z_sem)
  %50 = call i32 @pr_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local %struct.TYPE_2__* @EXFAT_SB(%struct.super_block*) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @down(i32*) #1

declare dso_local i32 @fs_sync(%struct.super_block*, i32) #1

declare dso_local i32 @fs_set_vol_flags(%struct.super_block*, i32) #1

declare dso_local i32 @free_upcase_table(%struct.super_block*) #1

declare dso_local i32 @free_alloc_bitmap(%struct.super_block*) #1

declare dso_local i32 @FAT_release_all(%struct.super_block*) #1

declare dso_local i32 @buf_release_all(%struct.super_block*) #1

declare dso_local i32 @bdev_close(%struct.super_block*) #1

declare dso_local i32 @buf_shutdown(%struct.super_block*) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
