; ModuleID = '/home/carl/AnghaBench/linux/drivers/sh/intc/extr_virq-debugfs.c_intc_irq_xlate_debug.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/sh/intc/extr_virq-debugfs.c_intc_irq_xlate_debug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.intc_map_entry = type { i32, %struct.intc_desc_int* }
%struct.intc_desc_int = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"%-5s  %-7s  %-15s\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"irq\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"enum\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"chip name\00", align 1
@nr_irqs = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"%5d  \00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"0x%05x  \00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"%-15s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @intc_irq_xlate_debug to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intc_irq_xlate_debug(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.intc_map_entry*, align 8
  %7 = alloca %struct.intc_desc_int*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %9 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %10

10:                                               ; preds = %38, %2
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @nr_irqs, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %41

14:                                               ; preds = %10
  %15 = load i32, i32* %5, align 4
  %16 = call %struct.intc_map_entry* @intc_irq_xlate_get(i32 %15)
  store %struct.intc_map_entry* %16, %struct.intc_map_entry** %6, align 8
  %17 = load %struct.intc_map_entry*, %struct.intc_map_entry** %6, align 8
  %18 = getelementptr inbounds %struct.intc_map_entry, %struct.intc_map_entry* %17, i32 0, i32 1
  %19 = load %struct.intc_desc_int*, %struct.intc_desc_int** %18, align 8
  store %struct.intc_desc_int* %19, %struct.intc_desc_int** %7, align 8
  %20 = load %struct.intc_desc_int*, %struct.intc_desc_int** %7, align 8
  %21 = icmp ne %struct.intc_desc_int* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %14
  br label %38

23:                                               ; preds = %14
  %24 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %25)
  %27 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %28 = load %struct.intc_map_entry*, %struct.intc_map_entry** %6, align 8
  %29 = getelementptr inbounds %struct.intc_map_entry, %struct.intc_map_entry* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %30)
  %32 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %33 = load %struct.intc_desc_int*, %struct.intc_desc_int** %7, align 8
  %34 = getelementptr inbounds %struct.intc_desc_int, %struct.intc_desc_int* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %23, %22
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %10

41:                                               ; preds = %10
  ret i32 0
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local %struct.intc_map_entry* @intc_irq_xlate_get(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
