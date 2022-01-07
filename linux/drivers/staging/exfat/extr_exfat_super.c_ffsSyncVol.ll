; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_super.c_ffsSyncVol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_super.c_ffsSyncVol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.fs_info_t = type { i32, i64 }
%struct.TYPE_2__ = type { %struct.fs_info_t }

@FFS_SUCCESS = common dso_local global i32 0, align 4
@VOL_CLEAN = common dso_local global i32 0, align 4
@FFS_MEDIAERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32)* @ffsSyncVol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ffsSyncVol(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.fs_info_t*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @FFS_SUCCESS, align 4
  store i32 %7, i32* %5, align 4
  %8 = load %struct.super_block*, %struct.super_block** %3, align 8
  %9 = call %struct.TYPE_2__* @EXFAT_SB(%struct.super_block* %8)
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.fs_info_t* %10, %struct.fs_info_t** %6, align 8
  %11 = load %struct.fs_info_t*, %struct.fs_info_t** %6, align 8
  %12 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %11, i32 0, i32 0
  %13 = call i32 @down(i32* %12)
  %14 = load %struct.super_block*, %struct.super_block** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @fs_sync(%struct.super_block* %14, i32 %15)
  %17 = load %struct.super_block*, %struct.super_block** %3, align 8
  %18 = load i32, i32* @VOL_CLEAN, align 4
  %19 = call i32 @fs_set_vol_flags(%struct.super_block* %17, i32 %18)
  %20 = load %struct.fs_info_t*, %struct.fs_info_t** %6, align 8
  %21 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* @FFS_MEDIAERR, align 4
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %24, %2
  %27 = load %struct.fs_info_t*, %struct.fs_info_t** %6, align 8
  %28 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %27, i32 0, i32 0
  %29 = call i32 @up(i32* %28)
  %30 = load i32, i32* %5, align 4
  ret i32 %30
}

declare dso_local %struct.TYPE_2__* @EXFAT_SB(%struct.super_block*) #1

declare dso_local i32 @down(i32*) #1

declare dso_local i32 @fs_sync(%struct.super_block*, i32) #1

declare dso_local i32 @fs_set_vol_flags(%struct.super_block*, i32) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
