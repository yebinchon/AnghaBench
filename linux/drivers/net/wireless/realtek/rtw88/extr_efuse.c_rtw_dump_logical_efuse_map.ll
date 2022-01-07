; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_efuse.c_rtw_dump_logical_efuse_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_efuse.c_rtw_dump_logical_efuse_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtw_dev*, i32*, i32*)* @rtw_dump_logical_efuse_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtw_dump_logical_efuse_map(%struct.rtw_dev* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtw_dev*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %18 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %19 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %8, align 8
  %22 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %23 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %9, align 8
  %26 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %27 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %10, align 8
  store i64 0, i64* %11, align 8
  br label %30

30:                                               ; preds = %120, %3
  %31 = load i64, i64* %11, align 8
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* %9, align 8
  %34 = sub i64 %32, %33
  %35 = icmp ult i64 %31, %34
  br i1 %35, label %36, label %121

36:                                               ; preds = %30
  %37 = load i32*, i32** %6, align 8
  %38 = load i64, i64* %11, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %13, align 4
  %41 = load i32*, i32** %6, align 8
  %42 = load i64, i64* %11, align 8
  %43 = add i64 %42, 1
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* %14, align 4
  %48 = call i64 @invalid_efuse_header(i32 %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %36
  br label %121

51:                                               ; preds = %36
  %52 = load i32, i32* %13, align 4
  %53 = and i32 %52, 31
  %54 = icmp eq i32 %53, 15
  br i1 %54, label %55, label %63

55:                                               ; preds = %51
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* %14, align 4
  %58 = call i32 @get_efuse_blk_idx_2_byte(i32 %56, i32 %57)
  store i32 %58, i32* %15, align 4
  %59 = load i32, i32* %14, align 4
  %60 = and i32 %59, 15
  store i32 %60, i32* %16, align 4
  %61 = load i64, i64* %11, align 8
  %62 = add i64 %61, 2
  store i64 %62, i64* %11, align 8
  br label %70

63:                                               ; preds = %51
  %64 = load i32, i32* %13, align 4
  %65 = call i32 @get_efuse_blk_idx_1_byte(i32 %64)
  store i32 %65, i32* %15, align 4
  %66 = load i32, i32* %13, align 4
  %67 = and i32 %66, 15
  store i32 %67, i32* %16, align 4
  %68 = load i64, i64* %11, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %11, align 8
  br label %70

70:                                               ; preds = %63, %55
  store i32 0, i32* %17, align 4
  br label %71

71:                                               ; preds = %117, %70
  %72 = load i32, i32* %17, align 4
  %73 = icmp slt i32 %72, 4
  br i1 %73, label %74, label %120

74:                                               ; preds = %71
  %75 = load i32, i32* %16, align 4
  %76 = load i32, i32* %17, align 4
  %77 = call i64 @invalid_efuse_content(i32 %75, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  br label %117

80:                                               ; preds = %74
  %81 = load i32, i32* %15, align 4
  %82 = load i32, i32* %17, align 4
  %83 = call i64 @block_idx_to_logical_idx(i32 %81, i32 %82)
  store i64 %83, i64* %12, align 8
  %84 = load i64, i64* %11, align 8
  %85 = add i64 %84, 1
  %86 = load i64, i64* %8, align 8
  %87 = load i64, i64* %9, align 8
  %88 = sub i64 %86, %87
  %89 = icmp ugt i64 %85, %88
  br i1 %89, label %95, label %90

90:                                               ; preds = %80
  %91 = load i64, i64* %12, align 8
  %92 = add i64 %91, 1
  %93 = load i64, i64* %10, align 8
  %94 = icmp ugt i64 %92, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %90, %80
  %96 = load i32, i32* @EINVAL, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %4, align 4
  br label %122

98:                                               ; preds = %90
  %99 = load i32*, i32** %6, align 8
  %100 = load i64, i64* %11, align 8
  %101 = getelementptr inbounds i32, i32* %99, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = load i32*, i32** %7, align 8
  %104 = load i64, i64* %12, align 8
  %105 = getelementptr inbounds i32, i32* %103, i64 %104
  store i32 %102, i32* %105, align 4
  %106 = load i32*, i32** %6, align 8
  %107 = load i64, i64* %11, align 8
  %108 = add i64 %107, 1
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load i32*, i32** %7, align 8
  %112 = load i64, i64* %12, align 8
  %113 = add i64 %112, 1
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  store i32 %110, i32* %114, align 4
  %115 = load i64, i64* %11, align 8
  %116 = add i64 %115, 2
  store i64 %116, i64* %11, align 8
  br label %117

117:                                              ; preds = %98, %79
  %118 = load i32, i32* %17, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %17, align 4
  br label %71

120:                                              ; preds = %71
  br label %30

121:                                              ; preds = %50, %30
  store i32 0, i32* %4, align 4
  br label %122

122:                                              ; preds = %121, %95
  %123 = load i32, i32* %4, align 4
  ret i32 %123
}

declare dso_local i64 @invalid_efuse_header(i32, i32) #1

declare dso_local i32 @get_efuse_blk_idx_2_byte(i32, i32) #1

declare dso_local i32 @get_efuse_blk_idx_1_byte(i32) #1

declare dso_local i64 @invalid_efuse_content(i32, i32) #1

declare dso_local i64 @block_idx_to_logical_idx(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
