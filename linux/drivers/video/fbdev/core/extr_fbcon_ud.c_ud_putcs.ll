; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbcon_ud.c_ud_putcs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbcon_ud.c_ud_putcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.fb_info = type { %struct.TYPE_6__, %struct.fbcon_ops* }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.fbcon_ops = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.fb_image = type { i32, i32, i32, i32, i32, i32, i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, %struct.fb_info*, i16*, i32, i32, i32, i32, i32)* @ud_putcs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ud_putcs(%struct.vc_data* %0, %struct.fb_info* %1, i16* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.vc_data*, align 8
  %10 = alloca %struct.fb_info*, align 8
  %11 = alloca i16*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.fb_image, align 8
  %18 = alloca %struct.fbcon_ops*, align 8
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
  %29 = alloca i32*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  store %struct.vc_data* %0, %struct.vc_data** %9, align 8
  store %struct.fb_info* %1, %struct.fb_info** %10, align 8
  store i16* %2, i16** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %33 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %34 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %33, i32 0, i32 1
  %35 = load %struct.fbcon_ops*, %struct.fbcon_ops** %34, align 8
  store %struct.fbcon_ops* %35, %struct.fbcon_ops** %18, align 8
  %36 = load %struct.vc_data*, %struct.vc_data** %9, align 8
  %37 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 7
  %41 = sdiv i32 %40, 8
  store i32 %41, i32* %19, align 4
  %42 = load i32, i32* %19, align 4
  %43 = load %struct.vc_data*, %struct.vc_data** %9, align 8
  %44 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = mul nsw i32 %42, %46
  store i32 %47, i32* %20, align 4
  %48 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %49 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %20, align 4
  %53 = sdiv i32 %51, %52
  store i32 %53, i32* %21, align 4
  %54 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %55 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = sub nsw i32 %57, 1
  store i32 %58, i32* %22, align 4
  %59 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %60 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = sub nsw i32 %62, 1
  store i32 %63, i32* %23, align 4
  %64 = load %struct.vc_data*, %struct.vc_data** %9, align 8
  %65 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = srem i32 %67, 8
  store i32 %68, i32* %24, align 4
  %69 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %70 = load i16*, i16** %11, align 8
  %71 = call i32 @scr_readw(i16* %70)
  %72 = call i32 @get_attribute(%struct.fb_info* %69, i32 %71)
  store i32 %72, i32* %28, align 4
  store i32* null, i32** %30, align 8
  %73 = load %struct.fbcon_ops*, %struct.fbcon_ops** %18, align 8
  %74 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %73, i32 0, i32 1
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %79 = call i32 @GETVYRES(i32 %77, %struct.fb_info* %78)
  store i32 %79, i32* %31, align 4
  %80 = load %struct.fbcon_ops*, %struct.fbcon_ops** %18, align 8
  %81 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %80, i32 0, i32 1
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %86 = call i32 @GETVXRES(i32 %84, %struct.fb_info* %85)
  store i32 %86, i32* %32, align 4
  %87 = load %struct.fbcon_ops*, %struct.fbcon_ops** %18, align 8
  %88 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %8
  br label %240

92:                                               ; preds = %8
  %93 = load i32, i32* %15, align 4
  %94 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %17, i32 0, i32 0
  store i32 %93, i32* %94, align 8
  %95 = load i32, i32* %16, align 4
  %96 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %17, i32 0, i32 1
  store i32 %95, i32* %96, align 4
  %97 = load i32, i32* %31, align 4
  %98 = load i32, i32* %13, align 4
  %99 = load %struct.vc_data*, %struct.vc_data** %9, align 8
  %100 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = mul nsw i32 %98, %102
  %104 = load %struct.vc_data*, %struct.vc_data** %9, align 8
  %105 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %103, %107
  %109 = sub nsw i32 %97, %108
  %110 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %17, i32 0, i32 2
  store i32 %109, i32* %110, align 8
  %111 = load i32, i32* %32, align 4
  %112 = load i32, i32* %14, align 4
  %113 = load i32, i32* %12, align 4
  %114 = add nsw i32 %112, %113
  %115 = load %struct.vc_data*, %struct.vc_data** %9, align 8
  %116 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = mul nsw i32 %114, %118
  %120 = sub nsw i32 %111, %119
  %121 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %17, i32 0, i32 3
  store i32 %120, i32* %121, align 4
  %122 = load %struct.vc_data*, %struct.vc_data** %9, align 8
  %123 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %17, i32 0, i32 4
  store i32 %125, i32* %126, align 8
  %127 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %17, i32 0, i32 5
  store i32 1, i32* %127, align 4
  %128 = load i32, i32* %28, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %138

130:                                              ; preds = %92
  %131 = load i32, i32* %20, align 4
  %132 = load i32, i32* @GFP_KERNEL, align 4
  %133 = call i32* @kmalloc(i32 %131, i32 %132)
  store i32* %133, i32** %30, align 8
  %134 = load i32*, i32** %30, align 8
  %135 = icmp ne i32* %134, null
  br i1 %135, label %137, label %136

136:                                              ; preds = %130
  br label %240

137:                                              ; preds = %130
  br label %138

138:                                              ; preds = %137, %92
  %139 = load i32, i32* %12, align 4
  %140 = sub nsw i32 %139, 1
  %141 = load i16*, i16** %11, align 8
  %142 = sext i32 %140 to i64
  %143 = getelementptr inbounds i16, i16* %141, i64 %142
  store i16* %143, i16** %11, align 8
  br label %144

144:                                              ; preds = %216, %138
  %145 = load i32, i32* %12, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %233

147:                                              ; preds = %144
  %148 = load i32, i32* %12, align 4
  %149 = load i32, i32* %21, align 4
  %150 = icmp sgt i32 %148, %149
  br i1 %150, label %151, label %153

151:                                              ; preds = %147
  %152 = load i32, i32* %21, align 4
  store i32 %152, i32* %25, align 4
  br label %155

153:                                              ; preds = %147
  %154 = load i32, i32* %12, align 4
  store i32 %154, i32* %25, align 4
  br label %155

155:                                              ; preds = %153, %151
  %156 = load %struct.vc_data*, %struct.vc_data** %9, align 8
  %157 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* %25, align 4
  %161 = mul nsw i32 %159, %160
  %162 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %17, i32 0, i32 6
  store i32 %161, i32* %162, align 8
  %163 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %17, i32 0, i32 6
  %164 = load i32, i32* %163, align 8
  %165 = add nsw i32 %164, 7
  %166 = ashr i32 %165, 3
  %167 = load i32, i32* %22, align 4
  %168 = add nsw i32 %166, %167
  store i32 %168, i32* %26, align 4
  %169 = load i32, i32* %22, align 4
  %170 = xor i32 %169, -1
  %171 = load i32, i32* %26, align 4
  %172 = and i32 %171, %170
  store i32 %172, i32* %26, align 4
  %173 = load i32, i32* %26, align 4
  %174 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %17, i32 0, i32 4
  %175 = load i32, i32* %174, align 8
  %176 = mul nsw i32 %173, %175
  %177 = load i32, i32* %23, align 4
  %178 = add nsw i32 %176, %177
  store i32 %178, i32* %27, align 4
  %179 = load i32, i32* %23, align 4
  %180 = xor i32 %179, -1
  %181 = load i32, i32* %27, align 4
  %182 = and i32 %181, %180
  store i32 %182, i32* %27, align 4
  %183 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %184 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %185 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %184, i32 0, i32 0
  %186 = load i32, i32* %27, align 4
  %187 = call i32* @fb_get_buffer_offset(%struct.fb_info* %183, %struct.TYPE_6__* %185, i32 %186)
  store i32* %187, i32** %29, align 8
  %188 = load i32*, i32** %29, align 8
  %189 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %17, i32 0, i32 7
  store i32* %188, i32** %189, align 8
  %190 = load i32, i32* %24, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %204, label %192

192:                                              ; preds = %155
  %193 = load %struct.vc_data*, %struct.vc_data** %9, align 8
  %194 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %195 = load i16*, i16** %11, align 8
  %196 = load i32, i32* %28, align 4
  %197 = load i32, i32* %25, align 4
  %198 = load i32, i32* %26, align 4
  %199 = load i32, i32* %19, align 4
  %200 = load i32, i32* %20, align 4
  %201 = load i32*, i32** %30, align 8
  %202 = load i32*, i32** %29, align 8
  %203 = call i32 @ud_putcs_aligned(%struct.vc_data* %193, %struct.fb_info* %194, i16* %195, i32 %196, i32 %197, i32 %198, i32 %199, i32 %200, %struct.fb_image* %17, i32* %201, i32* %202)
  br label %216

204:                                              ; preds = %155
  %205 = load %struct.vc_data*, %struct.vc_data** %9, align 8
  %206 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %207 = load i16*, i16** %11, align 8
  %208 = load i32, i32* %28, align 4
  %209 = load i32, i32* %25, align 4
  %210 = load i32, i32* %26, align 4
  %211 = load i32, i32* %19, align 4
  %212 = load i32, i32* %20, align 4
  %213 = load i32*, i32** %30, align 8
  %214 = load i32*, i32** %29, align 8
  %215 = call i32 @ud_putcs_unaligned(%struct.vc_data* %205, %struct.fb_info* %206, i16* %207, i32 %208, i32 %209, i32 %210, i32 %211, i32 %212, %struct.fb_image* %17, i32* %213, i32* %214)
  br label %216

216:                                              ; preds = %204, %192
  %217 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %17, i32 0, i32 6
  %218 = load i32, i32* %217, align 8
  %219 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %17, i32 0, i32 3
  %220 = load i32, i32* %219, align 4
  %221 = add nsw i32 %220, %218
  store i32 %221, i32* %219, align 4
  %222 = load i32, i32* %25, align 4
  %223 = load i32, i32* %12, align 4
  %224 = sub nsw i32 %223, %222
  store i32 %224, i32* %12, align 4
  %225 = load i32, i32* %25, align 4
  %226 = load i16*, i16** %11, align 8
  %227 = sext i32 %225 to i64
  %228 = sub i64 0, %227
  %229 = getelementptr inbounds i16, i16* %226, i64 %228
  store i16* %229, i16** %11, align 8
  %230 = load i32, i32* %25, align 4
  %231 = load i32, i32* %14, align 4
  %232 = add nsw i32 %231, %230
  store i32 %232, i32* %14, align 4
  br label %144

233:                                              ; preds = %144
  %234 = load i32*, i32** %30, align 8
  %235 = call i64 @unlikely(i32* %234)
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %240

237:                                              ; preds = %233
  %238 = load i32*, i32** %30, align 8
  %239 = call i32 @kfree(i32* %238)
  br label %240

240:                                              ; preds = %91, %136, %237, %233
  ret void
}

declare dso_local i32 @get_attribute(%struct.fb_info*, i32) #1

declare dso_local i32 @scr_readw(i16*) #1

declare dso_local i32 @GETVYRES(i32, %struct.fb_info*) #1

declare dso_local i32 @GETVXRES(i32, %struct.fb_info*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32* @fb_get_buffer_offset(%struct.fb_info*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @ud_putcs_aligned(%struct.vc_data*, %struct.fb_info*, i16*, i32, i32, i32, i32, i32, %struct.fb_image*, i32*, i32*) #1

declare dso_local i32 @ud_putcs_unaligned(%struct.vc_data*, %struct.fb_info*, i16*, i32, i32, i32, i32, i32, %struct.fb_image*, i32*, i32*) #1

declare dso_local i64 @unlikely(i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
