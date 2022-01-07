; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_fb-puv3.c_unifb_prim_fillrect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_fb-puv3.c_unifb_prim_fillrect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.fb_fillrect = type { i32, i32, i32, i32, i32 }

@UGE_FCOLOR = common dso_local global i32 0, align 4
@UGE_BCOLOR = common dso_local global i32 0, align 4
@UGE_PITCH = common dso_local global i32 0, align 4
@UGE_SRCSTART = common dso_local global i32 0, align 4
@UGE_DSTSTART = common dso_local global i32 0, align 4
@UGE_WIDHEIGHT = common dso_local global i32 0, align 4
@UGE_CLIP0 = common dso_local global i32 0, align 4
@UGE_CLIP1 = common dso_local global i32 0, align 4
@UGE_ROPALPHA = common dso_local global i32 0, align 4
@UGE_SRCXY = common dso_local global i32 0, align 4
@UGE_DSTXY = common dso_local global i32 0, align 4
@UGE_COMMAND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*, %struct.fb_fillrect*)* @unifb_prim_fillrect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unifb_prim_fillrect(%struct.fb_info* %0, %struct.fb_fillrect* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.fb_fillrect*, align 8
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
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.fb_fillrect* %1, %struct.fb_fillrect** %4, align 8
  %33 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %34 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %5, align 4
  %36 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %37 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %6, align 4
  %39 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %40 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %7, align 4
  %43 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %44 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %8, align 4
  store i32 1, i32* %9, align 4
  store i32 1, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %47 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %48 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %50 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %51 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 204, i32* %16, align 4
  store i32 1, i32* %17, align 4
  store i32 1, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %7, align 4
  %55 = sdiv i32 %54, 8
  %56 = mul nsw i32 %53, %55
  store i32 %56, i32* %21, align 4
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* %21, align 4
  %59 = mul nsw i32 %57, %58
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* %7, align 4
  %62 = sdiv i32 %61, 8
  %63 = mul nsw i32 %60, %62
  %64 = add nsw i32 %59, %63
  store i32 %64, i32* %22, align 4
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %7, align 4
  %67 = sdiv i32 %66, 8
  %68 = mul nsw i32 %65, %67
  store i32 %68, i32* %23, align 4
  %69 = load i32, i32* %13, align 4
  %70 = load i32, i32* %23, align 4
  %71 = mul nsw i32 %69, %70
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %7, align 4
  %74 = sdiv i32 %73, 8
  %75 = mul nsw i32 %72, %74
  %76 = add nsw i32 %71, %75
  store i32 %76, i32* %24, align 4
  store i32 0, i32* %25, align 4
  store i32 0, i32* %26, align 4
  store i32 0, i32* %27, align 4
  store i32 0, i32* %28, align 4
  store i32 0, i32* %29, align 4
  %77 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %78 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = sub nsw i32 %80, 1
  store i32 %81, i32* %30, align 4
  %82 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %83 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = sub nsw i32 %85, 1
  store i32 %86, i32* %31, align 4
  store i32 0, i32* %32, align 4
  %87 = load i32, i32* %30, align 4
  %88 = shl i32 %87, 16
  %89 = load i32, i32* %31, align 4
  %90 = or i32 %88, %89
  store i32 %90, i32* %30, align 4
  %91 = load i32, i32* %15, align 4
  %92 = shl i32 %91, 26
  %93 = load i32, i32* %10, align 4
  %94 = shl i32 %93, 18
  %95 = or i32 %92, %94
  %96 = load i32, i32* %9, align 4
  %97 = shl i32 %96, 16
  %98 = or i32 %95, %97
  %99 = load i32, i32* %17, align 4
  %100 = shl i32 %99, 20
  %101 = or i32 %98, %100
  %102 = load i32, i32* %18, align 4
  %103 = shl i32 %102, 21
  %104 = or i32 %101, %103
  %105 = load i32, i32* %25, align 4
  %106 = shl i32 %105, 24
  %107 = or i32 %104, %106
  %108 = load i32, i32* %26, align 4
  %109 = shl i32 %108, 23
  %110 = or i32 %107, %109
  %111 = load i32, i32* %27, align 4
  %112 = shl i32 %111, 22
  %113 = or i32 %110, %112
  %114 = load i32, i32* %28, align 4
  %115 = shl i32 %114, 27
  %116 = or i32 %113, %115
  store i32 %116, i32* %25, align 4
  %117 = load i32, i32* %21, align 4
  %118 = shl i32 %117, 16
  %119 = load i32, i32* %23, align 4
  %120 = or i32 %118, %119
  store i32 %120, i32* %23, align 4
  %121 = load i32, i32* %5, align 4
  %122 = load i32, i32* %6, align 4
  %123 = shl i32 %122, 16
  %124 = or i32 %121, %123
  store i32 %124, i32* %5, align 4
  %125 = load i32, i32* %16, align 4
  %126 = and i32 %125, 255
  %127 = shl i32 %126, 8
  %128 = load i32, i32* %19, align 4
  %129 = and i32 %128, 255
  %130 = or i32 %127, %129
  %131 = load i32, i32* %20, align 4
  %132 = shl i32 %131, 16
  %133 = or i32 %130, %132
  store i32 %133, i32* %19, align 4
  %134 = load i32, i32* %11, align 4
  %135 = and i32 %134, 8191
  %136 = load i32, i32* %13, align 4
  %137 = and i32 %136, 8191
  %138 = shl i32 %137, 16
  %139 = or i32 %135, %138
  store i32 %139, i32* %11, align 4
  %140 = load i32, i32* %12, align 4
  %141 = and i32 %140, 8191
  %142 = load i32, i32* %14, align 4
  %143 = and i32 %142, 8191
  %144 = shl i32 %143, 16
  %145 = or i32 %141, %144
  store i32 %145, i32* %12, align 4
  %146 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %147 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 4
  store i32 %148, i32* %29, align 4
  %149 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %150 = call i32 @unifb_sync(%struct.fb_info* %149)
  %151 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %152 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = inttoptr i64 %153 to i32*
  %155 = load i32, i32* %29, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @UGE_FCOLOR, align 4
  %160 = call i32 @writel(i32 %158, i32 %159)
  %161 = load i32, i32* @UGE_BCOLOR, align 4
  %162 = call i32 @writel(i32 0, i32 %161)
  %163 = load i32, i32* %23, align 4
  %164 = load i32, i32* @UGE_PITCH, align 4
  %165 = call i32 @writel(i32 %163, i32 %164)
  %166 = load i32, i32* %24, align 4
  %167 = load i32, i32* @UGE_SRCSTART, align 4
  %168 = call i32 @writel(i32 %166, i32 %167)
  %169 = load i32, i32* %22, align 4
  %170 = load i32, i32* @UGE_DSTSTART, align 4
  %171 = call i32 @writel(i32 %169, i32 %170)
  %172 = load i32, i32* %5, align 4
  %173 = load i32, i32* @UGE_WIDHEIGHT, align 4
  %174 = call i32 @writel(i32 %172, i32 %173)
  %175 = load i32, i32* %32, align 4
  %176 = load i32, i32* @UGE_CLIP0, align 4
  %177 = call i32 @writel(i32 %175, i32 %176)
  %178 = load i32, i32* %30, align 4
  %179 = load i32, i32* @UGE_CLIP1, align 4
  %180 = call i32 @writel(i32 %178, i32 %179)
  %181 = load i32, i32* %19, align 4
  %182 = load i32, i32* @UGE_ROPALPHA, align 4
  %183 = call i32 @writel(i32 %181, i32 %182)
  %184 = load i32, i32* %11, align 4
  %185 = load i32, i32* @UGE_SRCXY, align 4
  %186 = call i32 @writel(i32 %184, i32 %185)
  %187 = load i32, i32* %12, align 4
  %188 = load i32, i32* @UGE_DSTXY, align 4
  %189 = call i32 @writel(i32 %187, i32 %188)
  %190 = load i32, i32* %25, align 4
  %191 = load i32, i32* @UGE_COMMAND, align 4
  %192 = call i32 @writel(i32 %190, i32 %191)
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
