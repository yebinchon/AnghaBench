; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_softcursor.c_soft_cursor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_softcursor.c_soft_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i64, %struct.TYPE_3__*, %struct.TYPE_4__, %struct.fbcon_ops* }
%struct.TYPE_3__ = type { i32 (%struct.fb_info*, %struct.fb_image*)* }
%struct.fb_image = type { i32, i32, i32* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.fbcon_ops = type { i32, i32* }
%struct.fb_cursor = type { i32, i32*, i64, %struct.fb_image }

@FBINFO_STATE_RUNNING = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @soft_cursor(%struct.fb_info* %0, %struct.fb_cursor* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.fb_cursor*, align 8
  %6 = alloca %struct.fbcon_ops*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.fb_image*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %4, align 8
  store %struct.fb_cursor* %1, %struct.fb_cursor** %5, align 8
  %17 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %18 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %17, i32 0, i32 3
  %19 = load %struct.fbcon_ops*, %struct.fbcon_ops** %18, align 8
  store %struct.fbcon_ops* %19, %struct.fbcon_ops** %6, align 8
  %20 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %21 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sub nsw i32 %23, 1
  store i32 %24, i32* %7, align 4
  %25 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %26 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = sub nsw i32 %28, 1
  store i32 %29, i32* %8, align 4
  %30 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %31 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @FBINFO_STATE_RUNNING, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %216

36:                                               ; preds = %2
  %37 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %38 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, 7
  %42 = ashr i32 %41, 3
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %45 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = mul i32 %43, %47
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = zext i32 %49 to i64
  %51 = add i64 %50, 16
  %52 = load %struct.fbcon_ops*, %struct.fbcon_ops** %6, align 8
  %53 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = zext i32 %54 to i64
  %56 = icmp ne i64 %51, %55
  br i1 %56, label %57, label %85

57:                                               ; preds = %36
  %58 = load %struct.fbcon_ops*, %struct.fbcon_ops** %6, align 8
  %59 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @kfree(i32* %60)
  %62 = load i32, i32* %11, align 4
  %63 = zext i32 %62 to i64
  %64 = add i64 %63, 16
  %65 = trunc i64 %64 to i32
  %66 = load %struct.fbcon_ops*, %struct.fbcon_ops** %6, align 8
  %67 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load %struct.fbcon_ops*, %struct.fbcon_ops** %6, align 8
  %69 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @GFP_ATOMIC, align 4
  %72 = call i32* @kmalloc(i32 %70, i32 %71)
  %73 = load %struct.fbcon_ops*, %struct.fbcon_ops** %6, align 8
  %74 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %73, i32 0, i32 1
  store i32* %72, i32** %74, align 8
  %75 = load %struct.fbcon_ops*, %struct.fbcon_ops** %6, align 8
  %76 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %84, label %79

79:                                               ; preds = %57
  %80 = load %struct.fbcon_ops*, %struct.fbcon_ops** %6, align 8
  %81 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %80, i32 0, i32 0
  store i32 0, i32* %81, align 8
  %82 = load i32, i32* @ENOMEM, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %3, align 4
  br label %216

84:                                               ; preds = %57
  br label %85

85:                                               ; preds = %84, %36
  %86 = load %struct.fbcon_ops*, %struct.fbcon_ops** %6, align 8
  %87 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 16
  store i32* %89, i32** %15, align 8
  %90 = load %struct.fbcon_ops*, %struct.fbcon_ops** %6, align 8
  %91 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = bitcast i32* %92 to %struct.fb_image*
  store %struct.fb_image* %93, %struct.fb_image** %14, align 8
  %94 = load %struct.fb_image*, %struct.fb_image** %14, align 8
  %95 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %96 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %95, i32 0, i32 3
  %97 = bitcast %struct.fb_image* %94 to i8*
  %98 = bitcast %struct.fb_image* %96 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %97, i8* align 8 %98, i64 16, i1 false)
  %99 = load i32, i32* %12, align 4
  %100 = load i32, i32* %7, align 4
  %101 = add i32 %99, %100
  %102 = load i32, i32* %7, align 4
  %103 = xor i32 %102, -1
  %104 = and i32 %101, %103
  store i32 %104, i32* %13, align 4
  %105 = load i32, i32* %13, align 4
  %106 = load %struct.fb_image*, %struct.fb_image** %14, align 8
  %107 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = mul i32 %105, %108
  %110 = load i32, i32* %8, align 4
  %111 = add i32 %109, %110
  store i32 %111, i32* %10, align 4
  %112 = load i32, i32* %8, align 4
  %113 = xor i32 %112, -1
  %114 = load i32, i32* %10, align 4
  %115 = and i32 %114, %113
  store i32 %115, i32* %10, align 4
  %116 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %117 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %118 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %117, i32 0, i32 2
  %119 = load i32, i32* %10, align 4
  %120 = call i32* @fb_get_buffer_offset(%struct.fb_info* %116, %struct.TYPE_4__* %118, i32 %119)
  store i32* %120, i32** %16, align 8
  %121 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %122 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %189

125:                                              ; preds = %85
  %126 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %127 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  switch i32 %128, label %159 [
    i32 128, label %129
    i32 129, label %158
  ]

129:                                              ; preds = %125
  store i32 0, i32* %9, align 4
  br label %130

130:                                              ; preds = %154, %129
  %131 = load i32, i32* %9, align 4
  %132 = load i32, i32* %11, align 4
  %133 = icmp ult i32 %131, %132
  br i1 %133, label %134, label %157

134:                                              ; preds = %130
  %135 = load %struct.fb_image*, %struct.fb_image** %14, align 8
  %136 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %135, i32 0, i32 2
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* %9, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %143 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %142, i32 0, i32 1
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* %9, align 4
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = xor i32 %141, %148
  %150 = load i32*, i32** %15, align 8
  %151 = load i32, i32* %9, align 4
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  store i32 %149, i32* %153, align 4
  br label %154

154:                                              ; preds = %134
  %155 = load i32, i32* %9, align 4
  %156 = add i32 %155, 1
  store i32 %156, i32* %9, align 4
  br label %130

157:                                              ; preds = %130
  br label %188

158:                                              ; preds = %125
  br label %159

159:                                              ; preds = %125, %158
  store i32 0, i32* %9, align 4
  br label %160

160:                                              ; preds = %184, %159
  %161 = load i32, i32* %9, align 4
  %162 = load i32, i32* %11, align 4
  %163 = icmp ult i32 %161, %162
  br i1 %163, label %164, label %187

164:                                              ; preds = %160
  %165 = load %struct.fb_image*, %struct.fb_image** %14, align 8
  %166 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %165, i32 0, i32 2
  %167 = load i32*, i32** %166, align 8
  %168 = load i32, i32* %9, align 4
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %173 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %172, i32 0, i32 1
  %174 = load i32*, i32** %173, align 8
  %175 = load i32, i32* %9, align 4
  %176 = zext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %174, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = and i32 %171, %178
  %180 = load i32*, i32** %15, align 8
  %181 = load i32, i32* %9, align 4
  %182 = zext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %180, i64 %182
  store i32 %179, i32* %183, align 4
  br label %184

184:                                              ; preds = %164
  %185 = load i32, i32* %9, align 4
  %186 = add i32 %185, 1
  store i32 %186, i32* %9, align 4
  br label %160

187:                                              ; preds = %160
  br label %188

188:                                              ; preds = %187, %157
  br label %196

189:                                              ; preds = %85
  %190 = load i32*, i32** %15, align 8
  %191 = load %struct.fb_image*, %struct.fb_image** %14, align 8
  %192 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %191, i32 0, i32 2
  %193 = load i32*, i32** %192, align 8
  %194 = load i32, i32* %11, align 4
  %195 = call i32 @memcpy(i32* %190, i32* %193, i32 %194)
  br label %196

196:                                              ; preds = %189, %188
  %197 = load i32*, i32** %16, align 8
  %198 = load i32, i32* %13, align 4
  %199 = load i32*, i32** %15, align 8
  %200 = load i32, i32* %12, align 4
  %201 = load %struct.fb_image*, %struct.fb_image** %14, align 8
  %202 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @fb_pad_aligned_buffer(i32* %197, i32 %198, i32* %199, i32 %200, i32 %203)
  %205 = load i32*, i32** %16, align 8
  %206 = load %struct.fb_image*, %struct.fb_image** %14, align 8
  %207 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %206, i32 0, i32 2
  store i32* %205, i32** %207, align 8
  %208 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %209 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %208, i32 0, i32 1
  %210 = load %struct.TYPE_3__*, %struct.TYPE_3__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %210, i32 0, i32 0
  %212 = load i32 (%struct.fb_info*, %struct.fb_image*)*, i32 (%struct.fb_info*, %struct.fb_image*)** %211, align 8
  %213 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %214 = load %struct.fb_image*, %struct.fb_image** %14, align 8
  %215 = call i32 %212(%struct.fb_info* %213, %struct.fb_image* %214)
  store i32 0, i32* %3, align 4
  br label %216

216:                                              ; preds = %196, %79, %35
  %217 = load i32, i32* %3, align 4
  ret i32 %217
}

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32* @fb_get_buffer_offset(%struct.fb_info*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @fb_pad_aligned_buffer(i32*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
