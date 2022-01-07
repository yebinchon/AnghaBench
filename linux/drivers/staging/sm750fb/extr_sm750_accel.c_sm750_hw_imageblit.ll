; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_sm750_accel.c_sm750_hw_imageblit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_sm750_accel.c_sm750_hw_imageblit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lynx_accel = type { i64 (...)* }

@DE_WINDOW_SOURCE_BASE = common dso_local global i32 0, align 4
@DE_WINDOW_DESTINATION_BASE = common dso_local global i32 0, align 4
@DE_PITCH = common dso_local global i32 0, align 4
@DE_PITCH_DESTINATION_SHIFT = common dso_local global i32 0, align 4
@DE_PITCH_DESTINATION_MASK = common dso_local global i32 0, align 4
@DE_PITCH_SOURCE_MASK = common dso_local global i32 0, align 4
@DE_WINDOW_WIDTH = common dso_local global i32 0, align 4
@DE_WINDOW_WIDTH_DST_SHIFT = common dso_local global i32 0, align 4
@DE_WINDOW_WIDTH_DST_MASK = common dso_local global i32 0, align 4
@DE_WINDOW_WIDTH_SRC_MASK = common dso_local global i32 0, align 4
@DE_SOURCE = common dso_local global i32 0, align 4
@DE_SOURCE_X_K1_SHIFT = common dso_local global i32 0, align 4
@DE_SOURCE_X_K1_MONO_MASK = common dso_local global i32 0, align 4
@DE_DESTINATION = common dso_local global i32 0, align 4
@DE_DESTINATION_X_SHIFT = common dso_local global i32 0, align 4
@DE_DESTINATION_X_MASK = common dso_local global i32 0, align 4
@DE_DESTINATION_Y_MASK = common dso_local global i32 0, align 4
@DE_DIMENSION = common dso_local global i32 0, align 4
@DE_DIMENSION_X_SHIFT = common dso_local global i32 0, align 4
@DE_DIMENSION_X_MASK = common dso_local global i32 0, align 4
@DE_DIMENSION_Y_ET_MASK = common dso_local global i32 0, align 4
@DE_FOREGROUND = common dso_local global i32 0, align 4
@DE_BACKGROUND = common dso_local global i32 0, align 4
@DE_CONTROL_ROP_MASK = common dso_local global i32 0, align 4
@DE_CONTROL_ROP_SELECT = common dso_local global i32 0, align 4
@DE_CONTROL_COMMAND_HOST_WRITE = common dso_local global i32 0, align 4
@DE_CONTROL_HOST = common dso_local global i32 0, align 4
@DE_CONTROL_STATUS = common dso_local global i32 0, align 4
@DE_CONTROL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sm750_hw_imageblit(%struct.lynx_accel* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12, i32 %13) #0 {
  %15 = alloca i32, align 4
  %16 = alloca %struct.lynx_accel*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca [4 x i8], align 1
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  store %struct.lynx_accel* %0, %struct.lynx_accel** %16, align 8
  store i8* %1, i8** %17, align 8
  store i32 %2, i32* %18, align 4
  store i32 %3, i32* %19, align 4
  store i32 %4, i32* %20, align 4
  store i32 %5, i32* %21, align 4
  store i32 %6, i32* %22, align 4
  store i32 %7, i32* %23, align 4
  store i32 %8, i32* %24, align 4
  store i32 %9, i32* %25, align 4
  store i32 %10, i32* %26, align 4
  store i32 %11, i32* %27, align 4
  store i32 %12, i32* %28, align 4
  store i32 %13, i32* %29, align 4
  store i32 0, i32* %33, align 4
  %37 = load i32, i32* %19, align 4
  %38 = and i32 %37, 7
  store i32 %38, i32* %19, align 4
  %39 = load i32, i32* %25, align 4
  %40 = load i32, i32* %19, align 4
  %41 = add nsw i32 %39, %40
  %42 = add nsw i32 %41, 7
  %43 = sdiv i32 %42, 8
  store i32 %43, i32* %30, align 4
  %44 = load i32, i32* %30, align 4
  %45 = and i32 %44, -4
  store i32 %45, i32* %31, align 4
  %46 = load i32, i32* %30, align 4
  %47 = and i32 %46, 3
  store i32 %47, i32* %32, align 4
  %48 = load %struct.lynx_accel*, %struct.lynx_accel** %16, align 8
  %49 = getelementptr inbounds %struct.lynx_accel, %struct.lynx_accel* %48, i32 0, i32 0
  %50 = load i64 (...)*, i64 (...)** %49, align 8
  %51 = call i64 (...) %50()
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %14
  store i32 -1, i32* %15, align 4
  br label %200

54:                                               ; preds = %14
  %55 = load %struct.lynx_accel*, %struct.lynx_accel** %16, align 8
  %56 = load i32, i32* @DE_WINDOW_SOURCE_BASE, align 4
  %57 = call i32 @write_dpr(%struct.lynx_accel* %55, i32 %56, i32 0)
  %58 = load %struct.lynx_accel*, %struct.lynx_accel** %16, align 8
  %59 = load i32, i32* @DE_WINDOW_DESTINATION_BASE, align 4
  %60 = load i32, i32* %20, align 4
  %61 = call i32 @write_dpr(%struct.lynx_accel* %58, i32 %59, i32 %60)
  %62 = load %struct.lynx_accel*, %struct.lynx_accel** %16, align 8
  %63 = load i32, i32* @DE_PITCH, align 4
  %64 = load i32, i32* %21, align 4
  %65 = load i32, i32* %22, align 4
  %66 = sdiv i32 %64, %65
  %67 = load i32, i32* @DE_PITCH_DESTINATION_SHIFT, align 4
  %68 = shl i32 %66, %67
  %69 = load i32, i32* @DE_PITCH_DESTINATION_MASK, align 4
  %70 = and i32 %68, %69
  %71 = load i32, i32* %21, align 4
  %72 = load i32, i32* %22, align 4
  %73 = sdiv i32 %71, %72
  %74 = load i32, i32* @DE_PITCH_SOURCE_MASK, align 4
  %75 = and i32 %73, %74
  %76 = or i32 %70, %75
  %77 = call i32 @write_dpr(%struct.lynx_accel* %62, i32 %63, i32 %76)
  %78 = load %struct.lynx_accel*, %struct.lynx_accel** %16, align 8
  %79 = load i32, i32* @DE_WINDOW_WIDTH, align 4
  %80 = load i32, i32* %21, align 4
  %81 = load i32, i32* %22, align 4
  %82 = sdiv i32 %80, %81
  %83 = load i32, i32* @DE_WINDOW_WIDTH_DST_SHIFT, align 4
  %84 = shl i32 %82, %83
  %85 = load i32, i32* @DE_WINDOW_WIDTH_DST_MASK, align 4
  %86 = and i32 %84, %85
  %87 = load i32, i32* %21, align 4
  %88 = load i32, i32* %22, align 4
  %89 = sdiv i32 %87, %88
  %90 = load i32, i32* @DE_WINDOW_WIDTH_SRC_MASK, align 4
  %91 = and i32 %89, %90
  %92 = or i32 %86, %91
  %93 = call i32 @write_dpr(%struct.lynx_accel* %78, i32 %79, i32 %92)
  %94 = load %struct.lynx_accel*, %struct.lynx_accel** %16, align 8
  %95 = load i32, i32* @DE_SOURCE, align 4
  %96 = load i32, i32* %19, align 4
  %97 = load i32, i32* @DE_SOURCE_X_K1_SHIFT, align 4
  %98 = shl i32 %96, %97
  %99 = load i32, i32* @DE_SOURCE_X_K1_MONO_MASK, align 4
  %100 = and i32 %98, %99
  %101 = call i32 @write_dpr(%struct.lynx_accel* %94, i32 %95, i32 %100)
  %102 = load %struct.lynx_accel*, %struct.lynx_accel** %16, align 8
  %103 = load i32, i32* @DE_DESTINATION, align 4
  %104 = load i32, i32* %23, align 4
  %105 = load i32, i32* @DE_DESTINATION_X_SHIFT, align 4
  %106 = shl i32 %104, %105
  %107 = load i32, i32* @DE_DESTINATION_X_MASK, align 4
  %108 = and i32 %106, %107
  %109 = load i32, i32* %24, align 4
  %110 = load i32, i32* @DE_DESTINATION_Y_MASK, align 4
  %111 = and i32 %109, %110
  %112 = or i32 %108, %111
  %113 = call i32 @write_dpr(%struct.lynx_accel* %102, i32 %103, i32 %112)
  %114 = load %struct.lynx_accel*, %struct.lynx_accel** %16, align 8
  %115 = load i32, i32* @DE_DIMENSION, align 4
  %116 = load i32, i32* %25, align 4
  %117 = load i32, i32* @DE_DIMENSION_X_SHIFT, align 4
  %118 = shl i32 %116, %117
  %119 = load i32, i32* @DE_DIMENSION_X_MASK, align 4
  %120 = and i32 %118, %119
  %121 = load i32, i32* %26, align 4
  %122 = load i32, i32* @DE_DIMENSION_Y_ET_MASK, align 4
  %123 = and i32 %121, %122
  %124 = or i32 %120, %123
  %125 = call i32 @write_dpr(%struct.lynx_accel* %114, i32 %115, i32 %124)
  %126 = load %struct.lynx_accel*, %struct.lynx_accel** %16, align 8
  %127 = load i32, i32* @DE_FOREGROUND, align 4
  %128 = load i32, i32* %27, align 4
  %129 = call i32 @write_dpr(%struct.lynx_accel* %126, i32 %127, i32 %128)
  %130 = load %struct.lynx_accel*, %struct.lynx_accel** %16, align 8
  %131 = load i32, i32* @DE_BACKGROUND, align 4
  %132 = load i32, i32* %28, align 4
  %133 = call i32 @write_dpr(%struct.lynx_accel* %130, i32 %131, i32 %132)
  %134 = load i32, i32* %29, align 4
  %135 = load i32, i32* @DE_CONTROL_ROP_MASK, align 4
  %136 = and i32 %134, %135
  %137 = load i32, i32* @DE_CONTROL_ROP_SELECT, align 4
  %138 = or i32 %136, %137
  %139 = load i32, i32* @DE_CONTROL_COMMAND_HOST_WRITE, align 4
  %140 = or i32 %138, %139
  %141 = load i32, i32* @DE_CONTROL_HOST, align 4
  %142 = or i32 %140, %141
  %143 = load i32, i32* @DE_CONTROL_STATUS, align 4
  %144 = or i32 %142, %143
  store i32 %144, i32* %33, align 4
  %145 = load %struct.lynx_accel*, %struct.lynx_accel** %16, align 8
  %146 = load i32, i32* @DE_CONTROL, align 4
  %147 = load i32, i32* %33, align 4
  %148 = load %struct.lynx_accel*, %struct.lynx_accel** %16, align 8
  %149 = call i32 @deGetTransparency(%struct.lynx_accel* %148)
  %150 = or i32 %147, %149
  %151 = call i32 @write_dpr(%struct.lynx_accel* %145, i32 %146, i32 %150)
  store i32 0, i32* %35, align 4
  br label %152

152:                                              ; preds = %196, %54
  %153 = load i32, i32* %35, align 4
  %154 = load i32, i32* %26, align 4
  %155 = icmp slt i32 %153, %154
  br i1 %155, label %156, label %199

156:                                              ; preds = %152
  store i32 0, i32* %36, align 4
  br label %157

157:                                              ; preds = %172, %156
  %158 = load i32, i32* %36, align 4
  %159 = load i32, i32* %31, align 4
  %160 = udiv i32 %159, 4
  %161 = icmp ult i32 %158, %160
  br i1 %161, label %162, label %175

162:                                              ; preds = %157
  %163 = load %struct.lynx_accel*, %struct.lynx_accel** %16, align 8
  %164 = load i8*, i8** %17, align 8
  %165 = load i32, i32* %36, align 4
  %166 = mul nsw i32 %165, 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i8, i8* %164, i64 %167
  %169 = bitcast i8* %168 to i32*
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @write_dpPort(%struct.lynx_accel* %163, i32 %170)
  br label %172

172:                                              ; preds = %162
  %173 = load i32, i32* %36, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %36, align 4
  br label %157

175:                                              ; preds = %157
  %176 = load i32, i32* %32, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %191

178:                                              ; preds = %175
  %179 = getelementptr inbounds [4 x i8], [4 x i8]* %34, i64 0, i64 0
  %180 = load i8*, i8** %17, align 8
  %181 = load i32, i32* %31, align 4
  %182 = zext i32 %181 to i64
  %183 = getelementptr inbounds i8, i8* %180, i64 %182
  %184 = load i32, i32* %32, align 4
  %185 = call i32 @memcpy(i8* %179, i8* %183, i32 %184)
  %186 = load %struct.lynx_accel*, %struct.lynx_accel** %16, align 8
  %187 = getelementptr inbounds [4 x i8], [4 x i8]* %34, i64 0, i64 0
  %188 = bitcast i8* %187 to i32*
  %189 = load i32, i32* %188, align 1
  %190 = call i32 @write_dpPort(%struct.lynx_accel* %186, i32 %189)
  br label %191

191:                                              ; preds = %178, %175
  %192 = load i32, i32* %18, align 4
  %193 = load i8*, i8** %17, align 8
  %194 = sext i32 %192 to i64
  %195 = getelementptr inbounds i8, i8* %193, i64 %194
  store i8* %195, i8** %17, align 8
  br label %196

196:                                              ; preds = %191
  %197 = load i32, i32* %35, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %35, align 4
  br label %152

199:                                              ; preds = %152
  store i32 0, i32* %15, align 4
  br label %200

200:                                              ; preds = %199, %53
  %201 = load i32, i32* %15, align 4
  ret i32 %201
}

declare dso_local i32 @write_dpr(%struct.lynx_accel*, i32, i32) #1

declare dso_local i32 @deGetTransparency(%struct.lynx_accel*) #1

declare dso_local i32 @write_dpPort(%struct.lynx_accel*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
