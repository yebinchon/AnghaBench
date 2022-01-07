; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_plock.c_dlm_plock_callback.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_plock.c_dlm_plock_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.plock_op = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i64 }
%struct.file = type { i32 }
%struct.file_lock = type { i32 }
%struct.plock_xop = type { i32 (%struct.file_lock*, i32)*, %struct.file_lock*, %struct.file_lock, %struct.file* }

@ops_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"dlm_plock_callback: op on list %llx\00", align 1
@FL_SLEEP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"dlm_plock_callback: vfs lock error %llx file %p fl %p\00", align 1
@.str.2 = private unnamed_addr constant [76 x i8] c"dlm_plock_callback: lock granted after lock request failed; dangling lock!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.plock_op*)* @dlm_plock_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dlm_plock_callback(%struct.plock_op* %0) #0 {
  %2 = alloca %struct.plock_op*, align 8
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.file_lock*, align 8
  %5 = alloca %struct.file_lock*, align 8
  %6 = alloca i32 (%struct.file_lock*, i32)*, align 8
  %7 = alloca %struct.plock_xop*, align 8
  %8 = alloca i32, align 4
  store %struct.plock_op* %0, %struct.plock_op** %2, align 8
  store i32 (%struct.file_lock*, i32)* null, i32 (%struct.file_lock*, i32)** %6, align 8
  %9 = load %struct.plock_op*, %struct.plock_op** %2, align 8
  %10 = bitcast %struct.plock_op* %9 to %struct.plock_xop*
  store %struct.plock_xop* %10, %struct.plock_xop** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = call i32 @spin_lock(i32* @ops_lock)
  %12 = load %struct.plock_op*, %struct.plock_op** %2, align 8
  %13 = getelementptr inbounds %struct.plock_op, %struct.plock_op* %12, i32 0, i32 1
  %14 = call i32 @list_empty(i32* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %1
  %17 = load %struct.plock_op*, %struct.plock_op** %2, align 8
  %18 = getelementptr inbounds %struct.plock_op, %struct.plock_op* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = call i32 (i8*, ...) @log_print(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %20)
  %22 = load %struct.plock_op*, %struct.plock_op** %2, align 8
  %23 = getelementptr inbounds %struct.plock_op, %struct.plock_op* %22, i32 0, i32 1
  %24 = call i32 @list_del(i32* %23)
  br label %25

25:                                               ; preds = %16, %1
  %26 = call i32 @spin_unlock(i32* @ops_lock)
  %27 = load %struct.plock_xop*, %struct.plock_xop** %7, align 8
  %28 = getelementptr inbounds %struct.plock_xop, %struct.plock_xop* %27, i32 0, i32 3
  %29 = load %struct.file*, %struct.file** %28, align 8
  store %struct.file* %29, %struct.file** %3, align 8
  %30 = load %struct.plock_xop*, %struct.plock_xop** %7, align 8
  %31 = getelementptr inbounds %struct.plock_xop, %struct.plock_xop* %30, i32 0, i32 2
  store %struct.file_lock* %31, %struct.file_lock** %5, align 8
  %32 = load %struct.plock_xop*, %struct.plock_xop** %7, align 8
  %33 = getelementptr inbounds %struct.plock_xop, %struct.plock_xop* %32, i32 0, i32 1
  %34 = load %struct.file_lock*, %struct.file_lock** %33, align 8
  store %struct.file_lock* %34, %struct.file_lock** %4, align 8
  %35 = load %struct.plock_xop*, %struct.plock_xop** %7, align 8
  %36 = getelementptr inbounds %struct.plock_xop, %struct.plock_xop* %35, i32 0, i32 0
  %37 = load i32 (%struct.file_lock*, i32)*, i32 (%struct.file_lock*, i32)** %36, align 8
  store i32 (%struct.file_lock*, i32)* %37, i32 (%struct.file_lock*, i32)** %6, align 8
  %38 = load %struct.plock_op*, %struct.plock_op** %2, align 8
  %39 = getelementptr inbounds %struct.plock_op, %struct.plock_op* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %25
  %44 = load i32 (%struct.file_lock*, i32)*, i32 (%struct.file_lock*, i32)** %6, align 8
  %45 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %46 = load %struct.plock_op*, %struct.plock_op** %2, align 8
  %47 = getelementptr inbounds %struct.plock_op, %struct.plock_op* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 %44(%struct.file_lock* %45, i32 %49)
  br label %79

51:                                               ; preds = %25
  %52 = load i32, i32* @FL_SLEEP, align 4
  %53 = xor i32 %52, -1
  %54 = load %struct.file_lock*, %struct.file_lock** %5, align 8
  %55 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, %53
  store i32 %57, i32* %55, align 4
  %58 = load %struct.file*, %struct.file** %3, align 8
  %59 = load %struct.file_lock*, %struct.file_lock** %5, align 8
  %60 = call i64 @posix_lock_file(%struct.file* %58, %struct.file_lock* %59, i32* null)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %51
  %63 = load %struct.plock_op*, %struct.plock_op** %2, align 8
  %64 = getelementptr inbounds %struct.plock_op, %struct.plock_op* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.file*, %struct.file** %3, align 8
  %68 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %69 = call i32 (i8*, ...) @log_print(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i64 %66, %struct.file* %67, %struct.file_lock* %68)
  br label %70

70:                                               ; preds = %62, %51
  %71 = load i32 (%struct.file_lock*, i32)*, i32 (%struct.file_lock*, i32)** %6, align 8
  %72 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %73 = call i32 %71(%struct.file_lock* %72, i32 0)
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %8, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  %77 = call i32 (i8*, ...) @log_print(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.2, i64 0, i64 0))
  br label %79

78:                                               ; preds = %70
  br label %79

79:                                               ; preds = %78, %76, %43
  %80 = load %struct.plock_xop*, %struct.plock_xop** %7, align 8
  %81 = call i32 @kfree(%struct.plock_xop* %80)
  %82 = load i32, i32* %8, align 4
  ret i32 %82
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @log_print(i8*, ...) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @posix_lock_file(%struct.file*, %struct.file_lock*, i32*) #1

declare dso_local i32 @kfree(%struct.plock_xop*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
