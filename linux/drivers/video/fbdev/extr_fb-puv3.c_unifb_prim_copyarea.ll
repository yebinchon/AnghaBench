; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_fb-puv3.c_unifb_prim_copyarea.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_fb-puv3.c_unifb_prim_copyarea.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.fb_copyarea = type { i32, i32, i32, i32, i32, i32 }

@UGE_PITCH = common dso_local global i32 0, align 4
@UGE_SRCSTART = common dso_local global i32 0, align 4
@UGE_DSTSTART = common dso_local global i32 0, align 4
@UGE_WIDHEIGHT = common dso_local global i32 0, align 4
@UGE_CLIP0 = common dso_local global i32 0, align 4
@UGE_CLIP1 = common dso_local global i32 0, align 4
@UGE_BCOLOR = common dso_local global i32 0, align 4
@UGE_FCOLOR = common dso_local global i32 0, align 4
@UGE_ROPALPHA = common dso_local global i32 0, align 4
@UGE_SRCXY = common dso_local global i32 0, align 4
@UGE_DSTXY = common dso_local global i32 0, align 4
@UGE_COMMAND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*, %struct.fb_copyarea*)* @unifb_prim_copyarea to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unifb_prim_copyarea(%struct.fb_info* %0, %struct.fb_copyarea* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.fb_copyarea*, align 8
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
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.fb_copyarea* %1, %struct.fb_copyarea** %4, align 8
  %34 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %35 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %5, align 4
  %37 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %38 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %6, align 4
  %40 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %41 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %7, align 4
  %44 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %45 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %8, align 4
  store i32 2, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %48 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %49 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %11, align 4
  %51 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %52 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %12, align 4
  %54 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %55 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %13, align 4
  %57 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %58 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 204, i32* %16, align 4
  store i32 1, i32* %17, align 4
  store i32 1, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %7, align 4
  %62 = sdiv i32 %61, 8
  %63 = mul nsw i32 %60, %62
  store i32 %63, i32* %21, align 4
  %64 = load i32, i32* %14, align 4
  %65 = load i32, i32* %21, align 4
  %66 = mul nsw i32 %64, %65
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* %7, align 4
  %69 = sdiv i32 %68, 8
  %70 = mul nsw i32 %67, %69
  %71 = add nsw i32 %66, %70
  store i32 %71, i32* %22, align 4
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* %7, align 4
  %74 = sdiv i32 %73, 8
  %75 = mul nsw i32 %72, %74
  store i32 %75, i32* %23, align 4
  %76 = load i32, i32* %13, align 4
  %77 = load i32, i32* %23, align 4
  %78 = mul nsw i32 %76, %77
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* %7, align 4
  %81 = sdiv i32 %80, 8
  %82 = mul nsw i32 %79, %81
  %83 = add nsw i32 %78, %82
  store i32 %83, i32* %24, align 4
  store i32 0, i32* %25, align 4
  store i32 0, i32* %26, align 4
  store i32 1, i32* %27, align 4
  store i32 0, i32* %28, align 4
  store i32 0, i32* %29, align 4
  %84 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %85 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %30, align 4
  %88 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %89 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %31, align 4
  store i32 0, i32* %32, align 4
  store i32 0, i32* %33, align 4
  %92 = load i32, i32* %11, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %2
  store i32 0, i32* %11, align 4
  br label %95

95:                                               ; preds = %94, %2
  %96 = load i32, i32* %13, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %95
  store i32 0, i32* %13, align 4
  br label %99

99:                                               ; preds = %98, %95
  %100 = load i32, i32* %13, align 4
  %101 = load i32, i32* %14, align 4
  %102 = sub nsw i32 %100, %101
  %103 = icmp sgt i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %99
  store i32 1, i32* %18, align 4
  br label %132

105:                                              ; preds = %99
  store i32 0, i32* %18, align 4
  %106 = load i32, i32* %13, align 4
  %107 = load i32, i32* %6, align 4
  %108 = add nsw i32 %106, %107
  %109 = load i32, i32* %23, align 4
  %110 = mul nsw i32 %108, %109
  %111 = load i32, i32* %11, align 4
  %112 = load i32, i32* %7, align 4
  %113 = sdiv i32 %112, 8
  %114 = mul nsw i32 %111, %113
  %115 = add nsw i32 %110, %114
  store i32 %115, i32* %24, align 4
  %116 = load i32, i32* %14, align 4
  %117 = load i32, i32* %6, align 4
  %118 = add nsw i32 %116, %117
  %119 = load i32, i32* %21, align 4
  %120 = mul nsw i32 %118, %119
  %121 = load i32, i32* %12, align 4
  %122 = load i32, i32* %7, align 4
  %123 = sdiv i32 %122, 8
  %124 = mul nsw i32 %121, %123
  %125 = add nsw i32 %120, %124
  store i32 %125, i32* %22, align 4
  %126 = load i32, i32* %6, align 4
  %127 = load i32, i32* %13, align 4
  %128 = add nsw i32 %127, %126
  store i32 %128, i32* %13, align 4
  %129 = load i32, i32* %6, align 4
  %130 = load i32, i32* %14, align 4
  %131 = add nsw i32 %130, %129
  store i32 %131, i32* %14, align 4
  br label %132

132:                                              ; preds = %105, %104
  %133 = load i32, i32* %15, align 4
  %134 = shl i32 %133, 26
  %135 = load i32, i32* %10, align 4
  %136 = shl i32 %135, 18
  %137 = or i32 %134, %136
  %138 = load i32, i32* %9, align 4
  %139 = shl i32 %138, 16
  %140 = or i32 %137, %139
  %141 = load i32, i32* %17, align 4
  %142 = shl i32 %141, 20
  %143 = or i32 %140, %142
  %144 = load i32, i32* %18, align 4
  %145 = shl i32 %144, 21
  %146 = or i32 %143, %145
  %147 = load i32, i32* %25, align 4
  %148 = shl i32 %147, 24
  %149 = or i32 %146, %148
  %150 = load i32, i32* %26, align 4
  %151 = shl i32 %150, 23
  %152 = or i32 %149, %151
  %153 = load i32, i32* %27, align 4
  %154 = shl i32 %153, 22
  %155 = or i32 %152, %154
  %156 = load i32, i32* %28, align 4
  %157 = shl i32 %156, 27
  %158 = or i32 %155, %157
  store i32 %158, i32* %25, align 4
  %159 = load i32, i32* %21, align 4
  %160 = shl i32 %159, 16
  %161 = load i32, i32* %23, align 4
  %162 = or i32 %160, %161
  store i32 %162, i32* %23, align 4
  %163 = load i32, i32* %5, align 4
  %164 = load i32, i32* %6, align 4
  %165 = shl i32 %164, 16
  %166 = or i32 %163, %165
  store i32 %166, i32* %5, align 4
  %167 = load i32, i32* %16, align 4
  %168 = and i32 %167, 255
  %169 = shl i32 %168, 8
  %170 = load i32, i32* %19, align 4
  %171 = and i32 %170, 255
  %172 = or i32 %169, %171
  %173 = load i32, i32* %20, align 4
  %174 = shl i32 %173, 16
  %175 = or i32 %172, %174
  store i32 %175, i32* %19, align 4
  %176 = load i32, i32* %11, align 4
  %177 = and i32 %176, 8191
  %178 = load i32, i32* %13, align 4
  %179 = and i32 %178, 8191
  %180 = shl i32 %179, 16
  %181 = or i32 %177, %180
  store i32 %181, i32* %11, align 4
  %182 = load i32, i32* %12, align 4
  %183 = and i32 %182, 8191
  %184 = load i32, i32* %14, align 4
  %185 = and i32 %184, 8191
  %186 = shl i32 %185, 16
  %187 = or i32 %183, %186
  store i32 %187, i32* %12, align 4
  %188 = load i32, i32* %30, align 4
  %189 = shl i32 %188, 16
  %190 = load i32, i32* %31, align 4
  %191 = or i32 %189, %190
  store i32 %191, i32* %30, align 4
  %192 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %193 = call i32 @unifb_sync(%struct.fb_info* %192)
  %194 = load i32, i32* %23, align 4
  %195 = load i32, i32* @UGE_PITCH, align 4
  %196 = call i32 @writel(i32 %194, i32 %195)
  %197 = load i32, i32* %24, align 4
  %198 = load i32, i32* @UGE_SRCSTART, align 4
  %199 = call i32 @writel(i32 %197, i32 %198)
  %200 = load i32, i32* %22, align 4
  %201 = load i32, i32* @UGE_DSTSTART, align 4
  %202 = call i32 @writel(i32 %200, i32 %201)
  %203 = load i32, i32* %5, align 4
  %204 = load i32, i32* @UGE_WIDHEIGHT, align 4
  %205 = call i32 @writel(i32 %203, i32 %204)
  %206 = load i32, i32* %29, align 4
  %207 = load i32, i32* @UGE_CLIP0, align 4
  %208 = call i32 @writel(i32 %206, i32 %207)
  %209 = load i32, i32* %30, align 4
  %210 = load i32, i32* @UGE_CLIP1, align 4
  %211 = call i32 @writel(i32 %209, i32 %210)
  %212 = load i32, i32* %33, align 4
  %213 = load i32, i32* @UGE_BCOLOR, align 4
  %214 = call i32 @writel(i32 %212, i32 %213)
  %215 = load i32, i32* %32, align 4
  %216 = load i32, i32* @UGE_FCOLOR, align 4
  %217 = call i32 @writel(i32 %215, i32 %216)
  %218 = load i32, i32* %19, align 4
  %219 = load i32, i32* @UGE_ROPALPHA, align 4
  %220 = call i32 @writel(i32 %218, i32 %219)
  %221 = load i32, i32* %11, align 4
  %222 = load i32, i32* @UGE_SRCXY, align 4
  %223 = call i32 @writel(i32 %221, i32 %222)
  %224 = load i32, i32* %12, align 4
  %225 = load i32, i32* @UGE_DSTXY, align 4
  %226 = call i32 @writel(i32 %224, i32 %225)
  %227 = load i32, i32* %25, align 4
  %228 = load i32, i32* @UGE_COMMAND, align 4
  %229 = call i32 @writel(i32 %227, i32 %228)
  ret void
}

declare dso_local i32 @unifb_sync(%struct.fb_info*) #1

declare dso_local i32 @writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
