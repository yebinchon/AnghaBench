; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_phy.c_rtw_phy_tx_power_by_rate_config_by_path.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_phy.c_rtw_phy_tx_power_by_rate_config_by_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_hal = type { i8***, i8***, i8***, i8*** }

@RTW_RATE_SECTION_VHT_1S = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_hal*, i64, i64, i64, i64*)* @rtw_phy_tx_power_by_rate_config_by_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw_phy_tx_power_by_rate_config_by_path(%struct.rtw_hal* %0, i64 %1, i64 %2, i64 %3, i64* %4) #0 {
  %6 = alloca %struct.rtw_hal*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store %struct.rtw_hal* %0, %struct.rtw_hal** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64* %4, i64** %10, align 8
  %16 = load i64, i64* %8, align 8
  %17 = load i64, i64* @RTW_RATE_SECTION_VHT_1S, align 8
  %18 = icmp uge i64 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %5
  %20 = load i64*, i64** %10, align 8
  %21 = load i64, i64* %9, align 8
  %22 = sub i64 %21, 3
  %23 = getelementptr inbounds i64, i64* %20, i64 %22
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %12, align 8
  br label %31

25:                                               ; preds = %5
  %26 = load i64*, i64** %10, align 8
  %27 = load i64, i64* %9, align 8
  %28 = sub i64 %27, 1
  %29 = getelementptr inbounds i64, i64* %26, i64 %28
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %12, align 8
  br label %31

31:                                               ; preds = %25, %19
  %32 = load %struct.rtw_hal*, %struct.rtw_hal** %6, align 8
  %33 = getelementptr inbounds %struct.rtw_hal, %struct.rtw_hal* %32, i32 0, i32 1
  %34 = load i8***, i8**** %33, align 8
  %35 = load i64, i64* %7, align 8
  %36 = getelementptr inbounds i8**, i8*** %34, i64 %35
  %37 = load i8**, i8*** %36, align 8
  %38 = load i64, i64* %12, align 8
  %39 = getelementptr inbounds i8*, i8** %37, i64 %38
  %40 = load i8*, i8** %39, align 8
  store i8* %40, i8** %14, align 8
  %41 = load %struct.rtw_hal*, %struct.rtw_hal** %6, align 8
  %42 = getelementptr inbounds %struct.rtw_hal, %struct.rtw_hal* %41, i32 0, i32 0
  %43 = load i8***, i8**** %42, align 8
  %44 = load i64, i64* %7, align 8
  %45 = getelementptr inbounds i8**, i8*** %43, i64 %44
  %46 = load i8**, i8*** %45, align 8
  %47 = load i64, i64* %12, align 8
  %48 = getelementptr inbounds i8*, i8** %46, i64 %47
  %49 = load i8*, i8** %48, align 8
  store i8* %49, i8** %15, align 8
  %50 = load i8*, i8** %14, align 8
  %51 = load %struct.rtw_hal*, %struct.rtw_hal** %6, align 8
  %52 = getelementptr inbounds %struct.rtw_hal, %struct.rtw_hal* %51, i32 0, i32 3
  %53 = load i8***, i8**** %52, align 8
  %54 = load i64, i64* %7, align 8
  %55 = getelementptr inbounds i8**, i8*** %53, i64 %54
  %56 = load i8**, i8*** %55, align 8
  %57 = load i64, i64* %8, align 8
  %58 = getelementptr inbounds i8*, i8** %56, i64 %57
  store i8* %50, i8** %58, align 8
  %59 = load i8*, i8** %15, align 8
  %60 = load %struct.rtw_hal*, %struct.rtw_hal** %6, align 8
  %61 = getelementptr inbounds %struct.rtw_hal, %struct.rtw_hal* %60, i32 0, i32 2
  %62 = load i8***, i8**** %61, align 8
  %63 = load i64, i64* %7, align 8
  %64 = getelementptr inbounds i8**, i8*** %62, i64 %63
  %65 = load i8**, i8*** %64, align 8
  %66 = load i64, i64* %8, align 8
  %67 = getelementptr inbounds i8*, i8** %65, i64 %66
  store i8* %59, i8** %67, align 8
  store i64 0, i64* %11, align 8
  br label %68

68:                                               ; preds = %105, %31
  %69 = load i64, i64* %11, align 8
  %70 = load i64, i64* %9, align 8
  %71 = icmp ult i64 %69, %70
  br i1 %71, label %72, label %108

72:                                               ; preds = %68
  %73 = load i64*, i64** %10, align 8
  %74 = load i64, i64* %11, align 8
  %75 = getelementptr inbounds i64, i64* %73, i64 %74
  %76 = load i64, i64* %75, align 8
  store i64 %76, i64* %13, align 8
  %77 = load i8*, i8** %14, align 8
  %78 = load %struct.rtw_hal*, %struct.rtw_hal** %6, align 8
  %79 = getelementptr inbounds %struct.rtw_hal, %struct.rtw_hal* %78, i32 0, i32 1
  %80 = load i8***, i8**** %79, align 8
  %81 = load i64, i64* %7, align 8
  %82 = getelementptr inbounds i8**, i8*** %80, i64 %81
  %83 = load i8**, i8*** %82, align 8
  %84 = load i64, i64* %13, align 8
  %85 = getelementptr inbounds i8*, i8** %83, i64 %84
  %86 = load i8*, i8** %85, align 8
  %87 = ptrtoint i8* %86 to i64
  %88 = ptrtoint i8* %77 to i64
  %89 = sub i64 %87, %88
  %90 = inttoptr i64 %89 to i8*
  store i8* %90, i8** %85, align 8
  %91 = load i8*, i8** %15, align 8
  %92 = load %struct.rtw_hal*, %struct.rtw_hal** %6, align 8
  %93 = getelementptr inbounds %struct.rtw_hal, %struct.rtw_hal* %92, i32 0, i32 0
  %94 = load i8***, i8**** %93, align 8
  %95 = load i64, i64* %7, align 8
  %96 = getelementptr inbounds i8**, i8*** %94, i64 %95
  %97 = load i8**, i8*** %96, align 8
  %98 = load i64, i64* %13, align 8
  %99 = getelementptr inbounds i8*, i8** %97, i64 %98
  %100 = load i8*, i8** %99, align 8
  %101 = ptrtoint i8* %100 to i64
  %102 = ptrtoint i8* %91 to i64
  %103 = sub i64 %101, %102
  %104 = inttoptr i64 %103 to i8*
  store i8* %104, i8** %99, align 8
  br label %105

105:                                              ; preds = %72
  %106 = load i64, i64* %11, align 8
  %107 = add i64 %106, 1
  store i64 %107, i64* %11, align 8
  br label %68

108:                                              ; preds = %68
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
