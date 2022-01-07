; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbcon_ud.c_ud_putcs_unaligned.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbcon_ud.c_ud_putcs_unaligned.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.fb_info = type { %struct.TYPE_4__*, %struct.fbcon_ops* }
%struct.TYPE_4__ = type { i32 (%struct.fb_info*, %struct.fb_image*)* }
%struct.fbcon_ops = type { i32* }
%struct.fb_image = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, %struct.fb_info*, i32*, i32, i32, i32, i32, i32, %struct.fb_image*, i32*, i32*)* @ud_putcs_unaligned to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ud_putcs_unaligned(%struct.vc_data* %0, %struct.fb_info* %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, %struct.fb_image* %8, i32* %9, i32* %10) #0 {
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
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32*, align 8
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
  %30 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %31 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %30, i32 0, i32 1
  %32 = load %struct.fbcon_ops*, %struct.fbcon_ops** %31, align 8
  store %struct.fbcon_ops* %32, %struct.fbcon_ops** %23, align 8
  %33 = load %struct.vc_data*, %struct.vc_data** %12, align 8
  %34 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 511, i32 255
  store i32 %38, i32* %24, align 4
  store i32 0, i32* %25, align 4
  %39 = load %struct.vc_data*, %struct.vc_data** %12, align 8
  %40 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = srem i32 %42, 8
  store i32 %43, i32* %26, align 4
  store i32 8, i32* %27, align 4
  %44 = load %struct.vc_data*, %struct.vc_data** %12, align 8
  %45 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = ashr i32 %47, 3
  store i32 %48, i32* %28, align 4
  br label %49

49:                                               ; preds = %98, %11
  %50 = load i32, i32* %16, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %16, align 4
  %52 = icmp ne i32 %50, 0
  br i1 %52, label %53, label %107

53:                                               ; preds = %49
  %54 = load %struct.fbcon_ops*, %struct.fbcon_ops** %23, align 8
  %55 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32*, i32** %14, align 8
  %58 = getelementptr inbounds i32, i32* %57, i32 -1
  store i32* %58, i32** %14, align 8
  %59 = ptrtoint i32* %57 to i32
  %60 = call i32 @scr_readw(i32 %59)
  %61 = load i32, i32* %24, align 4
  %62 = and i32 %60, %61
  %63 = load i32, i32* %19, align 4
  %64 = mul nsw i32 %62, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %56, i64 %65
  store i32* %66, i32** %29, align 8
  %67 = load i32, i32* %15, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %53
  %70 = load i32*, i32** %21, align 8
  %71 = load i32*, i32** %29, align 8
  %72 = load i32, i32* %15, align 4
  %73 = load %struct.vc_data*, %struct.vc_data** %12, align 8
  %74 = call i32 @ud_update_attr(i32* %70, i32* %71, i32 %72, %struct.vc_data* %73)
  %75 = load i32*, i32** %21, align 8
  store i32* %75, i32** %29, align 8
  br label %76

76:                                               ; preds = %69, %53
  %77 = load i32*, i32** %22, align 8
  %78 = load i32, i32* %17, align 4
  %79 = load i32*, i32** %29, align 8
  %80 = load i32, i32* %28, align 4
  %81 = load %struct.fb_image*, %struct.fb_image** %20, align 8
  %82 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %27, align 4
  %85 = load i32, i32* %25, align 4
  %86 = load i32, i32* %26, align 4
  %87 = call i32 @fb_pad_unaligned_buffer(i32* %77, i32 %78, i32* %79, i32 %80, i32 %83, i32 %84, i32 %85, i32 %86)
  %88 = load i32, i32* %26, align 4
  %89 = load i32, i32* %25, align 4
  %90 = add nsw i32 %89, %88
  store i32 %90, i32* %25, align 4
  %91 = load i32, i32* %25, align 4
  %92 = icmp sge i32 %91, 8
  br i1 %92, label %93, label %95

93:                                               ; preds = %76
  %94 = load i32, i32* %18, align 4
  br label %98

95:                                               ; preds = %76
  %96 = load i32, i32* %18, align 4
  %97 = sub nsw i32 %96, 1
  br label %98

98:                                               ; preds = %95, %93
  %99 = phi i32 [ %94, %93 ], [ %97, %95 ]
  %100 = load i32*, i32** %22, align 8
  %101 = sext i32 %99 to i64
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  store i32* %102, i32** %22, align 8
  %103 = load i32, i32* %25, align 4
  %104 = and i32 %103, 7
  store i32 %104, i32* %25, align 4
  %105 = load i32, i32* %25, align 4
  %106 = sub nsw i32 8, %105
  store i32 %106, i32* %27, align 4
  br label %49

107:                                              ; preds = %49
  %108 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %109 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %108, i32 0, i32 0
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i32 (%struct.fb_info*, %struct.fb_image*)*, i32 (%struct.fb_info*, %struct.fb_image*)** %111, align 8
  %113 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %114 = load %struct.fb_image*, %struct.fb_image** %20, align 8
  %115 = call i32 %112(%struct.fb_info* %113, %struct.fb_image* %114)
  ret void
}

declare dso_local i32 @scr_readw(i32) #1

declare dso_local i32 @ud_update_attr(i32*, i32*, i32, %struct.vc_data*) #1

declare dso_local i32 @fb_pad_unaligned_buffer(i32*, i32, i32*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
