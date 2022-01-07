; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_spk_ttyio.c_ttyio_in.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_spk_ttyio.c_ttyio_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, %struct.spk_ldisc_data* }
%struct.spk_ldisc_data = type { i8, i32, i32 }

@speakup_tty = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [50 x i8] c"spk_ttyio: timeout (%d)  while waiting for input\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (i32)* @ttyio_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @ttyio_in(i32 %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  %4 = alloca %struct.spk_ldisc_data*, align 8
  %5 = alloca i8, align 1
  store i32 %0, i32* %3, align 4
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @speakup_tty, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %8 = load %struct.spk_ldisc_data*, %struct.spk_ldisc_data** %7, align 8
  store %struct.spk_ldisc_data* %8, %struct.spk_ldisc_data** %4, align 8
  %9 = load %struct.spk_ldisc_data*, %struct.spk_ldisc_data** %4, align 8
  %10 = getelementptr inbounds %struct.spk_ldisc_data, %struct.spk_ldisc_data* %9, i32 0, i32 2
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @usecs_to_jiffies(i32 %11)
  %13 = call i64 @wait_for_completion_timeout(i32* %10, i32 %12)
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @pr_warn(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %21

21:                                               ; preds = %18, %15
  store i8 -1, i8* %2, align 1
  br label %34

22:                                               ; preds = %1
  %23 = load %struct.spk_ldisc_data*, %struct.spk_ldisc_data** %4, align 8
  %24 = getelementptr inbounds %struct.spk_ldisc_data, %struct.spk_ldisc_data* %23, i32 0, i32 0
  %25 = load i8, i8* %24, align 4
  store i8 %25, i8* %5, align 1
  %26 = call i32 (...) @mb()
  %27 = load %struct.spk_ldisc_data*, %struct.spk_ldisc_data** %4, align 8
  %28 = getelementptr inbounds %struct.spk_ldisc_data, %struct.spk_ldisc_data* %27, i32 0, i32 1
  store i32 1, i32* %28, align 4
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @speakup_tty, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @tty_schedule_flip(i32 %31)
  %33 = load i8, i8* %5, align 1
  store i8 %33, i8* %2, align 1
  br label %34

34:                                               ; preds = %22, %21
  %35 = load i8, i8* %2, align 1
  ret i8 %35
}

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @usecs_to_jiffies(i32) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @tty_schedule_flip(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
