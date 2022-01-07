; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_dt2811.c_dt2811_ns_to_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_dt2811.c_dt2811_ns_to_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@COMEDI_MIN_SPEED = common dso_local global i64 0, align 8
@dt2811_clk_dividers = common dso_local global i32* null, align 8
@dt2811_clk_multipliers = common dso_local global i32* null, align 8
@DT2811_OSC_BASE = common dso_local global i64 0, align 8
@CMDF_ROUND_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @dt2811_ns_to_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dt2811_ns_to_timer(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %17 = load i64, i64* @COMEDI_MIN_SPEED, align 8
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %19

19:                                               ; preds = %88, %2
  %20 = load i32, i32* %11, align 4
  %21 = icmp ule i32 %20, 7
  br i1 %21, label %22, label %91

22:                                               ; preds = %19
  store i32 0, i32* %12, align 4
  br label %23

23:                                               ; preds = %84, %22
  %24 = load i32, i32* %12, align 4
  %25 = icmp ule i32 %24, 7
  br i1 %25, label %26, label %87

26:                                               ; preds = %23
  %27 = load i32*, i32** @dt2811_clk_dividers, align 8
  %28 = load i32, i32* %11, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %13, align 4
  %32 = load i32*, i32** @dt2811_clk_multipliers, align 8
  %33 = load i32, i32* %12, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* %14, align 4
  %39 = mul i32 %37, %38
  %40 = zext i32 %39 to i64
  store i64 %40, i64* %15, align 8
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @DT2811_TMRCTR_MANTISSA(i32 %41)
  %43 = load i32, i32* %12, align 4
  %44 = call i32 @DT2811_TMRCTR_EXPONENT(i32 %43)
  %45 = or i32 %42, %44
  store i32 %45, i32* %16, align 4
  %46 = load i64, i64* %15, align 8
  %47 = load i64, i64* @DT2811_OSC_BASE, align 8
  %48 = mul i64 %46, %47
  store i64 %48, i64* %6, align 8
  %49 = load i64, i64* %6, align 8
  %50 = load i64, i64* @COMEDI_MIN_SPEED, align 8
  %51 = icmp ugt i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %26
  br label %84

53:                                               ; preds = %26
  %54 = load i64, i64* %6, align 8
  %55 = load i32*, i32** %4, align 8
  %56 = load i32, i32* %55, align 4
  %57 = zext i32 %56 to i64
  %58 = icmp ule i64 %54, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %53
  %60 = load i64, i64* %6, align 8
  %61 = load i32, i32* %8, align 4
  %62 = zext i32 %61 to i64
  %63 = icmp ugt i64 %60, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load i64, i64* %6, align 8
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %16, align 4
  store i32 %67, i32* %9, align 4
  br label %68

68:                                               ; preds = %64, %59, %53
  %69 = load i64, i64* %6, align 8
  %70 = load i32*, i32** %4, align 8
  %71 = load i32, i32* %70, align 4
  %72 = zext i32 %71 to i64
  %73 = icmp uge i64 %69, %72
  br i1 %73, label %74, label %83

74:                                               ; preds = %68
  %75 = load i64, i64* %6, align 8
  %76 = load i32, i32* %7, align 4
  %77 = zext i32 %76 to i64
  %78 = icmp ult i64 %75, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = load i64, i64* %6, align 8
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %16, align 4
  store i32 %82, i32* %10, align 4
  br label %83

83:                                               ; preds = %79, %74, %68
  br label %84

84:                                               ; preds = %83, %52
  %85 = load i32, i32* %12, align 4
  %86 = add i32 %85, 1
  store i32 %86, i32* %12, align 4
  br label %23

87:                                               ; preds = %23
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %11, align 4
  %90 = add i32 %89, 1
  store i32 %90, i32* %11, align 4
  br label %19

91:                                               ; preds = %19
  %92 = load i32, i32* %7, align 4
  %93 = zext i32 %92 to i64
  %94 = load i64, i64* @COMEDI_MIN_SPEED, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load i32, i32* %8, align 4
  store i32 %97, i32* %7, align 4
  %98 = load i32, i32* %9, align 4
  store i32 %98, i32* %10, align 4
  br label %99

99:                                               ; preds = %96, %91
  %100 = load i32, i32* %8, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = load i32, i32* %7, align 4
  store i32 %103, i32* %8, align 4
  %104 = load i32, i32* %10, align 4
  store i32 %104, i32* %9, align 4
  br label %105

105:                                              ; preds = %102, %99
  %106 = load i32, i32* %5, align 4
  %107 = load i32, i32* @CMDF_ROUND_MASK, align 4
  %108 = and i32 %106, %107
  switch i32 %108, label %110 [
    i32 129, label %109
    i32 128, label %128
    i32 130, label %132
  ]

109:                                              ; preds = %105
  br label %110

110:                                              ; preds = %105, %109
  %111 = load i32, i32* %8, align 4
  %112 = load i32*, i32** %4, align 8
  %113 = load i32, i32* %112, align 4
  %114 = sub i32 %111, %113
  %115 = load i32*, i32** %4, align 8
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %7, align 4
  %118 = sub i32 %116, %117
  %119 = icmp ult i32 %114, %118
  br i1 %119, label %120, label %124

120:                                              ; preds = %110
  %121 = load i32, i32* %7, align 4
  %122 = load i32*, i32** %4, align 8
  store i32 %121, i32* %122, align 4
  %123 = load i32, i32* %10, align 4
  store i32 %123, i32* %3, align 4
  br label %136

124:                                              ; preds = %110
  %125 = load i32, i32* %8, align 4
  %126 = load i32*, i32** %4, align 8
  store i32 %125, i32* %126, align 4
  %127 = load i32, i32* %9, align 4
  store i32 %127, i32* %3, align 4
  br label %136

128:                                              ; preds = %105
  %129 = load i32, i32* %7, align 4
  %130 = load i32*, i32** %4, align 8
  store i32 %129, i32* %130, align 4
  %131 = load i32, i32* %10, align 4
  store i32 %131, i32* %3, align 4
  br label %136

132:                                              ; preds = %105
  %133 = load i32, i32* %8, align 4
  %134 = load i32*, i32** %4, align 8
  store i32 %133, i32* %134, align 4
  %135 = load i32, i32* %9, align 4
  store i32 %135, i32* %3, align 4
  br label %136

136:                                              ; preds = %132, %128, %124, %120
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

declare dso_local i32 @DT2811_TMRCTR_MANTISSA(i32) #1

declare dso_local i32 @DT2811_TMRCTR_EXPONENT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
