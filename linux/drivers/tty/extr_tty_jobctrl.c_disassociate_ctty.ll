; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_tty_jobctrl.c_disassociate_ctty.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_tty_jobctrl.c_disassociate_ctty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, %struct.pid*, i32 }
%struct.pid = type { i32 }
%struct.tty_struct = type { i32, %struct.pid*, %struct.pid*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }

@current = common dso_local global %struct.TYPE_9__* null, align 8
@TTY_DRIVER_TYPE_PTY = common dso_local global i64 0, align 8
@SIGHUP = common dso_local global i32 0, align 4
@SIGCONT = common dso_local global i32 0, align 4
@tasklist_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @disassociate_ctty(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.pid*, align 8
  %5 = alloca %struct.pid*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %152

14:                                               ; preds = %1
  %15 = call %struct.tty_struct* (...) @get_current_tty()
  store %struct.tty_struct* %15, %struct.tty_struct** %3, align 8
  %16 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %17 = icmp ne %struct.tty_struct* %16, null
  br i1 %17, label %18, label %56

18:                                               ; preds = %14
  %19 = load i32, i32* %2, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %18
  %22 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %23 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %22, i32 0, i32 3
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @TTY_DRIVER_TYPE_PTY, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %21
  %30 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %31 = call i32 @tty_vhangup_session(%struct.tty_struct* %30)
  br label %53

32:                                               ; preds = %21, %18
  %33 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %34 = call %struct.pid* @tty_get_pgrp(%struct.tty_struct* %33)
  store %struct.pid* %34, %struct.pid** %4, align 8
  %35 = load %struct.pid*, %struct.pid** %4, align 8
  %36 = icmp ne %struct.pid* %35, null
  br i1 %36, label %37, label %52

37:                                               ; preds = %32
  %38 = load %struct.pid*, %struct.pid** %4, align 8
  %39 = load i32, i32* @SIGHUP, align 4
  %40 = load i32, i32* %2, align 4
  %41 = call i32 @kill_pgrp(%struct.pid* %38, i32 %39, i32 %40)
  %42 = load i32, i32* %2, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %37
  %45 = load %struct.pid*, %struct.pid** %4, align 8
  %46 = load i32, i32* @SIGCONT, align 4
  %47 = load i32, i32* %2, align 4
  %48 = call i32 @kill_pgrp(%struct.pid* %45, i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %44, %37
  %50 = load %struct.pid*, %struct.pid** %4, align 8
  %51 = call i32 @put_pid(%struct.pid* %50)
  br label %52

52:                                               ; preds = %49, %32
  br label %53

53:                                               ; preds = %52, %29
  %54 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %55 = call i32 @tty_kref_put(%struct.tty_struct* %54)
  br label %94

56:                                               ; preds = %14
  %57 = load i32, i32* %2, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %93

59:                                               ; preds = %56
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = call i32 @spin_lock_irq(i32* %63)
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  %69 = load %struct.pid*, %struct.pid** %68, align 8
  store %struct.pid* %69, %struct.pid** %5, align 8
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  store %struct.pid* null, %struct.pid** %73, align 8
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = call i32 @spin_unlock_irq(i32* %77)
  %79 = load %struct.pid*, %struct.pid** %5, align 8
  %80 = icmp ne %struct.pid* %79, null
  br i1 %80, label %81, label %92

81:                                               ; preds = %59
  %82 = load %struct.pid*, %struct.pid** %5, align 8
  %83 = load i32, i32* @SIGHUP, align 4
  %84 = load i32, i32* %2, align 4
  %85 = call i32 @kill_pgrp(%struct.pid* %82, i32 %83, i32 %84)
  %86 = load %struct.pid*, %struct.pid** %5, align 8
  %87 = load i32, i32* @SIGCONT, align 4
  %88 = load i32, i32* %2, align 4
  %89 = call i32 @kill_pgrp(%struct.pid* %86, i32 %87, i32 %88)
  %90 = load %struct.pid*, %struct.pid** %5, align 8
  %91 = call i32 @put_pid(%struct.pid* %90)
  br label %92

92:                                               ; preds = %81, %59
  br label %152

93:                                               ; preds = %56
  br label %94

94:                                               ; preds = %93, %53
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = call i32 @spin_lock_irq(i32* %98)
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 1
  %104 = load %struct.pid*, %struct.pid** %103, align 8
  %105 = call i32 @put_pid(%struct.pid* %104)
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 1
  store %struct.pid* null, %struct.pid** %109, align 8
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call %struct.tty_struct* @tty_kref_get(i32 %114)
  store %struct.tty_struct* %115, %struct.tty_struct** %3, align 8
  %116 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %117 = icmp ne %struct.tty_struct* %116, null
  br i1 %117, label %118, label %141

118:                                              ; preds = %94
  %119 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %120 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %119, i32 0, i32 0
  %121 = load i64, i64* %6, align 8
  %122 = call i32 @spin_lock_irqsave(i32* %120, i64 %121)
  %123 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %124 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %123, i32 0, i32 2
  %125 = load %struct.pid*, %struct.pid** %124, align 8
  %126 = call i32 @put_pid(%struct.pid* %125)
  %127 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %128 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %127, i32 0, i32 1
  %129 = load %struct.pid*, %struct.pid** %128, align 8
  %130 = call i32 @put_pid(%struct.pid* %129)
  %131 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %132 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %131, i32 0, i32 2
  store %struct.pid* null, %struct.pid** %132, align 8
  %133 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %134 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %133, i32 0, i32 1
  store %struct.pid* null, %struct.pid** %134, align 8
  %135 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %136 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %135, i32 0, i32 0
  %137 = load i64, i64* %6, align 8
  %138 = call i32 @spin_unlock_irqrestore(i32* %136, i64 %137)
  %139 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %140 = call i32 @tty_kref_put(%struct.tty_struct* %139)
  br label %141

141:                                              ; preds = %118, %94
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 0
  %146 = call i32 @spin_unlock_irq(i32* %145)
  %147 = call i32 @read_lock(i32* @tasklist_lock)
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %149 = call i32 @task_session(%struct.TYPE_9__* %148)
  %150 = call i32 @session_clear_tty(i32 %149)
  %151 = call i32 @read_unlock(i32* @tasklist_lock)
  br label %152

152:                                              ; preds = %141, %92, %13
  ret void
}

declare dso_local %struct.tty_struct* @get_current_tty(...) #1

declare dso_local i32 @tty_vhangup_session(%struct.tty_struct*) #1

declare dso_local %struct.pid* @tty_get_pgrp(%struct.tty_struct*) #1

declare dso_local i32 @kill_pgrp(%struct.pid*, i32, i32) #1

declare dso_local i32 @put_pid(%struct.pid*) #1

declare dso_local i32 @tty_kref_put(%struct.tty_struct*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local %struct.tty_struct* @tty_kref_get(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i32 @session_clear_tty(i32) #1

declare dso_local i32 @task_session(%struct.TYPE_9__*) #1

declare dso_local i32 @read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
