; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_speakup_dtlk.c_synth_interrogate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_speakup_dtlk.c_synth_interrogate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.synth_settings = type { i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.spk_synth = type { i32 }

@synth_interrogate.buf = internal global [73 x i8] zeroinitializer, align 16
@synth_interrogate.status = internal global %struct.synth_settings zeroinitializer, align 8
@.str = private unnamed_addr constant [4 x i8] c"\18\01?\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.synth_settings* (%struct.spk_synth*)* @synth_interrogate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.synth_settings* @synth_interrogate(%struct.spk_synth* %0) #0 {
  %2 = alloca %struct.spk_synth*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.spk_synth* %0, %struct.spk_synth** %2, align 8
  %6 = load %struct.spk_synth*, %struct.spk_synth** %2, align 8
  %7 = call i32 @synth_immediate(%struct.spk_synth* %6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %34, %1
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 50
  br i1 %10, label %11, label %37

11:                                               ; preds = %8
  %12 = call signext i8 (...) @synth_read_tts()
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [73 x i8], [73 x i8]* @synth_interrogate.buf, i64 0, i64 %14
  store i8 %12, i8* %15, align 1
  %16 = load i32, i32* %4, align 4
  %17 = icmp sgt i32 %16, 2
  br i1 %17, label %18, label %26

18:                                               ; preds = %11
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [73 x i8], [73 x i8]* @synth_interrogate.buf, i64 0, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 127
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %37

26:                                               ; preds = %18, %11
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = icmp ult i64 %28, 72
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %30, %26
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %8

37:                                               ; preds = %25, %8
  store i32* bitcast ([73 x i8]* @synth_interrogate.buf to i32*), i32** %3, align 8
  %38 = load i32*, i32** %3, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %3, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = mul nsw i32 %43, 256
  %45 = add nsw i32 %40, %44
  store i32 %45, i32* getelementptr inbounds (%struct.synth_settings, %struct.synth_settings* @synth_interrogate.status, i32 0, i32 0), align 8
  %46 = load i32*, i32** %3, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 2
  store i32* %47, i32** %3, align 8
  store i32 0, i32* %5, align 4
  br label %48

48:                                               ; preds = %66, %37
  %49 = load i32*, i32** %3, align 8
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 13
  br i1 %51, label %52, label %69

52:                                               ; preds = %48
  %53 = load i32*, i32** %3, align 8
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** getelementptr inbounds (%struct.synth_settings, %struct.synth_settings* @synth_interrogate.status, i32 0, i32 1), align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  store i32 %54, i32* %58, align 4
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = icmp ult i64 %60, 7
  br i1 %61, label %62, label %65

62:                                               ; preds = %52
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %62, %52
  br label %66

66:                                               ; preds = %65
  %67 = load i32*, i32** %3, align 8
  %68 = getelementptr inbounds i32, i32* %67, i32 1
  store i32* %68, i32** %3, align 8
  br label %48

69:                                               ; preds = %48
  %70 = load i32*, i32** getelementptr inbounds (%struct.synth_settings, %struct.synth_settings* @synth_interrogate.status, i32 0, i32 1), align 8
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  store i32 0, i32* %73, align 4
  %74 = load i32*, i32** %3, align 8
  %75 = getelementptr inbounds i32, i32* %74, i32 1
  store i32* %75, i32** %3, align 8
  %76 = load i32*, i32** %3, align 8
  %77 = getelementptr inbounds i32, i32* %76, i32 1
  store i32* %77, i32** %3, align 8
  %78 = load i32, i32* %76, align 4
  store i32 %78, i32* getelementptr inbounds (%struct.synth_settings, %struct.synth_settings* @synth_interrogate.status, i32 0, i32 15), align 4
  %79 = load i32*, i32** %3, align 8
  %80 = getelementptr inbounds i32, i32* %79, i32 1
  store i32* %80, i32** %3, align 8
  %81 = load i32, i32* %79, align 4
  store i32 %81, i32* getelementptr inbounds (%struct.synth_settings, %struct.synth_settings* @synth_interrogate.status, i32 0, i32 14), align 8
  %82 = load i32*, i32** %3, align 8
  %83 = getelementptr inbounds i32, i32* %82, i32 1
  store i32* %83, i32** %3, align 8
  %84 = load i32, i32* %82, align 4
  store i32 %84, i32* getelementptr inbounds (%struct.synth_settings, %struct.synth_settings* @synth_interrogate.status, i32 0, i32 13), align 4
  %85 = load i32*, i32** %3, align 8
  %86 = getelementptr inbounds i32, i32* %85, i32 1
  store i32* %86, i32** %3, align 8
  %87 = load i32, i32* %85, align 4
  store i32 %87, i32* getelementptr inbounds (%struct.synth_settings, %struct.synth_settings* @synth_interrogate.status, i32 0, i32 12), align 8
  %88 = load i32*, i32** %3, align 8
  %89 = getelementptr inbounds i32, i32* %88, i32 1
  store i32* %89, i32** %3, align 8
  %90 = load i32, i32* %88, align 4
  store i32 %90, i32* getelementptr inbounds (%struct.synth_settings, %struct.synth_settings* @synth_interrogate.status, i32 0, i32 11), align 4
  %91 = load i32*, i32** %3, align 8
  %92 = getelementptr inbounds i32, i32* %91, i32 1
  store i32* %92, i32** %3, align 8
  %93 = load i32, i32* %91, align 4
  store i32 %93, i32* getelementptr inbounds (%struct.synth_settings, %struct.synth_settings* @synth_interrogate.status, i32 0, i32 10), align 8
  %94 = load i32*, i32** %3, align 8
  %95 = getelementptr inbounds i32, i32* %94, i32 1
  store i32* %95, i32** %3, align 8
  %96 = load i32, i32* %94, align 4
  store i32 %96, i32* getelementptr inbounds (%struct.synth_settings, %struct.synth_settings* @synth_interrogate.status, i32 0, i32 9), align 4
  %97 = load i32*, i32** %3, align 8
  %98 = getelementptr inbounds i32, i32* %97, i32 1
  store i32* %98, i32** %3, align 8
  %99 = load i32, i32* %97, align 4
  store i32 %99, i32* getelementptr inbounds (%struct.synth_settings, %struct.synth_settings* @synth_interrogate.status, i32 0, i32 8), align 8
  %100 = load i32*, i32** %3, align 8
  %101 = getelementptr inbounds i32, i32* %100, i32 1
  store i32* %101, i32** %3, align 8
  %102 = load i32, i32* %100, align 4
  store i32 %102, i32* getelementptr inbounds (%struct.synth_settings, %struct.synth_settings* @synth_interrogate.status, i32 0, i32 7), align 4
  %103 = load i32*, i32** %3, align 8
  %104 = getelementptr inbounds i32, i32* %103, i32 1
  store i32* %104, i32** %3, align 8
  %105 = load i32, i32* %103, align 4
  store i32 %105, i32* getelementptr inbounds (%struct.synth_settings, %struct.synth_settings* @synth_interrogate.status, i32 0, i32 6), align 8
  %106 = load i32*, i32** %3, align 8
  %107 = getelementptr inbounds i32, i32* %106, i32 1
  store i32* %107, i32** %3, align 8
  %108 = load i32, i32* %106, align 4
  store i32 %108, i32* getelementptr inbounds (%struct.synth_settings, %struct.synth_settings* @synth_interrogate.status, i32 0, i32 5), align 4
  %109 = load i32*, i32** %3, align 8
  %110 = getelementptr inbounds i32, i32* %109, i32 1
  store i32* %110, i32** %3, align 8
  %111 = load i32, i32* %109, align 4
  store i32 %111, i32* getelementptr inbounds (%struct.synth_settings, %struct.synth_settings* @synth_interrogate.status, i32 0, i32 4), align 8
  %112 = load i32*, i32** %3, align 8
  %113 = getelementptr inbounds i32, i32* %112, i32 1
  store i32* %113, i32** %3, align 8
  %114 = load i32, i32* %112, align 4
  store i32 %114, i32* getelementptr inbounds (%struct.synth_settings, %struct.synth_settings* @synth_interrogate.status, i32 0, i32 3), align 4
  %115 = load i32*, i32** %3, align 8
  %116 = getelementptr inbounds i32, i32* %115, i32 1
  store i32* %116, i32** %3, align 8
  %117 = load i32, i32* %115, align 4
  store i32 %117, i32* getelementptr inbounds (%struct.synth_settings, %struct.synth_settings* @synth_interrogate.status, i32 0, i32 2), align 8
  ret %struct.synth_settings* @synth_interrogate.status
}

declare dso_local i32 @synth_immediate(%struct.spk_synth*, i8*) #1

declare dso_local signext i8 @synth_read_tts(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
