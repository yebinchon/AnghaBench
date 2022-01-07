; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_synth.c_spk_get_index_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_synth.c_spk_get_index_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 (%struct.TYPE_5__*)*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }

@synth = common dso_local global %struct.TYPE_5__* null, align 8
@sentence_count = common dso_local global i32 0, align 4
@index_count = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spk_get_index_count(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** @synth, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** %7, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** @synth, align 8
  %10 = call i32 %8(%struct.TYPE_5__* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %51

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = srem i32 %14, 10
  store i32 %15, i32* @sentence_count, align 4
  %16 = load i32, i32* %5, align 4
  %17 = sdiv i32 %16, 10
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** @synth, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp sle i32 %17, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %13
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** @synth, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sdiv i32 %28, 10
  %30 = sub nsw i32 %27, %29
  store i32 %30, i32* @index_count, align 4
  br label %50

31:                                               ; preds = %13
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** @synth, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** @synth, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = sub nsw i32 %35, %39
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** @synth, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %40, %44
  %46 = load i32, i32* %5, align 4
  %47 = sdiv i32 %46, 10
  %48 = sub nsw i32 %45, %47
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* @index_count, align 4
  br label %50

50:                                               ; preds = %31, %23
  br label %51

51:                                               ; preds = %50, %2
  %52 = load i32, i32* @sentence_count, align 4
  %53 = load i32*, i32** %4, align 8
  store i32 %52, i32* %53, align 4
  %54 = load i32, i32* @index_count, align 4
  %55 = load i32*, i32** %3, align 8
  store i32 %54, i32* %55, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
