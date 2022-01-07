; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/console/extr_vgacon.c_vgacon_resize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/console/extr_vgacon.c_vgacon_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.vc_data = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@screen_info = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@vga_default_font_height = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@vga_is_gfx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vc_data*, i32, i32, i32)* @vgacon_resize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vgacon_resize(%struct.vc_data* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vc_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.vc_data* %0, %struct.vc_data** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %7, align 4
  %11 = urem i32 %10, 2
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %28, label %13

13:                                               ; preds = %4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @screen_info, i32 0, i32 0), align 4
  %16 = icmp ugt i32 %14, %15
  br i1 %16, label %28, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @screen_info, i32 0, i32 1), align 4
  %20 = load i32, i32* @vga_default_font_height, align 4
  %21 = mul i32 %19, %20
  %22 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %23 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = udiv i32 %21, %25
  %27 = icmp ugt i32 %18, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %17, %13, %4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  br label %35

32:                                               ; preds = %28
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  br label %35

35:                                               ; preds = %32, %31
  %36 = phi i32 [ 0, %31 ], [ %34, %32 ]
  store i32 %36, i32* %5, align 4
  br label %50

37:                                               ; preds = %17
  %38 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %39 = call i64 @con_is_visible(%struct.vc_data* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %37
  %42 = load i32, i32* @vga_is_gfx, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %41
  %45 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @vgacon_doresize(%struct.vc_data* %45, i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %44, %41, %37
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %49, %35
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i64 @con_is_visible(%struct.vc_data*) #1

declare dso_local i32 @vgacon_doresize(%struct.vc_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
