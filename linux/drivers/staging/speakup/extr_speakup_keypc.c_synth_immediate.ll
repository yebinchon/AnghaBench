; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_speakup_keypc.c_synth_immediate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_speakup_keypc.c_synth_immediate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spk_synth = type { i32 }

@PROCSPEECH = common dso_local global i8 0, align 1
@synth_port = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.spk_synth*, i8*)* @synth_immediate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @synth_immediate(%struct.spk_synth* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.spk_synth*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store %struct.spk_synth* %0, %struct.spk_synth** %4, align 8
  store i8* %1, i8** %5, align 8
  br label %8

8:                                                ; preds = %34, %2
  %9 = load i8*, i8** %5, align 8
  %10 = load i8, i8* %9, align 1
  store i8 %10, i8* %6, align 1
  %11 = icmp ne i8 %10, 0
  br i1 %11, label %12, label %41

12:                                               ; preds = %8
  %13 = load i8, i8* %6, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 10
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load i8, i8* @PROCSPEECH, align 1
  store i8 %17, i8* %6, align 1
  br label %18

18:                                               ; preds = %16, %12
  %19 = call i64 (...) @synth_full()
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load i8*, i8** %5, align 8
  store i8* %22, i8** %3, align 8
  br label %42

23:                                               ; preds = %18
  store i32 1000, i32* %7, align 4
  br label %24

24:                                               ; preds = %33, %23
  %25 = call i64 (...) @synth_writable()
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  %28 = load i32, i32* %7, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %7, align 4
  %30 = icmp sle i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = call i8* (...) @oops()
  store i8* %32, i8** %3, align 8
  br label %42

33:                                               ; preds = %27
  br label %24

34:                                               ; preds = %24
  %35 = load i8, i8* %6, align 1
  %36 = load i32, i32* @synth_port, align 4
  %37 = call i32 @outb_p(i8 signext %35, i32 %36)
  %38 = call i32 @udelay(i32 70)
  %39 = load i8*, i8** %5, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %5, align 8
  br label %8

41:                                               ; preds = %8
  store i8* null, i8** %3, align 8
  br label %42

42:                                               ; preds = %41, %31, %21
  %43 = load i8*, i8** %3, align 8
  ret i8* %43
}

declare dso_local i64 @synth_full(...) #1

declare dso_local i64 @synth_writable(...) #1

declare dso_local i8* @oops(...) #1

declare dso_local i32 @outb_p(i8 signext, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
