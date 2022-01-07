; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822b.c_rtw8822b_read_efuse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822b.c_rtw8822b_read_efuse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.rtw_efuse }
%struct.rtw_efuse = type { i32, i32, i32*, i32, i32*, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtw8822b_efuse = type { i32, i32*, i32, i32*, i32, i32*, i32*, i32, i32, i32 }

@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtw_dev*, i32*)* @rtw8822b_read_efuse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtw8822b_read_efuse(%struct.rtw_dev* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtw_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.rtw_efuse*, align 8
  %7 = alloca %struct.rtw8822b_efuse*, align 8
  %8 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %10 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %9, i32 0, i32 0
  store %struct.rtw_efuse* %10, %struct.rtw_efuse** %6, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = bitcast i32* %11 to %struct.rtw8822b_efuse*
  store %struct.rtw8822b_efuse* %12, %struct.rtw8822b_efuse** %7, align 8
  %13 = load %struct.rtw8822b_efuse*, %struct.rtw8822b_efuse** %7, align 8
  %14 = getelementptr inbounds %struct.rtw8822b_efuse, %struct.rtw8822b_efuse* %13, i32 0, i32 9
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.rtw_efuse*, %struct.rtw_efuse** %6, align 8
  %17 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %16, i32 0, i32 11
  store i32 %15, i32* %17, align 8
  %18 = load %struct.rtw8822b_efuse*, %struct.rtw8822b_efuse** %7, align 8
  %19 = getelementptr inbounds %struct.rtw8822b_efuse, %struct.rtw8822b_efuse* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.rtw_efuse*, %struct.rtw_efuse** %6, align 8
  %22 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.rtw8822b_efuse*, %struct.rtw8822b_efuse** %7, align 8
  %24 = getelementptr inbounds %struct.rtw8822b_efuse, %struct.rtw8822b_efuse* %23, i32 0, i32 8
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.rtw_efuse*, %struct.rtw_efuse** %6, align 8
  %27 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %26, i32 0, i32 10
  store i32 %25, i32* %27, align 4
  %28 = load %struct.rtw8822b_efuse*, %struct.rtw8822b_efuse** %7, align 8
  %29 = getelementptr inbounds %struct.rtw8822b_efuse, %struct.rtw8822b_efuse* %28, i32 0, i32 7
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.rtw_efuse*, %struct.rtw_efuse** %6, align 8
  %32 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %31, i32 0, i32 9
  store i32 %30, i32* %32, align 8
  %33 = load %struct.rtw8822b_efuse*, %struct.rtw8822b_efuse** %7, align 8
  %34 = getelementptr inbounds %struct.rtw8822b_efuse, %struct.rtw8822b_efuse* %33, i32 0, i32 7
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.rtw_efuse*, %struct.rtw_efuse** %6, align 8
  %37 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %36, i32 0, i32 8
  store i32 %35, i32* %37, align 4
  %38 = load %struct.rtw8822b_efuse*, %struct.rtw8822b_efuse** %7, align 8
  %39 = getelementptr inbounds %struct.rtw8822b_efuse, %struct.rtw8822b_efuse* %38, i32 0, i32 6
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.rtw_efuse*, %struct.rtw_efuse** %6, align 8
  %44 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %43, i32 0, i32 7
  store i32 %42, i32* %44, align 8
  %45 = load %struct.rtw8822b_efuse*, %struct.rtw8822b_efuse** %7, align 8
  %46 = getelementptr inbounds %struct.rtw8822b_efuse, %struct.rtw8822b_efuse* %45, i32 0, i32 5
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.rtw_efuse*, %struct.rtw_efuse** %6, align 8
  %51 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %50, i32 0, i32 6
  store i32 %49, i32* %51, align 4
  %52 = load %struct.rtw8822b_efuse*, %struct.rtw8822b_efuse** %7, align 8
  %53 = getelementptr inbounds %struct.rtw8822b_efuse, %struct.rtw8822b_efuse* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.rtw_efuse*, %struct.rtw_efuse** %6, align 8
  %56 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %55, i32 0, i32 5
  store i32 %54, i32* %56, align 8
  %57 = load %struct.rtw8822b_efuse*, %struct.rtw8822b_efuse** %7, align 8
  %58 = getelementptr inbounds %struct.rtw8822b_efuse, %struct.rtw8822b_efuse* %57, i32 0, i32 3
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.rtw_efuse*, %struct.rtw_efuse** %6, align 8
  %63 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %62, i32 0, i32 4
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  store i32 %61, i32* %65, align 4
  %66 = load %struct.rtw8822b_efuse*, %struct.rtw8822b_efuse** %7, align 8
  %67 = getelementptr inbounds %struct.rtw8822b_efuse, %struct.rtw8822b_efuse* %66, i32 0, i32 3
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.rtw_efuse*, %struct.rtw_efuse** %6, align 8
  %72 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %71, i32 0, i32 4
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 1
  store i32 %70, i32* %74, align 4
  %75 = load %struct.rtw8822b_efuse*, %struct.rtw8822b_efuse** %7, align 8
  %76 = getelementptr inbounds %struct.rtw8822b_efuse, %struct.rtw8822b_efuse* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.rtw_efuse*, %struct.rtw_efuse** %6, align 8
  %79 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %78, i32 0, i32 3
  store i32 %77, i32* %79, align 8
  %80 = load %struct.rtw8822b_efuse*, %struct.rtw8822b_efuse** %7, align 8
  %81 = getelementptr inbounds %struct.rtw8822b_efuse, %struct.rtw8822b_efuse* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = and i32 %82, 7
  %84 = load %struct.rtw_efuse*, %struct.rtw_efuse** %6, align 8
  %85 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  store i32 0, i32* %8, align 4
  br label %86

86:                                               ; preds = %103, %2
  %87 = load i32, i32* %8, align 4
  %88 = icmp slt i32 %87, 4
  br i1 %88, label %89, label %106

89:                                               ; preds = %86
  %90 = load %struct.rtw8822b_efuse*, %struct.rtw8822b_efuse** %7, align 8
  %91 = getelementptr inbounds %struct.rtw8822b_efuse, %struct.rtw8822b_efuse* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %8, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.rtw_efuse*, %struct.rtw_efuse** %6, align 8
  %98 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %97, i32 0, i32 2
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %8, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  store i32 %96, i32* %102, align 4
  br label %103

103:                                              ; preds = %89
  %104 = load i32, i32* %8, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %8, align 4
  br label %86

106:                                              ; preds = %86
  %107 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %108 = call i32 @rtw_hci_type(%struct.rtw_dev* %107)
  switch i32 %108, label %113 [
    i32 128, label %109
  ]

109:                                              ; preds = %106
  %110 = load %struct.rtw_efuse*, %struct.rtw_efuse** %6, align 8
  %111 = load %struct.rtw8822b_efuse*, %struct.rtw8822b_efuse** %7, align 8
  %112 = call i32 @rtw8822be_efuse_parsing(%struct.rtw_efuse* %110, %struct.rtw8822b_efuse* %111)
  br label %116

113:                                              ; preds = %106
  %114 = load i32, i32* @ENOTSUPP, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %3, align 4
  br label %117

116:                                              ; preds = %109
  store i32 0, i32* %3, align 4
  br label %117

117:                                              ; preds = %116, %113
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local i32 @rtw_hci_type(%struct.rtw_dev*) #1

declare dso_local i32 @rtw8822be_efuse_parsing(%struct.rtw_efuse*, %struct.rtw8822b_efuse*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
