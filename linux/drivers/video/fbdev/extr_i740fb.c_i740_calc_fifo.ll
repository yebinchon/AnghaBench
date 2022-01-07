; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_i740fb.c_i740_calc_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_i740fb.c_i740_calc_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i740fb_par = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i740fb_par*, i32, i32)* @i740_calc_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i740_calc_fifo(%struct.i740fb_par* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.i740fb_par*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.i740fb_par* %0, %struct.i740fb_par** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %224 [
    i32 8, label %9
    i32 15, label %25
    i32 16, label %25
    i32 24, label %103
    i32 32, label %176
  ]

9:                                                ; preds = %3
  %10 = load i32, i32* %5, align 4
  %11 = icmp sgt i32 %10, 200
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  store i32 403832832, i32* %7, align 4
  br label %24

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4
  %15 = icmp sgt i32 %14, 175
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i32 370212864, i32* %7, align 4
  br label %23

17:                                               ; preds = %13
  %18 = load i32, i32* %5, align 4
  %19 = icmp sgt i32 %18, 135
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 302907392, i32* %7, align 4
  br label %22

21:                                               ; preds = %17
  store i32 269287424, i32* %7, align 4
  br label %22

22:                                               ; preds = %21, %20
  br label %23

23:                                               ; preds = %22, %16
  br label %24

24:                                               ; preds = %23, %12
  br label %224

25:                                               ; preds = %3, %3
  %26 = load %struct.i740fb_par*, %struct.i740fb_par** %4, align 8
  %27 = getelementptr inbounds %struct.i740fb_par, %struct.i740fb_par* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %61

30:                                               ; preds = %25
  %31 = load i32, i32* %5, align 4
  %32 = icmp sgt i32 %31, 140
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 740098048, i32* %7, align 4
  br label %60

34:                                               ; preds = %30
  %35 = load i32, i32* %5, align 4
  %36 = icmp sgt i32 %35, 120
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i32 739770368, i32* %7, align 4
  br label %59

38:                                               ; preds = %34
  %39 = load i32, i32* %5, align 4
  %40 = icmp sgt i32 %39, 100
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i32 605421568, i32* %7, align 4
  br label %58

42:                                               ; preds = %38
  %43 = load i32, i32* %5, align 4
  %44 = icmp sgt i32 %43, 90
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store i32 403832832, i32* %7, align 4
  br label %57

46:                                               ; preds = %42
  %47 = load i32, i32* %5, align 4
  %48 = icmp sgt i32 %47, 50
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  store i32 370212864, i32* %7, align 4
  br label %56

50:                                               ; preds = %46
  %51 = load i32, i32* %5, align 4
  %52 = icmp sgt i32 %51, 32
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store i32 319815680, i32* %7, align 4
  br label %55

54:                                               ; preds = %50
  store i32 302907392, i32* %7, align 4
  br label %55

55:                                               ; preds = %54, %53
  br label %56

56:                                               ; preds = %55, %49
  br label %57

57:                                               ; preds = %56, %45
  br label %58

58:                                               ; preds = %57, %41
  br label %59

59:                                               ; preds = %58, %37
  br label %60

60:                                               ; preds = %59, %33
  br label %102

61:                                               ; preds = %25
  %62 = load i32, i32* %5, align 4
  %63 = icmp sgt i32 %62, 160
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  store i32 673185792, i32* %7, align 4
  br label %101

65:                                               ; preds = %61
  %66 = load i32, i32* %5, align 4
  %67 = icmp sgt i32 %66, 140
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  store i32 706609152, i32* %7, align 4
  br label %100

69:                                               ; preds = %65
  %70 = load i32, i32* %5, align 4
  %71 = icmp sgt i32 %70, 130
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  store i32 723124224, i32* %7, align 4
  br label %99

73:                                               ; preds = %69
  %74 = load i32, i32* %5, align 4
  %75 = icmp sgt i32 %74, 120
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  store i32 739770368, i32* %7, align 4
  br label %98

77:                                               ; preds = %73
  %78 = load i32, i32* %5, align 4
  %79 = icmp sgt i32 %78, 100
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  store i32 605552640, i32* %7, align 4
  br label %97

81:                                               ; preds = %77
  %82 = load i32, i32* %5, align 4
  %83 = icmp sgt i32 %82, 90
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  store i32 403832832, i32* %7, align 4
  br label %96

85:                                               ; preds = %81
  %86 = load i32, i32* %5, align 4
  %87 = icmp sgt i32 %86, 50
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  store i32 370212864, i32* %7, align 4
  br label %95

89:                                               ; preds = %85
  %90 = load i32, i32* %5, align 4
  %91 = icmp sgt i32 %90, 32
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  store i32 319815680, i32* %7, align 4
  br label %94

93:                                               ; preds = %89
  store i32 302907392, i32* %7, align 4
  br label %94

94:                                               ; preds = %93, %92
  br label %95

95:                                               ; preds = %94, %88
  br label %96

96:                                               ; preds = %95, %84
  br label %97

97:                                               ; preds = %96, %80
  br label %98

98:                                               ; preds = %97, %76
  br label %99

99:                                               ; preds = %98, %72
  br label %100

100:                                              ; preds = %99, %68
  br label %101

101:                                              ; preds = %100, %64
  br label %102

102:                                              ; preds = %101, %60
  br label %224

103:                                              ; preds = %3
  %104 = load %struct.i740fb_par*, %struct.i740fb_par** %4, align 8
  %105 = getelementptr inbounds %struct.i740fb_par, %struct.i740fb_par* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %144

108:                                              ; preds = %103
  %109 = load i32, i32* %5, align 4
  %110 = icmp sgt i32 %109, 130
  br i1 %110, label %111, label %112

111:                                              ; preds = %108
  store i32 824180736, i32* %7, align 4
  br label %143

112:                                              ; preds = %108
  %113 = load i32, i32* %5, align 4
  %114 = icmp sgt i32 %113, 120
  br i1 %114, label %115, label %116

115:                                              ; preds = %112
  store i32 773849088, i32* %7, align 4
  br label %142

116:                                              ; preds = %112
  %117 = load i32, i32* %5, align 4
  %118 = icmp sgt i32 %117, 100
  br i1 %118, label %119, label %120

119:                                              ; preds = %116
  store i32 740098048, i32* %7, align 4
  br label %141

120:                                              ; preds = %116
  %121 = load i32, i32* %5, align 4
  %122 = icmp sgt i32 %121, 80
  br i1 %122, label %123, label %124

123:                                              ; preds = %120
  store i32 622329856, i32* %7, align 4
  br label %140

124:                                              ; preds = %120
  %125 = load i32, i32* %5, align 4
  %126 = icmp sgt i32 %125, 64
  br i1 %126, label %127, label %128

127:                                              ; preds = %124
  store i32 605421568, i32* %7, align 4
  br label %139

128:                                              ; preds = %124
  %129 = load i32, i32* %5, align 4
  %130 = icmp sgt i32 %129, 49
  br i1 %130, label %131, label %132

131:                                              ; preds = %128
  store i32 403832832, i32* %7, align 4
  br label %138

132:                                              ; preds = %128
  %133 = load i32, i32* %5, align 4
  %134 = icmp sgt i32 %133, 32
  br i1 %134, label %135, label %136

135:                                              ; preds = %132
  store i32 370212864, i32* %7, align 4
  br label %137

136:                                              ; preds = %132
  store i32 319815680, i32* %7, align 4
  br label %137

137:                                              ; preds = %136, %135
  br label %138

138:                                              ; preds = %137, %131
  br label %139

139:                                              ; preds = %138, %127
  br label %140

140:                                              ; preds = %139, %123
  br label %141

141:                                              ; preds = %140, %119
  br label %142

142:                                              ; preds = %141, %115
  br label %143

143:                                              ; preds = %142, %111
  br label %175

144:                                              ; preds = %103
  %145 = load i32, i32* %5, align 4
  %146 = icmp sgt i32 %145, 120
  br i1 %146, label %147, label %148

147:                                              ; preds = %144
  store i32 824115200, i32* %7, align 4
  br label %174

148:                                              ; preds = %144
  %149 = load i32, i32* %5, align 4
  %150 = icmp sgt i32 %149, 100
  br i1 %150, label %151, label %152

151:                                              ; preds = %148
  store i32 740098048, i32* %7, align 4
  br label %173

152:                                              ; preds = %148
  %153 = load i32, i32* %5, align 4
  %154 = icmp sgt i32 %153, 80
  br i1 %154, label %155, label %156

155:                                              ; preds = %152
  store i32 622329856, i32* %7, align 4
  br label %172

156:                                              ; preds = %152
  %157 = load i32, i32* %5, align 4
  %158 = icmp sgt i32 %157, 64
  br i1 %158, label %159, label %160

159:                                              ; preds = %156
  store i32 605421568, i32* %7, align 4
  br label %171

160:                                              ; preds = %156
  %161 = load i32, i32* %5, align 4
  %162 = icmp sgt i32 %161, 49
  br i1 %162, label %163, label %164

163:                                              ; preds = %160
  store i32 403832832, i32* %7, align 4
  br label %170

164:                                              ; preds = %160
  %165 = load i32, i32* %5, align 4
  %166 = icmp sgt i32 %165, 32
  br i1 %166, label %167, label %168

167:                                              ; preds = %164
  store i32 370212864, i32* %7, align 4
  br label %169

168:                                              ; preds = %164
  store i32 319815680, i32* %7, align 4
  br label %169

169:                                              ; preds = %168, %167
  br label %170

170:                                              ; preds = %169, %163
  br label %171

171:                                              ; preds = %170, %159
  br label %172

172:                                              ; preds = %171, %155
  br label %173

173:                                              ; preds = %172, %151
  br label %174

174:                                              ; preds = %173, %147
  br label %175

175:                                              ; preds = %174, %143
  br label %224

176:                                              ; preds = %3
  %177 = load %struct.i740fb_par*, %struct.i740fb_par** %4, align 8
  %178 = getelementptr inbounds %struct.i740fb_par, %struct.i740fb_par* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %202

181:                                              ; preds = %176
  %182 = load i32, i32* %5, align 4
  %183 = icmp sgt i32 %182, 80
  br i1 %183, label %184, label %185

184:                                              ; preds = %181
  store i32 706740224, i32* %7, align 4
  br label %201

185:                                              ; preds = %181
  %186 = load i32, i32* %5, align 4
  %187 = icmp sgt i32 %186, 60
  br i1 %187, label %188, label %189

188:                                              ; preds = %185
  store i32 672792576, i32* %7, align 4
  br label %200

189:                                              ; preds = %185
  %190 = load i32, i32* %5, align 4
  %191 = icmp sgt i32 %190, 49
  br i1 %191, label %192, label %193

192:                                              ; preds = %189
  store i32 622329856, i32* %7, align 4
  br label %199

193:                                              ; preds = %189
  %194 = load i32, i32* %5, align 4
  %195 = icmp sgt i32 %194, 32
  br i1 %195, label %196, label %197

196:                                              ; preds = %193
  store i32 403832832, i32* %7, align 4
  br label %198

197:                                              ; preds = %193
  store i32 370212864, i32* %7, align 4
  br label %198

198:                                              ; preds = %197, %196
  br label %199

199:                                              ; preds = %198, %192
  br label %200

200:                                              ; preds = %199, %188
  br label %201

201:                                              ; preds = %200, %184
  br label %223

202:                                              ; preds = %176
  %203 = load i32, i32* %5, align 4
  %204 = icmp sgt i32 %203, 80
  br i1 %204, label %205, label %206

205:                                              ; preds = %202
  store i32 689963008, i32* %7, align 4
  br label %222

206:                                              ; preds = %202
  %207 = load i32, i32* %5, align 4
  %208 = icmp sgt i32 %207, 60
  br i1 %208, label %209, label %210

209:                                              ; preds = %206
  store i32 672792576, i32* %7, align 4
  br label %221

210:                                              ; preds = %206
  %211 = load i32, i32* %5, align 4
  %212 = icmp sgt i32 %211, 49
  br i1 %212, label %213, label %214

213:                                              ; preds = %210
  store i32 622329856, i32* %7, align 4
  br label %220

214:                                              ; preds = %210
  %215 = load i32, i32* %5, align 4
  %216 = icmp sgt i32 %215, 32
  br i1 %216, label %217, label %218

217:                                              ; preds = %214
  store i32 403832832, i32* %7, align 4
  br label %219

218:                                              ; preds = %214
  store i32 370212864, i32* %7, align 4
  br label %219

219:                                              ; preds = %218, %217
  br label %220

220:                                              ; preds = %219, %213
  br label %221

221:                                              ; preds = %220, %209
  br label %222

222:                                              ; preds = %221, %205
  br label %223

223:                                              ; preds = %222, %201
  br label %224

224:                                              ; preds = %3, %223, %175, %102, %24
  %225 = load i32, i32* %7, align 4
  ret i32 %225
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
