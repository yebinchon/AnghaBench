; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/amlogic/extr_meson-clk-measure.c_clk_msr_summary_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/amlogic/extr_meson-clk-measure.c_clk_msr_summary_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.meson_msr_id* }
%struct.meson_msr_id = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"  clock                     rate    precision\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"---------------------------------------------\0A\00", align 1
@CLK_MSR_MAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c" %-20s %10d    +/-%dHz\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @clk_msr_summary_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_msr_summary_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.meson_msr_id*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %11 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %10, i32 0, i32 0
  %12 = load %struct.meson_msr_id*, %struct.meson_msr_id** %11, align 8
  store %struct.meson_msr_id* %12, %struct.meson_msr_id** %6, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %14 = call i32 @seq_puts(%struct.seq_file* %13, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %16 = call i32 @seq_puts(%struct.seq_file* %15, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %17

17:                                               ; preds = %51, %2
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @CLK_MSR_MAX, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %54

21:                                               ; preds = %17
  %22 = load %struct.meson_msr_id*, %struct.meson_msr_id** %6, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.meson_msr_id, %struct.meson_msr_id* %22, i64 %24
  %26 = getelementptr inbounds %struct.meson_msr_id, %struct.meson_msr_id* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %21
  br label %51

30:                                               ; preds = %21
  %31 = load %struct.meson_msr_id*, %struct.meson_msr_id** %6, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.meson_msr_id, %struct.meson_msr_id* %31, i64 %33
  %35 = call i32 @meson_measure_best_id(%struct.meson_msr_id* %34, i32* %7)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %3, align 4
  br label %55

40:                                               ; preds = %30
  %41 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %42 = load %struct.meson_msr_id*, %struct.meson_msr_id** %6, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.meson_msr_id, %struct.meson_msr_id* %42, i64 %44
  %46 = getelementptr inbounds %struct.meson_msr_id, %struct.meson_msr_id* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @seq_printf(%struct.seq_file* %41, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %47, i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %40, %29
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %9, align 4
  br label %17

54:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %38
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @meson_measure_best_id(%struct.meson_msr_id*, i32*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
