; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mvsas/extr_mv_64xx.c_mvs_64xx_spi_buildcmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mvsas/extr_mv_64xx.c_mvs_64xx_spi_buildcmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvs_info = type { i32 }

@MV_MAX_U32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mvs_info*, i32*, i64, i64, i64, i32)* @mvs_64xx_spi_buildcmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvs_64xx_spi_buildcmd(%struct.mvs_info* %0, i32* %1, i64 %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca %struct.mvs_info*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mvs_info* %0, %struct.mvs_info** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 %5, i32* %12, align 4
  %14 = load i64, i64* %9, align 8
  %15 = trunc i64 %14 to i32
  %16 = shl i32 %15, 24
  %17 = load i64, i64* %11, align 8
  %18 = trunc i64 %17 to i32
  %19 = shl i32 %18, 19
  %20 = or i32 %16, %19
  store i32 %20, i32* %13, align 4
  %21 = load i64, i64* %10, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %6
  %24 = load i32, i32* %13, align 4
  %25 = or i32 %24, 8388608
  store i32 %25, i32* %13, align 4
  br label %26

26:                                               ; preds = %23, %6
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* @MV_MAX_U32, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %26
  %31 = load i32, i32* %13, align 4
  %32 = or i32 %31, 4194304
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %12, align 4
  %34 = and i32 %33, 262143
  %35 = load i32, i32* %13, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %13, align 4
  br label %37

37:                                               ; preds = %30, %26
  %38 = load i32, i32* %13, align 4
  %39 = load i32*, i32** %8, align 8
  store i32 %38, i32* %39, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
