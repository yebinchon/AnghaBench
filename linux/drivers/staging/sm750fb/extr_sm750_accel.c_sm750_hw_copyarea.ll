; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_sm750_accel.c_sm750_hw_copyarea.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_sm750_accel.c_sm750_hw_copyarea.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lynx_accel = type { i64 (...)* }

@LEFT_TO_RIGHT = common dso_local global i32 0, align 4
@BOTTOM_TO_TOP = common dso_local global i32 0, align 4
@TOP_TO_BOTTOM = common dso_local global i32 0, align 4
@RIGHT_TO_LEFT = common dso_local global i32 0, align 4
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
@DE_SOURCE_X_K1_MASK = common dso_local global i32 0, align 4
@DE_SOURCE_Y_K2_MASK = common dso_local global i32 0, align 4
@DE_DESTINATION = common dso_local global i32 0, align 4
@DE_DESTINATION_X_SHIFT = common dso_local global i32 0, align 4
@DE_DESTINATION_X_MASK = common dso_local global i32 0, align 4
@DE_DESTINATION_Y_MASK = common dso_local global i32 0, align 4
@DE_DIMENSION = common dso_local global i32 0, align 4
@DE_DIMENSION_X_SHIFT = common dso_local global i32 0, align 4
@DE_DIMENSION_X_MASK = common dso_local global i32 0, align 4
@DE_DIMENSION_Y_ET_MASK = common dso_local global i32 0, align 4
@DE_CONTROL_ROP_MASK = common dso_local global i32 0, align 4
@DE_CONTROL_ROP_SELECT = common dso_local global i32 0, align 4
@DE_CONTROL_DIRECTION = common dso_local global i32 0, align 4
@DE_CONTROL_COMMAND_BITBLT = common dso_local global i32 0, align 4
@DE_CONTROL_STATUS = common dso_local global i32 0, align 4
@DE_CONTROL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sm750_hw_copyarea(%struct.lynx_accel* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12) #0 {
  %14 = alloca i32, align 4
  %15 = alloca %struct.lynx_accel*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
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
  store %struct.lynx_accel* %0, %struct.lynx_accel** %15, align 8
  store i32 %1, i32* %16, align 4
  store i32 %2, i32* %17, align 4
  store i32 %3, i32* %18, align 4
  store i32 %4, i32* %19, align 4
  store i32 %5, i32* %20, align 4
  store i32 %6, i32* %21, align 4
  store i32 %7, i32* %22, align 4
  store i32 %8, i32* %23, align 4
  store i32 %9, i32* %24, align 4
  store i32 %10, i32* %25, align 4
  store i32 %11, i32* %26, align 4
  store i32 %12, i32* %27, align 4
  %30 = load i32, i32* @LEFT_TO_RIGHT, align 4
  store i32 %30, i32* %28, align 4
  store i32 0, i32* %29, align 4
  %31 = load i32, i32* %16, align 4
  %32 = load i32, i32* %20, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %61

34:                                               ; preds = %13
  %35 = load i32, i32* %17, align 4
  %36 = load i32, i32* %21, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %61

38:                                               ; preds = %34
  %39 = load i32, i32* %19, align 4
  %40 = load i32, i32* %24, align 4
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i32, i32* @BOTTOM_TO_TOP, align 4
  store i32 %43, i32* %28, align 4
  br label %60

44:                                               ; preds = %38
  %45 = load i32, i32* %19, align 4
  %46 = load i32, i32* %24, align 4
  %47 = icmp ugt i32 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load i32, i32* @TOP_TO_BOTTOM, align 4
  store i32 %49, i32* %28, align 4
  br label %59

50:                                               ; preds = %44
  %51 = load i32, i32* %18, align 4
  %52 = load i32, i32* %23, align 4
  %53 = icmp ule i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i32, i32* @RIGHT_TO_LEFT, align 4
  store i32 %55, i32* %28, align 4
  br label %58

56:                                               ; preds = %50
  %57 = load i32, i32* @LEFT_TO_RIGHT, align 4
  store i32 %57, i32* %28, align 4
  br label %58

58:                                               ; preds = %56, %54
  br label %59

59:                                               ; preds = %58, %48
  br label %60

60:                                               ; preds = %59, %42
  br label %61

61:                                               ; preds = %60, %34, %13
  %62 = load i32, i32* %28, align 4
  %63 = load i32, i32* @BOTTOM_TO_TOP, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %69, label %65

65:                                               ; preds = %61
  %66 = load i32, i32* %28, align 4
  %67 = load i32, i32* @RIGHT_TO_LEFT, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %86

69:                                               ; preds = %65, %61
  %70 = load i32, i32* %25, align 4
  %71 = sub i32 %70, 1
  %72 = load i32, i32* %18, align 4
  %73 = add i32 %72, %71
  store i32 %73, i32* %18, align 4
  %74 = load i32, i32* %26, align 4
  %75 = sub i32 %74, 1
  %76 = load i32, i32* %19, align 4
  %77 = add i32 %76, %75
  store i32 %77, i32* %19, align 4
  %78 = load i32, i32* %25, align 4
  %79 = sub i32 %78, 1
  %80 = load i32, i32* %23, align 4
  %81 = add i32 %80, %79
  store i32 %81, i32* %23, align 4
  %82 = load i32, i32* %26, align 4
  %83 = sub i32 %82, 1
  %84 = load i32, i32* %24, align 4
  %85 = add i32 %84, %83
  store i32 %85, i32* %24, align 4
  br label %86

86:                                               ; preds = %69, %65
  %87 = load %struct.lynx_accel*, %struct.lynx_accel** %15, align 8
  %88 = load i32, i32* @DE_WINDOW_SOURCE_BASE, align 4
  %89 = load i32, i32* %16, align 4
  %90 = call i32 @write_dpr(%struct.lynx_accel* %87, i32 %88, i32 %89)
  %91 = load %struct.lynx_accel*, %struct.lynx_accel** %15, align 8
  %92 = load i32, i32* @DE_WINDOW_DESTINATION_BASE, align 4
  %93 = load i32, i32* %20, align 4
  %94 = call i32 @write_dpr(%struct.lynx_accel* %91, i32 %92, i32 %93)
  %95 = load %struct.lynx_accel*, %struct.lynx_accel** %15, align 8
  %96 = load i32, i32* @DE_PITCH, align 4
  %97 = load i32, i32* %21, align 4
  %98 = load i32, i32* %22, align 4
  %99 = udiv i32 %97, %98
  %100 = load i32, i32* @DE_PITCH_DESTINATION_SHIFT, align 4
  %101 = shl i32 %99, %100
  %102 = load i32, i32* @DE_PITCH_DESTINATION_MASK, align 4
  %103 = and i32 %101, %102
  %104 = load i32, i32* %17, align 4
  %105 = load i32, i32* %22, align 4
  %106 = udiv i32 %104, %105
  %107 = load i32, i32* @DE_PITCH_SOURCE_MASK, align 4
  %108 = and i32 %106, %107
  %109 = or i32 %103, %108
  %110 = call i32 @write_dpr(%struct.lynx_accel* %95, i32 %96, i32 %109)
  %111 = load %struct.lynx_accel*, %struct.lynx_accel** %15, align 8
  %112 = load i32, i32* @DE_WINDOW_WIDTH, align 4
  %113 = load i32, i32* %21, align 4
  %114 = load i32, i32* %22, align 4
  %115 = udiv i32 %113, %114
  %116 = load i32, i32* @DE_WINDOW_WIDTH_DST_SHIFT, align 4
  %117 = shl i32 %115, %116
  %118 = load i32, i32* @DE_WINDOW_WIDTH_DST_MASK, align 4
  %119 = and i32 %117, %118
  %120 = load i32, i32* %17, align 4
  %121 = load i32, i32* %22, align 4
  %122 = udiv i32 %120, %121
  %123 = load i32, i32* @DE_WINDOW_WIDTH_SRC_MASK, align 4
  %124 = and i32 %122, %123
  %125 = or i32 %119, %124
  %126 = call i32 @write_dpr(%struct.lynx_accel* %111, i32 %112, i32 %125)
  %127 = load %struct.lynx_accel*, %struct.lynx_accel** %15, align 8
  %128 = getelementptr inbounds %struct.lynx_accel, %struct.lynx_accel* %127, i32 0, i32 0
  %129 = load i64 (...)*, i64 (...)** %128, align 8
  %130 = call i64 (...) %129()
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %86
  store i32 -1, i32* %14, align 4
  br label %192

133:                                              ; preds = %86
  %134 = load %struct.lynx_accel*, %struct.lynx_accel** %15, align 8
  %135 = load i32, i32* @DE_SOURCE, align 4
  %136 = load i32, i32* %18, align 4
  %137 = load i32, i32* @DE_SOURCE_X_K1_SHIFT, align 4
  %138 = shl i32 %136, %137
  %139 = load i32, i32* @DE_SOURCE_X_K1_MASK, align 4
  %140 = and i32 %138, %139
  %141 = load i32, i32* %19, align 4
  %142 = load i32, i32* @DE_SOURCE_Y_K2_MASK, align 4
  %143 = and i32 %141, %142
  %144 = or i32 %140, %143
  %145 = call i32 @write_dpr(%struct.lynx_accel* %134, i32 %135, i32 %144)
  %146 = load %struct.lynx_accel*, %struct.lynx_accel** %15, align 8
  %147 = load i32, i32* @DE_DESTINATION, align 4
  %148 = load i32, i32* %23, align 4
  %149 = load i32, i32* @DE_DESTINATION_X_SHIFT, align 4
  %150 = shl i32 %148, %149
  %151 = load i32, i32* @DE_DESTINATION_X_MASK, align 4
  %152 = and i32 %150, %151
  %153 = load i32, i32* %24, align 4
  %154 = load i32, i32* @DE_DESTINATION_Y_MASK, align 4
  %155 = and i32 %153, %154
  %156 = or i32 %152, %155
  %157 = call i32 @write_dpr(%struct.lynx_accel* %146, i32 %147, i32 %156)
  %158 = load %struct.lynx_accel*, %struct.lynx_accel** %15, align 8
  %159 = load i32, i32* @DE_DIMENSION, align 4
  %160 = load i32, i32* %25, align 4
  %161 = load i32, i32* @DE_DIMENSION_X_SHIFT, align 4
  %162 = shl i32 %160, %161
  %163 = load i32, i32* @DE_DIMENSION_X_MASK, align 4
  %164 = and i32 %162, %163
  %165 = load i32, i32* %26, align 4
  %166 = load i32, i32* @DE_DIMENSION_Y_ET_MASK, align 4
  %167 = and i32 %165, %166
  %168 = or i32 %164, %167
  %169 = call i32 @write_dpr(%struct.lynx_accel* %158, i32 %159, i32 %168)
  %170 = load i32, i32* %27, align 4
  %171 = load i32, i32* @DE_CONTROL_ROP_MASK, align 4
  %172 = and i32 %170, %171
  %173 = load i32, i32* @DE_CONTROL_ROP_SELECT, align 4
  %174 = or i32 %172, %173
  %175 = load i32, i32* %28, align 4
  %176 = load i32, i32* @RIGHT_TO_LEFT, align 4
  %177 = icmp eq i32 %175, %176
  br i1 %177, label %178, label %180

178:                                              ; preds = %133
  %179 = load i32, i32* @DE_CONTROL_DIRECTION, align 4
  br label %181

180:                                              ; preds = %133
  br label %181

181:                                              ; preds = %180, %178
  %182 = phi i32 [ %179, %178 ], [ 0, %180 ]
  %183 = or i32 %174, %182
  %184 = load i32, i32* @DE_CONTROL_COMMAND_BITBLT, align 4
  %185 = or i32 %183, %184
  %186 = load i32, i32* @DE_CONTROL_STATUS, align 4
  %187 = or i32 %185, %186
  store i32 %187, i32* %29, align 4
  %188 = load %struct.lynx_accel*, %struct.lynx_accel** %15, align 8
  %189 = load i32, i32* @DE_CONTROL, align 4
  %190 = load i32, i32* %29, align 4
  %191 = call i32 @write_dpr(%struct.lynx_accel* %188, i32 %189, i32 %190)
  store i32 0, i32* %14, align 4
  br label %192

192:                                              ; preds = %181, %132
  %193 = load i32, i32* %14, align 4
  ret i32 %193
}

declare dso_local i32 @write_dpr(%struct.lynx_accel*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
