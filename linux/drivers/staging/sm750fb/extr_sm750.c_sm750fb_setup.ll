; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_sm750.c_sm750fb_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_sm750.c_sm750fb_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sm750_dev = type { i32, i64, i32, i8*, %struct.TYPE_4__*, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i64, i64, i64, i64, i64 }

@g_hwcursor = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"no specific g_option.\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"opt=%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"src=%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"swap\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"nocrt\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"36bit\00", align 1
@sm750_doubleTFT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"18bit\00", align 1
@sm750_dualTFT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"24bit\00", align 1
@sm750_24TFT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [7 x i8] c"nohwc0\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"nohwc1\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"nohwc\00", align 1
@g_fbmode = common dso_local global i8** null, align 8
@.str.12 = private unnamed_addr constant [19 x i8] c"find fbmode0 : %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"find fbmode1 : %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"How many view you wann set?\0A\00", align 1
@SM750LE_REVISION_ID = common dso_local global i64 0, align 8
@sm750_dual_swap = common dso_local global i8* null, align 8
@sm750_dual_normal = common dso_local global i8* null, align 8
@sm750_simul_sec = common dso_local global i8* null, align 8
@sm750_simul_pri = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sm750_dev*, i8*)* @sm750fb_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sm750fb_setup(%struct.sm750_dev* %0, i8* %1) #0 {
  %3 = alloca %struct.sm750_dev*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.sm750_dev* %0, %struct.sm750_dev** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.sm750_dev*, %struct.sm750_dev** %3, align 8
  %8 = getelementptr inbounds %struct.sm750_dev, %struct.sm750_dev* %7, i32 0, i32 6
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 5
  store i64 0, i64* %9, align 8
  %10 = load %struct.sm750_dev*, %struct.sm750_dev** %3, align 8
  %11 = getelementptr inbounds %struct.sm750_dev, %struct.sm750_dev* %10, i32 0, i32 6
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 4
  store i64 0, i64* %12, align 8
  %13 = load %struct.sm750_dev*, %struct.sm750_dev** %3, align 8
  %14 = getelementptr inbounds %struct.sm750_dev, %struct.sm750_dev* %13, i32 0, i32 6
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 3
  store i64 0, i64* %15, align 8
  %16 = load %struct.sm750_dev*, %struct.sm750_dev** %3, align 8
  %17 = getelementptr inbounds %struct.sm750_dev, %struct.sm750_dev* %16, i32 0, i32 6
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 2
  store i64 0, i64* %18, align 8
  %19 = load %struct.sm750_dev*, %struct.sm750_dev** %3, align 8
  %20 = getelementptr inbounds %struct.sm750_dev, %struct.sm750_dev* %19, i32 0, i32 6
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  store i64 0, i64* %21, align 8
  %22 = load %struct.sm750_dev*, %struct.sm750_dev** %3, align 8
  %23 = getelementptr inbounds %struct.sm750_dev, %struct.sm750_dev* %22, i32 0, i32 6
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  store i32 3, i32* @g_hwcursor, align 4
  %25 = load i8*, i8** %4, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %2
  %28 = load i8*, i8** %4, align 8
  %29 = load i8, i8* %28, align 1
  %30 = icmp ne i8 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %27, %2
  %32 = load %struct.sm750_dev*, %struct.sm750_dev** %3, align 8
  %33 = getelementptr inbounds %struct.sm750_dev, %struct.sm750_dev* %32, i32 0, i32 4
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = call i32 @dev_warn(i32* %35, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %174

37:                                               ; preds = %27
  br label %38

38:                                               ; preds = %172, %37
  %39 = call i8* @strsep(i8** %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %39, i8** %5, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load i8*, i8** %5, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 0
  br label %46

46:                                               ; preds = %41, %38
  %47 = phi i1 [ false, %38 ], [ %45, %41 ]
  br i1 %47, label %48, label %173

48:                                               ; preds = %46
  %49 = load %struct.sm750_dev*, %struct.sm750_dev** %3, align 8
  %50 = getelementptr inbounds %struct.sm750_dev, %struct.sm750_dev* %49, i32 0, i32 4
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i8*, i8** %5, align 8
  %54 = call i32 @dev_info(i32* %52, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %53)
  %55 = load %struct.sm750_dev*, %struct.sm750_dev** %3, align 8
  %56 = getelementptr inbounds %struct.sm750_dev, %struct.sm750_dev* %55, i32 0, i32 4
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i8*, i8** %4, align 8
  %60 = call i32 @dev_info(i32* %58, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %59)
  %61 = load i8*, i8** %5, align 8
  %62 = call i32 @strlen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %63 = call i32 @strncmp(i8* %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %48
  store i32 1, i32* %6, align 4
  br label %172

66:                                               ; preds = %48
  %67 = load i8*, i8** %5, align 8
  %68 = call i32 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %69 = call i32 @strncmp(i8* %67, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %66
  %72 = load %struct.sm750_dev*, %struct.sm750_dev** %3, align 8
  %73 = getelementptr inbounds %struct.sm750_dev, %struct.sm750_dev* %72, i32 0, i32 0
  store i32 1, i32* %73, align 8
  br label %171

74:                                               ; preds = %66
  %75 = load i8*, i8** %5, align 8
  %76 = call i32 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %77 = call i32 @strncmp(i8* %75, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %74
  %80 = load i32, i32* @sm750_doubleTFT, align 4
  %81 = load %struct.sm750_dev*, %struct.sm750_dev** %3, align 8
  %82 = getelementptr inbounds %struct.sm750_dev, %struct.sm750_dev* %81, i32 0, i32 5
  store i32 %80, i32* %82, align 8
  br label %170

83:                                               ; preds = %74
  %84 = load i8*, i8** %5, align 8
  %85 = call i32 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %86 = call i32 @strncmp(i8* %84, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %83
  %89 = load i32, i32* @sm750_dualTFT, align 4
  %90 = load %struct.sm750_dev*, %struct.sm750_dev** %3, align 8
  %91 = getelementptr inbounds %struct.sm750_dev, %struct.sm750_dev* %90, i32 0, i32 5
  store i32 %89, i32* %91, align 8
  br label %169

92:                                               ; preds = %83
  %93 = load i8*, i8** %5, align 8
  %94 = call i32 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %95 = call i32 @strncmp(i8* %93, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %92
  %98 = load i32, i32* @sm750_24TFT, align 4
  %99 = load %struct.sm750_dev*, %struct.sm750_dev** %3, align 8
  %100 = getelementptr inbounds %struct.sm750_dev, %struct.sm750_dev* %99, i32 0, i32 5
  store i32 %98, i32* %100, align 8
  br label %168

101:                                              ; preds = %92
  %102 = load i8*, i8** %5, align 8
  %103 = call i32 @strlen(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %104 = call i32 @strncmp(i8* %102, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %101
  %107 = load i32, i32* @g_hwcursor, align 4
  %108 = and i32 %107, -2
  store i32 %108, i32* @g_hwcursor, align 4
  br label %167

109:                                              ; preds = %101
  %110 = load i8*, i8** %5, align 8
  %111 = call i32 @strlen(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  %112 = call i32 @strncmp(i8* %110, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i32 %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %117, label %114

114:                                              ; preds = %109
  %115 = load i32, i32* @g_hwcursor, align 4
  %116 = and i32 %115, -3
  store i32 %116, i32* @g_hwcursor, align 4
  br label %166

117:                                              ; preds = %109
  %118 = load i8*, i8** %5, align 8
  %119 = call i32 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  %120 = call i32 @strncmp(i8* %118, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i32 %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %123, label %122

122:                                              ; preds = %117
  store i32 0, i32* @g_hwcursor, align 4
  br label %165

123:                                              ; preds = %117
  %124 = load i8**, i8*** @g_fbmode, align 8
  %125 = getelementptr inbounds i8*, i8** %124, i64 0
  %126 = load i8*, i8** %125, align 8
  %127 = icmp ne i8* %126, null
  br i1 %127, label %140, label %128

128:                                              ; preds = %123
  %129 = load i8*, i8** %5, align 8
  %130 = load i8**, i8*** @g_fbmode, align 8
  %131 = getelementptr inbounds i8*, i8** %130, i64 0
  store i8* %129, i8** %131, align 8
  %132 = load %struct.sm750_dev*, %struct.sm750_dev** %3, align 8
  %133 = getelementptr inbounds %struct.sm750_dev, %struct.sm750_dev* %132, i32 0, i32 4
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = load i8**, i8*** @g_fbmode, align 8
  %137 = getelementptr inbounds i8*, i8** %136, i64 0
  %138 = load i8*, i8** %137, align 8
  %139 = call i32 @dev_info(i32* %135, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0), i8* %138)
  br label %164

140:                                              ; preds = %123
  %141 = load i8**, i8*** @g_fbmode, align 8
  %142 = getelementptr inbounds i8*, i8** %141, i64 1
  %143 = load i8*, i8** %142, align 8
  %144 = icmp ne i8* %143, null
  br i1 %144, label %157, label %145

145:                                              ; preds = %140
  %146 = load i8*, i8** %5, align 8
  %147 = load i8**, i8*** @g_fbmode, align 8
  %148 = getelementptr inbounds i8*, i8** %147, i64 1
  store i8* %146, i8** %148, align 8
  %149 = load %struct.sm750_dev*, %struct.sm750_dev** %3, align 8
  %150 = getelementptr inbounds %struct.sm750_dev, %struct.sm750_dev* %149, i32 0, i32 4
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 0
  %153 = load i8**, i8*** @g_fbmode, align 8
  %154 = getelementptr inbounds i8*, i8** %153, i64 1
  %155 = load i8*, i8** %154, align 8
  %156 = call i32 @dev_info(i32* %152, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0), i8* %155)
  br label %163

157:                                              ; preds = %140
  %158 = load %struct.sm750_dev*, %struct.sm750_dev** %3, align 8
  %159 = getelementptr inbounds %struct.sm750_dev, %struct.sm750_dev* %158, i32 0, i32 4
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 0
  %162 = call i32 @dev_warn(i32* %161, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0))
  br label %163

163:                                              ; preds = %157, %145
  br label %164

164:                                              ; preds = %163, %128
  br label %165

165:                                              ; preds = %164, %122
  br label %166

166:                                              ; preds = %165, %114
  br label %167

167:                                              ; preds = %166, %106
  br label %168

168:                                              ; preds = %167, %97
  br label %169

169:                                              ; preds = %168, %88
  br label %170

170:                                              ; preds = %169, %79
  br label %171

171:                                              ; preds = %170, %71
  br label %172

172:                                              ; preds = %171, %65
  br label %38

173:                                              ; preds = %46
  br label %174

174:                                              ; preds = %173, %31
  %175 = load %struct.sm750_dev*, %struct.sm750_dev** %3, align 8
  %176 = getelementptr inbounds %struct.sm750_dev, %struct.sm750_dev* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @SM750LE_REVISION_ID, align 8
  %179 = icmp ne i64 %177, %178
  br i1 %179, label %180, label %210

180:                                              ; preds = %174
  %181 = load %struct.sm750_dev*, %struct.sm750_dev** %3, align 8
  %182 = getelementptr inbounds %struct.sm750_dev, %struct.sm750_dev* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = icmp sgt i32 %183, 1
  br i1 %184, label %185, label %197

185:                                              ; preds = %180
  %186 = load i32, i32* %6, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %192

188:                                              ; preds = %185
  %189 = load i8*, i8** @sm750_dual_swap, align 8
  %190 = load %struct.sm750_dev*, %struct.sm750_dev** %3, align 8
  %191 = getelementptr inbounds %struct.sm750_dev, %struct.sm750_dev* %190, i32 0, i32 3
  store i8* %189, i8** %191, align 8
  br label %196

192:                                              ; preds = %185
  %193 = load i8*, i8** @sm750_dual_normal, align 8
  %194 = load %struct.sm750_dev*, %struct.sm750_dev** %3, align 8
  %195 = getelementptr inbounds %struct.sm750_dev, %struct.sm750_dev* %194, i32 0, i32 3
  store i8* %193, i8** %195, align 8
  br label %196

196:                                              ; preds = %192, %188
  br label %209

197:                                              ; preds = %180
  %198 = load i32, i32* %6, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %204

200:                                              ; preds = %197
  %201 = load i8*, i8** @sm750_simul_sec, align 8
  %202 = load %struct.sm750_dev*, %struct.sm750_dev** %3, align 8
  %203 = getelementptr inbounds %struct.sm750_dev, %struct.sm750_dev* %202, i32 0, i32 3
  store i8* %201, i8** %203, align 8
  br label %208

204:                                              ; preds = %197
  %205 = load i8*, i8** @sm750_simul_pri, align 8
  %206 = load %struct.sm750_dev*, %struct.sm750_dev** %3, align 8
  %207 = getelementptr inbounds %struct.sm750_dev, %struct.sm750_dev* %206, i32 0, i32 3
  store i8* %205, i8** %207, align 8
  br label %208

208:                                              ; preds = %204, %200
  br label %209

209:                                              ; preds = %208, %196
  br label %216

210:                                              ; preds = %174
  %211 = load i8*, i8** @sm750_simul_sec, align 8
  %212 = load %struct.sm750_dev*, %struct.sm750_dev** %3, align 8
  %213 = getelementptr inbounds %struct.sm750_dev, %struct.sm750_dev* %212, i32 0, i32 3
  store i8* %211, i8** %213, align 8
  %214 = load %struct.sm750_dev*, %struct.sm750_dev** %3, align 8
  %215 = getelementptr inbounds %struct.sm750_dev, %struct.sm750_dev* %214, i32 0, i32 0
  store i32 0, i32* %215, align 8
  br label %216

216:                                              ; preds = %210, %209
  ret void
}

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @dev_info(i32*, i8*, i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
