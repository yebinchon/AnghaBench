; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_tty_audit.c_tty_audit_push.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_tty_audit.c_tty_audit_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.tty_audit_buf = type { i32 }

@current = common dso_local global %struct.TYPE_4__* null, align 8
@AUDIT_TTY_ENABLE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tty_audit_push() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.tty_audit_buf*, align 8
  %3 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %4 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = xor i32 %7, -1
  %9 = load i32, i32* @AUDIT_TTY_ENABLE, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %0
  %13 = load i32, i32* @EPERM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %1, align 4
  br label %30

15:                                               ; preds = %0
  %16 = call %struct.tty_audit_buf* (...) @tty_audit_buf_ref()
  store %struct.tty_audit_buf* %16, %struct.tty_audit_buf** %2, align 8
  %17 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %2, align 8
  %18 = call i32 @IS_ERR_OR_NULL(%struct.tty_audit_buf* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %15
  %21 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %2, align 8
  %22 = getelementptr inbounds %struct.tty_audit_buf, %struct.tty_audit_buf* %21, i32 0, i32 0
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %2, align 8
  %25 = call i32 @tty_audit_buf_push(%struct.tty_audit_buf* %24)
  %26 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %2, align 8
  %27 = getelementptr inbounds %struct.tty_audit_buf, %struct.tty_audit_buf* %26, i32 0, i32 0
  %28 = call i32 @mutex_unlock(i32* %27)
  br label %29

29:                                               ; preds = %20, %15
  store i32 0, i32* %1, align 4
  br label %30

30:                                               ; preds = %29, %12
  %31 = load i32, i32* %1, align 4
  ret i32 %31
}

declare dso_local %struct.tty_audit_buf* @tty_audit_buf_ref(...) #1

declare dso_local i32 @IS_ERR_OR_NULL(%struct.tty_audit_buf*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @tty_audit_buf_push(%struct.tty_audit_buf*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
