; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sh_mobile_lcdcfb.c_sh_mobile_lcdc_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sh_mobile_lcdcfb.c_sh_mobile_lcdc_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.sh_mobile_lcdc_priv = type { i64, i64, i64, %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay* }
%struct.sh_mobile_lcdc_overlay = type { i32, i64, i32, i64, i32, %struct.TYPE_10__*, %struct.TYPE_6__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32* }
%struct.sh_mobile_lcdc_chan = type { i32, i64, i32, i64, i32, %struct.TYPE_10__*, %struct.TYPE_6__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sh_mobile_lcdc_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_mobile_lcdc_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.sh_mobile_lcdc_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sh_mobile_lcdc_overlay*, align 8
  %6 = alloca %struct.sh_mobile_lcdc_chan*, align 8
  %7 = alloca %struct.sh_mobile_lcdc_chan*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %9 = call %struct.sh_mobile_lcdc_priv* @platform_get_drvdata(%struct.platform_device* %8)
  store %struct.sh_mobile_lcdc_priv* %9, %struct.sh_mobile_lcdc_priv** %3, align 8
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %25, %1
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %3, align 8
  %13 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, %struct.sh_mobile_lcdc_priv* %12, i32 0, i32 4
  %14 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %13, align 8
  %15 = call i32 @ARRAY_SIZE(%struct.sh_mobile_lcdc_overlay* %14)
  %16 = icmp ult i32 %11, %15
  br i1 %16, label %17, label %28

17:                                               ; preds = %10
  %18 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %3, align 8
  %19 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, %struct.sh_mobile_lcdc_priv* %18, i32 0, i32 4
  %20 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, %struct.sh_mobile_lcdc_overlay* %20, i64 %22
  %24 = call i32 @sh_mobile_lcdc_overlay_fb_unregister(%struct.sh_mobile_lcdc_overlay* %23)
  br label %25

25:                                               ; preds = %17
  %26 = load i32, i32* %4, align 4
  %27 = add i32 %26, 1
  store i32 %27, i32* %4, align 4
  br label %10

28:                                               ; preds = %10
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %44, %28
  %30 = load i32, i32* %4, align 4
  %31 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %3, align 8
  %32 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, %struct.sh_mobile_lcdc_priv* %31, i32 0, i32 3
  %33 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %32, align 8
  %34 = call i32 @ARRAY_SIZE(%struct.sh_mobile_lcdc_overlay* %33)
  %35 = icmp ult i32 %30, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %29
  %37 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %3, align 8
  %38 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, %struct.sh_mobile_lcdc_priv* %37, i32 0, i32 3
  %39 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, %struct.sh_mobile_lcdc_overlay* %39, i64 %41
  %43 = call i32 @sh_mobile_lcdc_channel_fb_unregister(%struct.sh_mobile_lcdc_overlay* %42)
  br label %44

44:                                               ; preds = %36
  %45 = load i32, i32* %4, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* %4, align 4
  br label %29

47:                                               ; preds = %29
  %48 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %3, align 8
  %49 = call i32 @sh_mobile_lcdc_stop(%struct.sh_mobile_lcdc_priv* %48)
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %84, %47
  %51 = load i32, i32* %4, align 4
  %52 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %3, align 8
  %53 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, %struct.sh_mobile_lcdc_priv* %52, i32 0, i32 4
  %54 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %53, align 8
  %55 = call i32 @ARRAY_SIZE(%struct.sh_mobile_lcdc_overlay* %54)
  %56 = icmp ult i32 %51, %55
  br i1 %56, label %57, label %87

57:                                               ; preds = %50
  %58 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %3, align 8
  %59 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, %struct.sh_mobile_lcdc_priv* %58, i32 0, i32 4
  %60 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %59, align 8
  %61 = load i32, i32* %4, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, %struct.sh_mobile_lcdc_overlay* %60, i64 %62
  store %struct.sh_mobile_lcdc_overlay* %63, %struct.sh_mobile_lcdc_overlay** %5, align 8
  %64 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %5, align 8
  %65 = call i32 @sh_mobile_lcdc_overlay_fb_cleanup(%struct.sh_mobile_lcdc_overlay* %64)
  %66 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %5, align 8
  %67 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, %struct.sh_mobile_lcdc_overlay* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %83

70:                                               ; preds = %57
  %71 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %72 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %71, i32 0, i32 0
  %73 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %5, align 8
  %74 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, %struct.sh_mobile_lcdc_overlay* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %5, align 8
  %77 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, %struct.sh_mobile_lcdc_overlay* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %5, align 8
  %80 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, %struct.sh_mobile_lcdc_overlay* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @dma_free_coherent(i32* %72, i32 %75, i64 %78, i32 %81)
  br label %83

83:                                               ; preds = %70, %57
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %4, align 4
  %86 = add i32 %85, 1
  store i32 %86, i32* %4, align 4
  br label %50

87:                                               ; preds = %50
  store i32 0, i32* %4, align 4
  br label %88

88:                                               ; preds = %145, %87
  %89 = load i32, i32* %4, align 4
  %90 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %3, align 8
  %91 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, %struct.sh_mobile_lcdc_priv* %90, i32 0, i32 3
  %92 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %91, align 8
  %93 = call i32 @ARRAY_SIZE(%struct.sh_mobile_lcdc_overlay* %92)
  %94 = icmp ult i32 %89, %93
  br i1 %94, label %95, label %148

95:                                               ; preds = %88
  %96 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %3, align 8
  %97 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, %struct.sh_mobile_lcdc_priv* %96, i32 0, i32 3
  %98 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %97, align 8
  %99 = load i32, i32* %4, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, %struct.sh_mobile_lcdc_overlay* %98, i64 %100
  %102 = bitcast %struct.sh_mobile_lcdc_overlay* %101 to %struct.sh_mobile_lcdc_chan*
  store %struct.sh_mobile_lcdc_chan* %102, %struct.sh_mobile_lcdc_chan** %6, align 8
  %103 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %6, align 8
  %104 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %103, i32 0, i32 6
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %104, align 8
  %106 = icmp ne %struct.TYPE_6__* %105, null
  br i1 %106, label %107, label %123

107:                                              ; preds = %95
  %108 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %6, align 8
  %109 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %108, i32 0, i32 6
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  store i32* null, i32** %111, align 8
  %112 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %6, align 8
  %113 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %112, i32 0, i32 5
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @module_put(i32 %121)
  br label %123

123:                                              ; preds = %107, %95
  %124 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %6, align 8
  %125 = bitcast %struct.sh_mobile_lcdc_chan* %124 to %struct.sh_mobile_lcdc_overlay*
  %126 = call i32 @sh_mobile_lcdc_channel_fb_cleanup(%struct.sh_mobile_lcdc_overlay* %125)
  %127 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %6, align 8
  %128 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %127, i32 0, i32 3
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %144

131:                                              ; preds = %123
  %132 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %133 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %132, i32 0, i32 0
  %134 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %6, align 8
  %135 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %6, align 8
  %138 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %137, i32 0, i32 3
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %6, align 8
  %141 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @dma_free_coherent(i32* %133, i32 %136, i64 %139, i32 %142)
  br label %144

144:                                              ; preds = %131, %123
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %4, align 4
  %147 = add i32 %146, 1
  store i32 %147, i32* %4, align 4
  br label %88

148:                                              ; preds = %88
  store i32 0, i32* %4, align 4
  br label %149

149:                                              ; preds = %177, %148
  %150 = load i32, i32* %4, align 4
  %151 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %3, align 8
  %152 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, %struct.sh_mobile_lcdc_priv* %151, i32 0, i32 3
  %153 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %152, align 8
  %154 = call i32 @ARRAY_SIZE(%struct.sh_mobile_lcdc_overlay* %153)
  %155 = icmp ult i32 %150, %154
  br i1 %155, label %156, label %180

156:                                              ; preds = %149
  %157 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %3, align 8
  %158 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, %struct.sh_mobile_lcdc_priv* %157, i32 0, i32 3
  %159 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %158, align 8
  %160 = load i32, i32* %4, align 4
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, %struct.sh_mobile_lcdc_overlay* %159, i64 %161
  %163 = bitcast %struct.sh_mobile_lcdc_overlay* %162 to %struct.sh_mobile_lcdc_chan*
  store %struct.sh_mobile_lcdc_chan* %163, %struct.sh_mobile_lcdc_chan** %7, align 8
  %164 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %7, align 8
  %165 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %173

168:                                              ; preds = %156
  %169 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %7, align 8
  %170 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = call i32 @sh_mobile_lcdc_bl_remove(i64 %171)
  br label %173

173:                                              ; preds = %168, %156
  %174 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %7, align 8
  %175 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %174, i32 0, i32 0
  %176 = call i32 @mutex_destroy(i32* %175)
  br label %177

177:                                              ; preds = %173
  %178 = load i32, i32* %4, align 4
  %179 = add i32 %178, 1
  store i32 %179, i32* %4, align 4
  br label %149

180:                                              ; preds = %149
  %181 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %3, align 8
  %182 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, %struct.sh_mobile_lcdc_priv* %181, i32 0, i32 2
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %193

185:                                              ; preds = %180
  %186 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %187 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %186, i32 0, i32 0
  %188 = call i32 @pm_runtime_disable(i32* %187)
  %189 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %3, align 8
  %190 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, %struct.sh_mobile_lcdc_priv* %189, i32 0, i32 2
  %191 = load i64, i64* %190, align 8
  %192 = call i32 @clk_put(i64 %191)
  br label %193

193:                                              ; preds = %185, %180
  %194 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %3, align 8
  %195 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, %struct.sh_mobile_lcdc_priv* %194, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %203

198:                                              ; preds = %193
  %199 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %3, align 8
  %200 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, %struct.sh_mobile_lcdc_priv* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = call i32 @iounmap(i64 %201)
  br label %203

203:                                              ; preds = %198, %193
  %204 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %3, align 8
  %205 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, %struct.sh_mobile_lcdc_priv* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %214

208:                                              ; preds = %203
  %209 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %3, align 8
  %210 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, %struct.sh_mobile_lcdc_priv* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %3, align 8
  %213 = call i32 @free_irq(i64 %211, %struct.sh_mobile_lcdc_priv* %212)
  br label %214

214:                                              ; preds = %208, %203
  %215 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %3, align 8
  %216 = call i32 @kfree(%struct.sh_mobile_lcdc_priv* %215)
  ret i32 0
}

declare dso_local %struct.sh_mobile_lcdc_priv* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.sh_mobile_lcdc_overlay*) #1

declare dso_local i32 @sh_mobile_lcdc_overlay_fb_unregister(%struct.sh_mobile_lcdc_overlay*) #1

declare dso_local i32 @sh_mobile_lcdc_channel_fb_unregister(%struct.sh_mobile_lcdc_overlay*) #1

declare dso_local i32 @sh_mobile_lcdc_stop(%struct.sh_mobile_lcdc_priv*) #1

declare dso_local i32 @sh_mobile_lcdc_overlay_fb_cleanup(%struct.sh_mobile_lcdc_overlay*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i64, i32) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @sh_mobile_lcdc_channel_fb_cleanup(%struct.sh_mobile_lcdc_overlay*) #1

declare dso_local i32 @sh_mobile_lcdc_bl_remove(i64) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

declare dso_local i32 @clk_put(i64) #1

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @free_irq(i64, %struct.sh_mobile_lcdc_priv*) #1

declare dso_local i32 @kfree(%struct.sh_mobile_lcdc_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
