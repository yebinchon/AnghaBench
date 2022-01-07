; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_speakup_acntpc.c_synth_immediate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_speakup_acntpc.c_synth_immediate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.spk_synth = type { i32 }

@SPK_XMITR_TIMEOUT = common dso_local global i32 0, align 4
@PROCSPEECH = common dso_local global i8 0, align 1
@speakup_info = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
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

8:                                                ; preds = %36, %2
  %9 = load i8*, i8** %5, align 8
  %10 = load i8, i8* %9, align 1
  store i8 %10, i8* %6, align 1
  %11 = icmp ne i8 %10, 0
  br i1 %11, label %12, label %42

12:                                               ; preds = %8
  %13 = load i32, i32* @SPK_XMITR_TIMEOUT, align 4
  store i32 %13, i32* %7, align 4
  %14 = load i8, i8* %6, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 10
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i8, i8* @PROCSPEECH, align 1
  store i8 %18, i8* %6, align 1
  br label %19

19:                                               ; preds = %17, %12
  %20 = call i64 (...) @synth_full()
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i8*, i8** %5, align 8
  store i8* %23, i8** %3, align 8
  br label %43

24:                                               ; preds = %19
  br label %25

25:                                               ; preds = %34, %24
  %26 = call i64 (...) @synth_writable()
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %25
  %29 = load i32, i32* %7, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  %33 = load i8*, i8** %5, align 8
  store i8* %33, i8** %3, align 8
  br label %43

34:                                               ; preds = %28
  %35 = call i32 @udelay(i32 1)
  br label %25

36:                                               ; preds = %25
  %37 = load i8, i8* %6, align 1
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @speakup_info, i32 0, i32 0), align 4
  %39 = call i32 @outb_p(i8 signext %37, i32 %38)
  %40 = load i8*, i8** %5, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %5, align 8
  br label %8

42:                                               ; preds = %8
  store i8* null, i8** %3, align 8
  br label %43

43:                                               ; preds = %42, %32, %22
  %44 = load i8*, i8** %3, align 8
  ret i8* %44
}

declare dso_local i64 @synth_full(...) #1

declare dso_local i64 @synth_writable(...) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @outb_p(i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
