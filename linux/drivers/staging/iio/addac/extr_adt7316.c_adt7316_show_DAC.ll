; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/addac/extr_adt7316.c_adt7316_show_DAC.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/addac/extr_adt7316.c_adt7316_show_DAC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adt7316_chip_info = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (i32, i64, i32*)*, i32 }

@ADT7316_DA_MSB_DATA_REGS = common dso_local global i32 0, align 4
@ADT7316_EN_IN_TEMP_PROP_DACA = common dso_local global i32 0, align 4
@ADT7316_EN_EX_TEMP_PROP_DACB = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@ADT7316_DA_DATA_BASE = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@ADT7316_DA_12_BIT_LSB_SHIFT = common dso_local global i32 0, align 4
@ADT7316_DA_10_BIT_LSB_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adt7316_chip_info*, i32, i8*)* @adt7316_show_DAC to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adt7316_show_DAC(%struct.adt7316_chip_info* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.adt7316_chip_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.adt7316_chip_info* %0, %struct.adt7316_chip_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %8, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @ADT7316_DA_MSB_DATA_REGS, align 4
  %15 = icmp sge i32 %13, %14
  br i1 %15, label %36, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %16
  %20 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %5, align 8
  %21 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @ADT7316_EN_IN_TEMP_PROP_DACA, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %36, label %26

26:                                               ; preds = %19, %16
  %27 = load i32, i32* %6, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %39

29:                                               ; preds = %26
  %30 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %5, align 8
  %31 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @ADT7316_EN_EX_TEMP_PROP_DACB, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %29, %19, %3
  %37 = load i32, i32* @EPERM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %118

39:                                               ; preds = %29, %26
  %40 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %5, align 8
  %41 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = sub nsw i32 %42, 8
  store i32 %43, i32* %11, align 4
  %44 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %5, align 8
  %45 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp sgt i32 %46, 8
  br i1 %47, label %48, label %69

48:                                               ; preds = %39
  %49 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %5, align 8
  %50 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32 (i32, i64, i32*)*, i32 (i32, i64, i32*)** %51, align 8
  %53 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %5, align 8
  %54 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i64, i64* @ADT7316_DA_DATA_BASE, align 8
  %58 = load i32, i32* %6, align 4
  %59 = mul nsw i32 %58, 2
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %57, %60
  %62 = call i32 %52(i32 %56, i64 %61, i32* %10)
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %12, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %48
  %66 = load i32, i32* @EIO, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %118

68:                                               ; preds = %48
  br label %69

69:                                               ; preds = %68, %39
  %70 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %5, align 8
  %71 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32 (i32, i64, i32*)*, i32 (i32, i64, i32*)** %72, align 8
  %74 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %5, align 8
  %75 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load i64, i64* @ADT7316_DA_DATA_BASE, align 8
  %79 = add nsw i64 %78, 1
  %80 = load i32, i32* %6, align 4
  %81 = mul nsw i32 %80, 2
  %82 = sext i32 %81 to i64
  %83 = add nsw i64 %79, %82
  %84 = call i32 %73(i32 %77, i64 %83, i32* %9)
  store i32 %84, i32* %12, align 4
  %85 = load i32, i32* %12, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %69
  %88 = load i32, i32* @EIO, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %4, align 4
  br label %118

90:                                               ; preds = %69
  %91 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %5, align 8
  %92 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = icmp eq i32 %93, 12
  br i1 %94, label %95, label %99

95:                                               ; preds = %90
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* @ADT7316_DA_12_BIT_LSB_SHIFT, align 4
  %98 = ashr i32 %96, %97
  store i32 %98, i32* %8, align 4
  br label %109

99:                                               ; preds = %90
  %100 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %5, align 8
  %101 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = icmp eq i32 %102, 10
  br i1 %103, label %104, label %108

104:                                              ; preds = %99
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* @ADT7316_DA_10_BIT_LSB_SHIFT, align 4
  %107 = ashr i32 %105, %106
  store i32 %107, i32* %8, align 4
  br label %108

108:                                              ; preds = %104, %99
  br label %109

109:                                              ; preds = %108, %95
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* %11, align 4
  %112 = shl i32 %110, %111
  %113 = load i32, i32* %8, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %8, align 4
  %115 = load i8*, i8** %7, align 8
  %116 = load i32, i32* %8, align 4
  %117 = call i32 @sprintf(i8* %115, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %116)
  store i32 %117, i32* %4, align 4
  br label %118

118:                                              ; preds = %109, %87, %65, %36
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
