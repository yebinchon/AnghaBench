; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbcon_rotate.c_fbcon_rotate_font.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbcon_rotate.c_fbcon_rotate_font.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_5__*, %struct.fbcon_ops* }
%struct.TYPE_5__ = type { i32 (%struct.fb_info*)* }
%struct.fbcon_ops = type { i64, i64, i32, i32, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.vc_data = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*, %struct.vc_data*)* @fbcon_rotate_font to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fbcon_rotate_font(%struct.fb_info* %0, %struct.vc_data* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.vc_data*, align 8
  %5 = alloca %struct.fbcon_ops*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.vc_data* %1, %struct.vc_data** %4, align 8
  %13 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %14 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %13, i32 0, i32 1
  %15 = load %struct.fbcon_ops*, %struct.fbcon_ops** %14, align 8
  store %struct.fbcon_ops* %15, %struct.fbcon_ops** %5, align 8
  store i32 0, i32* %7, align 4
  %16 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %17 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.fbcon_ops*, %struct.fbcon_ops** %5, align 8
  %21 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %19, %22
  br i1 %23, label %24, label %35

24:                                               ; preds = %2
  %25 = load %struct.fbcon_ops*, %struct.fbcon_ops** %5, align 8
  %26 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %25, i32 0, i32 5
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.fbcon_ops*, %struct.fbcon_ops** %5, align 8
  %31 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %29, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %24
  br label %235

35:                                               ; preds = %24, %2
  %36 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %37 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.fbcon_ops*, %struct.fbcon_ops** %5, align 8
  %41 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  %42 = inttoptr i64 %39 to i32*
  store i32* %42, i32** %11, align 8
  %43 = load %struct.fbcon_ops*, %struct.fbcon_ops** %5, align 8
  %44 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %43, i32 0, i32 5
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.fbcon_ops*, %struct.fbcon_ops** %5, align 8
  %49 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %48, i32 0, i32 1
  store i64 %47, i64* %49, align 8
  %50 = load %struct.fbcon_ops*, %struct.fbcon_ops** %5, align 8
  %51 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %50, i32 0, i32 5
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %35
  br label %60

57:                                               ; preds = %35
  %58 = load i32*, i32** %11, align 8
  %59 = call i32 @FNTCHARCNT(i32* %58)
  br label %60

60:                                               ; preds = %57, %56
  %61 = phi i32 [ 256, %56 ], [ %59, %57 ]
  store i32 %61, i32* %6, align 4
  %62 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %63 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = add nsw i32 %65, 7
  %67 = sdiv i32 %66, 8
  %68 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %69 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = mul nsw i32 %67, %71
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %9, align 4
  %74 = load %struct.fbcon_ops*, %struct.fbcon_ops** %5, align 8
  %75 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = icmp eq i32 %76, 129
  br i1 %77, label %83, label %78

78:                                               ; preds = %60
  %79 = load %struct.fbcon_ops*, %struct.fbcon_ops** %5, align 8
  %80 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = icmp eq i32 %81, 130
  br i1 %82, label %83, label %95

83:                                               ; preds = %78, %60
  %84 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %85 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, 7
  %89 = sdiv i32 %88, 8
  %90 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %91 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = mul nsw i32 %89, %93
  store i32 %94, i32* %9, align 4
  br label %95

95:                                               ; preds = %83, %78
  %96 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %97 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %96, i32 0, i32 0
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i32 (%struct.fb_info*)*, i32 (%struct.fb_info*)** %99, align 8
  %101 = icmp ne i32 (%struct.fb_info*)* %100, null
  br i1 %101, label %102, label %110

102:                                              ; preds = %95
  %103 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %104 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %103, i32 0, i32 0
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  %107 = load i32 (%struct.fb_info*)*, i32 (%struct.fb_info*)** %106, align 8
  %108 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %109 = call i32 %107(%struct.fb_info* %108)
  br label %110

110:                                              ; preds = %102, %95
  %111 = load %struct.fbcon_ops*, %struct.fbcon_ops** %5, align 8
  %112 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* %6, align 4
  %116 = mul nsw i32 %114, %115
  %117 = icmp slt i32 %113, %116
  br i1 %117, label %118, label %141

118:                                              ; preds = %110
  %119 = load i32, i32* %6, align 4
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* @GFP_KERNEL, align 4
  %122 = call i32* @kmalloc_array(i32 %119, i32 %120, i32 %121)
  store i32* %122, i32** %12, align 8
  %123 = load i32*, i32** %12, align 8
  %124 = icmp eq i32* %123, null
  br i1 %124, label %125, label %128

125:                                              ; preds = %118
  %126 = load i32, i32* @ENOMEM, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %7, align 4
  br label %235

128:                                              ; preds = %118
  %129 = load i32, i32* %9, align 4
  %130 = load i32, i32* %6, align 4
  %131 = mul nsw i32 %129, %130
  %132 = load %struct.fbcon_ops*, %struct.fbcon_ops** %5, align 8
  %133 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %132, i32 0, i32 3
  store i32 %131, i32* %133, align 4
  %134 = load %struct.fbcon_ops*, %struct.fbcon_ops** %5, align 8
  %135 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %134, i32 0, i32 4
  %136 = load i32*, i32** %135, align 8
  %137 = call i32 @kfree(i32* %136)
  %138 = load i32*, i32** %12, align 8
  %139 = load %struct.fbcon_ops*, %struct.fbcon_ops** %5, align 8
  %140 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %139, i32 0, i32 4
  store i32* %138, i32** %140, align 8
  br label %141

141:                                              ; preds = %128, %110
  %142 = load %struct.fbcon_ops*, %struct.fbcon_ops** %5, align 8
  %143 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %142, i32 0, i32 4
  %144 = load i32*, i32** %143, align 8
  store i32* %144, i32** %12, align 8
  %145 = load i32*, i32** %12, align 8
  %146 = load %struct.fbcon_ops*, %struct.fbcon_ops** %5, align 8
  %147 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @memset(i32* %145, i32 0, i32 %148)
  %150 = load %struct.fbcon_ops*, %struct.fbcon_ops** %5, align 8
  %151 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  switch i32 %152, label %234 [
    i32 128, label %153
    i32 129, label %180
    i32 130, label %207
  ]

153:                                              ; preds = %141
  %154 = load i32, i32* %6, align 4
  store i32 %154, i32* %10, align 4
  br label %155

155:                                              ; preds = %159, %153
  %156 = load i32, i32* %10, align 4
  %157 = add nsw i32 %156, -1
  store i32 %157, i32* %10, align 4
  %158 = icmp ne i32 %156, 0
  br i1 %158, label %159, label %179

159:                                              ; preds = %155
  %160 = load i32*, i32** %11, align 8
  %161 = load i32*, i32** %12, align 8
  %162 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %163 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %167 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @rotate_ud(i32* %160, i32* %161, i32 %165, i32 %169)
  %171 = load i32, i32* %8, align 4
  %172 = load i32*, i32** %11, align 8
  %173 = sext i32 %171 to i64
  %174 = getelementptr inbounds i32, i32* %172, i64 %173
  store i32* %174, i32** %11, align 8
  %175 = load i32, i32* %9, align 4
  %176 = load i32*, i32** %12, align 8
  %177 = sext i32 %175 to i64
  %178 = getelementptr inbounds i32, i32* %176, i64 %177
  store i32* %178, i32** %12, align 8
  br label %155

179:                                              ; preds = %155
  br label %234

180:                                              ; preds = %141
  %181 = load i32, i32* %6, align 4
  store i32 %181, i32* %10, align 4
  br label %182

182:                                              ; preds = %186, %180
  %183 = load i32, i32* %10, align 4
  %184 = add nsw i32 %183, -1
  store i32 %184, i32* %10, align 4
  %185 = icmp ne i32 %183, 0
  br i1 %185, label %186, label %206

186:                                              ; preds = %182
  %187 = load i32*, i32** %11, align 8
  %188 = load i32*, i32** %12, align 8
  %189 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %190 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %194 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @rotate_cw(i32* %187, i32* %188, i32 %192, i32 %196)
  %198 = load i32, i32* %8, align 4
  %199 = load i32*, i32** %11, align 8
  %200 = sext i32 %198 to i64
  %201 = getelementptr inbounds i32, i32* %199, i64 %200
  store i32* %201, i32** %11, align 8
  %202 = load i32, i32* %9, align 4
  %203 = load i32*, i32** %12, align 8
  %204 = sext i32 %202 to i64
  %205 = getelementptr inbounds i32, i32* %203, i64 %204
  store i32* %205, i32** %12, align 8
  br label %182

206:                                              ; preds = %182
  br label %234

207:                                              ; preds = %141
  %208 = load i32, i32* %6, align 4
  store i32 %208, i32* %10, align 4
  br label %209

209:                                              ; preds = %213, %207
  %210 = load i32, i32* %10, align 4
  %211 = add nsw i32 %210, -1
  store i32 %211, i32* %10, align 4
  %212 = icmp ne i32 %210, 0
  br i1 %212, label %213, label %233

213:                                              ; preds = %209
  %214 = load i32*, i32** %11, align 8
  %215 = load i32*, i32** %12, align 8
  %216 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %217 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 8
  %220 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %221 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @rotate_ccw(i32* %214, i32* %215, i32 %219, i32 %223)
  %225 = load i32, i32* %8, align 4
  %226 = load i32*, i32** %11, align 8
  %227 = sext i32 %225 to i64
  %228 = getelementptr inbounds i32, i32* %226, i64 %227
  store i32* %228, i32** %11, align 8
  %229 = load i32, i32* %9, align 4
  %230 = load i32*, i32** %12, align 8
  %231 = sext i32 %229 to i64
  %232 = getelementptr inbounds i32, i32* %230, i64 %231
  store i32* %232, i32** %12, align 8
  br label %209

233:                                              ; preds = %209
  br label %234

234:                                              ; preds = %141, %233, %206, %179
  br label %235

235:                                              ; preds = %234, %125, %34
  %236 = load i32, i32* %7, align 4
  ret i32 %236
}

declare dso_local i32 @FNTCHARCNT(i32*) #1

declare dso_local i32* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @rotate_ud(i32*, i32*, i32, i32) #1

declare dso_local i32 @rotate_cw(i32*, i32*, i32, i32) #1

declare dso_local i32 @rotate_ccw(i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
