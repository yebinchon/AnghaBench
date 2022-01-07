; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap/extr_hwa742.c_setup_tearsync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap/extr_hwa742.c_setup_tearsync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i32, %struct.TYPE_7__*, %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i64 (...)*, i32 (i32, i32, i32, i32, i32, i32)* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64 }

@HWA742_HS_W_REG = common dso_local global i32 0, align 4
@HWA742_VS_W_REG = common dso_local global i32 0, align 4
@HWA742_H_DISP_REG = common dso_local global i32 0, align 4
@HWA742_V_DISP_1_REG = common dso_local global i32 0, align 4
@HWA742_V_DISP_2_REG = common dso_local global i32 0, align 4
@HWA742_H_NDP_REG = common dso_local global i32 0, align 4
@HWA742_V_NDP_REG = common dso_local global i32 0, align 4
@hwa742 = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@.str = private unnamed_addr constant [20 x i8] c"max_tx_rate %ld HZ\0A\00", align 1
@EDOM = common dso_local global i32 0, align 4
@HWA742_NDP_CTRL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"pix_clk %ld HZ pix_tx_time %ld ps line_upd_time %ld ps\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"hs %d ps vs %d ps mode %d vsync_only %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32)* @setup_tearsync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_tearsync(i64 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %21 = load i32, i32* @HWA742_HS_W_REG, align 4
  %22 = call i32 @hwa742_read_reg(i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* @HWA742_VS_W_REG, align 4
  %24 = call i32 @hwa742_read_reg(i32 %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %10, align 4
  %26 = and i32 %25, 128
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %11, align 4
  %31 = and i32 %30, 128
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %15, align 4
  %35 = load i32, i32* %10, align 4
  %36 = and i32 %35, 127
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %11, align 4
  %38 = and i32 %37, 63
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* @HWA742_H_DISP_REG, align 4
  %40 = call i32 @hwa742_read_reg(i32 %39)
  %41 = and i32 %40, 127
  %42 = mul nsw i32 %41, 8
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* @HWA742_V_DISP_1_REG, align 4
  %44 = call i32 @hwa742_read_reg(i32 %43)
  %45 = load i32, i32* @HWA742_V_DISP_2_REG, align 4
  %46 = call i32 @hwa742_read_reg(i32 %45)
  %47 = and i32 %46, 3
  %48 = shl i32 %47, 8
  %49 = add nsw i32 %44, %48
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* @HWA742_H_NDP_REG, align 4
  %51 = call i32 @hwa742_read_reg(i32 %50)
  %52 = and i32 %51, 127
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* @HWA742_V_NDP_REG, align 4
  %54 = call i32 @hwa742_read_reg(i32 %53)
  store i32 %54, i32* %9, align 4
  %55 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @hwa742, i32 0, i32 5, i32 0), align 8
  store i64 %55, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @hwa742, i32 0, i32 0), align 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @hwa742, i32 0, i32 3), align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i64 (...)*, i64 (...)** %57, align 8
  %59 = icmp ne i64 (...)* %58, null
  br i1 %59, label %60, label %80

60:                                               ; preds = %2
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @hwa742, i32 0, i32 3), align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i64 (...)*, i64 (...)** %62, align 8
  %64 = call i64 (...) %63()
  store i64 %64, i64* %20, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @hwa742, i32 0, i32 4), align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i64, i64* %20, align 8
  %69 = trunc i64 %68 to i32
  %70 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %67, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %69)
  %71 = load i64, i64* %20, align 8
  %72 = udiv i64 %71, 1000
  %73 = udiv i64 1000000000, %72
  store i64 %73, i64* %19, align 8
  %74 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @hwa742, i32 0, i32 0), align 8
  %75 = load i64, i64* %19, align 8
  %76 = icmp ult i64 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %60
  %78 = load i64, i64* %19, align 8
  store i64 %78, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @hwa742, i32 0, i32 0), align 8
  br label %79

79:                                               ; preds = %77, %60
  br label %80

80:                                               ; preds = %79, %2
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* %8, align 4
  %83 = add nsw i32 %81, %82
  %84 = mul nsw i32 %83, 1000000
  %85 = sext i32 %84 to i64
  %86 = load i64, i64* %4, align 8
  %87 = udiv i64 %86, 1000
  %88 = udiv i64 %85, %87
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @hwa742, i32 0, i32 1), align 8
  %90 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @hwa742, i32 0, i32 1), align 8
  %91 = mul nsw i32 %90, 1000
  store i32 %91, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @hwa742, i32 0, i32 1), align 8
  %92 = load i32, i32* %6, align 4
  %93 = sext i32 %92 to i64
  %94 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @hwa742, i32 0, i32 0), align 8
  %95 = mul i64 %93, %94
  %96 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @hwa742, i32 0, i32 1), align 8
  %97 = sext i32 %96 to i64
  %98 = icmp ugt i64 %95, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %80
  store i32 1, i32* %16, align 4
  br label %101

100:                                              ; preds = %80
  store i32 0, i32* %16, align 4
  br label %101

101:                                              ; preds = %100, %99
  %102 = load i32, i32* %16, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %113

104:                                              ; preds = %101
  %105 = load i32, i32* %14, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %104
  %108 = load i32, i32* %15, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %107, %104
  store i32 1, i32* %17, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %111 = load i32, i32* %8, align 4
  store i32 %111, i32* %12, align 4
  %112 = load i32, i32* %9, align 4
  store i32 %112, i32* %13, align 4
  br label %120

113:                                              ; preds = %107, %101
  store i32 0, i32* %17, align 4
  %114 = load i32, i32* %10, align 4
  store i32 %114, i32* %12, align 4
  %115 = load i32, i32* %11, align 4
  store i32 %115, i32* %13, align 4
  %116 = load i32, i32* %16, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %113
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %119

119:                                              ; preds = %118, %113
  br label %120

120:                                              ; preds = %119, %110
  %121 = load i32, i32* %12, align 4
  %122 = mul nsw i32 %121, 1000000
  %123 = sext i32 %122 to i64
  %124 = load i64, i64* %4, align 8
  %125 = udiv i64 %124, 1000
  %126 = udiv i64 %123, %125
  %127 = trunc i64 %126 to i32
  store i32 %127, i32* %12, align 4
  %128 = load i32, i32* %12, align 4
  %129 = mul nsw i32 %128, 1000
  store i32 %129, i32* %12, align 4
  %130 = load i32, i32* %13, align 4
  %131 = load i32, i32* %6, align 4
  %132 = load i32, i32* %8, align 4
  %133 = add nsw i32 %131, %132
  %134 = mul nsw i32 %130, %133
  %135 = mul nsw i32 %134, 1000000
  %136 = sext i32 %135 to i64
  %137 = load i64, i64* %4, align 8
  %138 = udiv i64 %137, 1000
  %139 = udiv i64 %136, %138
  %140 = trunc i64 %139 to i32
  store i32 %140, i32* %13, align 4
  %141 = load i32, i32* %13, align 4
  %142 = mul nsw i32 %141, 1000
  store i32 %142, i32* %13, align 4
  %143 = load i32, i32* %13, align 4
  %144 = load i32, i32* %12, align 4
  %145 = icmp sle i32 %143, %144
  br i1 %145, label %146, label %149

146:                                              ; preds = %120
  %147 = load i32, i32* @EDOM, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %3, align 4
  br label %210

149:                                              ; preds = %120
  %150 = load i32, i32* %12, align 4
  %151 = mul nsw i32 %150, 12
  %152 = sdiv i32 %151, 10
  store i32 %152, i32* %13, align 4
  store i32 10000, i32* %12, align 4
  %153 = load i32, i32* @HWA742_NDP_CTRL, align 4
  %154 = call i32 @hwa742_read_reg(i32 %153)
  store i32 %154, i32* %18, align 4
  %155 = load i32, i32* %18, align 4
  %156 = and i32 %155, -4
  store i32 %156, i32* %18, align 4
  %157 = load i32, i32* %16, align 4
  %158 = icmp ne i32 %157, 0
  %159 = zext i1 %158 to i64
  %160 = select i1 %158, i32 1, i32 0
  %161 = load i32, i32* %18, align 4
  %162 = or i32 %161, %160
  store i32 %162, i32* %18, align 4
  %163 = load i32, i32* %17, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %149
  %166 = load i32, i32* %16, align 4
  %167 = icmp ne i32 %166, 0
  br label %168

168:                                              ; preds = %165, %149
  %169 = phi i1 [ false, %149 ], [ %167, %165 ]
  %170 = zext i1 %169 to i64
  %171 = select i1 %169, i32 0, i32 2
  %172 = load i32, i32* %18, align 4
  %173 = or i32 %172, %171
  store i32 %173, i32* %18, align 4
  %174 = load i32, i32* @HWA742_NDP_CTRL, align 4
  %175 = load i32, i32* %18, align 4
  %176 = call i32 @hwa742_write_reg(i32 %174, i32 %175)
  %177 = load i32, i32* %16, align 4
  %178 = icmp ne i32 %177, 0
  %179 = xor i1 %178, true
  %180 = zext i1 %179 to i32
  store i32 %180, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @hwa742, i32 0, i32 2), align 4
  %181 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @hwa742, i32 0, i32 4), align 8
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load i64, i64* %4, align 8
  %185 = trunc i64 %184 to i32
  %186 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @hwa742, i32 0, i32 0), align 8
  %187 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @hwa742, i32 0, i32 1), align 8
  %188 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %183, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %185, i64 %186, i32 %187)
  %189 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @hwa742, i32 0, i32 4), align 8
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* %12, align 4
  %193 = load i32, i32* %13, align 4
  %194 = load i32, i32* %18, align 4
  %195 = and i32 %194, 3
  %196 = load i32, i32* %16, align 4
  %197 = icmp ne i32 %196, 0
  %198 = xor i1 %197, true
  %199 = zext i1 %198 to i32
  %200 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %191, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %192, i32 %193, i32 %195, i32 %199)
  %201 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @hwa742, i32 0, i32 3), align 8
  %202 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %201, i32 0, i32 1
  %203 = load i32 (i32, i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32, i32)** %202, align 8
  %204 = load i32, i32* %12, align 4
  %205 = load i32, i32* %13, align 4
  %206 = load i32, i32* %14, align 4
  %207 = load i32, i32* %15, align 4
  %208 = load i32, i32* %5, align 4
  %209 = call i32 %203(i32 1, i32 %204, i32 %205, i32 %206, i32 %207, i32 %208)
  store i32 %209, i32* %3, align 4
  br label %210

210:                                              ; preds = %168, %146
  %211 = load i32, i32* %3, align 4
  ret i32 %211
}

declare dso_local i32 @hwa742_read_reg(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, ...) #1

declare dso_local i32 @hwa742_write_reg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
