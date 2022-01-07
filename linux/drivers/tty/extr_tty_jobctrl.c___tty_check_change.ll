; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_tty_jobctrl.c___tty_check_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_tty_jobctrl.c___tty_check_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.tty_struct* }
%struct.tty_struct = type { i32, %struct.pid* }
%struct.pid = type { i32 }

@current = common dso_local global %struct.TYPE_5__* null, align 8
@SIGTTIN = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@TIF_SIGPENDING = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"sig=%d, tty->pgrp == NULL!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__tty_check_change(%struct.tty_struct* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.pid*, align 8
  %8 = alloca %struct.pid*, align 8
  %9 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.tty_struct*, %struct.tty_struct** %13, align 8
  %15 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %16 = icmp ne %struct.tty_struct* %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %77

18:                                               ; preds = %2
  %19 = call i32 (...) @rcu_read_lock()
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %21 = call %struct.pid* @task_pgrp(%struct.TYPE_5__* %20)
  store %struct.pid* %21, %struct.pid** %7, align 8
  %22 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %23 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %22, i32 0, i32 0
  %24 = load i64, i64* %6, align 8
  %25 = call i32 @spin_lock_irqsave(i32* %23, i64 %24)
  %26 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %27 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %26, i32 0, i32 1
  %28 = load %struct.pid*, %struct.pid** %27, align 8
  store %struct.pid* %28, %struct.pid** %8, align 8
  %29 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %30 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %29, i32 0, i32 0
  %31 = load i64, i64* %6, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* %30, i64 %31)
  %33 = load %struct.pid*, %struct.pid** %8, align 8
  %34 = icmp ne %struct.pid* %33, null
  br i1 %34, label %35, label %67

35:                                               ; preds = %18
  %36 = load %struct.pid*, %struct.pid** %7, align 8
  %37 = load %struct.pid*, %struct.pid** %8, align 8
  %38 = icmp ne %struct.pid* %36, %37
  br i1 %38, label %39, label %67

39:                                               ; preds = %35
  %40 = load i32, i32* %5, align 4
  %41 = call i64 @is_ignored(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %39
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @SIGTTIN, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i32, i32* @EIO, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %9, align 4
  br label %50

50:                                               ; preds = %47, %43
  br label %66

51:                                               ; preds = %39
  %52 = call i64 (...) @is_current_pgrp_orphaned()
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i32, i32* @EIO, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %9, align 4
  br label %65

57:                                               ; preds = %51
  %58 = load %struct.pid*, %struct.pid** %7, align 8
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @kill_pgrp(%struct.pid* %58, i32 %59, i32 1)
  %61 = load i32, i32* @TIF_SIGPENDING, align 4
  %62 = call i32 @set_thread_flag(i32 %61)
  %63 = load i32, i32* @ERESTARTSYS, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %9, align 4
  br label %65

65:                                               ; preds = %57, %54
  br label %66

66:                                               ; preds = %65, %50
  br label %67

67:                                               ; preds = %66, %35, %18
  %68 = call i32 (...) @rcu_read_unlock()
  %69 = load %struct.pid*, %struct.pid** %8, align 8
  %70 = icmp ne %struct.pid* %69, null
  br i1 %70, label %75, label %71

71:                                               ; preds = %67
  %72 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @tty_warn(%struct.tty_struct* %72, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %73)
  br label %75

75:                                               ; preds = %71, %67
  %76 = load i32, i32* %9, align 4
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %75, %17
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.pid* @task_pgrp(%struct.TYPE_5__*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @is_ignored(i32) #1

declare dso_local i64 @is_current_pgrp_orphaned(...) #1

declare dso_local i32 @kill_pgrp(%struct.pid*, i32, i32) #1

declare dso_local i32 @set_thread_flag(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @tty_warn(%struct.tty_struct*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
