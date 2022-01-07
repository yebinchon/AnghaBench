; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_read_efuse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_read_efuse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.rtw_efuse }
%struct.rtw_efuse = type { i32, i32, i32*, i32, i32*, i32, i32, i32 }
%struct.rtw8822c_efuse = type { i32, i32*, i32, i32*, i32, i32, i32 }

@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtw_dev*, i32*)* @rtw8822c_read_efuse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtw8822c_read_efuse(%struct.rtw_dev* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtw_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.rtw_efuse*, align 8
  %7 = alloca %struct.rtw8822c_efuse*, align 8
  %8 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %10 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %9, i32 0, i32 0
  store %struct.rtw_efuse* %10, %struct.rtw_efuse** %6, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = bitcast i32* %11 to %struct.rtw8822c_efuse*
  store %struct.rtw8822c_efuse* %12, %struct.rtw8822c_efuse** %7, align 8
  %13 = load %struct.rtw8822c_efuse*, %struct.rtw8822c_efuse** %7, align 8
  %14 = getelementptr inbounds %struct.rtw8822c_efuse, %struct.rtw8822c_efuse* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.rtw_efuse*, %struct.rtw_efuse** %6, align 8
  %17 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %16, i32 0, i32 7
  store i32 %15, i32* %17, align 8
  %18 = load %struct.rtw8822c_efuse*, %struct.rtw8822c_efuse** %7, align 8
  %19 = getelementptr inbounds %struct.rtw8822c_efuse, %struct.rtw8822c_efuse* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.rtw_efuse*, %struct.rtw_efuse** %6, align 8
  %22 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.rtw8822c_efuse*, %struct.rtw8822c_efuse** %7, align 8
  %24 = getelementptr inbounds %struct.rtw8822c_efuse, %struct.rtw8822c_efuse* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.rtw_efuse*, %struct.rtw_efuse** %6, align 8
  %27 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %26, i32 0, i32 6
  store i32 %25, i32* %27, align 4
  %28 = load %struct.rtw8822c_efuse*, %struct.rtw8822c_efuse** %7, align 8
  %29 = getelementptr inbounds %struct.rtw8822c_efuse, %struct.rtw8822c_efuse* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.rtw_efuse*, %struct.rtw_efuse** %6, align 8
  %32 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %31, i32 0, i32 5
  store i32 %30, i32* %32, align 8
  %33 = load %struct.rtw8822c_efuse*, %struct.rtw8822c_efuse** %7, align 8
  %34 = getelementptr inbounds %struct.rtw8822c_efuse, %struct.rtw8822c_efuse* %33, i32 0, i32 3
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.rtw_efuse*, %struct.rtw_efuse** %6, align 8
  %39 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %38, i32 0, i32 4
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  store i32 %37, i32* %41, align 4
  %42 = load %struct.rtw8822c_efuse*, %struct.rtw8822c_efuse** %7, align 8
  %43 = getelementptr inbounds %struct.rtw8822c_efuse, %struct.rtw8822c_efuse* %42, i32 0, i32 3
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.rtw_efuse*, %struct.rtw_efuse** %6, align 8
  %48 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %47, i32 0, i32 4
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  store i32 %46, i32* %50, align 4
  %51 = load %struct.rtw8822c_efuse*, %struct.rtw8822c_efuse** %7, align 8
  %52 = getelementptr inbounds %struct.rtw8822c_efuse, %struct.rtw8822c_efuse* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.rtw_efuse*, %struct.rtw_efuse** %6, align 8
  %55 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 8
  %56 = load %struct.rtw8822c_efuse*, %struct.rtw8822c_efuse** %7, align 8
  %57 = getelementptr inbounds %struct.rtw8822c_efuse, %struct.rtw8822c_efuse* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = and i32 %58, 7
  %60 = load %struct.rtw_efuse*, %struct.rtw_efuse** %6, align 8
  %61 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  store i32 0, i32* %8, align 4
  br label %62

62:                                               ; preds = %79, %2
  %63 = load i32, i32* %8, align 4
  %64 = icmp slt i32 %63, 4
  br i1 %64, label %65, label %82

65:                                               ; preds = %62
  %66 = load %struct.rtw8822c_efuse*, %struct.rtw8822c_efuse** %7, align 8
  %67 = getelementptr inbounds %struct.rtw8822c_efuse, %struct.rtw8822c_efuse* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.rtw_efuse*, %struct.rtw_efuse** %6, align 8
  %74 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  store i32 %72, i32* %78, align 4
  br label %79

79:                                               ; preds = %65
  %80 = load i32, i32* %8, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %8, align 4
  br label %62

82:                                               ; preds = %62
  %83 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %84 = call i32 @rtw_hci_type(%struct.rtw_dev* %83)
  switch i32 %84, label %89 [
    i32 128, label %85
  ]

85:                                               ; preds = %82
  %86 = load %struct.rtw_efuse*, %struct.rtw_efuse** %6, align 8
  %87 = load %struct.rtw8822c_efuse*, %struct.rtw8822c_efuse** %7, align 8
  %88 = call i32 @rtw8822ce_efuse_parsing(%struct.rtw_efuse* %86, %struct.rtw8822c_efuse* %87)
  br label %92

89:                                               ; preds = %82
  %90 = load i32, i32* @ENOTSUPP, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %3, align 4
  br label %93

92:                                               ; preds = %85
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %92, %89
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i32 @rtw_hci_type(%struct.rtw_dev*) #1

declare dso_local i32 @rtw8822ce_efuse_parsing(%struct.rtw_efuse*, %struct.rtw8822c_efuse*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
