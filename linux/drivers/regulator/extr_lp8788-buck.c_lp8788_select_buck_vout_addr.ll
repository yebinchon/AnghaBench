; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_lp8788-buck.c_lp8788_select_buck_vout_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_lp8788-buck.c_lp8788_select_buck_vout_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lp8788_buck = type { i32, i64 }
%struct.lp8788_buck1_dvs = type { i32 }
%struct.lp8788_buck2_dvs = type { i32* }

@EXTPIN = common dso_local global i32 0, align 4
@LP8788_BUCK_DVS_SEL = common dso_local global i32 0, align 4
@LP8788_BUCK1_DVS_M = common dso_local global i32 0, align 4
@LP8788_BUCK1_DVS_S = common dso_local global i32 0, align 4
@LP8788_BUCK1_VOUT0 = common dso_local global i32 0, align 4
@PIN_LOW = common dso_local global i32 0, align 4
@PIN_HIGH = common dso_local global i32 0, align 4
@LP8788_BUCK2_DVS_M = common dso_local global i32 0, align 4
@LP8788_BUCK2_DVS_S = common dso_local global i32 0, align 4
@LP8788_BUCK2_VOUT0 = common dso_local global i32 0, align 4
@INVALID_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lp8788_buck*, i32)* @lp8788_select_buck_vout_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp8788_select_buck_vout_addr(%struct.lp8788_buck* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lp8788_buck*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.lp8788_buck1_dvs*, align 8
  %8 = alloca %struct.lp8788_buck2_dvs*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.lp8788_buck* %0, %struct.lp8788_buck** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.lp8788_buck*, %struct.lp8788_buck** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @lp8788_get_buck_dvs_ctrl_mode(%struct.lp8788_buck* %14, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %5, align 4
  switch i32 %17, label %123 [
    i32 129, label %18
    i32 128, label %53
  ]

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @EXTPIN, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %38

22:                                               ; preds = %18
  %23 = load %struct.lp8788_buck*, %struct.lp8788_buck** %4, align 8
  %24 = getelementptr inbounds %struct.lp8788_buck, %struct.lp8788_buck* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.lp8788_buck1_dvs*
  store %struct.lp8788_buck1_dvs* %26, %struct.lp8788_buck1_dvs** %7, align 8
  %27 = load %struct.lp8788_buck1_dvs*, %struct.lp8788_buck1_dvs** %7, align 8
  %28 = icmp ne %struct.lp8788_buck1_dvs* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %22
  br label %126

30:                                               ; preds = %22
  %31 = load %struct.lp8788_buck1_dvs*, %struct.lp8788_buck1_dvs** %7, align 8
  %32 = getelementptr inbounds %struct.lp8788_buck1_dvs, %struct.lp8788_buck1_dvs* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @gpio_get_value(i32 %33)
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 1, i32 0
  store i32 %37, i32* %10, align 4
  br label %49

38:                                               ; preds = %18
  %39 = load %struct.lp8788_buck*, %struct.lp8788_buck** %4, align 8
  %40 = getelementptr inbounds %struct.lp8788_buck, %struct.lp8788_buck* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @LP8788_BUCK_DVS_SEL, align 4
  %43 = call i32 @lp8788_read_byte(i32 %41, i32 %42, i32* %9)
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @LP8788_BUCK1_DVS_M, align 4
  %46 = and i32 %44, %45
  %47 = load i32, i32* @LP8788_BUCK1_DVS_S, align 4
  %48 = ashr i32 %46, %47
  store i32 %48, i32* %10, align 4
  br label %49

49:                                               ; preds = %38, %30
  %50 = load i32, i32* @LP8788_BUCK1_VOUT0, align 4
  %51 = load i32, i32* %10, align 4
  %52 = add nsw i32 %50, %51
  store i32 %52, i32* %11, align 4
  br label %124

53:                                               ; preds = %2
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @EXTPIN, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %108

57:                                               ; preds = %53
  %58 = load %struct.lp8788_buck*, %struct.lp8788_buck** %4, align 8
  %59 = getelementptr inbounds %struct.lp8788_buck, %struct.lp8788_buck* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = inttoptr i64 %60 to %struct.lp8788_buck2_dvs*
  store %struct.lp8788_buck2_dvs* %61, %struct.lp8788_buck2_dvs** %8, align 8
  %62 = load %struct.lp8788_buck2_dvs*, %struct.lp8788_buck2_dvs** %8, align 8
  %63 = icmp ne %struct.lp8788_buck2_dvs* %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %57
  br label %126

65:                                               ; preds = %57
  %66 = load %struct.lp8788_buck2_dvs*, %struct.lp8788_buck2_dvs** %8, align 8
  %67 = getelementptr inbounds %struct.lp8788_buck2_dvs, %struct.lp8788_buck2_dvs* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @gpio_get_value(i32 %70)
  store i32 %71, i32* %12, align 4
  %72 = load %struct.lp8788_buck2_dvs*, %struct.lp8788_buck2_dvs** %8, align 8
  %73 = getelementptr inbounds %struct.lp8788_buck2_dvs, %struct.lp8788_buck2_dvs* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @gpio_get_value(i32 %76)
  store i32 %77, i32* %13, align 4
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* @PIN_LOW, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %65
  %82 = load i32, i32* %13, align 4
  %83 = load i32, i32* @PIN_LOW, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  store i32 0, i32* %10, align 4
  br label %107

86:                                               ; preds = %81, %65
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* @PIN_LOW, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %86
  %91 = load i32, i32* %13, align 4
  %92 = load i32, i32* @PIN_HIGH, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %90
  store i32 2, i32* %10, align 4
  br label %106

95:                                               ; preds = %90, %86
  %96 = load i32, i32* %12, align 4
  %97 = load i32, i32* @PIN_HIGH, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %104

99:                                               ; preds = %95
  %100 = load i32, i32* %13, align 4
  %101 = load i32, i32* @PIN_LOW, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %99
  store i32 1, i32* %10, align 4
  br label %105

104:                                              ; preds = %99, %95
  store i32 3, i32* %10, align 4
  br label %105

105:                                              ; preds = %104, %103
  br label %106

106:                                              ; preds = %105, %94
  br label %107

107:                                              ; preds = %106, %85
  br label %119

108:                                              ; preds = %53
  %109 = load %struct.lp8788_buck*, %struct.lp8788_buck** %4, align 8
  %110 = getelementptr inbounds %struct.lp8788_buck, %struct.lp8788_buck* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @LP8788_BUCK_DVS_SEL, align 4
  %113 = call i32 @lp8788_read_byte(i32 %111, i32 %112, i32* %9)
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* @LP8788_BUCK2_DVS_M, align 4
  %116 = and i32 %114, %115
  %117 = load i32, i32* @LP8788_BUCK2_DVS_S, align 4
  %118 = ashr i32 %116, %117
  store i32 %118, i32* %10, align 4
  br label %119

119:                                              ; preds = %108, %107
  %120 = load i32, i32* @LP8788_BUCK2_VOUT0, align 4
  %121 = load i32, i32* %10, align 4
  %122 = add nsw i32 %120, %121
  store i32 %122, i32* %11, align 4
  br label %124

123:                                              ; preds = %2
  br label %126

124:                                              ; preds = %119, %49
  %125 = load i32, i32* %11, align 4
  store i32 %125, i32* %3, align 4
  br label %128

126:                                              ; preds = %123, %64, %29
  %127 = load i32, i32* @INVALID_ADDR, align 4
  store i32 %127, i32* %3, align 4
  br label %128

128:                                              ; preds = %126, %124
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local i32 @lp8788_get_buck_dvs_ctrl_mode(%struct.lp8788_buck*, i32) #1

declare dso_local i32 @gpio_get_value(i32) #1

declare dso_local i32 @lp8788_read_byte(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
