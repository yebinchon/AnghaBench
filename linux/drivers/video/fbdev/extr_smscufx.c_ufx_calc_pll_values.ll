; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_smscufx.c_ufx_calc_pll_values.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_smscufx.c_ufx_calc_pll_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pll_values = type { i32, i32, i32, i32, i32, i32, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.pll_values*)* @ufx_calc_pll_values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ufx_calc_pll_values(i32 %0, %struct.pll_values* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pll_values*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.pll_values* %1, %struct.pll_values** %4, align 8
  store i32 25000000, i32* %5, align 4
  %20 = load i32, i32* %3, align 4
  store i32 %20, i32* %12, align 4
  store i32 1, i32* %6, align 4
  br label %21

21:                                               ; preds = %172, %2
  %22 = load i32, i32* %6, align 4
  %23 = icmp sle i32 %22, 32
  br i1 %23, label %24, label %175

24:                                               ; preds = %21
  %25 = load i32, i32* %6, align 4
  %26 = sdiv i32 25000000, %25
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %13, align 4
  %28 = icmp slt i32 %27, 5000000
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %175

30:                                               ; preds = %24
  %31 = load i32, i32* %13, align 4
  %32 = icmp sgt i32 %31, 200000000
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  br label %172

34:                                               ; preds = %30
  store i32 1, i32* %7, align 4
  br label %35

35:                                               ; preds = %168, %34
  %36 = load i32, i32* %7, align 4
  %37 = icmp sle i32 %36, 256
  br i1 %37, label %38, label %171

38:                                               ; preds = %35
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* %7, align 4
  %41 = mul nsw i32 %39, %40
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* %14, align 4
  %43 = icmp slt i32 %42, 350000000
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %168

45:                                               ; preds = %38
  %46 = load i32, i32* %14, align 4
  %47 = icmp sgt i32 %46, 700000000
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  br label %171

49:                                               ; preds = %45
  store i32 0, i32* %8, align 4
  br label %50

50:                                               ; preds = %164, %49
  %51 = load i32, i32* %8, align 4
  %52 = icmp slt i32 %51, 7
  br i1 %52, label %53, label %167

53:                                               ; preds = %50
  %54 = load i32, i32* %14, align 4
  %55 = load i32, i32* %8, align 4
  %56 = shl i32 1, %55
  %57 = sdiv i32 %54, %56
  store i32 %57, i32* %15, align 4
  %58 = load i32, i32* %15, align 4
  %59 = icmp slt i32 %58, 5000000
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  br label %167

61:                                               ; preds = %53
  %62 = load i32, i32* %15, align 4
  %63 = icmp sgt i32 %62, 200000000
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  br label %164

65:                                               ; preds = %61
  store i32 1, i32* %9, align 4
  br label %66

66:                                               ; preds = %160, %65
  %67 = load i32, i32* %9, align 4
  %68 = icmp sle i32 %67, 32
  br i1 %68, label %69, label %163

69:                                               ; preds = %66
  %70 = load i32, i32* %15, align 4
  %71 = load i32, i32* %9, align 4
  %72 = sdiv i32 %70, %71
  store i32 %72, i32* %16, align 4
  %73 = load i32, i32* %16, align 4
  %74 = icmp slt i32 %73, 5000000
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  br label %163

76:                                               ; preds = %69
  store i32 1, i32* %10, align 4
  br label %77

77:                                               ; preds = %156, %76
  %78 = load i32, i32* %10, align 4
  %79 = icmp sle i32 %78, 256
  br i1 %79, label %80, label %159

80:                                               ; preds = %77
  %81 = load i32, i32* %16, align 4
  %82 = load i32, i32* %10, align 4
  %83 = mul nsw i32 %81, %82
  store i32 %83, i32* %17, align 4
  %84 = load i32, i32* %17, align 4
  %85 = icmp slt i32 %84, 350000000
  br i1 %85, label %86, label %87

86:                                               ; preds = %80
  br label %156

87:                                               ; preds = %80
  %88 = load i32, i32* %17, align 4
  %89 = icmp sgt i32 %88, 700000000
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  br label %159

91:                                               ; preds = %87
  store i32 0, i32* %11, align 4
  br label %92

92:                                               ; preds = %152, %91
  %93 = load i32, i32* %11, align 4
  %94 = icmp slt i32 %93, 7
  br i1 %94, label %95, label %155

95:                                               ; preds = %92
  %96 = load i32, i32* %17, align 4
  %97 = load i32, i32* %11, align 4
  %98 = shl i32 1, %97
  %99 = sdiv i32 %96, %98
  store i32 %99, i32* %18, align 4
  %100 = load i32, i32* %18, align 4
  %101 = load i32, i32* %3, align 4
  %102 = sub nsw i32 %100, %101
  %103 = call i32 @abs(i32 %102) #3
  store i32 %103, i32* %19, align 4
  %104 = load i32, i32* %18, align 4
  %105 = icmp slt i32 %104, 5000000
  br i1 %105, label %106, label %107

106:                                              ; preds = %95
  br label %155

107:                                              ; preds = %95
  %108 = load i32, i32* %18, align 4
  %109 = icmp sgt i32 %108, 700000000
  br i1 %109, label %110, label %111

110:                                              ; preds = %107
  br label %152

111:                                              ; preds = %107
  %112 = load i32, i32* %19, align 4
  %113 = load i32, i32* %12, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %151

115:                                              ; preds = %111
  %116 = load i32, i32* %19, align 4
  store i32 %116, i32* %12, align 4
  %117 = load i32, i32* %6, align 4
  %118 = sub nsw i32 %117, 1
  %119 = load %struct.pll_values*, %struct.pll_values** %4, align 8
  %120 = getelementptr inbounds %struct.pll_values, %struct.pll_values* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 8
  %121 = load i32, i32* %7, align 4
  %122 = sub nsw i32 %121, 1
  %123 = load %struct.pll_values*, %struct.pll_values** %4, align 8
  %124 = getelementptr inbounds %struct.pll_values, %struct.pll_values* %123, i32 0, i32 1
  store i32 %122, i32* %124, align 4
  %125 = load i32, i32* %8, align 4
  %126 = load %struct.pll_values*, %struct.pll_values** %4, align 8
  %127 = getelementptr inbounds %struct.pll_values, %struct.pll_values* %126, i32 0, i32 2
  store i32 %125, i32* %127, align 8
  %128 = load i32, i32* %9, align 4
  %129 = sub nsw i32 %128, 1
  %130 = load %struct.pll_values*, %struct.pll_values** %4, align 8
  %131 = getelementptr inbounds %struct.pll_values, %struct.pll_values* %130, i32 0, i32 3
  store i32 %129, i32* %131, align 4
  %132 = load i32, i32* %10, align 4
  %133 = sub nsw i32 %132, 1
  %134 = load %struct.pll_values*, %struct.pll_values** %4, align 8
  %135 = getelementptr inbounds %struct.pll_values, %struct.pll_values* %134, i32 0, i32 4
  store i32 %133, i32* %135, align 8
  %136 = load i32, i32* %11, align 4
  %137 = load %struct.pll_values*, %struct.pll_values** %4, align 8
  %138 = getelementptr inbounds %struct.pll_values, %struct.pll_values* %137, i32 0, i32 5
  store i32 %136, i32* %138, align 4
  %139 = load i32, i32* %13, align 4
  %140 = call i8* @ufx_calc_range(i32 %139)
  %141 = load %struct.pll_values*, %struct.pll_values** %4, align 8
  %142 = getelementptr inbounds %struct.pll_values, %struct.pll_values* %141, i32 0, i32 7
  store i8* %140, i8** %142, align 8
  %143 = load i32, i32* %16, align 4
  %144 = call i8* @ufx_calc_range(i32 %143)
  %145 = load %struct.pll_values*, %struct.pll_values** %4, align 8
  %146 = getelementptr inbounds %struct.pll_values, %struct.pll_values* %145, i32 0, i32 6
  store i8* %144, i8** %146, align 8
  %147 = load i32, i32* %12, align 4
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %115
  br label %175

150:                                              ; preds = %115
  br label %151

151:                                              ; preds = %150, %111
  br label %152

152:                                              ; preds = %151, %110
  %153 = load i32, i32* %11, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %11, align 4
  br label %92

155:                                              ; preds = %106, %92
  br label %156

156:                                              ; preds = %155, %86
  %157 = load i32, i32* %10, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %10, align 4
  br label %77

159:                                              ; preds = %90, %77
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %9, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %9, align 4
  br label %66

163:                                              ; preds = %75, %66
  br label %164

164:                                              ; preds = %163, %64
  %165 = load i32, i32* %8, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %8, align 4
  br label %50

167:                                              ; preds = %60, %50
  br label %168

168:                                              ; preds = %167, %44
  %169 = load i32, i32* %7, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %7, align 4
  br label %35

171:                                              ; preds = %48, %35
  br label %172

172:                                              ; preds = %171, %33
  %173 = load i32, i32* %6, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %6, align 4
  br label %21

175:                                              ; preds = %149, %29, %21
  ret void
}

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #1

declare dso_local i8* @ufx_calc_range(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
