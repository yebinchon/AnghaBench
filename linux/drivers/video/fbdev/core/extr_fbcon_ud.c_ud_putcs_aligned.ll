; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbcon_ud.c_ud_putcs_aligned.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbcon_ud.c_ud_putcs_aligned.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.fb_info = type { %struct.TYPE_4__*, %struct.fbcon_ops* }
%struct.TYPE_4__ = type { i32 (%struct.fb_info*, %struct.fb_image*)* }
%struct.fbcon_ops = type { i32* }
%struct.fb_image = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, %struct.fb_info*, i32*, i32, i32, i32, i32, i32, %struct.fb_image*, i32*, i32*)* @ud_putcs_aligned to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ud_putcs_aligned(%struct.vc_data* %0, %struct.fb_info* %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, %struct.fb_image* %8, i32* %9, i32* %10) #0 {
  %12 = alloca %struct.vc_data*, align 8
  %13 = alloca %struct.fb_info*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.fb_image*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca %struct.fbcon_ops*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32*, align 8
  store %struct.vc_data* %0, %struct.vc_data** %12, align 8
  store %struct.fb_info* %1, %struct.fb_info** %13, align 8
  store i32* %2, i32** %14, align 8
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store %struct.fb_image* %8, %struct.fb_image** %20, align 8
  store i32* %9, i32** %21, align 8
  store i32* %10, i32** %22, align 8
  %27 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %28 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %27, i32 0, i32 1
  %29 = load %struct.fbcon_ops*, %struct.fbcon_ops** %28, align 8
  store %struct.fbcon_ops* %29, %struct.fbcon_ops** %23, align 8
  %30 = load %struct.vc_data*, %struct.vc_data** %12, align 8
  %31 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 511, i32 255
  store i32 %35, i32* %24, align 4
  %36 = load %struct.vc_data*, %struct.vc_data** %12, align 8
  %37 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = ashr i32 %39, 3
  store i32 %40, i32* %25, align 4
  br label %41

41:                                               ; preds = %92, %11
  %42 = load i32, i32* %16, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %16, align 4
  %44 = icmp ne i32 %42, 0
  br i1 %44, label %45, label %97

45:                                               ; preds = %41
  %46 = load %struct.fbcon_ops*, %struct.fbcon_ops** %23, align 8
  %47 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32*, i32** %14, align 8
  %50 = getelementptr inbounds i32, i32* %49, i32 -1
  store i32* %50, i32** %14, align 8
  %51 = ptrtoint i32* %49 to i32
  %52 = call i32 @scr_readw(i32 %51)
  %53 = load i32, i32* %24, align 4
  %54 = and i32 %52, %53
  %55 = load i32, i32* %19, align 4
  %56 = mul nsw i32 %54, %55
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %48, i64 %57
  store i32* %58, i32** %26, align 8
  %59 = load i32, i32* %15, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %45
  %62 = load i32*, i32** %21, align 8
  %63 = load i32*, i32** %26, align 8
  %64 = load i32, i32* %15, align 4
  %65 = load %struct.vc_data*, %struct.vc_data** %12, align 8
  %66 = call i32 @ud_update_attr(i32* %62, i32* %63, i32 %64, %struct.vc_data* %65)
  %67 = load i32*, i32** %21, align 8
  store i32* %67, i32** %26, align 8
  br label %68

68:                                               ; preds = %61, %45
  %69 = load i32, i32* %25, align 4
  %70 = icmp eq i32 %69, 1
  %71 = zext i1 %70 to i32
  %72 = call i64 @likely(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %68
  %75 = load i32*, i32** %22, align 8
  %76 = load i32, i32* %17, align 4
  %77 = load i32*, i32** %26, align 8
  %78 = load i32, i32* %25, align 4
  %79 = load %struct.fb_image*, %struct.fb_image** %20, align 8
  %80 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @__fb_pad_aligned_buffer(i32* %75, i32 %76, i32* %77, i32 %78, i32 %81)
  br label %92

83:                                               ; preds = %68
  %84 = load i32*, i32** %22, align 8
  %85 = load i32, i32* %17, align 4
  %86 = load i32*, i32** %26, align 8
  %87 = load i32, i32* %25, align 4
  %88 = load %struct.fb_image*, %struct.fb_image** %20, align 8
  %89 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @fb_pad_aligned_buffer(i32* %84, i32 %85, i32* %86, i32 %87, i32 %90)
  br label %92

92:                                               ; preds = %83, %74
  %93 = load i32, i32* %18, align 4
  %94 = load i32*, i32** %22, align 8
  %95 = sext i32 %93 to i64
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  store i32* %96, i32** %22, align 8
  br label %41

97:                                               ; preds = %41
  %98 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %99 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %98, i32 0, i32 0
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i32 (%struct.fb_info*, %struct.fb_image*)*, i32 (%struct.fb_info*, %struct.fb_image*)** %101, align 8
  %103 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %104 = load %struct.fb_image*, %struct.fb_image** %20, align 8
  %105 = call i32 %102(%struct.fb_info* %103, %struct.fb_image* %104)
  ret void
}

declare dso_local i32 @scr_readw(i32) #1

declare dso_local i32 @ud_update_attr(i32*, i32*, i32, %struct.vc_data*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @__fb_pad_aligned_buffer(i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @fb_pad_aligned_buffer(i32*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
