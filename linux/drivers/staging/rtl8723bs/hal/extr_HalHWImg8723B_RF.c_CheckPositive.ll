; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalHWImg8723B_RF.c_CheckPositive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalHWImg8723B_RF.c_CheckPositive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@BIT4 = common dso_local global i32 0, align 4
@BIT3 = common dso_local global i32 0, align 4
@BIT7 = common dso_local global i32 0, align 4
@BIT6 = common dso_local global i32 0, align 4
@BIT2 = common dso_local global i32 0, align 4
@ODM_COMP_INIT = common dso_local global i32 0, align 4
@ODM_DBG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"===> [8812A] CheckPositive (cond1, cond2) = (0x%X 0x%X)\0A\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"===> [8812A] CheckPositive (driver1, driver2) = (0x%X 0x%X)\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"\09(Platform, Interface) = (0x%X, 0x%X)\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"\09(Board, Package) = (0x%X, 0x%X)\0A\00", align 1
@BIT0 = common dso_local global i32 0, align 4
@BIT1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32, i32)* @CheckPositive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckPositive(%struct.TYPE_4__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @BIT4, align 4
  %18 = and i32 %16, %17
  %19 = ashr i32 %18, 4
  %20 = shl i32 %19, 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @BIT3, align 4
  %25 = and i32 %23, %24
  %26 = ashr i32 %25, 3
  %27 = shl i32 %26, 1
  %28 = or i32 %20, %27
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @BIT7, align 4
  %33 = and i32 %31, %32
  %34 = ashr i32 %33, 7
  %35 = shl i32 %34, 2
  %36 = or i32 %28, %35
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @BIT6, align 4
  %41 = and i32 %39, %40
  %42 = ashr i32 %41, 6
  %43 = shl i32 %42, 3
  %44 = or i32 %36, %43
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @BIT2, align 4
  %49 = and i32 %47, %48
  %50 = ashr i32 %49, 2
  %51 = shl i32 %50, 4
  %52 = or i32 %44, %51
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %7, align 4
  store i32 %54, i32* %10, align 4
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = shl i32 %57, 24
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = shl i32 %61, 16
  %63 = or i32 %58, %62
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = shl i32 %66, 12
  %68 = or i32 %63, %67
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = shl i32 %71, 8
  %73 = or i32 %68, %72
  %74 = load i32, i32* %8, align 4
  %75 = or i32 %73, %74
  store i32 %75, i32* %11, align 4
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 4
  %79 = shl i32 %78, 0
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 6
  %82 = load i32, i32* %81, align 4
  %83 = shl i32 %82, 8
  %84 = or i32 %79, %83
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 7
  %87 = load i32, i32* %86, align 4
  %88 = shl i32 %87, 16
  %89 = or i32 %84, %88
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 8
  %92 = load i32, i32* %91, align 4
  %93 = shl i32 %92, 24
  %94 = or i32 %89, %93
  store i32 %94, i32* %12, align 4
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %96 = load i32, i32* @ODM_COMP_INIT, align 4
  %97 = load i32, i32* @ODM_DBG_TRACE, align 4
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* %10, align 4
  %100 = sext i32 %99 to i64
  %101 = inttoptr i64 %100 to i8*
  %102 = call i32 @ODM_RT_TRACE(%struct.TYPE_4__* %95, i32 %96, i32 %97, i8* %101)
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %104 = load i32, i32* @ODM_COMP_INIT, align 4
  %105 = load i32, i32* @ODM_DBG_TRACE, align 4
  %106 = load i32, i32* %11, align 4
  %107 = load i32, i32* %12, align 4
  %108 = sext i32 %107 to i64
  %109 = inttoptr i64 %108 to i8*
  %110 = call i32 @ODM_RT_TRACE(%struct.TYPE_4__* %103, i32 %104, i32 %105, i8* %109)
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %112 = load i32, i32* @ODM_COMP_INIT, align 4
  %113 = load i32, i32* @ODM_DBG_TRACE, align 4
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 4
  %120 = sext i32 %119 to i64
  %121 = inttoptr i64 %120 to i8*
  %122 = call i32 @ODM_RT_TRACE(%struct.TYPE_4__* %111, i32 %112, i32 %113, i8* %121)
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %124 = load i32, i32* @ODM_COMP_INIT, align 4
  %125 = load i32, i32* @ODM_DBG_TRACE, align 4
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = sext i32 %131 to i64
  %133 = inttoptr i64 %132 to i8*
  %134 = call i32 @ODM_RT_TRACE(%struct.TYPE_4__* %123, i32 %124, i32 %125, i8* %133)
  %135 = load i32, i32* %9, align 4
  %136 = and i32 %135, 61440
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %145

138:                                              ; preds = %3
  %139 = load i32, i32* %9, align 4
  %140 = and i32 %139, 61440
  %141 = load i32, i32* %11, align 4
  %142 = and i32 %141, 61440
  %143 = icmp ne i32 %140, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %138
  store i32 0, i32* %4, align 4
  br label %214

145:                                              ; preds = %138, %3
  %146 = load i32, i32* %9, align 4
  %147 = and i32 %146, 251658240
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %156

149:                                              ; preds = %145
  %150 = load i32, i32* %9, align 4
  %151 = and i32 %150, 251658240
  %152 = load i32, i32* %11, align 4
  %153 = and i32 %152, 251658240
  %154 = icmp ne i32 %151, %153
  br i1 %154, label %155, label %156

155:                                              ; preds = %149
  store i32 0, i32* %4, align 4
  br label %214

156:                                              ; preds = %149, %145
  %157 = load i32, i32* %9, align 4
  %158 = and i32 %157, 987135
  store i32 %158, i32* %9, align 4
  %159 = load i32, i32* %11, align 4
  %160 = and i32 %159, 987135
  store i32 %160, i32* %11, align 4
  %161 = load i32, i32* %9, align 4
  %162 = load i32, i32* %11, align 4
  %163 = and i32 %161, %162
  %164 = load i32, i32* %9, align 4
  %165 = icmp eq i32 %163, %164
  br i1 %165, label %166, label %213

166:                                              ; preds = %156
  store i32 0, i32* %13, align 4
  %167 = load i32, i32* %9, align 4
  %168 = and i32 %167, 15
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %166
  store i32 1, i32* %4, align 4
  br label %214

171:                                              ; preds = %166
  %172 = load i32, i32* %9, align 4
  %173 = load i32, i32* @BIT0, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %171
  %177 = load i32, i32* %13, align 4
  %178 = or i32 %177, 255
  store i32 %178, i32* %13, align 4
  br label %179

179:                                              ; preds = %176, %171
  %180 = load i32, i32* %9, align 4
  %181 = load i32, i32* @BIT1, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %179
  %185 = load i32, i32* %13, align 4
  %186 = or i32 %185, 65280
  store i32 %186, i32* %13, align 4
  br label %187

187:                                              ; preds = %184, %179
  %188 = load i32, i32* %9, align 4
  %189 = load i32, i32* @BIT2, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %195

192:                                              ; preds = %187
  %193 = load i32, i32* %13, align 4
  %194 = or i32 %193, 16711680
  store i32 %194, i32* %13, align 4
  br label %195

195:                                              ; preds = %192, %187
  %196 = load i32, i32* %9, align 4
  %197 = load i32, i32* @BIT3, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %203

200:                                              ; preds = %195
  %201 = load i32, i32* %13, align 4
  %202 = or i32 %201, -16777216
  store i32 %202, i32* %13, align 4
  br label %203

203:                                              ; preds = %200, %195
  %204 = load i32, i32* %10, align 4
  %205 = load i32, i32* %13, align 4
  %206 = and i32 %204, %205
  %207 = load i32, i32* %12, align 4
  %208 = load i32, i32* %13, align 4
  %209 = and i32 %207, %208
  %210 = icmp eq i32 %206, %209
  br i1 %210, label %211, label %212

211:                                              ; preds = %203
  store i32 1, i32* %4, align 4
  br label %214

212:                                              ; preds = %203
  store i32 0, i32* %4, align 4
  br label %214

213:                                              ; preds = %156
  store i32 0, i32* %4, align 4
  br label %214

214:                                              ; preds = %213, %212, %211, %170, %155, %144
  %215 = load i32, i32* %4, align 4
  ret i32 %215
}

declare dso_local i32 @ODM_RT_TRACE(%struct.TYPE_4__*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
