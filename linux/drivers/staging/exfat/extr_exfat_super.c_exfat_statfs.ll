; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_super.c_exfat_statfs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_super.c_exfat_statfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.super_block* }
%struct.super_block = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.kstatfs = type { i64, i64, i64, i32, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i8** }
%struct.fs_info_t = type { i64, i64, i64, i32, i32 }
%struct.vol_info_t = type { i64, i64, i64, i32, i32 }
%struct.TYPE_6__ = type { %struct.fs_info_t }

@UINT_MAX = common dso_local global i64 0, align 8
@FFS_MEDIAERR = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"[EXFAT] statfs on device that is ejected\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.kstatfs*)* @exfat_statfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exfat_statfs(%struct.dentry* %0, %struct.kstatfs* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.kstatfs*, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.fs_info_t*, align 8
  %9 = alloca %struct.vol_info_t, align 8
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.kstatfs* %1, %struct.kstatfs** %5, align 8
  %10 = load %struct.dentry*, %struct.dentry** %4, align 8
  %11 = getelementptr inbounds %struct.dentry, %struct.dentry* %10, i32 0, i32 0
  %12 = load %struct.super_block*, %struct.super_block** %11, align 8
  store %struct.super_block* %12, %struct.super_block** %6, align 8
  %13 = load %struct.super_block*, %struct.super_block** %6, align 8
  %14 = getelementptr inbounds %struct.super_block, %struct.super_block* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @huge_encode_dev(i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load %struct.super_block*, %struct.super_block** %6, align 8
  %20 = call %struct.TYPE_6__* @EXFAT_SB(%struct.super_block* %19)
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  store %struct.fs_info_t* %21, %struct.fs_info_t** %8, align 8
  %22 = load %struct.fs_info_t*, %struct.fs_info_t** %8, align 8
  %23 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @UINT_MAX, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %2
  %28 = load %struct.super_block*, %struct.super_block** %6, align 8
  %29 = call i64 @ffsGetVolInfo(%struct.super_block* %28, %struct.vol_info_t* %9)
  %30 = load i64, i64* @FFS_MEDIAERR, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* @EIO, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %108

35:                                               ; preds = %27
  br label %67

36:                                               ; preds = %2
  %37 = load %struct.fs_info_t*, %struct.fs_info_t** %8, align 8
  %38 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.vol_info_t, %struct.vol_info_t* %9, i32 0, i32 4
  store i32 %39, i32* %40, align 4
  %41 = load %struct.fs_info_t*, %struct.fs_info_t** %8, align 8
  %42 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = getelementptr inbounds %struct.vol_info_t, %struct.vol_info_t* %9, i32 0, i32 3
  store i32 %43, i32* %44, align 8
  %45 = load %struct.fs_info_t*, %struct.fs_info_t** %8, align 8
  %46 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = sub nsw i64 %47, 2
  %49 = getelementptr inbounds %struct.vol_info_t, %struct.vol_info_t* %9, i32 0, i32 0
  store i64 %48, i64* %49, align 8
  %50 = load %struct.fs_info_t*, %struct.fs_info_t** %8, align 8
  %51 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.vol_info_t, %struct.vol_info_t* %9, i32 0, i32 1
  store i64 %52, i64* %53, align 8
  %54 = getelementptr inbounds %struct.vol_info_t, %struct.vol_info_t* %9, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds %struct.vol_info_t, %struct.vol_info_t* %9, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = sub nsw i64 %55, %57
  %59 = getelementptr inbounds %struct.vol_info_t, %struct.vol_info_t* %9, i32 0, i32 2
  store i64 %58, i64* %59, align 8
  %60 = load %struct.fs_info_t*, %struct.fs_info_t** %8, align 8
  %61 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %36
  %65 = call i32 @pr_info(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %36
  br label %67

67:                                               ; preds = %66, %35
  %68 = load %struct.super_block*, %struct.super_block** %6, align 8
  %69 = getelementptr inbounds %struct.super_block, %struct.super_block* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.kstatfs*, %struct.kstatfs** %5, align 8
  %72 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %71, i32 0, i32 6
  store i32 %70, i32* %72, align 4
  %73 = getelementptr inbounds %struct.vol_info_t, %struct.vol_info_t* %9, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.kstatfs*, %struct.kstatfs** %5, align 8
  %76 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %75, i32 0, i32 5
  store i32 %74, i32* %76, align 8
  %77 = getelementptr inbounds %struct.vol_info_t, %struct.vol_info_t* %9, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.kstatfs*, %struct.kstatfs** %5, align 8
  %80 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %79, i32 0, i32 0
  store i64 %78, i64* %80, align 8
  %81 = getelementptr inbounds %struct.vol_info_t, %struct.vol_info_t* %9, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.kstatfs*, %struct.kstatfs** %5, align 8
  %84 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %83, i32 0, i32 1
  store i64 %82, i64* %84, align 8
  %85 = getelementptr inbounds %struct.vol_info_t, %struct.vol_info_t* %9, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.kstatfs*, %struct.kstatfs** %5, align 8
  %88 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %87, i32 0, i32 2
  store i64 %86, i64* %88, align 8
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = inttoptr i64 %90 to i8*
  %92 = load %struct.kstatfs*, %struct.kstatfs** %5, align 8
  %93 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %92, i32 0, i32 4
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load i8**, i8*** %94, align 8
  %96 = getelementptr inbounds i8*, i8** %95, i64 0
  store i8* %91, i8** %96, align 8
  %97 = load i32, i32* %7, align 4
  %98 = ashr i32 %97, 32
  %99 = sext i32 %98 to i64
  %100 = inttoptr i64 %99 to i8*
  %101 = load %struct.kstatfs*, %struct.kstatfs** %5, align 8
  %102 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %101, i32 0, i32 4
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = load i8**, i8*** %103, align 8
  %105 = getelementptr inbounds i8*, i8** %104, i64 1
  store i8* %100, i8** %105, align 8
  %106 = load %struct.kstatfs*, %struct.kstatfs** %5, align 8
  %107 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %106, i32 0, i32 3
  store i32 260, i32* %107, align 8
  store i32 0, i32* %3, align 4
  br label %108

108:                                              ; preds = %67, %32
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i32 @huge_encode_dev(i32) #1

declare dso_local %struct.TYPE_6__* @EXFAT_SB(%struct.super_block*) #1

declare dso_local i64 @ffsGetVolInfo(%struct.super_block*, %struct.vol_info_t*) #1

declare dso_local i32 @pr_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
