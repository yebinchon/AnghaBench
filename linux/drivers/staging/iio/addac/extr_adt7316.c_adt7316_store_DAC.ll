; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/addac/extr_adt7316.c_adt7316_store_DAC.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/addac/extr_adt7316.c_adt7316_store_DAC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adt7316_chip_info = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (i32, i64, i32)*, i32 }

@ADT7316_DA_MSB_DATA_REGS = common dso_local global i32 0, align 4
@ADT7316_EN_IN_TEMP_PROP_DACA = common dso_local global i32 0, align 4
@ADT7316_EN_EX_TEMP_PROP_DACB = common dso_local global i32 0, align 4
@EPERM = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@ADT7316_DA_12_BIT_LSB_SHIFT = common dso_local global i32 0, align 4
@ADT7316_DA_10_BIT_LSB_SHIFT = common dso_local global i32 0, align 4
@ADT7316_DA_DATA_BASE = common dso_local global i64 0, align 8
@EIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.adt7316_chip_info*, i32, i8*, i64)* @adt7316_store_DAC to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @adt7316_store_DAC(%struct.adt7316_chip_info* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.adt7316_chip_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.adt7316_chip_info* %0, %struct.adt7316_chip_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @ADT7316_DA_MSB_DATA_REGS, align 4
  %18 = icmp sge i32 %16, %17
  br i1 %18, label %39, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* %7, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %19
  %23 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %6, align 8
  %24 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @ADT7316_EN_IN_TEMP_PROP_DACA, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %22, %19
  %30 = load i32, i32* %7, align 4
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %42

32:                                               ; preds = %29
  %33 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %6, align 8
  %34 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @ADT7316_EN_EX_TEMP_PROP_DACB, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %32, %22, %4
  %40 = load i64, i64* @EPERM, align 8
  %41 = sub i64 0, %40
  store i64 %41, i64* %5, align 8
  br label %133

42:                                               ; preds = %32, %29
  %43 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %6, align 8
  %44 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = sub nsw i32 %45, 8
  store i32 %46, i32* %13, align 4
  %47 = load i8*, i8** %8, align 8
  %48 = call i32 @kstrtou16(i8* %47, i32 10, i32* %14)
  store i32 %48, i32* %15, align 4
  %49 = load i32, i32* %15, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %58, label %51

51:                                               ; preds = %42
  %52 = load i32, i32* %14, align 4
  %53 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %6, align 8
  %54 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = shl i32 1, %55
  %57 = icmp sge i32 %52, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %51, %42
  %59 = load i64, i64* @EINVAL, align 8
  %60 = sub i64 0, %59
  store i64 %60, i64* %5, align 8
  br label %133

61:                                               ; preds = %51
  %62 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %6, align 8
  %63 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp sgt i32 %64, 8
  br i1 %65, label %66, label %106

66:                                               ; preds = %61
  %67 = load i32, i32* %14, align 4
  %68 = load i32, i32* %13, align 4
  %69 = shl i32 1, %68
  %70 = sub nsw i32 %69, 1
  %71 = and i32 %67, %70
  store i32 %71, i32* %11, align 4
  %72 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %6, align 8
  %73 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp eq i32 %74, 12
  br i1 %75, label %76, label %80

76:                                               ; preds = %66
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* @ADT7316_DA_12_BIT_LSB_SHIFT, align 4
  %79 = shl i32 %77, %78
  store i32 %79, i32* %12, align 4
  br label %84

80:                                               ; preds = %66
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* @ADT7316_DA_10_BIT_LSB_SHIFT, align 4
  %83 = shl i32 %81, %82
  store i32 %83, i32* %12, align 4
  br label %84

84:                                               ; preds = %80, %76
  %85 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %6, align 8
  %86 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32 (i32, i64, i32)*, i32 (i32, i64, i32)** %87, align 8
  %89 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %6, align 8
  %90 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load i64, i64* @ADT7316_DA_DATA_BASE, align 8
  %94 = load i32, i32* %7, align 4
  %95 = mul nsw i32 %94, 2
  %96 = sext i32 %95 to i64
  %97 = add nsw i64 %93, %96
  %98 = load i32, i32* %12, align 4
  %99 = call i32 %88(i32 %92, i64 %97, i32 %98)
  store i32 %99, i32* %15, align 4
  %100 = load i32, i32* %15, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %84
  %103 = load i64, i64* @EIO, align 8
  %104 = sub i64 0, %103
  store i64 %104, i64* %5, align 8
  br label %133

105:                                              ; preds = %84
  br label %106

106:                                              ; preds = %105, %61
  %107 = load i32, i32* %14, align 4
  %108 = load i32, i32* %13, align 4
  %109 = ashr i32 %107, %108
  store i32 %109, i32* %10, align 4
  %110 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %6, align 8
  %111 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i32 (i32, i64, i32)*, i32 (i32, i64, i32)** %112, align 8
  %114 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %6, align 8
  %115 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = load i64, i64* @ADT7316_DA_DATA_BASE, align 8
  %119 = add nsw i64 %118, 1
  %120 = load i32, i32* %7, align 4
  %121 = mul nsw i32 %120, 2
  %122 = sext i32 %121 to i64
  %123 = add nsw i64 %119, %122
  %124 = load i32, i32* %10, align 4
  %125 = call i32 %113(i32 %117, i64 %123, i32 %124)
  store i32 %125, i32* %15, align 4
  %126 = load i32, i32* %15, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %106
  %129 = load i64, i64* @EIO, align 8
  %130 = sub i64 0, %129
  store i64 %130, i64* %5, align 8
  br label %133

131:                                              ; preds = %106
  %132 = load i64, i64* %9, align 8
  store i64 %132, i64* %5, align 8
  br label %133

133:                                              ; preds = %131, %128, %102, %58, %39
  %134 = load i64, i64* %5, align 8
  ret i64 %134
}

declare dso_local i32 @kstrtou16(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
