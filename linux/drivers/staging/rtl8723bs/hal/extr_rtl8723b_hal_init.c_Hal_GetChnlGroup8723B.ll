; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723b_hal_init.c_Hal_GetChnlGroup8723B.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723b_hal_init.c_Hal_GetChnlGroup8723B.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_module_hci_hal_init_c_ = common dso_local global i32 0, align 4
@_drv_notice_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"==>Hal_GetChnlGroup8723B in 2.4 G, but Channel %d in Group not found\0A\00", align 1
@.str.1 = private unnamed_addr constant [67 x i8] c"==>Hal_GetChnlGroup8723B in 5G, but Channel %d in Group not found\0A\00", align 1
@_drv_info_ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [58 x i8] c"<==Hal_GetChnlGroup8723B,  (%s) Channel = %d, Group =%d,\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"2.4G\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"5G\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @Hal_GetChnlGroup8723B to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Hal_GetChnlGroup8723B(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  store i32 1, i32* %5, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp sle i32 %6, 14
  br i1 %7, label %8, label %60

8:                                                ; preds = %2
  store i32 1, i32* %5, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp sle i32 1, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %8
  %12 = load i32, i32* %3, align 4
  %13 = icmp sle i32 %12, 2
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = load i32*, i32** %4, align 8
  store i32 0, i32* %15, align 4
  br label %59

16:                                               ; preds = %11, %8
  %17 = load i32, i32* %3, align 4
  %18 = icmp sle i32 3, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = load i32, i32* %3, align 4
  %21 = icmp sle i32 %20, 5
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i32*, i32** %4, align 8
  store i32 1, i32* %23, align 4
  br label %58

24:                                               ; preds = %19, %16
  %25 = load i32, i32* %3, align 4
  %26 = icmp sle i32 6, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load i32, i32* %3, align 4
  %29 = icmp sle i32 %28, 8
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i32*, i32** %4, align 8
  store i32 2, i32* %31, align 4
  br label %57

32:                                               ; preds = %27, %24
  %33 = load i32, i32* %3, align 4
  %34 = icmp sle i32 9, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load i32, i32* %3, align 4
  %37 = icmp sle i32 %36, 11
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = load i32*, i32** %4, align 8
  store i32 3, i32* %39, align 4
  br label %56

40:                                               ; preds = %35, %32
  %41 = load i32, i32* %3, align 4
  %42 = icmp sle i32 12, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load i32, i32* %3, align 4
  %45 = icmp sle i32 %44, 14
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load i32*, i32** %4, align 8
  store i32 4, i32* %47, align 4
  br label %55

48:                                               ; preds = %43, %40
  %49 = load i32, i32* @_module_hci_hal_init_c_, align 4
  %50 = load i32, i32* @_drv_notice_, align 4
  %51 = load i32, i32* %3, align 4
  %52 = sext i32 %51 to i64
  %53 = inttoptr i64 %52 to i8*
  %54 = call i32 @RT_TRACE(i32 %49, i32 %50, i8* %53)
  br label %55

55:                                               ; preds = %48, %46
  br label %56

56:                                               ; preds = %55, %38
  br label %57

57:                                               ; preds = %56, %30
  br label %58

58:                                               ; preds = %57, %22
  br label %59

59:                                               ; preds = %58, %14
  br label %193

60:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  %61 = load i32, i32* %3, align 4
  %62 = icmp sle i32 36, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  %64 = load i32, i32* %3, align 4
  %65 = icmp sle i32 %64, 42
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = load i32*, i32** %4, align 8
  store i32 0, i32* %67, align 4
  br label %192

68:                                               ; preds = %63, %60
  %69 = load i32, i32* %3, align 4
  %70 = icmp sle i32 44, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %68
  %72 = load i32, i32* %3, align 4
  %73 = icmp sle i32 %72, 48
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = load i32*, i32** %4, align 8
  store i32 1, i32* %75, align 4
  br label %191

76:                                               ; preds = %71, %68
  %77 = load i32, i32* %3, align 4
  %78 = icmp sle i32 50, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %76
  %80 = load i32, i32* %3, align 4
  %81 = icmp sle i32 %80, 58
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = load i32*, i32** %4, align 8
  store i32 2, i32* %83, align 4
  br label %190

84:                                               ; preds = %79, %76
  %85 = load i32, i32* %3, align 4
  %86 = icmp sle i32 60, %85
  br i1 %86, label %87, label %92

87:                                               ; preds = %84
  %88 = load i32, i32* %3, align 4
  %89 = icmp sle i32 %88, 64
  br i1 %89, label %90, label %92

90:                                               ; preds = %87
  %91 = load i32*, i32** %4, align 8
  store i32 3, i32* %91, align 4
  br label %189

92:                                               ; preds = %87, %84
  %93 = load i32, i32* %3, align 4
  %94 = icmp sle i32 100, %93
  br i1 %94, label %95, label %100

95:                                               ; preds = %92
  %96 = load i32, i32* %3, align 4
  %97 = icmp sle i32 %96, 106
  br i1 %97, label %98, label %100

98:                                               ; preds = %95
  %99 = load i32*, i32** %4, align 8
  store i32 4, i32* %99, align 4
  br label %188

100:                                              ; preds = %95, %92
  %101 = load i32, i32* %3, align 4
  %102 = icmp sle i32 108, %101
  br i1 %102, label %103, label %108

103:                                              ; preds = %100
  %104 = load i32, i32* %3, align 4
  %105 = icmp sle i32 %104, 114
  br i1 %105, label %106, label %108

106:                                              ; preds = %103
  %107 = load i32*, i32** %4, align 8
  store i32 5, i32* %107, align 4
  br label %187

108:                                              ; preds = %103, %100
  %109 = load i32, i32* %3, align 4
  %110 = icmp sle i32 116, %109
  br i1 %110, label %111, label %116

111:                                              ; preds = %108
  %112 = load i32, i32* %3, align 4
  %113 = icmp sle i32 %112, 122
  br i1 %113, label %114, label %116

114:                                              ; preds = %111
  %115 = load i32*, i32** %4, align 8
  store i32 6, i32* %115, align 4
  br label %186

116:                                              ; preds = %111, %108
  %117 = load i32, i32* %3, align 4
  %118 = icmp sle i32 124, %117
  br i1 %118, label %119, label %124

119:                                              ; preds = %116
  %120 = load i32, i32* %3, align 4
  %121 = icmp sle i32 %120, 130
  br i1 %121, label %122, label %124

122:                                              ; preds = %119
  %123 = load i32*, i32** %4, align 8
  store i32 7, i32* %123, align 4
  br label %185

124:                                              ; preds = %119, %116
  %125 = load i32, i32* %3, align 4
  %126 = icmp sle i32 132, %125
  br i1 %126, label %127, label %132

127:                                              ; preds = %124
  %128 = load i32, i32* %3, align 4
  %129 = icmp sle i32 %128, 138
  br i1 %129, label %130, label %132

130:                                              ; preds = %127
  %131 = load i32*, i32** %4, align 8
  store i32 8, i32* %131, align 4
  br label %184

132:                                              ; preds = %127, %124
  %133 = load i32, i32* %3, align 4
  %134 = icmp sle i32 140, %133
  br i1 %134, label %135, label %140

135:                                              ; preds = %132
  %136 = load i32, i32* %3, align 4
  %137 = icmp sle i32 %136, 144
  br i1 %137, label %138, label %140

138:                                              ; preds = %135
  %139 = load i32*, i32** %4, align 8
  store i32 9, i32* %139, align 4
  br label %183

140:                                              ; preds = %135, %132
  %141 = load i32, i32* %3, align 4
  %142 = icmp sle i32 149, %141
  br i1 %142, label %143, label %148

143:                                              ; preds = %140
  %144 = load i32, i32* %3, align 4
  %145 = icmp sle i32 %144, 155
  br i1 %145, label %146, label %148

146:                                              ; preds = %143
  %147 = load i32*, i32** %4, align 8
  store i32 10, i32* %147, align 4
  br label %182

148:                                              ; preds = %143, %140
  %149 = load i32, i32* %3, align 4
  %150 = icmp sle i32 157, %149
  br i1 %150, label %151, label %156

151:                                              ; preds = %148
  %152 = load i32, i32* %3, align 4
  %153 = icmp sle i32 %152, 161
  br i1 %153, label %154, label %156

154:                                              ; preds = %151
  %155 = load i32*, i32** %4, align 8
  store i32 11, i32* %155, align 4
  br label %181

156:                                              ; preds = %151, %148
  %157 = load i32, i32* %3, align 4
  %158 = icmp sle i32 165, %157
  br i1 %158, label %159, label %164

159:                                              ; preds = %156
  %160 = load i32, i32* %3, align 4
  %161 = icmp sle i32 %160, 171
  br i1 %161, label %162, label %164

162:                                              ; preds = %159
  %163 = load i32*, i32** %4, align 8
  store i32 12, i32* %163, align 4
  br label %180

164:                                              ; preds = %159, %156
  %165 = load i32, i32* %3, align 4
  %166 = icmp sle i32 173, %165
  br i1 %166, label %167, label %172

167:                                              ; preds = %164
  %168 = load i32, i32* %3, align 4
  %169 = icmp sle i32 %168, 177
  br i1 %169, label %170, label %172

170:                                              ; preds = %167
  %171 = load i32*, i32** %4, align 8
  store i32 13, i32* %171, align 4
  br label %179

172:                                              ; preds = %167, %164
  %173 = load i32, i32* @_module_hci_hal_init_c_, align 4
  %174 = load i32, i32* @_drv_notice_, align 4
  %175 = load i32, i32* %3, align 4
  %176 = sext i32 %175 to i64
  %177 = inttoptr i64 %176 to i8*
  %178 = call i32 @RT_TRACE(i32 %173, i32 %174, i8* %177)
  br label %179

179:                                              ; preds = %172, %170
  br label %180

180:                                              ; preds = %179, %162
  br label %181

181:                                              ; preds = %180, %154
  br label %182

182:                                              ; preds = %181, %146
  br label %183

183:                                              ; preds = %182, %138
  br label %184

184:                                              ; preds = %183, %130
  br label %185

185:                                              ; preds = %184, %122
  br label %186

186:                                              ; preds = %185, %114
  br label %187

187:                                              ; preds = %186, %106
  br label %188

188:                                              ; preds = %187, %98
  br label %189

189:                                              ; preds = %188, %90
  br label %190

190:                                              ; preds = %189, %82
  br label %191

191:                                              ; preds = %190, %74
  br label %192

192:                                              ; preds = %191, %66
  br label %193

193:                                              ; preds = %192, %59
  %194 = load i32, i32* @_module_hci_hal_init_c_, align 4
  %195 = load i32, i32* @_drv_info_, align 4
  %196 = load i32, i32* %5, align 4
  %197 = icmp ne i32 %196, 0
  %198 = zext i1 %197 to i64
  %199 = select i1 %197, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)
  %200 = load i32, i32* %3, align 4
  %201 = load i32*, i32** %4, align 8
  %202 = load i32, i32* %201, align 4
  %203 = sext i32 %202 to i64
  %204 = inttoptr i64 %203 to i8*
  %205 = call i32 @RT_TRACE(i32 %194, i32 %195, i8* %204)
  %206 = load i32, i32* %5, align 4
  ret i32 %206
}

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
