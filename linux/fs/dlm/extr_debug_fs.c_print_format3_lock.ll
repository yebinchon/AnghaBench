; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_debug_fs.c_print_format3_lock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_debug_fs.c_print_format3_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.dlm_lkb = type { i32, i32, i32, i32, i32, %struct.TYPE_4__, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@DLM_IFL_USER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"lkb %x %d %x %u %llu %x %x %d %d %d %d %d %d %u %llu %llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.dlm_lkb*, i32)* @print_format3_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_format3_lock(%struct.seq_file* %0, %struct.dlm_lkb* %1, i32 %2) #0 {
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca %struct.dlm_lkb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store %struct.dlm_lkb* %1, %struct.dlm_lkb** %5, align 8
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %7, align 8
  %8 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %9 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @DLM_IFL_USER, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %3
  %15 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %16 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %15, i32 0, i32 14
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = icmp ne %struct.TYPE_3__* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %21 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %20, i32 0, i32 14
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %7, align 8
  br label %25

25:                                               ; preds = %19, %14
  br label %26

26:                                               ; preds = %25, %3
  %27 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %28 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %29 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %28, i32 0, i32 13
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %32 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %31, i32 0, i32 12
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %35 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %34, i32 0, i32 11
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %38 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %37, i32 0, i32 10
  %39 = load i32, i32* %38, align 8
  %40 = load i64, i64* %7, align 8
  %41 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %42 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %41, i32 0, i32 9
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %45 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %48 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %47, i32 0, i32 8
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %51 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %50, i32 0, i32 7
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %54 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %53, i32 0, i32 6
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %57 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %56, i32 0, i32 5
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %62 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %65 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %68 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = call i64 @ktime_to_ns(i32 %69)
  %71 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %72 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @ktime_to_ns(i32 %73)
  %75 = call i32 @seq_printf(%struct.seq_file* %27, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %33, i32 %36, i32 %39, i64 %40, i32 %43, i32 %46, i32 %49, i32 %52, i32 %55, i32 %59, i32 %60, i32 %63, i32 %66, i64 %70, i64 %74)
  ret void
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64) #1

declare dso_local i64 @ktime_to_ns(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
