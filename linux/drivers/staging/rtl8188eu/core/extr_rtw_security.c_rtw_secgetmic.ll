; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_security.c_rtw_secgetmic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_security.c_rtw_secgetmic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mic_data = type { i64, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_secgetmic(%struct.mic_data* %0, i32* %1) #0 {
  %3 = alloca %struct.mic_data*, align 8
  %4 = alloca i32*, align 8
  store %struct.mic_data* %0, %struct.mic_data** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.mic_data*, %struct.mic_data** %3, align 8
  %6 = call i32 @rtw_secmicappendbyte(%struct.mic_data* %5, i32 90)
  %7 = load %struct.mic_data*, %struct.mic_data** %3, align 8
  %8 = call i32 @rtw_secmicappendbyte(%struct.mic_data* %7, i32 0)
  %9 = load %struct.mic_data*, %struct.mic_data** %3, align 8
  %10 = call i32 @rtw_secmicappendbyte(%struct.mic_data* %9, i32 0)
  %11 = load %struct.mic_data*, %struct.mic_data** %3, align 8
  %12 = call i32 @rtw_secmicappendbyte(%struct.mic_data* %11, i32 0)
  %13 = load %struct.mic_data*, %struct.mic_data** %3, align 8
  %14 = call i32 @rtw_secmicappendbyte(%struct.mic_data* %13, i32 0)
  br label %15

15:                                               ; preds = %20, %2
  %16 = load %struct.mic_data*, %struct.mic_data** %3, align 8
  %17 = getelementptr inbounds %struct.mic_data, %struct.mic_data* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load %struct.mic_data*, %struct.mic_data** %3, align 8
  %22 = call i32 @rtw_secmicappendbyte(%struct.mic_data* %21, i32 0)
  br label %15

23:                                               ; preds = %15
  %24 = load i32*, i32** %4, align 8
  %25 = load %struct.mic_data*, %struct.mic_data** %3, align 8
  %26 = getelementptr inbounds %struct.mic_data, %struct.mic_data* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @secmicputuint32(i32* %24, i32 %27)
  %29 = load i32*, i32** %4, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 4
  %31 = load %struct.mic_data*, %struct.mic_data** %3, align 8
  %32 = getelementptr inbounds %struct.mic_data, %struct.mic_data* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @secmicputuint32(i32* %30, i32 %33)
  %35 = load %struct.mic_data*, %struct.mic_data** %3, align 8
  %36 = call i32 @secmicclear(%struct.mic_data* %35)
  ret void
}

declare dso_local i32 @rtw_secmicappendbyte(%struct.mic_data*, i32) #1

declare dso_local i32 @secmicputuint32(i32*, i32) #1

declare dso_local i32 @secmicclear(%struct.mic_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
