; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_phy.c_handle_path_a.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_phy.c_handle_path_a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl_efuse = type { i64**, i32**, i64**, i32** }

@RF90_PATH_A = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtl_efuse*, i64, i64*, i64*, i64*, i64*)* @handle_path_a to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_path_a(%struct.rtl_efuse* %0, i64 %1, i64* %2, i64* %3, i64* %4, i64* %5) #0 {
  %7 = alloca %struct.rtl_efuse*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  store %struct.rtl_efuse* %0, %struct.rtl_efuse** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64* %2, i64** %9, align 8
  store i64* %3, i64** %10, align 8
  store i64* %4, i64** %11, align 8
  store i64* %5, i64** %12, align 8
  %13 = load %struct.rtl_efuse*, %struct.rtl_efuse** %7, align 8
  %14 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %13, i32 0, i32 0
  %15 = load i64**, i64*** %14, align 8
  %16 = load i64, i64* @RF90_PATH_A, align 8
  %17 = getelementptr inbounds i64*, i64** %15, i64 %16
  %18 = load i64*, i64** %17, align 8
  %19 = load i64, i64* %8, align 8
  %20 = getelementptr inbounds i64, i64* %18, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = load i64*, i64** %9, align 8
  %23 = load i64, i64* @RF90_PATH_A, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 %23
  store i64 %21, i64* %24, align 8
  %25 = load %struct.rtl_efuse*, %struct.rtl_efuse** %7, align 8
  %26 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %25, i32 0, i32 1
  %27 = load i32**, i32*** %26, align 8
  %28 = load i64, i64* @RF90_PATH_A, align 8
  %29 = getelementptr inbounds i32*, i32** %27, i64 %28
  %30 = load i32*, i32** %29, align 8
  %31 = load i64, i64* %8, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = icmp sgt i32 %33, 15
  br i1 %34, label %35, label %61

35:                                               ; preds = %6
  %36 = load %struct.rtl_efuse*, %struct.rtl_efuse** %7, align 8
  %37 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %36, i32 0, i32 2
  %38 = load i64**, i64*** %37, align 8
  %39 = load i64, i64* @RF90_PATH_A, align 8
  %40 = getelementptr inbounds i64*, i64** %38, i64 %39
  %41 = load i64*, i64** %40, align 8
  %42 = load i64, i64* %8, align 8
  %43 = getelementptr inbounds i64, i64* %41, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.rtl_efuse*, %struct.rtl_efuse** %7, align 8
  %46 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %45, i32 0, i32 1
  %47 = load i32**, i32*** %46, align 8
  %48 = load i64, i64* @RF90_PATH_A, align 8
  %49 = getelementptr inbounds i32*, i32** %47, i64 %48
  %50 = load i32*, i32** %49, align 8
  %51 = load i64, i64* %8, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = xor i32 %53, -1
  %55 = add nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = sub i64 %44, %56
  %58 = load i64*, i64** %11, align 8
  %59 = load i64, i64* @RF90_PATH_A, align 8
  %60 = getelementptr inbounds i64, i64* %58, i64 %59
  store i64 %57, i64* %60, align 8
  br label %85

61:                                               ; preds = %6
  %62 = load %struct.rtl_efuse*, %struct.rtl_efuse** %7, align 8
  %63 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %62, i32 0, i32 2
  %64 = load i64**, i64*** %63, align 8
  %65 = load i64, i64* @RF90_PATH_A, align 8
  %66 = getelementptr inbounds i64*, i64** %64, i64 %65
  %67 = load i64*, i64** %66, align 8
  %68 = load i64, i64* %8, align 8
  %69 = getelementptr inbounds i64, i64* %67, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.rtl_efuse*, %struct.rtl_efuse** %7, align 8
  %72 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %71, i32 0, i32 1
  %73 = load i32**, i32*** %72, align 8
  %74 = load i64, i64* @RF90_PATH_A, align 8
  %75 = getelementptr inbounds i32*, i32** %73, i64 %74
  %76 = load i32*, i32** %75, align 8
  %77 = load i64, i64* %8, align 8
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  %81 = add i64 %70, %80
  %82 = load i64*, i64** %11, align 8
  %83 = load i64, i64* @RF90_PATH_A, align 8
  %84 = getelementptr inbounds i64, i64* %82, i64 %83
  store i64 %81, i64* %84, align 8
  br label %85

85:                                               ; preds = %61, %35
  %86 = load %struct.rtl_efuse*, %struct.rtl_efuse** %7, align 8
  %87 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %86, i32 0, i32 3
  %88 = load i32**, i32*** %87, align 8
  %89 = load i64, i64* @RF90_PATH_A, align 8
  %90 = getelementptr inbounds i32*, i32** %88, i64 %89
  %91 = load i32*, i32** %90, align 8
  %92 = load i64, i64* %8, align 8
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = icmp sgt i32 %94, 15
  br i1 %95, label %96, label %122

96:                                               ; preds = %85
  %97 = load %struct.rtl_efuse*, %struct.rtl_efuse** %7, align 8
  %98 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %97, i32 0, i32 2
  %99 = load i64**, i64*** %98, align 8
  %100 = load i64, i64* @RF90_PATH_A, align 8
  %101 = getelementptr inbounds i64*, i64** %99, i64 %100
  %102 = load i64*, i64** %101, align 8
  %103 = load i64, i64* %8, align 8
  %104 = getelementptr inbounds i64, i64* %102, i64 %103
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.rtl_efuse*, %struct.rtl_efuse** %7, align 8
  %107 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %106, i32 0, i32 3
  %108 = load i32**, i32*** %107, align 8
  %109 = load i64, i64* @RF90_PATH_A, align 8
  %110 = getelementptr inbounds i32*, i32** %108, i64 %109
  %111 = load i32*, i32** %110, align 8
  %112 = load i64, i64* %8, align 8
  %113 = getelementptr inbounds i32, i32* %111, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = xor i32 %114, -1
  %116 = add nsw i32 %115, 1
  %117 = sext i32 %116 to i64
  %118 = sub i64 %105, %117
  %119 = load i64*, i64** %10, align 8
  %120 = load i64, i64* @RF90_PATH_A, align 8
  %121 = getelementptr inbounds i64, i64* %119, i64 %120
  store i64 %118, i64* %121, align 8
  br label %146

122:                                              ; preds = %85
  %123 = load %struct.rtl_efuse*, %struct.rtl_efuse** %7, align 8
  %124 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %123, i32 0, i32 2
  %125 = load i64**, i64*** %124, align 8
  %126 = load i64, i64* @RF90_PATH_A, align 8
  %127 = getelementptr inbounds i64*, i64** %125, i64 %126
  %128 = load i64*, i64** %127, align 8
  %129 = load i64, i64* %8, align 8
  %130 = getelementptr inbounds i64, i64* %128, i64 %129
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.rtl_efuse*, %struct.rtl_efuse** %7, align 8
  %133 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %132, i32 0, i32 3
  %134 = load i32**, i32*** %133, align 8
  %135 = load i64, i64* @RF90_PATH_A, align 8
  %136 = getelementptr inbounds i32*, i32** %134, i64 %135
  %137 = load i32*, i32** %136, align 8
  %138 = load i64, i64* %8, align 8
  %139 = getelementptr inbounds i32, i32* %137, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = sext i32 %140 to i64
  %142 = add i64 %131, %141
  %143 = load i64*, i64** %10, align 8
  %144 = load i64, i64* @RF90_PATH_A, align 8
  %145 = getelementptr inbounds i64, i64* %143, i64 %144
  store i64 %142, i64* %145, align 8
  br label %146

146:                                              ; preds = %122, %96
  %147 = load %struct.rtl_efuse*, %struct.rtl_efuse** %7, align 8
  %148 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %147, i32 0, i32 2
  %149 = load i64**, i64*** %148, align 8
  %150 = load i64, i64* @RF90_PATH_A, align 8
  %151 = getelementptr inbounds i64*, i64** %149, i64 %150
  %152 = load i64*, i64** %151, align 8
  %153 = load i64, i64* %8, align 8
  %154 = getelementptr inbounds i64, i64* %152, i64 %153
  %155 = load i64, i64* %154, align 8
  %156 = load i64*, i64** %12, align 8
  %157 = load i64, i64* @RF90_PATH_A, align 8
  %158 = getelementptr inbounds i64, i64* %156, i64 %157
  store i64 %155, i64* %158, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
