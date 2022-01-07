; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_spk_ttyio.c_spk_ttyio_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_spk_ttyio.c_spk_ttyio_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_9__*, i32*)* }

@speakup_tty = common dso_local global %struct.TYPE_9__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spk_ttyio_release() #0 {
  %1 = load %struct.TYPE_9__*, %struct.TYPE_9__** @speakup_tty, align 8
  %2 = icmp ne %struct.TYPE_9__* %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  br label %28

4:                                                ; preds = %0
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** @speakup_tty, align 8
  %6 = call i32 @tty_lock(%struct.TYPE_9__* %5)
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** @speakup_tty, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i32 (%struct.TYPE_9__*, i32*)*, i32 (%struct.TYPE_9__*, i32*)** %10, align 8
  %12 = icmp ne i32 (%struct.TYPE_9__*, i32*)* %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %4
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** @speakup_tty, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i32 (%struct.TYPE_9__*, i32*)*, i32 (%struct.TYPE_9__*, i32*)** %17, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** @speakup_tty, align 8
  %20 = call i32 %18(%struct.TYPE_9__* %19, i32* null)
  br label %21

21:                                               ; preds = %13, %4
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** @speakup_tty, align 8
  %23 = call i32 @tty_ldisc_flush(%struct.TYPE_9__* %22)
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** @speakup_tty, align 8
  %25 = call i32 @tty_unlock(%struct.TYPE_9__* %24)
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** @speakup_tty, align 8
  %27 = call i32 @tty_kclose(%struct.TYPE_9__* %26)
  br label %28

28:                                               ; preds = %21, %3
  ret void
}

declare dso_local i32 @tty_lock(%struct.TYPE_9__*) #1

declare dso_local i32 @tty_ldisc_flush(%struct.TYPE_9__*) #1

declare dso_local i32 @tty_unlock(%struct.TYPE_9__*) #1

declare dso_local i32 @tty_kclose(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
