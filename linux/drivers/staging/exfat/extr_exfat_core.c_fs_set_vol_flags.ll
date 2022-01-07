; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_fs_set_vol_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_fs_set_vol_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.pbr_sector_t = type { i64 }
%struct.bpbex_t = type { i32 }
%struct.fs_info_t = type { i64, i64, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { %struct.fs_info_t }

@EXFAT = common dso_local global i64 0, align 8
@FFS_SUCCESS = common dso_local global i64 0, align 8
@VOL_DIRTY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fs_set_vol_flags(%struct.super_block* %0, i64 %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.pbr_sector_t*, align 8
  %6 = alloca %struct.bpbex_t*, align 8
  %7 = alloca %struct.fs_info_t*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.super_block*, %struct.super_block** %3, align 8
  %9 = call %struct.TYPE_6__* @EXFAT_SB(%struct.super_block* %8)
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  store %struct.fs_info_t* %10, %struct.fs_info_t** %7, align 8
  %11 = load %struct.fs_info_t*, %struct.fs_info_t** %7, align 8
  %12 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* %4, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %88

17:                                               ; preds = %2
  %18 = load i64, i64* %4, align 8
  %19 = load %struct.fs_info_t*, %struct.fs_info_t** %7, align 8
  %20 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  %21 = load %struct.fs_info_t*, %struct.fs_info_t** %7, align 8
  %22 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @EXFAT, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %88

26:                                               ; preds = %17
  %27 = load %struct.fs_info_t*, %struct.fs_info_t** %7, align 8
  %28 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %27, i32 0, i32 2
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = icmp ne %struct.TYPE_5__* %29, null
  br i1 %30, label %43, label %31

31:                                               ; preds = %26
  %32 = load %struct.super_block*, %struct.super_block** %3, align 8
  %33 = load %struct.fs_info_t*, %struct.fs_info_t** %7, align 8
  %34 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.fs_info_t*, %struct.fs_info_t** %7, align 8
  %37 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %36, i32 0, i32 2
  %38 = call i64 @sector_read(%struct.super_block* %32, i32 %35, %struct.TYPE_5__** %37, i32 1)
  %39 = load i64, i64* @FFS_SUCCESS, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %31
  br label %88

42:                                               ; preds = %31
  br label %43

43:                                               ; preds = %42, %26
  %44 = load %struct.fs_info_t*, %struct.fs_info_t** %7, align 8
  %45 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %44, i32 0, i32 2
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to %struct.pbr_sector_t*
  store %struct.pbr_sector_t* %49, %struct.pbr_sector_t** %5, align 8
  %50 = load %struct.pbr_sector_t*, %struct.pbr_sector_t** %5, align 8
  %51 = getelementptr inbounds %struct.pbr_sector_t, %struct.pbr_sector_t* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to %struct.bpbex_t*
  store %struct.bpbex_t* %53, %struct.bpbex_t** %6, align 8
  %54 = load %struct.bpbex_t*, %struct.bpbex_t** %6, align 8
  %55 = getelementptr inbounds %struct.bpbex_t, %struct.bpbex_t* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i64, i64* %4, align 8
  %58 = trunc i64 %57 to i32
  %59 = call i32 @SET16(i32 %56, i32 %58)
  %60 = load i64, i64* %4, align 8
  %61 = load i64, i64* @VOL_DIRTY, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %78

63:                                               ; preds = %43
  %64 = load %struct.fs_info_t*, %struct.fs_info_t** %7, align 8
  %65 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %64, i32 0, i32 2
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = call i32 @buffer_dirty(%struct.TYPE_5__* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %78, label %69

69:                                               ; preds = %63
  %70 = load %struct.super_block*, %struct.super_block** %3, align 8
  %71 = load %struct.fs_info_t*, %struct.fs_info_t** %7, align 8
  %72 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.fs_info_t*, %struct.fs_info_t** %7, align 8
  %75 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %74, i32 0, i32 2
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = call i32 @sector_write(%struct.super_block* %70, i32 %73, %struct.TYPE_5__* %76, i32 1)
  br label %87

78:                                               ; preds = %63, %43
  %79 = load %struct.super_block*, %struct.super_block** %3, align 8
  %80 = load %struct.fs_info_t*, %struct.fs_info_t** %7, align 8
  %81 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.fs_info_t*, %struct.fs_info_t** %7, align 8
  %84 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %83, i32 0, i32 2
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = call i32 @sector_write(%struct.super_block* %79, i32 %82, %struct.TYPE_5__* %85, i32 0)
  br label %87

87:                                               ; preds = %78, %69
  br label %88

88:                                               ; preds = %16, %41, %87, %17
  ret void
}

declare dso_local %struct.TYPE_6__* @EXFAT_SB(%struct.super_block*) #1

declare dso_local i64 @sector_read(%struct.super_block*, i32, %struct.TYPE_5__**, i32) #1

declare dso_local i32 @SET16(i32, i32) #1

declare dso_local i32 @buffer_dirty(%struct.TYPE_5__*) #1

declare dso_local i32 @sector_write(%struct.super_block*, i32, %struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
