; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_speakup_audptr.c_synth_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_speakup_audptr.c_synth_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spk_synth = type { i32, %struct.TYPE_2__*, i32 (%struct.spk_synth*, i8*)* }
%struct.TYPE_2__ = type { i8 (...)* }

@.str = private unnamed_addr constant [5 x i8] c"\05[Q]\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"%s version: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spk_synth*)* @synth_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @synth_version(%struct.spk_synth* %0) #0 {
  %2 = alloca %struct.spk_synth*, align 8
  %3 = alloca i8, align 1
  %4 = alloca [40 x i8], align 16
  store %struct.spk_synth* %0, %struct.spk_synth** %2, align 8
  store i8 0, i8* %3, align 1
  %5 = bitcast [40 x i8]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %5, i8 0, i64 40, i1 false)
  %6 = load %struct.spk_synth*, %struct.spk_synth** %2, align 8
  %7 = getelementptr inbounds %struct.spk_synth, %struct.spk_synth* %6, i32 0, i32 2
  %8 = load i32 (%struct.spk_synth*, i8*)*, i32 (%struct.spk_synth*, i8*)** %7, align 8
  %9 = load %struct.spk_synth*, %struct.spk_synth** %2, align 8
  %10 = call i32 %8(%struct.spk_synth* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.spk_synth*, %struct.spk_synth** %2, align 8
  %12 = getelementptr inbounds %struct.spk_synth, %struct.spk_synth* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i8 (...)*, i8 (...)** %14, align 8
  %16 = call signext i8 (...) %15()
  %17 = load i8, i8* %3, align 1
  %18 = zext i8 %17 to i64
  %19 = getelementptr inbounds [40 x i8], [40 x i8]* %4, i64 0, i64 %18
  store i8 %16, i8* %19, align 1
  %20 = load i8, i8* %3, align 1
  %21 = zext i8 %20 to i64
  %22 = getelementptr inbounds [40 x i8], [40 x i8]* %4, i64 0, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 65
  br i1 %25, label %26, label %56

26:                                               ; preds = %1
  br label %27

27:                                               ; preds = %49, %26
  %28 = load %struct.spk_synth*, %struct.spk_synth** %2, align 8
  %29 = getelementptr inbounds %struct.spk_synth, %struct.spk_synth* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i8 (...)*, i8 (...)** %31, align 8
  %33 = call signext i8 (...) %32()
  %34 = load i8, i8* %3, align 1
  %35 = add i8 %34, 1
  store i8 %35, i8* %3, align 1
  %36 = zext i8 %35 to i64
  %37 = getelementptr inbounds [40 x i8], [40 x i8]* %4, i64 0, i64 %36
  store i8 %33, i8* %37, align 1
  br label %38

38:                                               ; preds = %27
  %39 = load i8, i8* %3, align 1
  %40 = zext i8 %39 to i64
  %41 = getelementptr inbounds [40 x i8], [40 x i8]* %4, i64 0, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 %43, 10
  br i1 %44, label %45, label %49

45:                                               ; preds = %38
  %46 = load i8, i8* %3, align 1
  %47 = zext i8 %46 to i32
  %48 = icmp slt i32 %47, 32
  br label %49

49:                                               ; preds = %45, %38
  %50 = phi i1 [ false, %38 ], [ %48, %45 ]
  br i1 %50, label %27, label %51

51:                                               ; preds = %49
  %52 = load i8, i8* %3, align 1
  %53 = add i8 %52, 1
  store i8 %53, i8* %3, align 1
  %54 = zext i8 %53 to i64
  %55 = getelementptr inbounds [40 x i8], [40 x i8]* %4, i64 0, i64 %54
  store i8 0, i8* %55, align 1
  br label %56

56:                                               ; preds = %51, %1
  %57 = getelementptr inbounds [40 x i8], [40 x i8]* %4, i64 0, i64 0
  %58 = load i8, i8* %57, align 16
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 65
  br i1 %60, label %61, label %67

61:                                               ; preds = %56
  %62 = load %struct.spk_synth*, %struct.spk_synth** %2, align 8
  %63 = getelementptr inbounds %struct.spk_synth, %struct.spk_synth* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = getelementptr inbounds [40 x i8], [40 x i8]* %4, i64 0, i64 0
  %66 = call i32 @pr_info(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %64, i8* %65)
  br label %67

67:                                               ; preds = %61, %56
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @pr_info(i8*, i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
