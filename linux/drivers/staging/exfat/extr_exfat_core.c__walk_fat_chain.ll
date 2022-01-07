; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c__walk_fat_chain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c__walk_fat_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.chain_t = type { i32, i32 }
%struct.fs_info_t = type { i32 }
%struct.TYPE_2__ = type { %struct.fs_info_t }

@FFS_MEDIAERR = common dso_local global i32 0, align 4
@FFS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.chain_t*, i32, i32*)* @_walk_fat_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_walk_fat_chain(%struct.super_block* %0, %struct.chain_t* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.chain_t*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.fs_info_t*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store %struct.chain_t* %1, %struct.chain_t** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %13 = load %struct.super_block*, %struct.super_block** %6, align 8
  %14 = call %struct.TYPE_2__* @EXFAT_SB(%struct.super_block* %13)
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.fs_info_t* %15, %struct.fs_info_t** %10, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load %struct.fs_info_t*, %struct.fs_info_t** %10, align 8
  %18 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = ashr i32 %16, %19
  store i32 %20, i32* %11, align 4
  %21 = load %struct.chain_t*, %struct.chain_t** %7, align 8
  %22 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %12, align 4
  %24 = load %struct.chain_t*, %struct.chain_t** %7, align 8
  %25 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 3
  br i1 %27, label %28, label %32

28:                                               ; preds = %4
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %12, align 4
  %31 = add nsw i32 %30, %29
  store i32 %31, i32* %12, align 4
  br label %47

32:                                               ; preds = %4
  br label %33

33:                                               ; preds = %43, %32
  %34 = load i32, i32* %11, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %33
  %37 = load %struct.super_block*, %struct.super_block** %6, align 8
  %38 = load i32, i32* %12, align 4
  %39 = call i32 @FAT_read(%struct.super_block* %37, i32 %38, i32* %12)
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* @FFS_MEDIAERR, align 4
  store i32 %42, i32* %5, align 4
  br label %55

43:                                               ; preds = %36
  %44 = load i32, i32* %11, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %11, align 4
  br label %33

46:                                               ; preds = %33
  br label %47

47:                                               ; preds = %46, %28
  %48 = load i32*, i32** %9, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i32, i32* %12, align 4
  %52 = load i32*, i32** %9, align 8
  store i32 %51, i32* %52, align 4
  br label %53

53:                                               ; preds = %50, %47
  %54 = load i32, i32* @FFS_SUCCESS, align 4
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %53, %41
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local %struct.TYPE_2__* @EXFAT_SB(%struct.super_block*) #1

declare dso_local i32 @FAT_read(%struct.super_block*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
