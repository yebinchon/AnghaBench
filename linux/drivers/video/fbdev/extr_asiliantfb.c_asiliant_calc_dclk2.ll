; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_asiliantfb.c_asiliant_calc_dclk2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_asiliantfb.c_asiliant_calc_dclk2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Fref = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i8*, i8*)* @asiliant_calc_dclk2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asiliant_calc_dclk2(i32* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8, align 1
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = udiv i32 1000000, %23
  %25 = mul i32 1000000, %24
  store i32 %25, i32* %10, align 4
  store i32 -1, i32* %12, align 4
  store i32 -1, i32* %13, align 4
  store i32 -1, i32* %14, align 4
  store i8 0, i8* %17, align 1
  %26 = load i32, i32* %9, align 4
  %27 = udiv i32 1000000, %26
  store i32 %27, i32* %15, align 4
  %28 = load i32, i32* %9, align 4
  %29 = urem i32 1000000, %28
  store i32 %29, i32* %16, align 4
  %30 = load i32, i32* %15, align 4
  %31 = mul i32 1000000, %30
  %32 = load i32, i32* %16, align 4
  %33 = mul i32 1000000, %32
  %34 = load i32, i32* %9, align 4
  %35 = udiv i32 %33, %34
  %36 = add i32 %31, %35
  store i32 %36, i32* %10, align 4
  br label %37

37:                                               ; preds = %40, %4
  %38 = load i32, i32* %10, align 4
  %39 = icmp ult i32 %38, 100000000
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  %41 = load i8, i8* %17, align 1
  %42 = zext i8 %41 to i32
  %43 = add nsw i32 %42, 16
  %44 = trunc i32 %43 to i8
  store i8 %44, i8* %17, align 1
  %45 = load i32, i32* %10, align 4
  %46 = shl i32 %45, 1
  store i32 %46, i32* %10, align 4
  br label %37

47:                                               ; preds = %37
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @Fref, align 4
  %50 = udiv i32 %48, %49
  store i32 %50, i32* %15, align 4
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* @Fref, align 4
  %53 = urem i32 %51, %52
  store i32 %53, i32* %16, align 4
  store i32 3, i32* %11, align 4
  br label %54

54:                                               ; preds = %148, %47
  %55 = load i32, i32* %11, align 4
  %56 = icmp ule i32 %55, 257
  br i1 %56, label %57, label %151

57:                                               ; preds = %54
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* %15, align 4
  %60 = mul i32 %58, %59
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %16, align 4
  %63 = mul i32 %61, %62
  %64 = load i32, i32* @Fref, align 4
  %65 = udiv i32 %63, %64
  %66 = add i32 %60, %65
  store i32 %66, i32* %18, align 4
  %67 = load i32, i32* %18, align 4
  %68 = icmp uge i32 %67, 3
  br i1 %68, label %69, label %106

69:                                               ; preds = %57
  %70 = load i32, i32* %18, align 4
  %71 = icmp ule i32 %70, 257
  br i1 %71, label %72, label %106

72:                                               ; preds = %69
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %11, align 4
  %75 = mul i32 %73, %74
  %76 = load i32, i32* @Fref, align 4
  %77 = load i32, i32* %18, align 4
  %78 = mul i32 %76, %77
  %79 = icmp uge i32 %75, %78
  br i1 %79, label %80, label %88

80:                                               ; preds = %72
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %11, align 4
  %83 = mul i32 %81, %82
  %84 = load i32, i32* @Fref, align 4
  %85 = load i32, i32* %18, align 4
  %86 = mul i32 %84, %85
  %87 = sub i32 %83, %86
  br label %96

88:                                               ; preds = %72
  %89 = load i32, i32* @Fref, align 4
  %90 = load i32, i32* %18, align 4
  %91 = mul i32 %89, %90
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* %11, align 4
  %94 = mul i32 %92, %93
  %95 = sub i32 %91, %94
  br label %96

96:                                               ; preds = %88, %80
  %97 = phi i32 [ %87, %80 ], [ %95, %88 ]
  store i32 %97, i32* %19, align 4
  %98 = load i32, i32* %19, align 4
  %99 = load i32, i32* %12, align 4
  %100 = icmp ult i32 %98, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %96
  %102 = load i32, i32* %11, align 4
  store i32 %102, i32* %14, align 4
  %103 = load i32, i32* %18, align 4
  store i32 %103, i32* %13, align 4
  %104 = load i32, i32* %19, align 4
  store i32 %104, i32* %12, align 4
  br label %105

105:                                              ; preds = %101, %96
  br label %147

106:                                              ; preds = %69, %57
  %107 = load i32, i32* %18, align 4
  %108 = icmp ule i32 %107, 1028
  br i1 %108, label %109, label %146

109:                                              ; preds = %106
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* %11, align 4
  %112 = mul i32 %110, %111
  %113 = load i32, i32* @Fref, align 4
  %114 = load i32, i32* %18, align 4
  %115 = and i32 %114, -4
  %116 = mul i32 %113, %115
  %117 = icmp uge i32 %112, %116
  br i1 %117, label %118, label %127

118:                                              ; preds = %109
  %119 = load i32, i32* %10, align 4
  %120 = load i32, i32* %11, align 4
  %121 = mul i32 %119, %120
  %122 = load i32, i32* @Fref, align 4
  %123 = load i32, i32* %18, align 4
  %124 = and i32 %123, -4
  %125 = mul i32 %122, %124
  %126 = sub i32 %121, %125
  br label %136

127:                                              ; preds = %109
  %128 = load i32, i32* @Fref, align 4
  %129 = load i32, i32* %18, align 4
  %130 = and i32 %129, -4
  %131 = mul i32 %128, %130
  %132 = load i32, i32* %10, align 4
  %133 = load i32, i32* %11, align 4
  %134 = mul i32 %132, %133
  %135 = sub i32 %131, %134
  br label %136

136:                                              ; preds = %127, %118
  %137 = phi i32 [ %126, %118 ], [ %135, %127 ]
  store i32 %137, i32* %20, align 4
  %138 = load i32, i32* %20, align 4
  %139 = load i32, i32* %12, align 4
  %140 = icmp ult i32 %138, %139
  br i1 %140, label %141, label %145

141:                                              ; preds = %136
  %142 = load i32, i32* %11, align 4
  store i32 %142, i32* %14, align 4
  %143 = load i32, i32* %18, align 4
  store i32 %143, i32* %13, align 4
  %144 = load i32, i32* %20, align 4
  store i32 %144, i32* %12, align 4
  br label %145

145:                                              ; preds = %141, %136
  br label %146

146:                                              ; preds = %145, %106
  br label %147

147:                                              ; preds = %146, %105
  br label %148

148:                                              ; preds = %147
  %149 = load i32, i32* %11, align 4
  %150 = add i32 %149, 1
  store i32 %150, i32* %11, align 4
  br label %54

151:                                              ; preds = %54
  %152 = load i32, i32* %13, align 4
  %153 = icmp ugt i32 %152, 257
  br i1 %153, label %154, label %157

154:                                              ; preds = %151
  %155 = load i32, i32* %13, align 4
  %156 = lshr i32 %155, 2
  store i32 %156, i32* %13, align 4
  br label %162

157:                                              ; preds = %151
  %158 = load i8, i8* %17, align 1
  %159 = zext i8 %158 to i32
  %160 = or i32 %159, 4
  %161 = trunc i32 %160 to i8
  store i8 %161, i8* %17, align 1
  br label %162

162:                                              ; preds = %157, %154
  %163 = load i32, i32* %13, align 4
  %164 = sub i32 %163, 2
  %165 = trunc i32 %164 to i8
  %166 = load i8*, i8** %6, align 8
  store i8 %165, i8* %166, align 1
  %167 = load i32, i32* %14, align 4
  %168 = sub i32 %167, 2
  %169 = trunc i32 %168 to i8
  %170 = load i8*, i8** %7, align 8
  store i8 %169, i8* %170, align 1
  %171 = load i8, i8* %17, align 1
  %172 = load i8*, i8** %8, align 8
  store i8 %171, i8* %172, align 1
  %173 = load i32, i32* %9, align 4
  %174 = load i32*, i32** %5, align 8
  store i32 %173, i32* %174, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
