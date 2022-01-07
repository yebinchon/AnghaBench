; ModuleID = '/home/carl/AnghaBench/linux/drivers/ras/extr_cec.c_array_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ras/extr_cec.c_array_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ce_array = type { i32, i32, i32, i32, i32, i32* }
%struct.seq_file = type { i32 }

@ce_arr = common dso_local global %struct.ce_array zeroinitializer, align 8
@ce_mutex = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"{ n: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c" %3d: [%016llx|%s|%03llx]\0A\00", align 1
@bins = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Stats:\0ACEs: %llu\0Aofflined pages: %llu\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"Flags: 0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Decay interval: %lld seconds\0A\00", align 1
@decay_interval = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"Decays: %lld\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"Action threshold: %lld\0A\00", align 1
@action_threshold = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @array_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @array_dump(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ce_array*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  store %struct.ce_array* @ce_arr, %struct.ce_array** %5, align 8
  %8 = call i32 @mutex_lock(i32* @ce_mutex)
  %9 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %10 = load %struct.ce_array*, %struct.ce_array** %5, align 8
  %11 = getelementptr inbounds %struct.ce_array, %struct.ce_array* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %12)
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %52, %2
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.ce_array*, %struct.ce_array** %5, align 8
  %17 = getelementptr inbounds %struct.ce_array, %struct.ce_array* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %55

20:                                               ; preds = %14
  %21 = load %struct.ce_array*, %struct.ce_array** %5, align 8
  %22 = getelementptr inbounds %struct.ce_array, %struct.ce_array* %21, i32 0, i32 5
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @PFN(i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32*, i32** @bins, align 8
  %33 = load %struct.ce_array*, %struct.ce_array** %5, align 8
  %34 = getelementptr inbounds %struct.ce_array, %struct.ce_array* %33, i32 0, i32 5
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @DECAY(i32 %39)
  %41 = getelementptr inbounds i32, i32* %32, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ce_array*, %struct.ce_array** %5, align 8
  %44 = getelementptr inbounds %struct.ce_array, %struct.ce_array* %43, i32 0, i32 5
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @COUNT(i32 %49)
  %51 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %29, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %30, i32 %31, i32 %42, i32 %50)
  br label %52

52:                                               ; preds = %20
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  br label %14

55:                                               ; preds = %14
  %56 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %57 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %56, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %58 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %59 = load %struct.ce_array*, %struct.ce_array** %5, align 8
  %60 = getelementptr inbounds %struct.ce_array, %struct.ce_array* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.ce_array*, %struct.ce_array** %5, align 8
  %63 = getelementptr inbounds %struct.ce_array, %struct.ce_array* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %58, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %61, i32 %64)
  %66 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %67 = load %struct.ce_array*, %struct.ce_array** %5, align 8
  %68 = getelementptr inbounds %struct.ce_array, %struct.ce_array* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %66, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %69)
  %71 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %72 = load i32, i32* @decay_interval, align 4
  %73 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %71, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %72)
  %74 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %75 = load %struct.ce_array*, %struct.ce_array** %5, align 8
  %76 = getelementptr inbounds %struct.ce_array, %struct.ce_array* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %74, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %77)
  %79 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %80 = load i32, i32* @action_threshold, align 4
  %81 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %79, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 %80)
  %82 = call i32 @mutex_unlock(i32* @ce_mutex)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local i32 @PFN(i32) #1

declare dso_local i64 @DECAY(i32) #1

declare dso_local i32 @COUNT(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
