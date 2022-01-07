; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_tty_audit.c_tty_audit_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_tty_audit.c_tty_audit_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.tty_audit_buf = type { i32 }

@current = common dso_local global %struct.TYPE_4__* null, align 8
@ESRCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tty_audit_exit() #0 {
  %1 = alloca %struct.tty_audit_buf*, align 8
  %2 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %3 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load i32, i32* @ESRCH, align 4
  %7 = sub nsw i32 0, %6
  %8 = call i32 @ERR_PTR(i32 %7)
  %9 = call %struct.tty_audit_buf* @xchg(i32* %5, i32 %8)
  store %struct.tty_audit_buf* %9, %struct.tty_audit_buf** %1, align 8
  %10 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %1, align 8
  %11 = icmp ne %struct.tty_audit_buf* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %0
  br label %18

13:                                               ; preds = %0
  %14 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %1, align 8
  %15 = call i32 @tty_audit_buf_push(%struct.tty_audit_buf* %14)
  %16 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %1, align 8
  %17 = call i32 @tty_audit_buf_free(%struct.tty_audit_buf* %16)
  br label %18

18:                                               ; preds = %13, %12
  ret void
}

declare dso_local %struct.tty_audit_buf* @xchg(i32*, i32) #1

declare dso_local i32 @ERR_PTR(i32) #1

declare dso_local i32 @tty_audit_buf_push(%struct.tty_audit_buf*) #1

declare dso_local i32 @tty_audit_buf_free(%struct.tty_audit_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
