; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_hipd.c_sym_ppr_nego_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_hipd.c_sym_ppr_nego_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sym_hcb = type { i8*, i8, i32, i8, i8, i8, i8, i8*, %struct.sym_tcb* }
%struct.sym_tcb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8, i8, i8, i32, i64, i64, i64 }

@PPR_OPT_MASK = common dso_local global i8 0, align 1
@DEBUG_FLAGS = common dso_local global i32 0, align 4
@DEBUG_NEGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"ppr msgin\00", align 1
@FE_U3EN = common dso_local global i32 0, align 4
@PPR_OPT_DT = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"ppr msgout\00", align 1
@M_NOOP = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sym_hcb*, i32, i32)* @sym_ppr_nego_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sym_ppr_nego_check(%struct.sym_hcb* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sym_hcb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sym_tcb*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  %18 = alloca i8, align 1
  store %struct.sym_hcb* %0, %struct.sym_hcb** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %19 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %20 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %19, i32 0, i32 8
  %21 = load %struct.sym_tcb*, %struct.sym_tcb** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %21, i64 %23
  store %struct.sym_tcb* %24, %struct.sym_tcb** %8, align 8
  store i32 0, i32* %12, align 4
  %25 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %26 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 3
  %29 = load i8, i8* %28, align 1
  store i8 %29, i8* %13, align 1
  %30 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %31 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 5
  %34 = load i8, i8* %33, align 1
  store i8 %34, i8* %14, align 1
  %35 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %36 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 6
  %39 = load i8, i8* %38, align 1
  store i8 %39, i8* %15, align 1
  %40 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %41 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 7
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i32
  %46 = load i8, i8* @PPR_OPT_MASK, align 1
  %47 = zext i8 %46 to i32
  %48 = and i32 %45, %47
  %49 = trunc i32 %48 to i8
  store i8 %49, i8* %16, align 1
  %50 = load i32, i32* @DEBUG_FLAGS, align 4
  %51 = load i32, i32* @DEBUG_NEGO, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %3
  %55 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %58 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @sym_print_nego_msg(%struct.sym_hcb* %55, i32 %56, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %59)
  br label %61

61:                                               ; preds = %54, %3
  %62 = load i8, i8* %15, align 1
  %63 = zext i8 %62 to i32
  %64 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %65 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %64, i32 0, i32 1
  %66 = load i8, i8* %65, align 8
  %67 = zext i8 %66 to i32
  %68 = icmp sgt i32 %63, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %61
  store i32 1, i32* %12, align 4
  %70 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %71 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %70, i32 0, i32 1
  %72 = load i8, i8* %71, align 8
  store i8 %72, i8* %15, align 1
  br label %73

73:                                               ; preds = %69, %61
  %74 = load i8, i8* %15, align 1
  %75 = icmp ne i8 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %73
  %77 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %78 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @FE_U3EN, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %76, %73
  store i8 0, i8* %16, align 1
  br label %84

84:                                               ; preds = %83, %76
  %85 = load i8, i8* %16, align 1
  %86 = zext i8 %85 to i32
  %87 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %88 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 7
  %91 = load i8, i8* %90, align 1
  %92 = zext i8 %91 to i32
  %93 = load i8, i8* @PPR_OPT_MASK, align 1
  %94 = zext i8 %93 to i32
  %95 = and i32 %92, %94
  %96 = icmp ne i32 %86, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %84
  store i32 1, i32* %12, align 4
  br label %98

98:                                               ; preds = %97, %84
  %99 = load i8, i8* %16, align 1
  %100 = zext i8 %99 to i32
  %101 = load i8, i8* @PPR_OPT_DT, align 1
  %102 = zext i8 %101 to i32
  %103 = and i32 %100, %102
  store i32 %103, i32* %11, align 4
  %104 = load i8, i8* %14, align 1
  %105 = icmp ne i8 %104, 0
  br i1 %105, label %106, label %130

106:                                              ; preds = %98
  %107 = load i32, i32* %11, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %106
  %110 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %111 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %110, i32 0, i32 3
  %112 = load i8, i8* %111, align 8
  %113 = zext i8 %112 to i32
  br label %119

114:                                              ; preds = %106
  %115 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %116 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %115, i32 0, i32 4
  %117 = load i8, i8* %116, align 1
  %118 = zext i8 %117 to i32
  br label %119

119:                                              ; preds = %114, %109
  %120 = phi i32 [ %113, %109 ], [ %118, %114 ]
  %121 = trunc i32 %120 to i8
  store i8 %121, i8* %17, align 1
  %122 = load i8, i8* %14, align 1
  %123 = zext i8 %122 to i32
  %124 = load i8, i8* %17, align 1
  %125 = zext i8 %124 to i32
  %126 = icmp sgt i32 %123, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %119
  store i32 1, i32* %12, align 4
  %128 = load i8, i8* %17, align 1
  store i8 %128, i8* %14, align 1
  br label %129

129:                                              ; preds = %127, %119
  br label %130

130:                                              ; preds = %129, %98
  %131 = load i8, i8* %14, align 1
  %132 = icmp ne i8 %131, 0
  br i1 %132, label %133, label %157

133:                                              ; preds = %130
  %134 = load i32, i32* %11, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %133
  %137 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %138 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %137, i32 0, i32 5
  %139 = load i8, i8* %138, align 2
  %140 = zext i8 %139 to i32
  br label %146

141:                                              ; preds = %133
  %142 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %143 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %142, i32 0, i32 6
  %144 = load i8, i8* %143, align 1
  %145 = zext i8 %144 to i32
  br label %146

146:                                              ; preds = %141, %136
  %147 = phi i32 [ %140, %136 ], [ %145, %141 ]
  %148 = trunc i32 %147 to i8
  store i8 %148, i8* %18, align 1
  %149 = load i8, i8* %13, align 1
  %150 = zext i8 %149 to i32
  %151 = load i8, i8* %18, align 1
  %152 = zext i8 %151 to i32
  %153 = icmp slt i32 %150, %152
  br i1 %153, label %154, label %156

154:                                              ; preds = %146
  store i32 1, i32* %12, align 4
  %155 = load i8, i8* %18, align 1
  store i8 %155, i8* %13, align 1
  br label %156

156:                                              ; preds = %154, %146
  br label %157

157:                                              ; preds = %156, %130
  store i8 0, i8* %9, align 1
  store i8 0, i8* %10, align 1
  %158 = load i8, i8* %14, align 1
  %159 = zext i8 %158 to i32
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %168

161:                                              ; preds = %157
  %162 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %163 = load i32, i32* %11, align 4
  %164 = load i8, i8* %13, align 1
  %165 = call i64 @sym_getsync(%struct.sym_hcb* %162, i32 %163, i8 zeroext %164, i8* %10, i8* %9)
  %166 = icmp slt i64 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %161
  br label %214

168:                                              ; preds = %161, %157
  %169 = load i32, i32* %6, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %175, label %171

171:                                              ; preds = %168
  %172 = load i32, i32* %12, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %171
  br label %214

175:                                              ; preds = %171, %168
  %176 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %177 = load i32, i32* %7, align 4
  %178 = load i8, i8* %16, align 1
  %179 = load i8, i8* %14, align 1
  %180 = load i8, i8* %13, align 1
  %181 = load i8, i8* %15, align 1
  %182 = load i8, i8* %10, align 1
  %183 = load i8, i8* %9, align 1
  %184 = call i32 @sym_setpprot(%struct.sym_hcb* %176, i32 %177, i8 zeroext %178, i8 zeroext %179, i8 zeroext %180, i8 zeroext %181, i8 zeroext %182, i8 zeroext %183)
  %185 = load i32, i32* %6, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %188, label %187

187:                                              ; preds = %175
  store i32 0, i32* %4, align 4
  br label %249

188:                                              ; preds = %175
  %189 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %190 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %189, i32 0, i32 7
  %191 = load i8*, i8** %190, align 8
  %192 = load i8, i8* %13, align 1
  %193 = load i8, i8* %14, align 1
  %194 = load i8, i8* %15, align 1
  %195 = load i8, i8* %16, align 1
  %196 = call i32 @spi_populate_ppr_msg(i8* %191, i8 zeroext %192, i8 zeroext %193, i8 zeroext %194, i8 zeroext %195)
  %197 = load i32, i32* @DEBUG_FLAGS, align 4
  %198 = load i32, i32* @DEBUG_NEGO, align 4
  %199 = and i32 %197, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %208

201:                                              ; preds = %188
  %202 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %203 = load i32, i32* %7, align 4
  %204 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %205 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %204, i32 0, i32 7
  %206 = load i8*, i8** %205, align 8
  %207 = call i32 @sym_print_nego_msg(%struct.sym_hcb* %202, i32 %203, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %206)
  br label %208

208:                                              ; preds = %201, %188
  %209 = load i8, i8* @M_NOOP, align 1
  %210 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %211 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %210, i32 0, i32 0
  %212 = load i8*, i8** %211, align 8
  %213 = getelementptr inbounds i8, i8* %212, i64 0
  store i8 %209, i8* %213, align 1
  store i32 0, i32* %4, align 4
  br label %249

214:                                              ; preds = %174, %167
  %215 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %216 = load i32, i32* %7, align 4
  %217 = call i32 @sym_setpprot(%struct.sym_hcb* %215, i32 %216, i8 zeroext 0, i8 zeroext 0, i8 zeroext 0, i8 zeroext 0, i8 zeroext 0, i8 zeroext 0)
  %218 = load i32, i32* %6, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %248, label %220

220:                                              ; preds = %214
  %221 = load i8, i8* %16, align 1
  %222 = icmp ne i8 %221, 0
  br i1 %222, label %248, label %223

223:                                              ; preds = %220
  %224 = load i8, i8* %13, align 1
  %225 = load %struct.sym_tcb*, %struct.sym_tcb** %8, align 8
  %226 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %226, i32 0, i32 0
  store i8 %224, i8* %227, align 8
  %228 = load i8, i8* %14, align 1
  %229 = load %struct.sym_tcb*, %struct.sym_tcb** %8, align 8
  %230 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %230, i32 0, i32 1
  store i8 %228, i8* %231, align 1
  %232 = load i8, i8* %15, align 1
  %233 = load %struct.sym_tcb*, %struct.sym_tcb** %8, align 8
  %234 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %234, i32 0, i32 2
  store i8 %232, i8* %235, align 2
  %236 = load %struct.sym_tcb*, %struct.sym_tcb** %8, align 8
  %237 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %237, i32 0, i32 4
  store i64 0, i64* %238, align 8
  %239 = load %struct.sym_tcb*, %struct.sym_tcb** %8, align 8
  %240 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %240, i32 0, i32 5
  store i64 0, i64* %241, align 8
  %242 = load %struct.sym_tcb*, %struct.sym_tcb** %8, align 8
  %243 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %243, i32 0, i32 6
  store i64 0, i64* %244, align 8
  %245 = load %struct.sym_tcb*, %struct.sym_tcb** %8, align 8
  %246 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %246, i32 0, i32 3
  store i32 1, i32* %247, align 4
  br label %248

248:                                              ; preds = %223, %220, %214
  store i32 -1, i32* %4, align 4
  br label %249

249:                                              ; preds = %248, %208, %187
  %250 = load i32, i32* %4, align 4
  ret i32 %250
}

declare dso_local i32 @sym_print_nego_msg(%struct.sym_hcb*, i32, i8*, i8*) #1

declare dso_local i64 @sym_getsync(%struct.sym_hcb*, i32, i8 zeroext, i8*, i8*) #1

declare dso_local i32 @sym_setpprot(%struct.sym_hcb*, i32, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @spi_populate_ppr_msg(i8*, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
