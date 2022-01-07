; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_debug_fs.c_print_format1_lock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_debug_fs.c_print_format1_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.dlm_lkb = type { i64, i64, i64, i64, i32, i32, i32 }
%struct.dlm_rsb = type { i64 }

@.str = private unnamed_addr constant [8 x i8] c"%08x %s\00", align 1
@DLM_LKSTS_CONVERT = common dso_local global i64 0, align 8
@DLM_LKSTS_WAITING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c" (%s)\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c" Remote: %3d %08x\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c" Master:     %08x\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c" wait_type: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.dlm_lkb*, %struct.dlm_rsb*)* @print_format1_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_format1_lock(%struct.seq_file* %0, %struct.dlm_lkb* %1, %struct.dlm_rsb* %2) #0 {
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca %struct.dlm_lkb*, align 8
  %6 = alloca %struct.dlm_rsb*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store %struct.dlm_lkb* %1, %struct.dlm_lkb** %5, align 8
  store %struct.dlm_rsb* %2, %struct.dlm_rsb** %6, align 8
  %7 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %8 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %9 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %8, i32 0, i32 6
  %10 = load i32, i32* %9, align 8
  %11 = sext i32 %10 to i64
  %12 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %13 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @print_lockmode(i32 %14)
  %16 = call i32 (%struct.seq_file*, i8*, i64, ...) @seq_printf(%struct.seq_file* %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %11, i64 %15)
  %17 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %18 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @DLM_LKSTS_CONVERT, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %3
  %23 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %24 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @DLM_LKSTS_WAITING, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %22, %3
  %29 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %30 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %31 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @print_lockmode(i32 %32)
  %34 = call i32 (%struct.seq_file*, i8*, i64, ...) @seq_printf(%struct.seq_file* %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 %33)
  br label %35

35:                                               ; preds = %28, %22
  %36 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %37 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %64

40:                                               ; preds = %35
  %41 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %42 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.dlm_rsb*, %struct.dlm_rsb** %6, align 8
  %45 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %43, %46
  br i1 %47, label %48, label %57

48:                                               ; preds = %40
  %49 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %50 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %51 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %54 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = call i32 (%struct.seq_file*, i8*, i64, ...) @seq_printf(%struct.seq_file* %49, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i64 %52, i64 %55)
  br label %63

57:                                               ; preds = %40
  %58 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %59 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %60 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = call i32 (%struct.seq_file*, i8*, i64, ...) @seq_printf(%struct.seq_file* %58, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i64 %61)
  br label %63

63:                                               ; preds = %57, %48
  br label %64

64:                                               ; preds = %63, %35
  %65 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %66 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %64
  %70 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %71 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %72 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = call i32 (%struct.seq_file*, i8*, i64, ...) @seq_printf(%struct.seq_file* %70, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i64 %73)
  br label %75

75:                                               ; preds = %69, %64
  %76 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %77 = call i32 @seq_putc(%struct.seq_file* %76, i8 signext 10)
  ret void
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i64, ...) #1

declare dso_local i64 @print_lockmode(i32) #1

declare dso_local i32 @seq_putc(%struct.seq_file*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
