; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_security.c_rtw_seccalctkipmic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_security.c_rtw_seccalctkipmic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mic_data = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_seccalctkipmic(i32* %0, i32* %1, i32* %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.mic_data, align 4
  %14 = alloca [4 x i32], align 16
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %15 = bitcast [4 x i32]* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %15, i8 0, i64 16, i1 false)
  %16 = load i32*, i32** %7, align 8
  %17 = call i32 @rtw_secmicsetkey(%struct.mic_data* %13, i32* %16)
  %18 = load i32, i32* %12, align 4
  %19 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  store i32 %18, i32* %19, align 16
  %20 = load i32*, i32** %8, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, 1
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %43

25:                                               ; preds = %6
  %26 = load i32*, i32** %8, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 16
  %28 = call i32 @rtw_secmicappend(%struct.mic_data* %13, i32* %27, i32 6)
  %29 = load i32*, i32** %8, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, 2
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %25
  %35 = load i32*, i32** %8, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 24
  %37 = call i32 @rtw_secmicappend(%struct.mic_data* %13, i32* %36, i32 6)
  br label %42

38:                                               ; preds = %25
  %39 = load i32*, i32** %8, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 10
  %41 = call i32 @rtw_secmicappend(%struct.mic_data* %13, i32* %40, i32 6)
  br label %42

42:                                               ; preds = %38, %34
  br label %61

43:                                               ; preds = %6
  %44 = load i32*, i32** %8, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 4
  %46 = call i32 @rtw_secmicappend(%struct.mic_data* %13, i32* %45, i32 6)
  %47 = load i32*, i32** %8, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, 2
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %43
  %53 = load i32*, i32** %8, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 16
  %55 = call i32 @rtw_secmicappend(%struct.mic_data* %13, i32* %54, i32 6)
  br label %60

56:                                               ; preds = %43
  %57 = load i32*, i32** %8, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 10
  %59 = call i32 @rtw_secmicappend(%struct.mic_data* %13, i32* %58, i32 6)
  br label %60

60:                                               ; preds = %56, %52
  br label %61

61:                                               ; preds = %60, %42
  %62 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %63 = call i32 @rtw_secmicappend(%struct.mic_data* %13, i32* %62, i32 4)
  %64 = load i32*, i32** %9, align 8
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @rtw_secmicappend(%struct.mic_data* %13, i32* %64, i32 %65)
  %67 = load i32*, i32** %11, align 8
  %68 = call i32 @rtw_secgetmic(%struct.mic_data* %13, i32* %67)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @rtw_secmicsetkey(%struct.mic_data*, i32*) #2

declare dso_local i32 @rtw_secmicappend(%struct.mic_data*, i32*, i32) #2

declare dso_local i32 @rtw_secgetmic(%struct.mic_data*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
