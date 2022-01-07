; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_super.c_ffsGetVolInfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_super.c_ffsGetVolInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.vol_info_t = type { i64, i64, i64, i32, i32 }
%struct.fs_info_t = type { i64, i64, i32, i64, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 (%struct.super_block*)* }
%struct.TYPE_4__ = type { %struct.fs_info_t }

@FFS_SUCCESS = common dso_local global i32 0, align 4
@FFS_ERROR = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i64 0, align 8
@FFS_MEDIAERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.vol_info_t*)* @ffsGetVolInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ffsGetVolInfo(%struct.super_block* %0, %struct.vol_info_t* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.vol_info_t*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fs_info_t*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.vol_info_t* %1, %struct.vol_info_t** %5, align 8
  %8 = load i32, i32* @FFS_SUCCESS, align 4
  store i32 %8, i32* %6, align 4
  %9 = load %struct.super_block*, %struct.super_block** %4, align 8
  %10 = call %struct.TYPE_4__* @EXFAT_SB(%struct.super_block* %9)
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store %struct.fs_info_t* %11, %struct.fs_info_t** %7, align 8
  %12 = load %struct.vol_info_t*, %struct.vol_info_t** %5, align 8
  %13 = icmp ne %struct.vol_info_t* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @FFS_ERROR, align 4
  store i32 %15, i32* %3, align 4
  br label %77

16:                                               ; preds = %2
  %17 = load %struct.fs_info_t*, %struct.fs_info_t** %7, align 8
  %18 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %17, i32 0, i32 2
  %19 = call i32 @down(i32* %18)
  %20 = load %struct.fs_info_t*, %struct.fs_info_t** %7, align 8
  %21 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @UINT_MAX, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %16
  %26 = load %struct.fs_info_t*, %struct.fs_info_t** %7, align 8
  %27 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %26, i32 0, i32 6
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64 (%struct.super_block*)*, i64 (%struct.super_block*)** %29, align 8
  %31 = load %struct.super_block*, %struct.super_block** %4, align 8
  %32 = call i64 %30(%struct.super_block* %31)
  %33 = load %struct.fs_info_t*, %struct.fs_info_t** %7, align 8
  %34 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  br label %35

35:                                               ; preds = %25, %16
  %36 = load %struct.fs_info_t*, %struct.fs_info_t** %7, align 8
  %37 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.vol_info_t*, %struct.vol_info_t** %5, align 8
  %40 = getelementptr inbounds %struct.vol_info_t, %struct.vol_info_t* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 4
  %41 = load %struct.fs_info_t*, %struct.fs_info_t** %7, align 8
  %42 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.vol_info_t*, %struct.vol_info_t** %5, align 8
  %45 = getelementptr inbounds %struct.vol_info_t, %struct.vol_info_t* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 8
  %46 = load %struct.fs_info_t*, %struct.fs_info_t** %7, align 8
  %47 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = sub nsw i64 %48, 2
  %50 = load %struct.vol_info_t*, %struct.vol_info_t** %5, align 8
  %51 = getelementptr inbounds %struct.vol_info_t, %struct.vol_info_t* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = load %struct.fs_info_t*, %struct.fs_info_t** %7, align 8
  %53 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.vol_info_t*, %struct.vol_info_t** %5, align 8
  %56 = getelementptr inbounds %struct.vol_info_t, %struct.vol_info_t* %55, i32 0, i32 1
  store i64 %54, i64* %56, align 8
  %57 = load %struct.vol_info_t*, %struct.vol_info_t** %5, align 8
  %58 = getelementptr inbounds %struct.vol_info_t, %struct.vol_info_t* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.vol_info_t*, %struct.vol_info_t** %5, align 8
  %61 = getelementptr inbounds %struct.vol_info_t, %struct.vol_info_t* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = sub nsw i64 %59, %62
  %64 = load %struct.vol_info_t*, %struct.vol_info_t** %5, align 8
  %65 = getelementptr inbounds %struct.vol_info_t, %struct.vol_info_t* %64, i32 0, i32 2
  store i64 %63, i64* %65, align 8
  %66 = load %struct.fs_info_t*, %struct.fs_info_t** %7, align 8
  %67 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %35
  %71 = load i32, i32* @FFS_MEDIAERR, align 4
  store i32 %71, i32* %6, align 4
  br label %72

72:                                               ; preds = %70, %35
  %73 = load %struct.fs_info_t*, %struct.fs_info_t** %7, align 8
  %74 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %73, i32 0, i32 2
  %75 = call i32 @up(i32* %74)
  %76 = load i32, i32* %6, align 4
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %72, %14
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local %struct.TYPE_4__* @EXFAT_SB(%struct.super_block*) #1

declare dso_local i32 @down(i32*) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
