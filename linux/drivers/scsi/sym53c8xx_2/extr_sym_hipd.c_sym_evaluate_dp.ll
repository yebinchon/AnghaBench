; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_hipd.c_sym_evaluate_dp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_hipd.c_sym_evaluate_dp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sym_hcb = type { i32 }
%struct.sym_ccb = type { i32, i32, i32, i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.sym_pmc, %struct.sym_pmc }
%struct.TYPE_5__ = type { i32 }
%struct.sym_pmc = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@pm0_data = common dso_local global i32 0, align 4
@pm1_data = common dso_local global i32 0, align 4
@HF_SENSE = common dso_local global i32 0, align 4
@SYM_CONF_MAX_SG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sym_hcb*, %struct.sym_ccb*, i32, i32*)* @sym_evaluate_dp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sym_evaluate_dp(%struct.sym_hcb* %0, %struct.sym_ccb* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sym_hcb*, align 8
  %7 = alloca %struct.sym_ccb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.sym_pmc*, align 8
  %16 = alloca i32, align 4
  store %struct.sym_hcb* %0, %struct.sym_hcb** %6, align 8
  store %struct.sym_ccb* %1, %struct.sym_ccb** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %10, align 4
  %18 = load i32*, i32** %9, align 8
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load %struct.sym_hcb*, %struct.sym_hcb** %6, align 8
  %22 = load i32, i32* @pm0_data, align 4
  %23 = call i32 @SCRIPTA_BA(%struct.sym_hcb* %21, i32 %22)
  %24 = icmp eq i32 %20, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %4
  %26 = load %struct.sym_ccb*, %struct.sym_ccb** %7, align 8
  %27 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 2
  store %struct.sym_pmc* %28, %struct.sym_pmc** %15, align 8
  br label %41

29:                                               ; preds = %4
  %30 = load i32, i32* %10, align 4
  %31 = load %struct.sym_hcb*, %struct.sym_hcb** %6, align 8
  %32 = load i32, i32* @pm1_data, align 4
  %33 = call i32 @SCRIPTA_BA(%struct.sym_hcb* %31, i32 %32)
  %34 = icmp eq i32 %30, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load %struct.sym_ccb*, %struct.sym_ccb** %7, align 8
  %37 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %36, i32 0, i32 4
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  store %struct.sym_pmc* %38, %struct.sym_pmc** %15, align 8
  br label %40

39:                                               ; preds = %29
  store %struct.sym_pmc* null, %struct.sym_pmc** %15, align 8
  br label %40

40:                                               ; preds = %39, %35
  br label %41

41:                                               ; preds = %40, %25
  %42 = load %struct.sym_pmc*, %struct.sym_pmc** %15, align 8
  %43 = icmp ne %struct.sym_pmc* %42, null
  br i1 %43, label %44, label %57

44:                                               ; preds = %41
  %45 = load %struct.sym_pmc*, %struct.sym_pmc** %15, align 8
  %46 = getelementptr inbounds %struct.sym_pmc, %struct.sym_pmc* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @scr_to_cpu(i32 %47)
  store i32 %48, i32* %10, align 4
  %49 = load %struct.sym_pmc*, %struct.sym_pmc** %15, align 8
  %50 = getelementptr inbounds %struct.sym_pmc, %struct.sym_pmc* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @scr_to_cpu(i32 %52)
  %54 = and i32 %53, 16777215
  %55 = load i32, i32* %11, align 4
  %56 = sub nsw i32 %55, %54
  store i32 %56, i32* %11, align 4
  br label %57

57:                                               ; preds = %44, %41
  %58 = load %struct.sym_ccb*, %struct.sym_ccb** %7, align 8
  %59 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @HF_SENSE, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %57
  %65 = load i32, i32* %11, align 4
  %66 = load i32*, i32** %9, align 8
  store i32 %65, i32* %66, align 4
  store i32 0, i32* %5, align 4
  br label %208

67:                                               ; preds = %57
  %68 = load %struct.sym_ccb*, %struct.sym_ccb** %7, align 8
  %69 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @scr_to_cpu(i32 %70)
  store i32 %71, i32* %14, align 4
  %72 = load i32, i32* @SYM_CONF_MAX_SG, align 4
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %14, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %84

76:                                               ; preds = %67
  %77 = load i32, i32* %14, align 4
  %78 = sub nsw i32 %77, 8
  %79 = load i32, i32* %10, align 4
  %80 = sub nsw i32 %78, %79
  %81 = sdiv i32 %80, 8
  %82 = load i32, i32* %12, align 4
  %83 = sub nsw i32 %82, %81
  store i32 %83, i32* %12, align 4
  br label %84

84:                                               ; preds = %76, %67
  %85 = load i32, i32* @SYM_CONF_MAX_SG, align 4
  %86 = load %struct.sym_ccb*, %struct.sym_ccb** %7, align 8
  %87 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = sub nsw i32 %85, %88
  store i32 %89, i32* %13, align 4
  %90 = load i32, i32* %11, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %122

92:                                               ; preds = %84
  br label %93

93:                                               ; preds = %119, %92
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* %13, align 4
  %96 = icmp sgt i32 %94, %95
  br i1 %96, label %97, label %121

97:                                               ; preds = %93
  %98 = load i32, i32* %12, align 4
  %99 = add nsw i32 %98, -1
  store i32 %99, i32* %12, align 4
  %100 = load %struct.sym_ccb*, %struct.sym_ccb** %7, align 8
  %101 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %100, i32 0, i32 4
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %102, align 8
  %104 = load i32, i32* %12, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @scr_to_cpu(i32 %108)
  store i32 %109, i32* %14, align 4
  %110 = load i32, i32* %11, align 4
  %111 = load i32, i32* %14, align 4
  %112 = and i32 %111, 16777215
  %113 = add nsw i32 %110, %112
  store i32 %113, i32* %16, align 4
  %114 = load i32, i32* %16, align 4
  %115 = icmp sgt i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %97
  %117 = load i32, i32* %12, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %12, align 4
  br label %121

119:                                              ; preds = %97
  %120 = load i32, i32* %16, align 4
  store i32 %120, i32* %11, align 4
  br label %93

121:                                              ; preds = %116, %93
  br label %153

122:                                              ; preds = %84
  %123 = load i32, i32* %11, align 4
  %124 = icmp sgt i32 %123, 0
  br i1 %124, label %125, label %152

125:                                              ; preds = %122
  br label %126

126:                                              ; preds = %150, %125
  %127 = load i32, i32* %12, align 4
  %128 = load i32, i32* @SYM_CONF_MAX_SG, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %151

130:                                              ; preds = %126
  %131 = load %struct.sym_ccb*, %struct.sym_ccb** %7, align 8
  %132 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %131, i32 0, i32 4
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %133, align 8
  %135 = load i32, i32* %12, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @scr_to_cpu(i32 %139)
  store i32 %140, i32* %14, align 4
  %141 = load i32, i32* %14, align 4
  %142 = and i32 %141, 16777215
  %143 = load i32, i32* %11, align 4
  %144 = sub nsw i32 %143, %142
  store i32 %144, i32* %11, align 4
  %145 = load i32, i32* %12, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %12, align 4
  %147 = load i32, i32* %11, align 4
  %148 = icmp sle i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %130
  br label %151

150:                                              ; preds = %130
  br label %126

151:                                              ; preds = %149, %126
  br label %152

152:                                              ; preds = %151, %122
  br label %153

153:                                              ; preds = %152, %121
  %154 = load i32, i32* %12, align 4
  %155 = load i32, i32* %13, align 4
  %156 = icmp slt i32 %154, %155
  br i1 %156, label %164, label %157

157:                                              ; preds = %153
  %158 = load i32, i32* %12, align 4
  %159 = load i32, i32* %13, align 4
  %160 = icmp eq i32 %158, %159
  br i1 %160, label %161, label %165

161:                                              ; preds = %157
  %162 = load i32, i32* %11, align 4
  %163 = icmp slt i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %161, %153
  br label %207

165:                                              ; preds = %161, %157
  %166 = load i32, i32* %12, align 4
  %167 = load i32, i32* @SYM_CONF_MAX_SG, align 4
  %168 = icmp sgt i32 %166, %167
  br i1 %168, label %176, label %169

169:                                              ; preds = %165
  %170 = load i32, i32* %12, align 4
  %171 = load i32, i32* @SYM_CONF_MAX_SG, align 4
  %172 = icmp eq i32 %170, %171
  br i1 %172, label %173, label %177

173:                                              ; preds = %169
  %174 = load i32, i32* %11, align 4
  %175 = icmp sgt i32 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %173, %165
  br label %207

177:                                              ; preds = %173, %169
  br label %178

178:                                              ; preds = %177
  %179 = load i32, i32* %12, align 4
  %180 = load %struct.sym_ccb*, %struct.sym_ccb** %7, align 8
  %181 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = icmp sgt i32 %179, %182
  br i1 %183, label %196, label %184

184:                                              ; preds = %178
  %185 = load i32, i32* %12, align 4
  %186 = load %struct.sym_ccb*, %struct.sym_ccb** %7, align 8
  %187 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = icmp eq i32 %185, %188
  br i1 %189, label %190, label %203

190:                                              ; preds = %184
  %191 = load i32, i32* %11, align 4
  %192 = load %struct.sym_ccb*, %struct.sym_ccb** %7, align 8
  %193 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 4
  %195 = icmp sgt i32 %191, %194
  br i1 %195, label %196, label %203

196:                                              ; preds = %190, %178
  %197 = load i32, i32* %12, align 4
  %198 = load %struct.sym_ccb*, %struct.sym_ccb** %7, align 8
  %199 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %198, i32 0, i32 2
  store i32 %197, i32* %199, align 8
  %200 = load i32, i32* %11, align 4
  %201 = load %struct.sym_ccb*, %struct.sym_ccb** %7, align 8
  %202 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %201, i32 0, i32 3
  store i32 %200, i32* %202, align 4
  br label %203

203:                                              ; preds = %196, %190, %184
  %204 = load i32, i32* %11, align 4
  %205 = load i32*, i32** %9, align 8
  store i32 %204, i32* %205, align 4
  %206 = load i32, i32* %12, align 4
  store i32 %206, i32* %5, align 4
  br label %208

207:                                              ; preds = %176, %164
  store i32 -1, i32* %5, align 4
  br label %208

208:                                              ; preds = %207, %203, %64
  %209 = load i32, i32* %5, align 4
  ret i32 %209
}

declare dso_local i32 @SCRIPTA_BA(%struct.sym_hcb*, i32) #1

declare dso_local i32 @scr_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
