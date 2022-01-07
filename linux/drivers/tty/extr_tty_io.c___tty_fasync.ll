; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_tty_io.c___tty_fasync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_tty_io.c___tty_fasync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.tty_struct = type { i32, %struct.pid*, i32 }
%struct.pid = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"tty_fasync\00", align 1
@PIDTYPE_PGID = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@PIDTYPE_TGID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.file*, i32)* @__tty_fasync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__tty_fasync(i32 %0, %struct.file* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tty_struct*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.pid*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.file* %1, %struct.file** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.file*, %struct.file** %5, align 8
  %13 = call %struct.tty_struct* @file_tty(%struct.file* %12)
  store %struct.tty_struct* %13, %struct.tty_struct** %7, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.tty_struct*, %struct.tty_struct** %7, align 8
  %15 = load %struct.file*, %struct.file** %5, align 8
  %16 = call i32 @file_inode(%struct.file* %15)
  %17 = call i64 @tty_paranoia_check(%struct.tty_struct* %14, i32 %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %65

20:                                               ; preds = %3
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.file*, %struct.file** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.tty_struct*, %struct.tty_struct** %7, align 8
  %25 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %24, i32 0, i32 2
  %26 = call i32 @fasync_helper(i32 %21, %struct.file* %22, i32 %23, i32* %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp sle i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  br label %65

30:                                               ; preds = %20
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %64

33:                                               ; preds = %30
  %34 = load %struct.tty_struct*, %struct.tty_struct** %7, align 8
  %35 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %34, i32 0, i32 0
  %36 = load i64, i64* %8, align 8
  %37 = call i32 @spin_lock_irqsave(i32* %35, i64 %36)
  %38 = load %struct.tty_struct*, %struct.tty_struct** %7, align 8
  %39 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %38, i32 0, i32 1
  %40 = load %struct.pid*, %struct.pid** %39, align 8
  %41 = icmp ne %struct.pid* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %33
  %43 = load %struct.tty_struct*, %struct.tty_struct** %7, align 8
  %44 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %43, i32 0, i32 1
  %45 = load %struct.pid*, %struct.pid** %44, align 8
  store %struct.pid* %45, %struct.pid** %11, align 8
  %46 = load i32, i32* @PIDTYPE_PGID, align 4
  store i32 %46, i32* %10, align 4
  br label %51

47:                                               ; preds = %33
  %48 = load i32, i32* @current, align 4
  %49 = call %struct.pid* @task_pid(i32 %48)
  store %struct.pid* %49, %struct.pid** %11, align 8
  %50 = load i32, i32* @PIDTYPE_TGID, align 4
  store i32 %50, i32* %10, align 4
  br label %51

51:                                               ; preds = %47, %42
  %52 = load %struct.pid*, %struct.pid** %11, align 8
  %53 = call i32 @get_pid(%struct.pid* %52)
  %54 = load %struct.tty_struct*, %struct.tty_struct** %7, align 8
  %55 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %54, i32 0, i32 0
  %56 = load i64, i64* %8, align 8
  %57 = call i32 @spin_unlock_irqrestore(i32* %55, i64 %56)
  %58 = load %struct.file*, %struct.file** %5, align 8
  %59 = load %struct.pid*, %struct.pid** %11, align 8
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @__f_setown(%struct.file* %58, %struct.pid* %59, i32 %60, i32 0)
  %62 = load %struct.pid*, %struct.pid** %11, align 8
  %63 = call i32 @put_pid(%struct.pid* %62)
  store i32 0, i32* %9, align 4
  br label %64

64:                                               ; preds = %51, %30
  br label %65

65:                                               ; preds = %64, %29, %19
  %66 = load i32, i32* %9, align 4
  ret i32 %66
}

declare dso_local %struct.tty_struct* @file_tty(%struct.file*) #1

declare dso_local i64 @tty_paranoia_check(%struct.tty_struct*, i32, i8*) #1

declare dso_local i32 @file_inode(%struct.file*) #1

declare dso_local i32 @fasync_helper(i32, %struct.file*, i32, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.pid* @task_pid(i32) #1

declare dso_local i32 @get_pid(%struct.pid*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @__f_setown(%struct.file*, %struct.pid*, i32, i32) #1

declare dso_local i32 @put_pid(%struct.pid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
