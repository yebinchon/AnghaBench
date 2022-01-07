; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_super.c_exfat_make_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_super.c_exfat_make_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exfat_sb_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@ATTR_READONLY = common dso_local global i32 0, align 4
@ATTR_SUBDIR = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@ATTR_SYMLINK = common dso_local global i32 0, align 4
@S_IFLNK = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.exfat_sb_info*, i32, i32)* @exfat_make_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exfat_make_mode(%struct.exfat_sb_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.exfat_sb_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.exfat_sb_info* %0, %struct.exfat_sb_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @ATTR_READONLY, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @ATTR_SUBDIR, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = load i32, i32* %7, align 4
  %19 = and i32 %18, -147
  store i32 %19, i32* %7, align 4
  br label %20

20:                                               ; preds = %17, %12, %3
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @ATTR_SUBDIR, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %20
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.exfat_sb_info*, %struct.exfat_sb_info** %5, align 8
  %28 = getelementptr inbounds %struct.exfat_sb_info, %struct.exfat_sb_info* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = xor i32 %30, -1
  %32 = and i32 %26, %31
  %33 = load i32, i32* @S_IFDIR, align 4
  %34 = or i32 %32, %33
  store i32 %34, i32* %4, align 4
  br label %60

35:                                               ; preds = %20
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @ATTR_SYMLINK, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %35
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.exfat_sb_info*, %struct.exfat_sb_info** %5, align 8
  %43 = getelementptr inbounds %struct.exfat_sb_info, %struct.exfat_sb_info* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = xor i32 %45, -1
  %47 = and i32 %41, %46
  %48 = load i32, i32* @S_IFLNK, align 4
  %49 = or i32 %47, %48
  store i32 %49, i32* %4, align 4
  br label %60

50:                                               ; preds = %35
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.exfat_sb_info*, %struct.exfat_sb_info** %5, align 8
  %53 = getelementptr inbounds %struct.exfat_sb_info, %struct.exfat_sb_info* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = xor i32 %55, -1
  %57 = and i32 %51, %56
  %58 = load i32, i32* @S_IFREG, align 4
  %59 = or i32 %57, %58
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %50, %40, %25
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
