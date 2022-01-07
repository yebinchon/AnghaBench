; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_debug_fs.c_print_format2_lock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_debug_fs.c_print_format2_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.dlm_lkb = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.dlm_rsb = type { i32, i32, i32 }

@DLM_IFL_USER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"%x %d %x %u %llu %x %x %d %d %d %llu %u %d \22%s\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.dlm_lkb*, %struct.dlm_rsb*)* @print_format2_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_format2_lock(%struct.seq_file* %0, %struct.dlm_lkb* %1, %struct.dlm_rsb* %2) #0 {
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca %struct.dlm_lkb*, align 8
  %6 = alloca %struct.dlm_rsb*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store %struct.dlm_lkb* %1, %struct.dlm_lkb** %5, align 8
  store %struct.dlm_rsb* %2, %struct.dlm_rsb** %6, align 8
  store i64 0, i64* %7, align 8
  %9 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %10 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @DLM_IFL_USER, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %3
  %16 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %17 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %16, i32 0, i32 10
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = icmp ne %struct.TYPE_2__* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %22 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %21, i32 0, i32 10
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %7, align 8
  br label %26

26:                                               ; preds = %20, %15
  br label %27

27:                                               ; preds = %26, %3
  %28 = call i32 (...) @ktime_get()
  %29 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %30 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %29, i32 0, i32 9
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ktime_sub(i32 %28, i32 %31)
  %33 = call i64 @ktime_to_us(i32 %32)
  store i64 %33, i64* %8, align 8
  %34 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %35 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %36 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %35, i32 0, i32 8
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %39 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %38, i32 0, i32 7
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %42 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %45 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 4
  %47 = load i64, i64* %7, align 8
  %48 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %49 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %52 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %55 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %58 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %61 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i64, i64* %8, align 8
  %64 = load %struct.dlm_rsb*, %struct.dlm_rsb** %6, align 8
  %65 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.dlm_rsb*, %struct.dlm_rsb** %6, align 8
  %68 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.dlm_rsb*, %struct.dlm_rsb** %6, align 8
  %71 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @seq_printf(%struct.seq_file* %34, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %40, i32 %43, i32 %46, i64 %47, i32 %50, i32 %53, i32 %56, i32 %59, i32 %62, i64 %63, i32 %66, i32 %69, i32 %72)
  ret void
}

declare dso_local i64 @ktime_to_us(i32) #1

declare dso_local i32 @ktime_sub(i32, i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
