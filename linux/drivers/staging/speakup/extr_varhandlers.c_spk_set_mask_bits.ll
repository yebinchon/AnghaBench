; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_varhandlers.c_spk_set_mask_bits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_varhandlers.c_spk_set_mask_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i16, i32* }

@spk_punc_info = common dso_local global %struct.TYPE_2__* null, align 8
@spk_chartab = common dso_local global i16* null, align 8
@SPACE = common dso_local global i32 0, align 4
@PUNC = common dso_local global i16 0, align 2
@B_NUM = common dso_local global i16 0, align 2
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spk_set_mask_bits(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i16, align 2
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @spk_punc_info, align 8
  %11 = load i32, i32* %6, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i16, i16* %14, align 8
  store i16 %15, i16* %9, align 2
  %16 = load i32, i32* %7, align 4
  %17 = and i32 %16, 1
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %45

19:                                               ; preds = %3
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @spk_punc_info, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 3
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %8, align 8
  br label %24

24:                                               ; preds = %41, %19
  %25 = load i32*, i32** %8, align 8
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %24
  %29 = load i16, i16* %9, align 2
  %30 = sext i16 %29 to i32
  %31 = xor i32 %30, -1
  %32 = load i16*, i16** @spk_chartab, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i16, i16* %32, i64 %35
  %37 = load i16, i16* %36, align 2
  %38 = sext i16 %37 to i32
  %39 = and i32 %38, %31
  %40 = trunc i32 %39 to i16
  store i16 %40, i16* %36, align 2
  br label %41

41:                                               ; preds = %28
  %42 = load i32*, i32** %8, align 8
  %43 = getelementptr inbounds i32, i32* %42, i32 1
  store i32* %43, i32** %8, align 8
  br label %24

44:                                               ; preds = %24
  br label %45

45:                                               ; preds = %44, %3
  %46 = load i8*, i8** %5, align 8
  %47 = bitcast i8* %46 to i32*
  store i32* %47, i32** %8, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %57, label %50

50:                                               ; preds = %45
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** @spk_punc_info, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  store i32* %56, i32** %8, align 8
  br label %116

57:                                               ; preds = %45
  br label %58

58:                                               ; preds = %103, %57
  %59 = load i32*, i32** %8, align 8
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %106

62:                                               ; preds = %58
  %63 = load i32*, i32** %8, align 8
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @SPACE, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  br label %106

68:                                               ; preds = %62
  %69 = load i16, i16* %9, align 2
  %70 = sext i16 %69 to i32
  %71 = load i16, i16* @PUNC, align 2
  %72 = sext i16 %71 to i32
  %73 = icmp slt i32 %70, %72
  br i1 %73, label %74, label %88

74:                                               ; preds = %68
  %75 = load i16*, i16** @spk_chartab, align 8
  %76 = load i32*, i32** %8, align 8
  %77 = load i32, i32* %76, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i16, i16* %75, i64 %78
  %80 = load i16, i16* %79, align 2
  %81 = sext i16 %80 to i32
  %82 = load i16, i16* @PUNC, align 2
  %83 = sext i16 %82 to i32
  %84 = and i32 %81, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %74
  br label %106

87:                                               ; preds = %74
  br label %102

88:                                               ; preds = %68
  %89 = load i16*, i16** @spk_chartab, align 8
  %90 = load i32*, i32** %8, align 8
  %91 = load i32, i32* %90, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i16, i16* %89, i64 %92
  %94 = load i16, i16* %93, align 2
  %95 = sext i16 %94 to i32
  %96 = load i16, i16* @B_NUM, align 2
  %97 = sext i16 %96 to i32
  %98 = and i32 %95, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %88
  br label %106

101:                                              ; preds = %88
  br label %102

102:                                              ; preds = %101, %87
  br label %103

103:                                              ; preds = %102
  %104 = load i32*, i32** %8, align 8
  %105 = getelementptr inbounds i32, i32* %104, i32 1
  store i32* %105, i32** %8, align 8
  br label %58

106:                                              ; preds = %100, %86, %67, %58
  %107 = load i32*, i32** %8, align 8
  %108 = load i32, i32* %107, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %106
  %111 = load i32, i32* @EINVAL, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %4, align 4
  br label %176

113:                                              ; preds = %106
  %114 = load i8*, i8** %5, align 8
  %115 = bitcast i8* %114 to i32*
  store i32* %115, i32** %8, align 8
  br label %116

116:                                              ; preds = %113, %50
  %117 = load i32, i32* %7, align 4
  %118 = and i32 %117, 2
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %147

120:                                              ; preds = %116
  br label %121

121:                                              ; preds = %143, %120
  %122 = load i32*, i32** %8, align 8
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %146

125:                                              ; preds = %121
  %126 = load i32*, i32** %8, align 8
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @SPACE, align 4
  %129 = icmp sgt i32 %127, %128
  br i1 %129, label %130, label %142

130:                                              ; preds = %125
  %131 = load i16, i16* %9, align 2
  %132 = sext i16 %131 to i32
  %133 = load i16*, i16** @spk_chartab, align 8
  %134 = load i32*, i32** %8, align 8
  %135 = load i32, i32* %134, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i16, i16* %133, i64 %136
  %138 = load i16, i16* %137, align 2
  %139 = sext i16 %138 to i32
  %140 = or i32 %139, %132
  %141 = trunc i32 %140 to i16
  store i16 %141, i16* %137, align 2
  br label %142

142:                                              ; preds = %130, %125
  br label %143

143:                                              ; preds = %142
  %144 = load i32*, i32** %8, align 8
  %145 = getelementptr inbounds i32, i32* %144, i32 1
  store i32* %145, i32** %8, align 8
  br label %121

146:                                              ; preds = %121
  br label %175

147:                                              ; preds = %116
  br label %148

148:                                              ; preds = %171, %147
  %149 = load i32*, i32** %8, align 8
  %150 = load i32, i32* %149, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %174

152:                                              ; preds = %148
  %153 = load i32*, i32** %8, align 8
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @SPACE, align 4
  %156 = icmp sgt i32 %154, %155
  br i1 %156, label %157, label %170

157:                                              ; preds = %152
  %158 = load i16, i16* %9, align 2
  %159 = sext i16 %158 to i32
  %160 = xor i32 %159, -1
  %161 = load i16*, i16** @spk_chartab, align 8
  %162 = load i32*, i32** %8, align 8
  %163 = load i32, i32* %162, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i16, i16* %161, i64 %164
  %166 = load i16, i16* %165, align 2
  %167 = sext i16 %166 to i32
  %168 = and i32 %167, %160
  %169 = trunc i32 %168 to i16
  store i16 %169, i16* %165, align 2
  br label %170

170:                                              ; preds = %157, %152
  br label %171

171:                                              ; preds = %170
  %172 = load i32*, i32** %8, align 8
  %173 = getelementptr inbounds i32, i32* %172, i32 1
  store i32* %173, i32** %8, align 8
  br label %148

174:                                              ; preds = %148
  br label %175

175:                                              ; preds = %174, %146
  store i32 0, i32* %4, align 4
  br label %176

176:                                              ; preds = %175, %110
  %177 = load i32, i32* %4, align 4
  ret i32 %177
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
