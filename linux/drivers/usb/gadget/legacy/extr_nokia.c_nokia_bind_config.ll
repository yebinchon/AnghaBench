; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/legacy/extr_nokia.c_nokia_bind_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/legacy/extr_nokia.c_nokia_bind_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_function = type { i32 }
%struct.usb_configuration = type { i32 }

@fi_phonet = common dso_local global %struct.usb_function* null, align 8
@.str = private unnamed_addr constant [31 x i8] c"could not get phonet function\0A\00", align 1
@fi_obex1 = common dso_local global %struct.usb_function* null, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"could not get obex function 0\0A\00", align 1
@fi_obex2 = common dso_local global %struct.usb_function* null, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"could not get obex function 1\0A\00", align 1
@fi_acm = common dso_local global %struct.usb_function* null, align 8
@fi_ecm = common dso_local global %struct.usb_function* null, align 8
@fi_msg = common dso_local global %struct.usb_function* null, align 8
@.str.3 = private unnamed_addr constant [31 x i8] c"could not add phonet function\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"could not add obex function 0\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"could not add obex function 1\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"could not bind ecm config %d\0A\00", align 1
@nokia_config_500ma_driver = common dso_local global %struct.usb_configuration zeroinitializer, align 4
@f_acm_cfg1 = common dso_local global %struct.usb_function* null, align 8
@f_ecm_cfg1 = common dso_local global %struct.usb_function* null, align 8
@f_phonet_cfg1 = common dso_local global %struct.usb_function* null, align 8
@f_obex1_cfg1 = common dso_local global %struct.usb_function* null, align 8
@f_obex2_cfg1 = common dso_local global %struct.usb_function* null, align 8
@f_msg_cfg1 = common dso_local global %struct.usb_function* null, align 8
@f_acm_cfg2 = common dso_local global %struct.usb_function* null, align 8
@f_ecm_cfg2 = common dso_local global %struct.usb_function* null, align 8
@f_phonet_cfg2 = common dso_local global %struct.usb_function* null, align 8
@f_obex1_cfg2 = common dso_local global %struct.usb_function* null, align 8
@f_obex2_cfg2 = common dso_local global %struct.usb_function* null, align 8
@f_msg_cfg2 = common dso_local global %struct.usb_function* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_configuration*)* @nokia_bind_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nokia_bind_config(%struct.usb_configuration* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_configuration*, align 8
  %4 = alloca %struct.usb_function*, align 8
  %5 = alloca %struct.usb_function*, align 8
  %6 = alloca %struct.usb_function*, align 8
  %7 = alloca %struct.usb_function*, align 8
  %8 = alloca %struct.usb_function*, align 8
  %9 = alloca %struct.usb_function*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.usb_configuration* %0, %struct.usb_configuration** %3, align 8
  store %struct.usb_function* null, %struct.usb_function** %5, align 8
  store %struct.usb_function* null, %struct.usb_function** %6, align 8
  store %struct.usb_function* null, %struct.usb_function** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 -1, i32* %11, align 4
  store i32 -1, i32* %12, align 4
  store i32 -1, i32* %13, align 4
  %14 = load %struct.usb_function*, %struct.usb_function** @fi_phonet, align 8
  %15 = call i64 @IS_ERR(%struct.usb_function* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %1
  %18 = load %struct.usb_function*, %struct.usb_function** @fi_phonet, align 8
  %19 = call %struct.usb_function* @usb_get_function(%struct.usb_function* %18)
  store %struct.usb_function* %19, %struct.usb_function** %5, align 8
  %20 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %21 = call i64 @IS_ERR(%struct.usb_function* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %17
  br label %26

26:                                               ; preds = %25, %1
  %27 = load %struct.usb_function*, %struct.usb_function** @fi_obex1, align 8
  %28 = call i64 @IS_ERR(%struct.usb_function* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %26
  %31 = load %struct.usb_function*, %struct.usb_function** @fi_obex1, align 8
  %32 = call %struct.usb_function* @usb_get_function(%struct.usb_function* %31)
  store %struct.usb_function* %32, %struct.usb_function** %6, align 8
  %33 = load %struct.usb_function*, %struct.usb_function** %6, align 8
  %34 = call i64 @IS_ERR(%struct.usb_function* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %30
  br label %39

39:                                               ; preds = %38, %26
  %40 = load %struct.usb_function*, %struct.usb_function** @fi_obex2, align 8
  %41 = call i64 @IS_ERR(%struct.usb_function* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %52, label %43

43:                                               ; preds = %39
  %44 = load %struct.usb_function*, %struct.usb_function** @fi_obex2, align 8
  %45 = call %struct.usb_function* @usb_get_function(%struct.usb_function* %44)
  store %struct.usb_function* %45, %struct.usb_function** %8, align 8
  %46 = load %struct.usb_function*, %struct.usb_function** %8, align 8
  %47 = call i64 @IS_ERR(%struct.usb_function* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %43
  br label %52

52:                                               ; preds = %51, %39
  %53 = load %struct.usb_function*, %struct.usb_function** @fi_acm, align 8
  %54 = call %struct.usb_function* @usb_get_function(%struct.usb_function* %53)
  store %struct.usb_function* %54, %struct.usb_function** %4, align 8
  %55 = load %struct.usb_function*, %struct.usb_function** %4, align 8
  %56 = call i64 @IS_ERR(%struct.usb_function* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load %struct.usb_function*, %struct.usb_function** %4, align 8
  %60 = call i32 @PTR_ERR(%struct.usb_function* %59)
  store i32 %60, i32* %10, align 4
  br label %198

61:                                               ; preds = %52
  %62 = load %struct.usb_function*, %struct.usb_function** @fi_ecm, align 8
  %63 = call %struct.usb_function* @usb_get_function(%struct.usb_function* %62)
  store %struct.usb_function* %63, %struct.usb_function** %7, align 8
  %64 = load %struct.usb_function*, %struct.usb_function** %7, align 8
  %65 = call i64 @IS_ERR(%struct.usb_function* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load %struct.usb_function*, %struct.usb_function** %7, align 8
  %69 = call i32 @PTR_ERR(%struct.usb_function* %68)
  store i32 %69, i32* %10, align 4
  br label %195

70:                                               ; preds = %61
  %71 = load %struct.usb_function*, %struct.usb_function** @fi_msg, align 8
  %72 = call %struct.usb_function* @usb_get_function(%struct.usb_function* %71)
  store %struct.usb_function* %72, %struct.usb_function** %9, align 8
  %73 = load %struct.usb_function*, %struct.usb_function** %9, align 8
  %74 = call i64 @IS_ERR(%struct.usb_function* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %70
  %77 = load %struct.usb_function*, %struct.usb_function** %9, align 8
  %78 = call i32 @PTR_ERR(%struct.usb_function* %77)
  store i32 %78, i32* %10, align 4
  br label %192

79:                                               ; preds = %70
  %80 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %81 = call i32 @IS_ERR_OR_NULL(%struct.usb_function* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %92, label %83

83:                                               ; preds = %79
  %84 = load %struct.usb_configuration*, %struct.usb_configuration** %3, align 8
  %85 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %86 = call i32 @usb_add_function(%struct.usb_configuration* %84, %struct.usb_function* %85)
  store i32 %86, i32* %13, align 4
  %87 = load i32, i32* %13, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %83
  %90 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %91

91:                                               ; preds = %89, %83
  br label %92

92:                                               ; preds = %91, %79
  %93 = load %struct.usb_function*, %struct.usb_function** %6, align 8
  %94 = call i32 @IS_ERR_OR_NULL(%struct.usb_function* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %105, label %96

96:                                               ; preds = %92
  %97 = load %struct.usb_configuration*, %struct.usb_configuration** %3, align 8
  %98 = load %struct.usb_function*, %struct.usb_function** %6, align 8
  %99 = call i32 @usb_add_function(%struct.usb_configuration* %97, %struct.usb_function* %98)
  store i32 %99, i32* %11, align 4
  %100 = load i32, i32* %11, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %96
  %103 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  br label %104

104:                                              ; preds = %102, %96
  br label %105

105:                                              ; preds = %104, %92
  %106 = load %struct.usb_function*, %struct.usb_function** %8, align 8
  %107 = call i32 @IS_ERR_OR_NULL(%struct.usb_function* %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %118, label %109

109:                                              ; preds = %105
  %110 = load %struct.usb_configuration*, %struct.usb_configuration** %3, align 8
  %111 = load %struct.usb_function*, %struct.usb_function** %8, align 8
  %112 = call i32 @usb_add_function(%struct.usb_configuration* %110, %struct.usb_function* %111)
  store i32 %112, i32* %12, align 4
  %113 = load i32, i32* %12, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %109
  %116 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  br label %117

117:                                              ; preds = %115, %109
  br label %118

118:                                              ; preds = %117, %105
  %119 = load %struct.usb_configuration*, %struct.usb_configuration** %3, align 8
  %120 = load %struct.usb_function*, %struct.usb_function** %4, align 8
  %121 = call i32 @usb_add_function(%struct.usb_configuration* %119, %struct.usb_function* %120)
  store i32 %121, i32* %10, align 4
  %122 = load i32, i32* %10, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %118
  br label %168

125:                                              ; preds = %118
  %126 = load %struct.usb_configuration*, %struct.usb_configuration** %3, align 8
  %127 = load %struct.usb_function*, %struct.usb_function** %7, align 8
  %128 = call i32 @usb_add_function(%struct.usb_configuration* %126, %struct.usb_function* %127)
  store i32 %128, i32* %10, align 4
  %129 = load i32, i32* %10, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %125
  %132 = load i32, i32* %10, align 4
  %133 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %132)
  br label %164

134:                                              ; preds = %125
  %135 = load %struct.usb_configuration*, %struct.usb_configuration** %3, align 8
  %136 = load %struct.usb_function*, %struct.usb_function** %9, align 8
  %137 = call i32 @usb_add_function(%struct.usb_configuration* %135, %struct.usb_function* %136)
  store i32 %137, i32* %10, align 4
  %138 = load i32, i32* %10, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %134
  br label %160

141:                                              ; preds = %134
  %142 = load %struct.usb_configuration*, %struct.usb_configuration** %3, align 8
  %143 = icmp eq %struct.usb_configuration* %142, @nokia_config_500ma_driver
  br i1 %143, label %144, label %151

144:                                              ; preds = %141
  %145 = load %struct.usb_function*, %struct.usb_function** %4, align 8
  store %struct.usb_function* %145, %struct.usb_function** @f_acm_cfg1, align 8
  %146 = load %struct.usb_function*, %struct.usb_function** %7, align 8
  store %struct.usb_function* %146, %struct.usb_function** @f_ecm_cfg1, align 8
  %147 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  store %struct.usb_function* %147, %struct.usb_function** @f_phonet_cfg1, align 8
  %148 = load %struct.usb_function*, %struct.usb_function** %6, align 8
  store %struct.usb_function* %148, %struct.usb_function** @f_obex1_cfg1, align 8
  %149 = load %struct.usb_function*, %struct.usb_function** %8, align 8
  store %struct.usb_function* %149, %struct.usb_function** @f_obex2_cfg1, align 8
  %150 = load %struct.usb_function*, %struct.usb_function** %9, align 8
  store %struct.usb_function* %150, %struct.usb_function** @f_msg_cfg1, align 8
  br label %158

151:                                              ; preds = %141
  %152 = load %struct.usb_function*, %struct.usb_function** %4, align 8
  store %struct.usb_function* %152, %struct.usb_function** @f_acm_cfg2, align 8
  %153 = load %struct.usb_function*, %struct.usb_function** %7, align 8
  store %struct.usb_function* %153, %struct.usb_function** @f_ecm_cfg2, align 8
  %154 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  store %struct.usb_function* %154, %struct.usb_function** @f_phonet_cfg2, align 8
  %155 = load %struct.usb_function*, %struct.usb_function** %6, align 8
  store %struct.usb_function* %155, %struct.usb_function** @f_obex1_cfg2, align 8
  %156 = load %struct.usb_function*, %struct.usb_function** %8, align 8
  store %struct.usb_function* %156, %struct.usb_function** @f_obex2_cfg2, align 8
  %157 = load %struct.usb_function*, %struct.usb_function** %9, align 8
  store %struct.usb_function* %157, %struct.usb_function** @f_msg_cfg2, align 8
  br label %158

158:                                              ; preds = %151, %144
  %159 = load i32, i32* %10, align 4
  store i32 %159, i32* %2, align 4
  br label %221

160:                                              ; preds = %140
  %161 = load %struct.usb_configuration*, %struct.usb_configuration** %3, align 8
  %162 = load %struct.usb_function*, %struct.usb_function** %7, align 8
  %163 = call i32 @usb_remove_function(%struct.usb_configuration* %161, %struct.usb_function* %162)
  br label %164

164:                                              ; preds = %160, %131
  %165 = load %struct.usb_configuration*, %struct.usb_configuration** %3, align 8
  %166 = load %struct.usb_function*, %struct.usb_function** %4, align 8
  %167 = call i32 @usb_remove_function(%struct.usb_configuration* %165, %struct.usb_function* %166)
  br label %168

168:                                              ; preds = %164, %124
  %169 = load i32, i32* %12, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %175, label %171

171:                                              ; preds = %168
  %172 = load %struct.usb_configuration*, %struct.usb_configuration** %3, align 8
  %173 = load %struct.usb_function*, %struct.usb_function** %8, align 8
  %174 = call i32 @usb_remove_function(%struct.usb_configuration* %172, %struct.usb_function* %173)
  br label %175

175:                                              ; preds = %171, %168
  %176 = load i32, i32* %11, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %182, label %178

178:                                              ; preds = %175
  %179 = load %struct.usb_configuration*, %struct.usb_configuration** %3, align 8
  %180 = load %struct.usb_function*, %struct.usb_function** %6, align 8
  %181 = call i32 @usb_remove_function(%struct.usb_configuration* %179, %struct.usb_function* %180)
  br label %182

182:                                              ; preds = %178, %175
  %183 = load i32, i32* %13, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %189, label %185

185:                                              ; preds = %182
  %186 = load %struct.usb_configuration*, %struct.usb_configuration** %3, align 8
  %187 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %188 = call i32 @usb_remove_function(%struct.usb_configuration* %186, %struct.usb_function* %187)
  br label %189

189:                                              ; preds = %185, %182
  %190 = load %struct.usb_function*, %struct.usb_function** %9, align 8
  %191 = call i32 @usb_put_function(%struct.usb_function* %190)
  br label %192

192:                                              ; preds = %189, %76
  %193 = load %struct.usb_function*, %struct.usb_function** %7, align 8
  %194 = call i32 @usb_put_function(%struct.usb_function* %193)
  br label %195

195:                                              ; preds = %192, %67
  %196 = load %struct.usb_function*, %struct.usb_function** %4, align 8
  %197 = call i32 @usb_put_function(%struct.usb_function* %196)
  br label %198

198:                                              ; preds = %195, %58
  %199 = load %struct.usb_function*, %struct.usb_function** %8, align 8
  %200 = call i32 @IS_ERR_OR_NULL(%struct.usb_function* %199)
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %205, label %202

202:                                              ; preds = %198
  %203 = load %struct.usb_function*, %struct.usb_function** %8, align 8
  %204 = call i32 @usb_put_function(%struct.usb_function* %203)
  br label %205

205:                                              ; preds = %202, %198
  %206 = load %struct.usb_function*, %struct.usb_function** %6, align 8
  %207 = call i32 @IS_ERR_OR_NULL(%struct.usb_function* %206)
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %212, label %209

209:                                              ; preds = %205
  %210 = load %struct.usb_function*, %struct.usb_function** %6, align 8
  %211 = call i32 @usb_put_function(%struct.usb_function* %210)
  br label %212

212:                                              ; preds = %209, %205
  %213 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %214 = call i32 @IS_ERR_OR_NULL(%struct.usb_function* %213)
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %219, label %216

216:                                              ; preds = %212
  %217 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %218 = call i32 @usb_put_function(%struct.usb_function* %217)
  br label %219

219:                                              ; preds = %216, %212
  %220 = load i32, i32* %10, align 4
  store i32 %220, i32* %2, align 4
  br label %221

221:                                              ; preds = %219, %158
  %222 = load i32, i32* %2, align 4
  ret i32 %222
}

declare dso_local i64 @IS_ERR(%struct.usb_function*) #1

declare dso_local %struct.usb_function* @usb_get_function(%struct.usb_function*) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @PTR_ERR(%struct.usb_function*) #1

declare dso_local i32 @IS_ERR_OR_NULL(%struct.usb_function*) #1

declare dso_local i32 @usb_add_function(%struct.usb_configuration*, %struct.usb_function*) #1

declare dso_local i32 @usb_remove_function(%struct.usb_configuration*, %struct.usb_function*) #1

declare dso_local i32 @usb_put_function(%struct.usb_function*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
