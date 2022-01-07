; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/mmp/hw/extr_mmp_ctrl.h_path_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/mmp/hw/extr_mmp_ctrl.h_path_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lcd_regs = type { i32 }
%struct.mmp_path = type { i64, i32 }

@PATH_PN = common dso_local global i64 0, align 8
@PATH_TV = common dso_local global i64 0, align 8
@PATH_P2 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"path id %d invalid\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.lcd_regs* (%struct.mmp_path*)* @path_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.lcd_regs* @path_regs(%struct.mmp_path* %0) #0 {
  %2 = alloca %struct.lcd_regs*, align 8
  %3 = alloca %struct.mmp_path*, align 8
  store %struct.mmp_path* %0, %struct.mmp_path** %3, align 8
  %4 = load %struct.mmp_path*, %struct.mmp_path** %3, align 8
  %5 = getelementptr inbounds %struct.mmp_path, %struct.mmp_path* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @PATH_PN, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.mmp_path*, %struct.mmp_path** %3, align 8
  %11 = call i64 @ctrl_regs(%struct.mmp_path* %10)
  %12 = add nsw i64 %11, 192
  %13 = inttoptr i64 %12 to %struct.lcd_regs*
  store %struct.lcd_regs* %13, %struct.lcd_regs** %2, align 8
  br label %44

14:                                               ; preds = %1
  %15 = load %struct.mmp_path*, %struct.mmp_path** %3, align 8
  %16 = getelementptr inbounds %struct.mmp_path, %struct.mmp_path* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @PATH_TV, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load %struct.mmp_path*, %struct.mmp_path** %3, align 8
  %22 = call i64 @ctrl_regs(%struct.mmp_path* %21)
  %23 = inttoptr i64 %22 to %struct.lcd_regs*
  store %struct.lcd_regs* %23, %struct.lcd_regs** %2, align 8
  br label %44

24:                                               ; preds = %14
  %25 = load %struct.mmp_path*, %struct.mmp_path** %3, align 8
  %26 = getelementptr inbounds %struct.mmp_path, %struct.mmp_path* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @PATH_P2, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %24
  %31 = load %struct.mmp_path*, %struct.mmp_path** %3, align 8
  %32 = call i64 @ctrl_regs(%struct.mmp_path* %31)
  %33 = add nsw i64 %32, 512
  %34 = inttoptr i64 %33 to %struct.lcd_regs*
  store %struct.lcd_regs* %34, %struct.lcd_regs** %2, align 8
  br label %44

35:                                               ; preds = %24
  %36 = load %struct.mmp_path*, %struct.mmp_path** %3, align 8
  %37 = getelementptr inbounds %struct.mmp_path, %struct.mmp_path* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.mmp_path*, %struct.mmp_path** %3, align 8
  %40 = getelementptr inbounds %struct.mmp_path, %struct.mmp_path* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @dev_err(i32 %38, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %41)
  %43 = call i32 @BUG_ON(i32 1)
  store %struct.lcd_regs* null, %struct.lcd_regs** %2, align 8
  br label %44

44:                                               ; preds = %35, %30, %20, %9
  %45 = load %struct.lcd_regs*, %struct.lcd_regs** %2, align 8
  ret %struct.lcd_regs* %45
}

declare dso_local i64 @ctrl_regs(%struct.mmp_path*) #1

declare dso_local i32 @dev_err(i32, i8*, i64) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
