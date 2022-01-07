; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_neofb.c_neo2200_imageblit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_neofb.c_neo2200_imageblit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_7__, %struct.TYPE_6__, i64, %struct.TYPE_5__, %struct.neofb_par* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.neofb_par = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32 }
%struct.fb_image = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@NEO_BC0_SRC_MONO = common dso_local global i32 0, align 4
@NEO_BC0_SYS_TO_VID = common dso_local global i32 0, align 4
@NEO_BC3_SKIP_MAPPING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*, %struct.fb_image*)* @neo2200_imageblit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @neo2200_imageblit(%struct.fb_info* %0, %struct.fb_image* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.fb_image*, align 8
  %5 = alloca %struct.neofb_par*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.fb_image* %1, %struct.fb_image** %4, align 8
  %12 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %13 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %12, i32 0, i32 4
  %14 = load %struct.neofb_par*, %struct.neofb_par** %13, align 8
  store %struct.neofb_par* %14, %struct.neofb_par** %5, align 8
  %15 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %16 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %19 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = mul nsw i32 %17, %20
  %22 = add nsw i32 %21, 7
  %23 = ashr i32 %22, 3
  store i32 %23, i32* %6, align 4
  %24 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %25 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sub nsw i32 %27, 1
  store i32 %28, i32* %7, align 4
  %29 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %30 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = sub nsw i32 %32, 1
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %34, %35
  %37 = load i32, i32* %7, align 4
  %38 = xor i32 %37, -1
  %39 = and i32 %36, %38
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %42 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = mul nsw i32 %40, %43
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %44, %45
  %47 = load i32, i32* %8, align 4
  %48 = xor i32 %47, -1
  %49 = and i32 %46, %48
  store i32 %49, i32* %11, align 4
  %50 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %51 = call i32 @neo2200_sync(%struct.fb_info* %50)
  %52 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %53 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %56, label %73

56:                                               ; preds = %2
  %57 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %58 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 24
  br i1 %61, label %62, label %71

62:                                               ; preds = %56
  %63 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %64 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp slt i32 %65, 16
  br i1 %66, label %67, label %71

67:                                               ; preds = %62
  %68 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %69 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %70 = call i32 @cfb_imageblit(%struct.fb_info* %68, %struct.fb_image* %69)
  br label %205

71:                                               ; preds = %62, %56
  %72 = load i32, i32* @NEO_BC0_SRC_MONO, align 4
  store i32 %72, i32* %9, align 4
  br label %88

73:                                               ; preds = %2
  %74 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %75 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %78 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %76, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %73
  store i32 0, i32* %9, align 4
  br label %87

83:                                               ; preds = %73
  %84 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %85 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %86 = call i32 @cfb_imageblit(%struct.fb_info* %84, %struct.fb_image* %85)
  br label %205

87:                                               ; preds = %82
  br label %88

88:                                               ; preds = %87, %71
  %89 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %90 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  switch i32 %92, label %141 [
    i32 8, label %93
    i32 16, label %110
    i32 24, label %110
  ]

93:                                               ; preds = %88
  %94 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %95 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.neofb_par*, %struct.neofb_par** %5, align 8
  %98 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %97, i32 0, i32 1
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 5
  %101 = call i32 @writel(i32 %96, i32* %100)
  %102 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %103 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.neofb_par*, %struct.neofb_par** %5, align 8
  %106 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %105, i32 0, i32 1
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 4
  %109 = call i32 @writel(i32 %104, i32* %108)
  br label %141

110:                                              ; preds = %88, %88
  %111 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %112 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = inttoptr i64 %113 to i32*
  %115 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %116 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %114, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.neofb_par*, %struct.neofb_par** %5, align 8
  %122 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %121, i32 0, i32 1
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 5
  %125 = call i32 @writel(i32 %120, i32* %124)
  %126 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %127 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = inttoptr i64 %128 to i32*
  %130 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %131 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %129, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.neofb_par*, %struct.neofb_par** %5, align 8
  %137 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %136, i32 0, i32 1
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 4
  %140 = call i32 @writel(i32 %135, i32* %139)
  br label %141

141:                                              ; preds = %88, %110, %93
  %142 = load i32, i32* @NEO_BC0_SYS_TO_VID, align 4
  %143 = load i32, i32* @NEO_BC3_SKIP_MAPPING, align 4
  %144 = or i32 %142, %143
  %145 = load i32, i32* %9, align 4
  %146 = or i32 %144, %145
  %147 = or i32 %146, 786432
  %148 = load %struct.neofb_par*, %struct.neofb_par** %5, align 8
  %149 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %148, i32 0, i32 1
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 3
  %152 = call i32 @writel(i32 %147, i32* %151)
  %153 = load %struct.neofb_par*, %struct.neofb_par** %5, align 8
  %154 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %153, i32 0, i32 1
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 2
  %157 = call i32 @writel(i32 0, i32* %156)
  %158 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %159 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %158, i32 0, i32 5
  %160 = load i32, i32* %159, align 4
  %161 = and i32 %160, 65535
  %162 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %163 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = ashr i32 %165, 3
  %167 = mul nsw i32 %161, %166
  %168 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %169 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %168, i32 0, i32 6
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %172 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = mul nsw i32 %170, %174
  %176 = add nsw i32 %167, %175
  %177 = load %struct.neofb_par*, %struct.neofb_par** %5, align 8
  %178 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %177, i32 0, i32 1
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 1
  %181 = call i32 @writel(i32 %176, i32* %180)
  %182 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %183 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = shl i32 %184, 16
  %186 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %187 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = and i32 %188, 65535
  %190 = or i32 %185, %189
  %191 = load %struct.neofb_par*, %struct.neofb_par** %5, align 8
  %192 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %191, i32 0, i32 1
  %193 = load %struct.TYPE_8__*, %struct.TYPE_8__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 0
  %195 = call i32 @writel(i32 %190, i32* %194)
  %196 = load %struct.neofb_par*, %struct.neofb_par** %5, align 8
  %197 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = add nsw i64 %198, 1048576
  %200 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %201 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %200, i32 0, i32 7
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* %11, align 4
  %204 = call i32 @memcpy_toio(i64 %199, i32 %202, i32 %203)
  br label %205

205:                                              ; preds = %141, %83, %67
  ret void
}

declare dso_local i32 @neo2200_sync(%struct.fb_info*) #1

declare dso_local i32 @cfb_imageblit(%struct.fb_info*, %struct.fb_image*) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @memcpy_toio(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
