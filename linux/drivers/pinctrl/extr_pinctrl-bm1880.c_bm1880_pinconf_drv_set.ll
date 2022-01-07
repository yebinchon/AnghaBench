; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-bm1880.c_bm1880_pinconf_drv_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-bm1880.c_bm1880_pinconf_drv_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*, i32)* @bm1880_pinconf_drv_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bm1880_pinconf_drv_set(i32 %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i32*, i32** %8, align 8
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp eq i32 %13, 3
  br i1 %14, label %15, label %109

15:                                               ; preds = %4
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %105 [
    i32 4, label %17
    i32 8, label %28
    i32 12, label %39
    i32 16, label %50
    i32 20, label %61
    i32 24, label %72
    i32 28, label %83
    i32 32, label %94
  ]

17:                                               ; preds = %15
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %9, align 4
  %20 = shl i32 %18, %19
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %10, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %9, align 4
  %25 = shl i32 0, %24
  %26 = load i32, i32* %10, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %10, align 4
  br label %108

28:                                               ; preds = %15
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %9, align 4
  %31 = shl i32 %29, %30
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %10, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %9, align 4
  %36 = shl i32 1, %35
  %37 = load i32, i32* %10, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %10, align 4
  br label %108

39:                                               ; preds = %15
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %9, align 4
  %42 = shl i32 %40, %41
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %10, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %9, align 4
  %47 = shl i32 2, %46
  %48 = load i32, i32* %10, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %10, align 4
  br label %108

50:                                               ; preds = %15
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %9, align 4
  %53 = shl i32 %51, %52
  %54 = xor i32 %53, -1
  %55 = load i32, i32* %10, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %9, align 4
  %58 = shl i32 3, %57
  %59 = load i32, i32* %10, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %10, align 4
  br label %108

61:                                               ; preds = %15
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %9, align 4
  %64 = shl i32 %62, %63
  %65 = xor i32 %64, -1
  %66 = load i32, i32* %10, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %9, align 4
  %69 = shl i32 4, %68
  %70 = load i32, i32* %10, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %10, align 4
  br label %108

72:                                               ; preds = %15
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* %9, align 4
  %75 = shl i32 %73, %74
  %76 = xor i32 %75, -1
  %77 = load i32, i32* %10, align 4
  %78 = and i32 %77, %76
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %9, align 4
  %80 = shl i32 5, %79
  %81 = load i32, i32* %10, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %10, align 4
  br label %108

83:                                               ; preds = %15
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* %9, align 4
  %86 = shl i32 %84, %85
  %87 = xor i32 %86, -1
  %88 = load i32, i32* %10, align 4
  %89 = and i32 %88, %87
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* %9, align 4
  %91 = shl i32 6, %90
  %92 = load i32, i32* %10, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %10, align 4
  br label %108

94:                                               ; preds = %15
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* %9, align 4
  %97 = shl i32 %95, %96
  %98 = xor i32 %97, -1
  %99 = load i32, i32* %10, align 4
  %100 = and i32 %99, %98
  store i32 %100, i32* %10, align 4
  %101 = load i32, i32* %9, align 4
  %102 = shl i32 7, %101
  %103 = load i32, i32* %10, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %10, align 4
  br label %108

105:                                              ; preds = %15
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %5, align 4
  br label %162

108:                                              ; preds = %94, %83, %72, %61, %50, %39, %28, %17
  br label %159

109:                                              ; preds = %4
  %110 = load i32, i32* %6, align 4
  switch i32 %110, label %155 [
    i32 4, label %111
    i32 8, label %122
    i32 12, label %133
    i32 16, label %144
  ]

111:                                              ; preds = %109
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* %9, align 4
  %114 = shl i32 %112, %113
  %115 = xor i32 %114, -1
  %116 = load i32, i32* %10, align 4
  %117 = and i32 %116, %115
  store i32 %117, i32* %10, align 4
  %118 = load i32, i32* %9, align 4
  %119 = shl i32 0, %118
  %120 = load i32, i32* %10, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %10, align 4
  br label %158

122:                                              ; preds = %109
  %123 = load i32, i32* %7, align 4
  %124 = load i32, i32* %9, align 4
  %125 = shl i32 %123, %124
  %126 = xor i32 %125, -1
  %127 = load i32, i32* %10, align 4
  %128 = and i32 %127, %126
  store i32 %128, i32* %10, align 4
  %129 = load i32, i32* %9, align 4
  %130 = shl i32 1, %129
  %131 = load i32, i32* %10, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %10, align 4
  br label %158

133:                                              ; preds = %109
  %134 = load i32, i32* %7, align 4
  %135 = load i32, i32* %9, align 4
  %136 = shl i32 %134, %135
  %137 = xor i32 %136, -1
  %138 = load i32, i32* %10, align 4
  %139 = and i32 %138, %137
  store i32 %139, i32* %10, align 4
  %140 = load i32, i32* %9, align 4
  %141 = shl i32 2, %140
  %142 = load i32, i32* %10, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %10, align 4
  br label %158

144:                                              ; preds = %109
  %145 = load i32, i32* %7, align 4
  %146 = load i32, i32* %9, align 4
  %147 = shl i32 %145, %146
  %148 = xor i32 %147, -1
  %149 = load i32, i32* %10, align 4
  %150 = and i32 %149, %148
  store i32 %150, i32* %10, align 4
  %151 = load i32, i32* %9, align 4
  %152 = shl i32 3, %151
  %153 = load i32, i32* %10, align 4
  %154 = or i32 %153, %152
  store i32 %154, i32* %10, align 4
  br label %158

155:                                              ; preds = %109
  %156 = load i32, i32* @EINVAL, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %5, align 4
  br label %162

158:                                              ; preds = %144, %133, %122, %111
  br label %159

159:                                              ; preds = %158, %108
  %160 = load i32, i32* %10, align 4
  %161 = load i32*, i32** %8, align 8
  store i32 %160, i32* %161, align 4
  store i32 0, i32* %5, align 4
  br label %162

162:                                              ; preds = %159, %155, %105
  %163 = load i32, i32* %5, align 4
  ret i32 %163
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
