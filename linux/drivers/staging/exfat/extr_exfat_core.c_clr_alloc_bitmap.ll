; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_clr_alloc_bitmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_clr_alloc_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.fs_info_t = type { i32, i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i64 }
%struct.bd_info_t = type { i32, i32 }
%struct.exfat_sb_info = type { %struct.bd_info_t, %struct.fs_info_t, %struct.exfat_mount_options }
%struct.exfat_mount_options = type { i64 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clr_alloc_bitmap(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.fs_info_t*, align 8
  %9 = alloca %struct.bd_info_t*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.super_block*, %struct.super_block** %3, align 8
  %11 = call %struct.exfat_sb_info* @EXFAT_SB(%struct.super_block* %10)
  %12 = getelementptr inbounds %struct.exfat_sb_info, %struct.exfat_sb_info* %11, i32 0, i32 1
  store %struct.fs_info_t* %12, %struct.fs_info_t** %8, align 8
  %13 = load %struct.super_block*, %struct.super_block** %3, align 8
  %14 = call %struct.exfat_sb_info* @EXFAT_SB(%struct.super_block* %13)
  %15 = getelementptr inbounds %struct.exfat_sb_info, %struct.exfat_sb_info* %14, i32 0, i32 0
  store %struct.bd_info_t* %15, %struct.bd_info_t** %9, align 8
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.bd_info_t*, %struct.bd_info_t** %9, align 8
  %18 = getelementptr inbounds %struct.bd_info_t, %struct.bd_info_t* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 3
  %21 = ashr i32 %16, %20
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.bd_info_t*, %struct.bd_info_t** %9, align 8
  %24 = getelementptr inbounds %struct.bd_info_t, %struct.bd_info_t* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 %25, 3
  %27 = sub nsw i32 %26, 1
  %28 = and i32 %22, %27
  store i32 %28, i32* %6, align 4
  %29 = load %struct.fs_info_t*, %struct.fs_info_t** %8, align 8
  %30 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @START_SECTOR(i32 %31)
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %32, %34
  store i64 %35, i64* %7, align 8
  %36 = load %struct.fs_info_t*, %struct.fs_info_t** %8, align 8
  %37 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %36, i32 0, i32 2
  %38 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %38, i64 %40
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to i32*
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @exfat_bitmap_clear(i32* %45, i32 %46)
  %48 = load %struct.super_block*, %struct.super_block** %3, align 8
  %49 = load i64, i64* %7, align 8
  %50 = load %struct.fs_info_t*, %struct.fs_info_t** %8, align 8
  %51 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %50, i32 0, i32 2
  %52 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %52, i64 %54
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = call i32 @sector_write(%struct.super_block* %48, i64 %49, %struct.TYPE_2__* %56, i32 0)
  ret i32 %57
}

declare dso_local %struct.exfat_sb_info* @EXFAT_SB(%struct.super_block*) #1

declare dso_local i64 @START_SECTOR(i32) #1

declare dso_local i32 @exfat_bitmap_clear(i32*, i32) #1

declare dso_local i32 @sector_write(%struct.super_block*, i64, %struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
