; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_tty_audit.c_tty_audit_buf_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_tty_audit.c_tty_audit_buf_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.tty_audit_buf = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"out of memory in TTY auditing\00", align 1
@current = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tty_audit_buf* ()* @tty_audit_buf_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tty_audit_buf* @tty_audit_buf_get() #0 {
  %1 = alloca %struct.tty_audit_buf*, align 8
  %2 = alloca %struct.tty_audit_buf*, align 8
  %3 = call %struct.tty_audit_buf* (...) @tty_audit_buf_ref()
  store %struct.tty_audit_buf* %3, %struct.tty_audit_buf** %2, align 8
  %4 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %2, align 8
  %5 = icmp ne %struct.tty_audit_buf* %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %2, align 8
  store %struct.tty_audit_buf* %7, %struct.tty_audit_buf** %1, align 8
  br label %27

8:                                                ; preds = %0
  %9 = call %struct.tty_audit_buf* (...) @tty_audit_buf_alloc()
  store %struct.tty_audit_buf* %9, %struct.tty_audit_buf** %2, align 8
  %10 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %2, align 8
  %11 = icmp eq %struct.tty_audit_buf* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = call i32 @audit_log_lost(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store %struct.tty_audit_buf* null, %struct.tty_audit_buf** %1, align 8
  br label %27

14:                                               ; preds = %8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %2, align 8
  %20 = call i32* @cmpxchg(i32* %18, i32* null, %struct.tty_audit_buf* %19)
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %14
  %23 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %2, align 8
  %24 = call i32 @tty_audit_buf_free(%struct.tty_audit_buf* %23)
  br label %25

25:                                               ; preds = %22, %14
  %26 = call %struct.tty_audit_buf* (...) @tty_audit_buf_ref()
  store %struct.tty_audit_buf* %26, %struct.tty_audit_buf** %1, align 8
  br label %27

27:                                               ; preds = %25, %12, %6
  %28 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %1, align 8
  ret %struct.tty_audit_buf* %28
}

declare dso_local %struct.tty_audit_buf* @tty_audit_buf_ref(...) #1

declare dso_local %struct.tty_audit_buf* @tty_audit_buf_alloc(...) #1

declare dso_local i32 @audit_log_lost(i8*) #1

declare dso_local i32* @cmpxchg(i32*, i32*, %struct.tty_audit_buf*) #1

declare dso_local i32 @tty_audit_buf_free(%struct.tty_audit_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
