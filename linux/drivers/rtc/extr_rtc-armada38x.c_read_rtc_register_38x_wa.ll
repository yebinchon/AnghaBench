; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-armada38x.c_read_rtc_register_38x_wa.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-armada38x.c_read_rtc_register_38x_wa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.armada38x_rtc = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64, i32 }

@SAMPLE_NR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.armada38x_rtc*, i64)* @read_rtc_register_38x_wa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @read_rtc_register_38x_wa(%struct.armada38x_rtc* %0, i64 %1) #0 {
  %3 = alloca %struct.armada38x_rtc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.armada38x_rtc* %0, %struct.armada38x_rtc** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %35, %2
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @SAMPLE_NR, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %38

14:                                               ; preds = %10
  %15 = load %struct.armada38x_rtc*, %struct.armada38x_rtc** %3, align 8
  %16 = getelementptr inbounds %struct.armada38x_rtc, %struct.armada38x_rtc* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %4, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i64 @readl(i64 %19)
  %21 = load %struct.armada38x_rtc*, %struct.armada38x_rtc** %3, align 8
  %22 = getelementptr inbounds %struct.armada38x_rtc, %struct.armada38x_rtc* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i64 %20, i64* %27, align 8
  %28 = load %struct.armada38x_rtc*, %struct.armada38x_rtc** %3, align 8
  %29 = getelementptr inbounds %struct.armada38x_rtc, %struct.armada38x_rtc* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  store i32 0, i32* %34, align 8
  br label %35

35:                                               ; preds = %14
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  br label %10

38:                                               ; preds = %10
  store i32 0, i32* %5, align 4
  br label %39

39:                                               ; preds = %140, %38
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @SAMPLE_NR, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %143

43:                                               ; preds = %39
  store i32 0, i32* %8, align 4
  %44 = load %struct.armada38x_rtc*, %struct.armada38x_rtc** %3, align 8
  %45 = getelementptr inbounds %struct.armada38x_rtc, %struct.armada38x_rtc* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %9, align 8
  br label %52

52:                                               ; preds = %83, %43
  %53 = load %struct.armada38x_rtc*, %struct.armada38x_rtc** %3, align 8
  %54 = getelementptr inbounds %struct.armada38x_rtc, %struct.armada38x_rtc* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %86

62:                                               ; preds = %52
  %63 = load %struct.armada38x_rtc*, %struct.armada38x_rtc** %3, align 8
  %64 = getelementptr inbounds %struct.armada38x_rtc, %struct.armada38x_rtc* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* %9, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %83

73:                                               ; preds = %62
  %74 = load %struct.armada38x_rtc*, %struct.armada38x_rtc** %3, align 8
  %75 = getelementptr inbounds %struct.armada38x_rtc, %struct.armada38x_rtc* %74, i32 0, i32 0
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 8
  br label %86

83:                                               ; preds = %62
  %84 = load i32, i32* %8, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %8, align 4
  br label %52

86:                                               ; preds = %73, %52
  %87 = load %struct.armada38x_rtc*, %struct.armada38x_rtc** %3, align 8
  %88 = getelementptr inbounds %struct.armada38x_rtc, %struct.armada38x_rtc* %87, i32 0, i32 0
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %112, label %96

96:                                               ; preds = %86
  %97 = load i64, i64* %9, align 8
  %98 = load %struct.armada38x_rtc*, %struct.armada38x_rtc** %3, align 8
  %99 = getelementptr inbounds %struct.armada38x_rtc, %struct.armada38x_rtc* %98, i32 0, i32 0
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = load i32, i32* %8, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  store i64 %97, i64* %104, align 8
  %105 = load %struct.armada38x_rtc*, %struct.armada38x_rtc** %3, align 8
  %106 = getelementptr inbounds %struct.armada38x_rtc, %struct.armada38x_rtc* %105, i32 0, i32 0
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = load i32, i32* %8, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 1
  store i32 1, i32* %111, align 8
  br label %112

112:                                              ; preds = %96, %86
  %113 = load %struct.armada38x_rtc*, %struct.armada38x_rtc** %3, align 8
  %114 = getelementptr inbounds %struct.armada38x_rtc, %struct.armada38x_rtc* %113, i32 0, i32 0
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = load i32, i32* %8, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* %7, align 4
  %122 = icmp sgt i32 %120, %121
  br i1 %122, label %123, label %133

123:                                              ; preds = %112
  %124 = load i32, i32* %8, align 4
  store i32 %124, i32* %6, align 4
  %125 = load %struct.armada38x_rtc*, %struct.armada38x_rtc** %3, align 8
  %126 = getelementptr inbounds %struct.armada38x_rtc, %struct.armada38x_rtc* %125, i32 0, i32 0
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** %126, align 8
  %128 = load i32, i32* %8, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  store i32 %132, i32* %7, align 4
  br label %133

133:                                              ; preds = %123, %112
  %134 = load i32, i32* %7, align 4
  %135 = load i32, i32* @SAMPLE_NR, align 4
  %136 = sdiv i32 %135, 2
  %137 = icmp sgt i32 %134, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %133
  br label %143

139:                                              ; preds = %133
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %5, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %5, align 4
  br label %39

143:                                              ; preds = %138, %39
  %144 = load %struct.armada38x_rtc*, %struct.armada38x_rtc** %3, align 8
  %145 = getelementptr inbounds %struct.armada38x_rtc, %struct.armada38x_rtc* %144, i32 0, i32 0
  %146 = load %struct.TYPE_2__*, %struct.TYPE_2__** %145, align 8
  %147 = load i32, i32* %6, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  ret i64 %151
}

declare dso_local i64 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
