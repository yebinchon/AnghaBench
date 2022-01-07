; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_spk_ttyio.c_spk_ttyio_send_xchar.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_spk_ttyio.c_spk_ttyio_send_xchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_6__*, i8)* }

@speakup_tty_mutex = common dso_local global i32 0, align 4
@speakup_tty = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8)* @spk_ttyio_send_xchar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spk_ttyio_send_xchar(i8 signext %0) #0 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  %3 = call i32 @mutex_lock(i32* @speakup_tty_mutex)
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** @speakup_tty, align 8
  %5 = call i64 @check_tty(%struct.TYPE_6__* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = call i32 @mutex_unlock(i32* @speakup_tty_mutex)
  br label %27

9:                                                ; preds = %1
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** @speakup_tty, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32 (%struct.TYPE_6__*, i8)*, i32 (%struct.TYPE_6__*, i8)** %13, align 8
  %15 = icmp ne i32 (%struct.TYPE_6__*, i8)* %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %9
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** @speakup_tty, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32 (%struct.TYPE_6__*, i8)*, i32 (%struct.TYPE_6__*, i8)** %20, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** @speakup_tty, align 8
  %23 = load i8, i8* %2, align 1
  %24 = call i32 %21(%struct.TYPE_6__* %22, i8 signext %23)
  br label %25

25:                                               ; preds = %16, %9
  %26 = call i32 @mutex_unlock(i32* @speakup_tty_mutex)
  br label %27

27:                                               ; preds = %25, %7
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @check_tty(%struct.TYPE_6__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
