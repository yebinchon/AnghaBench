; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_super.c_exfat_sanitize_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_super.c_exfat_sanitize_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exfat_sb_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.inode = type { i32 }

@S_IFMT = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.exfat_sb_info*, %struct.inode*, i32*)* @exfat_sanitize_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exfat_sanitize_mode(%struct.exfat_sb_info* %0, %struct.inode* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.exfat_sb_info*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.exfat_sb_info* %0, %struct.exfat_sb_info** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.inode*, %struct.inode** %6, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = call i64 @S_ISREG(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* %8, align 4
  %19 = call i64 @S_ISLNK(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %17, %3
  %22 = load %struct.exfat_sb_info*, %struct.exfat_sb_info** %5, align 8
  %23 = getelementptr inbounds %struct.exfat_sb_info, %struct.exfat_sb_info* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %9, align 4
  br label %31

26:                                               ; preds = %17
  %27 = load %struct.exfat_sb_info*, %struct.exfat_sb_info** %5, align 8
  %28 = getelementptr inbounds %struct.exfat_sb_info, %struct.exfat_sb_info* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %9, align 4
  br label %31

31:                                               ; preds = %26, %21
  %32 = load i32*, i32** %7, align 8
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @S_IFMT, align 4
  %35 = load i32, i32* %9, align 4
  %36 = or i32 %34, %35
  %37 = xor i32 %36, -1
  %38 = and i32 %33, %37
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = and i32 %39, 365
  %41 = load i32, i32* %8, align 4
  %42 = and i32 %41, 365
  %43 = icmp ne i32 %40, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %31
  %45 = load i32, i32* @EPERM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %84

47:                                               ; preds = %31
  %48 = load %struct.inode*, %struct.inode** %6, align 8
  %49 = call i64 @exfat_mode_can_hold_ro(%struct.inode* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %66

51:                                               ; preds = %47
  %52 = load i32, i32* %10, align 4
  %53 = and i32 %52, 146
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %51
  %56 = load i32, i32* %10, align 4
  %57 = and i32 %56, 146
  %58 = load i32, i32* %9, align 4
  %59 = xor i32 %58, -1
  %60 = and i32 146, %59
  %61 = icmp ne i32 %57, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %55
  %63 = load i32, i32* @EPERM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %84

65:                                               ; preds = %55, %51
  br label %77

66:                                               ; preds = %47
  %67 = load i32, i32* %10, align 4
  %68 = and i32 %67, 146
  %69 = load i32, i32* %9, align 4
  %70 = xor i32 %69, -1
  %71 = and i32 146, %70
  %72 = icmp ne i32 %68, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %66
  %74 = load i32, i32* @EPERM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %4, align 4
  br label %84

76:                                               ; preds = %66
  br label %77

77:                                               ; preds = %76, %65
  %78 = load i32, i32* @S_IFMT, align 4
  %79 = load i32, i32* %10, align 4
  %80 = or i32 %78, %79
  %81 = load i32*, i32** %7, align 8
  %82 = load i32, i32* %81, align 4
  %83 = and i32 %82, %80
  store i32 %83, i32* %81, align 4
  store i32 0, i32* %4, align 4
  br label %84

84:                                               ; preds = %77, %73, %62, %44
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i64 @exfat_mode_can_hold_ro(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
