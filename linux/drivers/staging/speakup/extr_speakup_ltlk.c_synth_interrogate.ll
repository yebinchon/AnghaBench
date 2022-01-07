; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_speakup_ltlk.c_synth_interrogate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_speakup_ltlk.c_synth_interrogate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spk_synth = type { i32, %struct.TYPE_2__*, i32 (%struct.spk_synth*, i8*)* }
%struct.TYPE_2__ = type { i8 (...)* }

@.str = private unnamed_addr constant [4 x i8] c"\18\01?\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"%s: ROM version: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spk_synth*)* @synth_interrogate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @synth_interrogate(%struct.spk_synth* %0) #0 {
  %2 = alloca %struct.spk_synth*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  %5 = alloca [50 x i8], align 16
  %6 = alloca [20 x i8], align 16
  store %struct.spk_synth* %0, %struct.spk_synth** %2, align 8
  %7 = load %struct.spk_synth*, %struct.spk_synth** %2, align 8
  %8 = getelementptr inbounds %struct.spk_synth, %struct.spk_synth* %7, i32 0, i32 2
  %9 = load i32 (%struct.spk_synth*, i8*)*, i32 (%struct.spk_synth*, i8*)** %8, align 8
  %10 = load %struct.spk_synth*, %struct.spk_synth** %2, align 8
  %11 = call i32 %9(%struct.spk_synth* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i8 0, i8* %4, align 1
  br label %12

12:                                               ; preds = %38, %1
  %13 = load i8, i8* %4, align 1
  %14 = zext i8 %13 to i32
  %15 = icmp slt i32 %14, 50
  br i1 %15, label %16, label %41

16:                                               ; preds = %12
  %17 = load %struct.spk_synth*, %struct.spk_synth** %2, align 8
  %18 = getelementptr inbounds %struct.spk_synth, %struct.spk_synth* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i8 (...)*, i8 (...)** %20, align 8
  %22 = call zeroext i8 (...) %21()
  %23 = load i8, i8* %4, align 1
  %24 = zext i8 %23 to i64
  %25 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 %24
  store i8 %22, i8* %25, align 1
  %26 = load i8, i8* %4, align 1
  %27 = zext i8 %26 to i32
  %28 = icmp sgt i32 %27, 2
  br i1 %28, label %29, label %37

29:                                               ; preds = %16
  %30 = load i8, i8* %4, align 1
  %31 = zext i8 %30 to i64
  %32 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = icmp eq i32 %34, 127
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %41

37:                                               ; preds = %29, %16
  br label %38

38:                                               ; preds = %37
  %39 = load i8, i8* %4, align 1
  %40 = add i8 %39, 1
  store i8 %40, i8* %4, align 1
  br label %12

41:                                               ; preds = %36, %12
  %42 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 0
  %43 = getelementptr inbounds i8, i8* %42, i64 2
  store i8* %43, i8** %3, align 8
  store i8 0, i8* %4, align 1
  br label %44

44:                                               ; preds = %61, %41
  %45 = load i8*, i8** %3, align 8
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = icmp ne i32 %47, 13
  br i1 %48, label %49, label %64

49:                                               ; preds = %44
  %50 = load i8*, i8** %3, align 8
  %51 = load i8, i8* %50, align 1
  %52 = load i8, i8* %4, align 1
  %53 = zext i8 %52 to i64
  %54 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 %53
  store i8 %51, i8* %54, align 1
  %55 = load i8, i8* %4, align 1
  %56 = add i8 %55, 1
  store i8 %56, i8* %4, align 1
  %57 = zext i8 %56 to i32
  %58 = icmp sge i32 %57, 19
  br i1 %58, label %59, label %60

59:                                               ; preds = %49
  br label %64

60:                                               ; preds = %49
  br label %61

61:                                               ; preds = %60
  %62 = load i8*, i8** %3, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %3, align 8
  br label %44

64:                                               ; preds = %59, %44
  %65 = load i8, i8* %4, align 1
  %66 = zext i8 %65 to i64
  %67 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 %66
  store i8 0, i8* %67, align 1
  %68 = load %struct.spk_synth*, %struct.spk_synth** %2, align 8
  %69 = getelementptr inbounds %struct.spk_synth, %struct.spk_synth* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  %72 = call i32 @pr_info(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %70, i8* %71)
  ret void
}

declare dso_local i32 @pr_info(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
