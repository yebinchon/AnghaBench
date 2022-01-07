; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_selection.c_speakup_set_selection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_selection.c_speakup_set_selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i64, i64, i64, i64 }
%struct.tty_struct = type { i32 }

@speakup_sel_work = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@EBUSY = common dso_local global i32 0, align 4
@spk_xs = common dso_local global i64 0, align 8
@spk_ys = common dso_local global i64 0, align 8
@spk_xe = common dso_local global i64 0, align 8
@spk_ye = common dso_local global i64 0, align 8
@TIOCL_SELCHAR = common dso_local global i32 0, align 4
@WORK_CPU_UNBOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @speakup_set_selection(%struct.tty_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tty_struct*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  %4 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %5 = call i32 @tty_kref_get(%struct.tty_struct* %4)
  %6 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %7 = call i64 @cmpxchg(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @speakup_sel_work, i32 0, i32 2), i32* null, %struct.tty_struct* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %11 = call i32 @tty_kref_put(%struct.tty_struct* %10)
  %12 = load i32, i32* @EBUSY, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %27

14:                                               ; preds = %1
  %15 = call i32 (...) @wmb()
  %16 = load i64, i64* @spk_xs, align 8
  %17 = add nsw i64 %16, 1
  store i64 %17, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @speakup_sel_work, i32 0, i32 1, i32 4), align 8
  %18 = load i64, i64* @spk_ys, align 8
  %19 = add nsw i64 %18, 1
  store i64 %19, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @speakup_sel_work, i32 0, i32 1, i32 3), align 8
  %20 = load i64, i64* @spk_xe, align 8
  %21 = add nsw i64 %20, 1
  store i64 %21, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @speakup_sel_work, i32 0, i32 1, i32 2), align 8
  %22 = load i64, i64* @spk_ye, align 8
  %23 = add nsw i64 %22, 1
  store i64 %23, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @speakup_sel_work, i32 0, i32 1, i32 1), align 8
  %24 = load i32, i32* @TIOCL_SELCHAR, align 4
  store i32 %24, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @speakup_sel_work, i32 0, i32 1, i32 0), align 8
  %25 = load i32, i32* @WORK_CPU_UNBOUND, align 4
  %26 = call i32 @schedule_work_on(i32 %25, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @speakup_sel_work, i32 0, i32 0))
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %14, %9
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @tty_kref_get(%struct.tty_struct*) #1

declare dso_local i64 @cmpxchg(i32*, i32*, %struct.tty_struct*) #1

declare dso_local i32 @tty_kref_put(%struct.tty_struct*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @schedule_work_on(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
