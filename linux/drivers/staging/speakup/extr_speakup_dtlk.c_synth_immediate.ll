; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_speakup_dtlk.c_synth_immediate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_speakup_dtlk.c_synth_immediate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spk_synth = type { i32 }

@PROCSPEECH = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.spk_synth*, i8*)* @synth_immediate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @synth_immediate(%struct.spk_synth* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.spk_synth*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  store %struct.spk_synth* %0, %struct.spk_synth** %4, align 8
  store i8* %1, i8** %5, align 8
  br label %7

7:                                                ; preds = %22, %2
  %8 = load i8*, i8** %5, align 8
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %6, align 1
  %10 = icmp ne i8 %9, 0
  br i1 %10, label %11, label %27

11:                                               ; preds = %7
  %12 = call i64 (...) @synth_full()
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = load i8*, i8** %5, align 8
  store i8* %15, i8** %3, align 8
  br label %28

16:                                               ; preds = %11
  %17 = load i8, i8* %6, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 10
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i8, i8* @PROCSPEECH, align 1
  store i8 %21, i8* %6, align 1
  br label %22

22:                                               ; preds = %20, %16
  %23 = load i8, i8* %6, align 1
  %24 = call i32 @spk_out(i8 signext %23)
  %25 = load i8*, i8** %5, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %5, align 8
  br label %7

27:                                               ; preds = %7
  store i8* null, i8** %3, align 8
  br label %28

28:                                               ; preds = %27, %14
  %29 = load i8*, i8** %3, align 8
  ret i8* %29
}

declare dso_local i64 @synth_full(...) #1

declare dso_local i32 @spk_out(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
