; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sm501fb.c_sm501_init_cursor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sm501fb.c_sm501_init_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_3__, %struct.sm501fb_par* }
%struct.TYPE_3__ = type { i32 }
%struct.sm501fb_par = type { i64, %struct.TYPE_4__, %struct.sm501fb_info* }
%struct.TYPE_4__ = type { i32 }
%struct.sm501fb_info = type { i64 }

@SM501_MEMF_CURSOR = common dso_local global i32 0, align 4
@SM501_OFF_HWC_ADDR = common dso_local global i64 0, align 8
@SM501_OFF_HWC_LOC = common dso_local global i64 0, align 8
@SM501_OFF_HWC_COLOR_1_2 = common dso_local global i64 0, align 8
@SM501_OFF_HWC_COLOR_3 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*, i32)* @sm501_init_cursor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sm501_init_cursor(%struct.fb_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sm501fb_par*, align 8
  %7 = alloca %struct.sm501fb_info*, align 8
  %8 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %10 = icmp eq %struct.fb_info* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %71

12:                                               ; preds = %2
  %13 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %14 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %13, i32 0, i32 1
  %15 = load %struct.sm501fb_par*, %struct.sm501fb_par** %14, align 8
  store %struct.sm501fb_par* %15, %struct.sm501fb_par** %6, align 8
  %16 = load %struct.sm501fb_par*, %struct.sm501fb_par** %6, align 8
  %17 = getelementptr inbounds %struct.sm501fb_par, %struct.sm501fb_par* %16, i32 0, i32 2
  %18 = load %struct.sm501fb_info*, %struct.sm501fb_info** %17, align 8
  store %struct.sm501fb_info* %18, %struct.sm501fb_info** %7, align 8
  %19 = load %struct.sm501fb_info*, %struct.sm501fb_info** %7, align 8
  %20 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = zext i32 %22 to i64
  %24 = add nsw i64 %21, %23
  %25 = load %struct.sm501fb_par*, %struct.sm501fb_par** %6, align 8
  %26 = getelementptr inbounds %struct.sm501fb_par, %struct.sm501fb_par* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load %struct.sm501fb_info*, %struct.sm501fb_info** %7, align 8
  %28 = load %struct.sm501fb_par*, %struct.sm501fb_par** %6, align 8
  %29 = getelementptr inbounds %struct.sm501fb_par, %struct.sm501fb_par* %28, i32 0, i32 1
  %30 = load i32, i32* @SM501_MEMF_CURSOR, align 4
  %31 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %32 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @sm501_alloc_mem(%struct.sm501fb_info* %27, %struct.TYPE_4__* %29, i32 %30, i32 1024, i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %12
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %3, align 4
  br label %71

40:                                               ; preds = %12
  %41 = load %struct.sm501fb_par*, %struct.sm501fb_par** %6, align 8
  %42 = getelementptr inbounds %struct.sm501fb_par, %struct.sm501fb_par* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.sm501fb_par*, %struct.sm501fb_par** %6, align 8
  %46 = getelementptr inbounds %struct.sm501fb_par, %struct.sm501fb_par* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @SM501_OFF_HWC_ADDR, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @smc501_writel(i32 %44, i64 %49)
  %51 = load %struct.sm501fb_par*, %struct.sm501fb_par** %6, align 8
  %52 = getelementptr inbounds %struct.sm501fb_par, %struct.sm501fb_par* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @SM501_OFF_HWC_LOC, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @smc501_writel(i32 0, i64 %55)
  %57 = load %struct.sm501fb_par*, %struct.sm501fb_par** %6, align 8
  %58 = getelementptr inbounds %struct.sm501fb_par, %struct.sm501fb_par* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @SM501_OFF_HWC_COLOR_1_2, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @smc501_writel(i32 0, i64 %61)
  %63 = load %struct.sm501fb_par*, %struct.sm501fb_par** %6, align 8
  %64 = getelementptr inbounds %struct.sm501fb_par, %struct.sm501fb_par* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @SM501_OFF_HWC_COLOR_3, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i32 @smc501_writel(i32 0, i64 %67)
  %69 = load %struct.sm501fb_info*, %struct.sm501fb_info** %7, align 8
  %70 = call i32 @sm501fb_sync_regs(%struct.sm501fb_info* %69)
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %40, %38, %11
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @sm501_alloc_mem(%struct.sm501fb_info*, %struct.TYPE_4__*, i32, i32, i32) #1

declare dso_local i32 @smc501_writel(i32, i64) #1

declare dso_local i32 @sm501fb_sync_regs(%struct.sm501fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
