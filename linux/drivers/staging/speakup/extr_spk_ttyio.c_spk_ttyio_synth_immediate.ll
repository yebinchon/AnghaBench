; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_spk_ttyio.c_spk_ttyio_synth_immediate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_spk_ttyio.c_spk_ttyio_synth_immediate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spk_synth = type { i8, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.spk_synth*, i8)* }

@speakup_tty = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @spk_ttyio_synth_immediate(%struct.spk_synth* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.spk_synth*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  store %struct.spk_synth* %0, %struct.spk_synth** %4, align 8
  store i8* %1, i8** %5, align 8
  br label %7

7:                                                ; preds = %35, %2
  %8 = load i8*, i8** %5, align 8
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %6, align 1
  %10 = icmp ne i8 %9, 0
  br i1 %10, label %11, label %38

11:                                               ; preds = %7
  %12 = load i8, i8* %6, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 10
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = load %struct.spk_synth*, %struct.spk_synth** %4, align 8
  %17 = getelementptr inbounds %struct.spk_synth, %struct.spk_synth* %16, i32 0, i32 0
  %18 = load i8, i8* %17, align 8
  store i8 %18, i8* %6, align 1
  br label %19

19:                                               ; preds = %15, %11
  %20 = load i32, i32* @speakup_tty, align 4
  %21 = call i32 @tty_write_room(i32 %20)
  %22 = icmp slt i32 %21, 1
  br i1 %22, label %33, label %23

23:                                               ; preds = %19
  %24 = load %struct.spk_synth*, %struct.spk_synth** %4, align 8
  %25 = getelementptr inbounds %struct.spk_synth, %struct.spk_synth* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32 (%struct.spk_synth*, i8)*, i32 (%struct.spk_synth*, i8)** %27, align 8
  %29 = load %struct.spk_synth*, %struct.spk_synth** %4, align 8
  %30 = load i8, i8* %6, align 1
  %31 = call i32 %28(%struct.spk_synth* %29, i8 signext %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %23, %19
  %34 = load i8*, i8** %5, align 8
  store i8* %34, i8** %3, align 8
  br label %39

35:                                               ; preds = %23
  %36 = load i8*, i8** %5, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %5, align 8
  br label %7

38:                                               ; preds = %7
  store i8* null, i8** %3, align 8
  br label %39

39:                                               ; preds = %38, %33
  %40 = load i8*, i8** %3, align 8
  ret i8* %40
}

declare dso_local i32 @tty_write_room(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
