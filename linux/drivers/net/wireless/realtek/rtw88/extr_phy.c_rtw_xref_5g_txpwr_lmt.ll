; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_phy.c_rtw_xref_5g_txpwr_lmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_phy.c_rtw_xref_5g_txpwr_lmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.TYPE_2__*, %struct.rtw_hal }
%struct.TYPE_2__ = type { i64 }
%struct.rtw_hal = type { i64**** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*, i64, i64, i64, i64, i64)* @rtw_xref_5g_txpwr_lmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw_xref_5g_txpwr_lmt(%struct.rtw_dev* %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.rtw_dev*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.rtw_hal*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.rtw_dev* %0, %struct.rtw_dev** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %17 = load %struct.rtw_dev*, %struct.rtw_dev** %7, align 8
  %18 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %17, i32 0, i32 1
  store %struct.rtw_hal* %18, %struct.rtw_hal** %13, align 8
  %19 = load %struct.rtw_dev*, %struct.rtw_dev** %7, align 8
  %20 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %14, align 8
  %24 = load %struct.rtw_hal*, %struct.rtw_hal** %13, align 8
  %25 = getelementptr inbounds %struct.rtw_hal, %struct.rtw_hal* %24, i32 0, i32 0
  %26 = load i64****, i64***** %25, align 8
  %27 = load i64, i64* %8, align 8
  %28 = getelementptr inbounds i64***, i64**** %26, i64 %27
  %29 = load i64***, i64**** %28, align 8
  %30 = load i64, i64* %9, align 8
  %31 = getelementptr inbounds i64**, i64*** %29, i64 %30
  %32 = load i64**, i64*** %31, align 8
  %33 = load i64, i64* %11, align 8
  %34 = getelementptr inbounds i64*, i64** %32, i64 %33
  %35 = load i64*, i64** %34, align 8
  %36 = load i64, i64* %10, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %15, align 8
  %39 = load %struct.rtw_hal*, %struct.rtw_hal** %13, align 8
  %40 = getelementptr inbounds %struct.rtw_hal, %struct.rtw_hal* %39, i32 0, i32 0
  %41 = load i64****, i64***** %40, align 8
  %42 = load i64, i64* %8, align 8
  %43 = getelementptr inbounds i64***, i64**** %41, i64 %42
  %44 = load i64***, i64**** %43, align 8
  %45 = load i64, i64* %9, align 8
  %46 = getelementptr inbounds i64**, i64*** %44, i64 %45
  %47 = load i64**, i64*** %46, align 8
  %48 = load i64, i64* %12, align 8
  %49 = getelementptr inbounds i64*, i64** %47, i64 %48
  %50 = load i64*, i64** %49, align 8
  %51 = load i64, i64* %10, align 8
  %52 = getelementptr inbounds i64, i64* %50, i64 %51
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %16, align 8
  %54 = load i64, i64* %15, align 8
  %55 = load i64, i64* %16, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %6
  br label %99

58:                                               ; preds = %6
  %59 = load i64, i64* %15, align 8
  %60 = load i64, i64* %14, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %78

62:                                               ; preds = %58
  %63 = load i64, i64* %16, align 8
  %64 = load %struct.rtw_hal*, %struct.rtw_hal** %13, align 8
  %65 = getelementptr inbounds %struct.rtw_hal, %struct.rtw_hal* %64, i32 0, i32 0
  %66 = load i64****, i64***** %65, align 8
  %67 = load i64, i64* %8, align 8
  %68 = getelementptr inbounds i64***, i64**** %66, i64 %67
  %69 = load i64***, i64**** %68, align 8
  %70 = load i64, i64* %9, align 8
  %71 = getelementptr inbounds i64**, i64*** %69, i64 %70
  %72 = load i64**, i64*** %71, align 8
  %73 = load i64, i64* %11, align 8
  %74 = getelementptr inbounds i64*, i64** %72, i64 %73
  %75 = load i64*, i64** %74, align 8
  %76 = load i64, i64* %10, align 8
  %77 = getelementptr inbounds i64, i64* %75, i64 %76
  store i64 %63, i64* %77, align 8
  br label %99

78:                                               ; preds = %58
  %79 = load i64, i64* %16, align 8
  %80 = load i64, i64* %14, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %98

82:                                               ; preds = %78
  %83 = load i64, i64* %15, align 8
  %84 = load %struct.rtw_hal*, %struct.rtw_hal** %13, align 8
  %85 = getelementptr inbounds %struct.rtw_hal, %struct.rtw_hal* %84, i32 0, i32 0
  %86 = load i64****, i64***** %85, align 8
  %87 = load i64, i64* %8, align 8
  %88 = getelementptr inbounds i64***, i64**** %86, i64 %87
  %89 = load i64***, i64**** %88, align 8
  %90 = load i64, i64* %9, align 8
  %91 = getelementptr inbounds i64**, i64*** %89, i64 %90
  %92 = load i64**, i64*** %91, align 8
  %93 = load i64, i64* %12, align 8
  %94 = getelementptr inbounds i64*, i64** %92, i64 %93
  %95 = load i64*, i64** %94, align 8
  %96 = load i64, i64* %10, align 8
  %97 = getelementptr inbounds i64, i64* %95, i64 %96
  store i64 %83, i64* %97, align 8
  br label %98

98:                                               ; preds = %82, %78
  br label %99

99:                                               ; preds = %57, %98, %62
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
