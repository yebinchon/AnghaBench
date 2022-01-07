; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_speakup_decpc.c_synth_immediate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_speakup_decpc.c_synth_immediate.c"
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

7:                                                ; preds = %23, %2
  %8 = load i8*, i8** %5, align 8
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %6, align 1
  %10 = icmp ne i8 %9, 0
  br i1 %10, label %11, label %26

11:                                               ; preds = %7
  %12 = load i8, i8* %6, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 10
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = load i8, i8* @PROCSPEECH, align 1
  store i8 %16, i8* %6, align 1
  br label %17

17:                                               ; preds = %15, %11
  %18 = load i8, i8* %6, align 1
  %19 = call i64 @dt_sendchar(i8 signext %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i8*, i8** %5, align 8
  store i8* %22, i8** %3, align 8
  br label %27

23:                                               ; preds = %17
  %24 = load i8*, i8** %5, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %5, align 8
  br label %7

26:                                               ; preds = %7
  store i8* null, i8** %3, align 8
  br label %27

27:                                               ; preds = %26, %21
  %28 = load i8*, i8** %3, align 8
  ret i8* %28
}

declare dso_local i64 @dt_sendchar(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
