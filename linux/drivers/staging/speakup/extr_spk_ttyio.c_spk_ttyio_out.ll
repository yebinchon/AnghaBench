; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_spk_ttyio.c_spk_ttyio_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_spk_ttyio.c_spk_ttyio_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_5__*, i8*, i32)* }
%struct.spk_synth = type { i64, i32 }

@speakup_tty_mutex = common dso_local global i32 0, align 4
@speakup_tty = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [37 x i8] c"%s: I/O error, deactivating speakup\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spk_synth*, i8)* @spk_ttyio_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spk_ttyio_out(%struct.spk_synth* %0, i8 signext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spk_synth*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  store %struct.spk_synth* %0, %struct.spk_synth** %4, align 8
  store i8 %1, i8* %5, align 1
  %7 = call i32 @mutex_lock(i32* @speakup_tty_mutex)
  %8 = load %struct.spk_synth*, %struct.spk_synth** %4, align 8
  %9 = getelementptr inbounds %struct.spk_synth, %struct.spk_synth* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %46

12:                                               ; preds = %2
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** @speakup_tty, align 8
  %14 = icmp ne %struct.TYPE_5__* %13, null
  br i1 %14, label %15, label %46

15:                                               ; preds = %12
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** @speakup_tty, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32 (%struct.TYPE_5__*, i8*, i32)*, i32 (%struct.TYPE_5__*, i8*, i32)** %19, align 8
  %21 = icmp ne i32 (%struct.TYPE_5__*, i8*, i32)* %20, null
  br i1 %21, label %22, label %46

22:                                               ; preds = %15
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** @speakup_tty, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32 (%struct.TYPE_5__*, i8*, i32)*, i32 (%struct.TYPE_5__*, i8*, i32)** %26, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** @speakup_tty, align 8
  %29 = call i32 %27(%struct.TYPE_5__* %28, i8* %5, i32 1)
  store i32 %29, i32* %6, align 4
  %30 = call i32 @mutex_unlock(i32* @speakup_tty_mutex)
  %31 = load i32, i32* %6, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %48

34:                                               ; preds = %22
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %34
  %38 = load %struct.spk_synth*, %struct.spk_synth** %4, align 8
  %39 = getelementptr inbounds %struct.spk_synth, %struct.spk_synth* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @pr_warn(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load %struct.spk_synth*, %struct.spk_synth** %4, align 8
  %43 = getelementptr inbounds %struct.spk_synth, %struct.spk_synth* %42, i32 0, i32 0
  store i64 0, i64* %43, align 8
  %44 = call i32 (...) @speakup_start_ttys()
  store i32 0, i32* %3, align 4
  br label %48

45:                                               ; preds = %34
  store i32 1, i32* %3, align 4
  br label %48

46:                                               ; preds = %15, %12, %2
  %47 = call i32 @mutex_unlock(i32* @speakup_tty_mutex)
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %46, %45, %37, %33
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @speakup_start_ttys(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
