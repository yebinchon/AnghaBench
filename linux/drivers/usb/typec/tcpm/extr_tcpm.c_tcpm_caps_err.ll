; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_tcpm_caps_err.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_tcpm_caps_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpm_port = type { i32 }

@PDO_ERR_NO_VSAFE5V = common dso_local global i32 0, align 4
@VSAFE5V = common dso_local global i64 0, align 8
@PDO_ERR_VSAFE5V_NOT_FIRST = common dso_local global i32 0, align 4
@PDO_ERR_PDO_TYPE_NOT_IN_ORDER = common dso_local global i32 0, align 4
@PDO_ERR_FIXED_NOT_SORTED = common dso_local global i32 0, align 4
@PDO_ERR_VARIABLE_BATT_NOT_SORTED = common dso_local global i32 0, align 4
@PDO_ERR_DUPE_PDO = common dso_local global i32 0, align 4
@APDO_TYPE_PPS = common dso_local global i32 0, align 4
@PDO_ERR_PPS_APDO_NOT_SORTED = common dso_local global i32 0, align 4
@PDO_ERR_DUPE_PPS_APDO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c" Unknown pdo type\00", align 1
@PDO_NO_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcpm_port*, i32*, i32)* @tcpm_caps_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcpm_caps_err(%struct.tcpm_port* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tcpm_port*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.tcpm_port* %0, %struct.tcpm_port** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ult i32 %10, 1
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32, i32* @PDO_ERR_NO_VSAFE5V, align 4
  store i32 %13, i32* %4, align 4
  br label %231

14:                                               ; preds = %3
  %15 = load i32*, i32** %6, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @pdo_type(i32 %17)
  %19 = icmp ne i64 %18, 129
  br i1 %19, label %27, label %20

20:                                               ; preds = %14
  %21 = load i32*, i32** %6, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @pdo_fixed_voltage(i32 %23)
  %25 = load i64, i64* @VSAFE5V, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %20, %14
  %28 = load i32, i32* @PDO_ERR_VSAFE5V_NOT_FIRST, align 4
  store i32 %28, i32* %4, align 4
  br label %231

29:                                               ; preds = %20
  store i32 1, i32* %8, align 4
  br label %30

30:                                               ; preds = %226, %29
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %34, label %229

34:                                               ; preds = %30
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* %8, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @pdo_type(i32 %39)
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sub i32 %42, 1
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %41, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @pdo_type(i32 %46)
  %48 = icmp slt i64 %40, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %34
  %50 = load i32, i32* @PDO_ERR_PDO_TYPE_NOT_IN_ORDER, align 4
  store i32 %50, i32* %4, align 4
  br label %231

51:                                               ; preds = %34
  %52 = load i32*, i32** %6, align 8
  %53 = load i32, i32* %8, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @pdo_type(i32 %56)
  %58 = load i32*, i32** %6, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sub i32 %59, 1
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %58, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @pdo_type(i32 %63)
  %65 = icmp eq i64 %57, %64
  br i1 %65, label %66, label %224

66:                                               ; preds = %51
  %67 = load i32*, i32** %6, align 8
  %68 = load i32, i32* %8, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @pdo_type(i32 %71)
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  switch i32 %74, label %220 [
    i32 129, label %75
    i32 128, label %93
    i32 130, label %93
    i32 131, label %144
  ]

75:                                               ; preds = %66
  %76 = load i32*, i32** %6, align 8
  %77 = load i32, i32* %8, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @pdo_fixed_voltage(i32 %80)
  %82 = load i32*, i32** %6, align 8
  %83 = load i32, i32* %8, align 4
  %84 = sub i32 %83, 1
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %82, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @pdo_fixed_voltage(i32 %87)
  %89 = icmp sle i64 %81, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %75
  %91 = load i32, i32* @PDO_ERR_FIXED_NOT_SORTED, align 4
  store i32 %91, i32* %4, align 4
  br label %231

92:                                               ; preds = %75
  br label %223

93:                                               ; preds = %66, %66
  %94 = load i32*, i32** %6, align 8
  %95 = load i32, i32* %8, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @pdo_min_voltage(i32 %98)
  %100 = load i32*, i32** %6, align 8
  %101 = load i32, i32* %8, align 4
  %102 = sub i32 %101, 1
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %100, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @pdo_min_voltage(i32 %105)
  %107 = icmp slt i32 %99, %106
  br i1 %107, label %108, label %110

108:                                              ; preds = %93
  %109 = load i32, i32* @PDO_ERR_VARIABLE_BATT_NOT_SORTED, align 4
  store i32 %109, i32* %4, align 4
  br label %231

110:                                              ; preds = %93
  %111 = load i32*, i32** %6, align 8
  %112 = load i32, i32* %8, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @pdo_min_voltage(i32 %115)
  %117 = load i32*, i32** %6, align 8
  %118 = load i32, i32* %8, align 4
  %119 = sub i32 %118, 1
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %117, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @pdo_min_voltage(i32 %122)
  %124 = icmp eq i32 %116, %123
  br i1 %124, label %125, label %142

125:                                              ; preds = %110
  %126 = load i32*, i32** %6, align 8
  %127 = load i32, i32* %8, align 4
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @pdo_max_voltage(i32 %130)
  %132 = load i32*, i32** %6, align 8
  %133 = load i32, i32* %8, align 4
  %134 = sub i32 %133, 1
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %132, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @pdo_max_voltage(i32 %137)
  %139 = icmp eq i32 %131, %138
  br i1 %139, label %140, label %142

140:                                              ; preds = %125
  %141 = load i32, i32* @PDO_ERR_DUPE_PDO, align 4
  store i32 %141, i32* %4, align 4
  br label %231

142:                                              ; preds = %125, %110
  br label %143

143:                                              ; preds = %142
  br label %223

144:                                              ; preds = %66
  %145 = load i32*, i32** %6, align 8
  %146 = load i32, i32* %8, align 4
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @pdo_apdo_type(i32 %149)
  %151 = load i32, i32* @APDO_TYPE_PPS, align 4
  %152 = icmp ne i32 %150, %151
  br i1 %152, label %153, label %154

153:                                              ; preds = %144
  br label %223

154:                                              ; preds = %144
  %155 = load i32*, i32** %6, align 8
  %156 = load i32, i32* %8, align 4
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @pdo_pps_apdo_max_voltage(i32 %159)
  %161 = load i32*, i32** %6, align 8
  %162 = load i32, i32* %8, align 4
  %163 = sub i32 %162, 1
  %164 = zext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %161, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @pdo_pps_apdo_max_voltage(i32 %166)
  %168 = icmp slt i32 %160, %167
  br i1 %168, label %169, label %171

169:                                              ; preds = %154
  %170 = load i32, i32* @PDO_ERR_PPS_APDO_NOT_SORTED, align 4
  store i32 %170, i32* %4, align 4
  br label %231

171:                                              ; preds = %154
  %172 = load i32*, i32** %6, align 8
  %173 = load i32, i32* %8, align 4
  %174 = zext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @pdo_pps_apdo_min_voltage(i32 %176)
  %178 = load i32*, i32** %6, align 8
  %179 = load i32, i32* %8, align 4
  %180 = sub i32 %179, 1
  %181 = zext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %178, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @pdo_pps_apdo_min_voltage(i32 %183)
  %185 = icmp eq i32 %177, %184
  br i1 %185, label %186, label %218

186:                                              ; preds = %171
  %187 = load i32*, i32** %6, align 8
  %188 = load i32, i32* %8, align 4
  %189 = zext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %187, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @pdo_pps_apdo_max_voltage(i32 %191)
  %193 = load i32*, i32** %6, align 8
  %194 = load i32, i32* %8, align 4
  %195 = sub i32 %194, 1
  %196 = zext i32 %195 to i64
  %197 = getelementptr inbounds i32, i32* %193, i64 %196
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @pdo_pps_apdo_max_voltage(i32 %198)
  %200 = icmp eq i32 %192, %199
  br i1 %200, label %201, label %218

201:                                              ; preds = %186
  %202 = load i32*, i32** %6, align 8
  %203 = load i32, i32* %8, align 4
  %204 = zext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %202, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @pdo_pps_apdo_max_current(i32 %206)
  %208 = load i32*, i32** %6, align 8
  %209 = load i32, i32* %8, align 4
  %210 = sub i32 %209, 1
  %211 = zext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %208, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @pdo_pps_apdo_max_current(i32 %213)
  %215 = icmp eq i32 %207, %214
  br i1 %215, label %216, label %218

216:                                              ; preds = %201
  %217 = load i32, i32* @PDO_ERR_DUPE_PPS_APDO, align 4
  store i32 %217, i32* %4, align 4
  br label %231

218:                                              ; preds = %201, %186, %171
  br label %219

219:                                              ; preds = %218
  br label %223

220:                                              ; preds = %66
  %221 = load %struct.tcpm_port*, %struct.tcpm_port** %5, align 8
  %222 = call i32 @tcpm_log_force(%struct.tcpm_port* %221, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %223

223:                                              ; preds = %220, %219, %153, %143, %92
  br label %224

224:                                              ; preds = %223, %51
  br label %225

225:                                              ; preds = %224
  br label %226

226:                                              ; preds = %225
  %227 = load i32, i32* %8, align 4
  %228 = add i32 %227, 1
  store i32 %228, i32* %8, align 4
  br label %30

229:                                              ; preds = %30
  %230 = load i32, i32* @PDO_NO_ERR, align 4
  store i32 %230, i32* %4, align 4
  br label %231

231:                                              ; preds = %229, %216, %169, %140, %108, %90, %49, %27, %12
  %232 = load i32, i32* %4, align 4
  ret i32 %232
}

declare dso_local i64 @pdo_type(i32) #1

declare dso_local i64 @pdo_fixed_voltage(i32) #1

declare dso_local i32 @pdo_min_voltage(i32) #1

declare dso_local i32 @pdo_max_voltage(i32) #1

declare dso_local i32 @pdo_apdo_type(i32) #1

declare dso_local i32 @pdo_pps_apdo_max_voltage(i32) #1

declare dso_local i32 @pdo_pps_apdo_min_voltage(i32) #1

declare dso_local i32 @pdo_pps_apdo_max_current(i32) #1

declare dso_local i32 @tcpm_log_force(%struct.tcpm_port*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
