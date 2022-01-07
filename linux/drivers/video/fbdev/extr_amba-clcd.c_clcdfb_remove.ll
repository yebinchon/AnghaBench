; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_amba-clcd.c_clcdfb_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_amba-clcd.c_clcdfb_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amba_device = type { i32 }
%struct.clcd_fb = type { %struct.TYPE_4__*, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_4__ = type { i32 (%struct.clcd_fb*)* }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amba_device*)* @clcdfb_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clcdfb_remove(%struct.amba_device* %0) #0 {
  %2 = alloca %struct.amba_device*, align 8
  %3 = alloca %struct.clcd_fb*, align 8
  store %struct.amba_device* %0, %struct.amba_device** %2, align 8
  %4 = load %struct.amba_device*, %struct.amba_device** %2, align 8
  %5 = call %struct.clcd_fb* @amba_get_drvdata(%struct.amba_device* %4)
  store %struct.clcd_fb* %5, %struct.clcd_fb** %3, align 8
  %6 = load %struct.clcd_fb*, %struct.clcd_fb** %3, align 8
  %7 = call i32 @clcdfb_disable(%struct.clcd_fb* %6)
  %8 = load %struct.clcd_fb*, %struct.clcd_fb** %3, align 8
  %9 = getelementptr inbounds %struct.clcd_fb, %struct.clcd_fb* %8, i32 0, i32 3
  %10 = call i32 @unregister_framebuffer(%struct.TYPE_5__* %9)
  %11 = load %struct.clcd_fb*, %struct.clcd_fb** %3, align 8
  %12 = getelementptr inbounds %struct.clcd_fb, %struct.clcd_fb* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.clcd_fb*, %struct.clcd_fb** %3, align 8
  %19 = getelementptr inbounds %struct.clcd_fb, %struct.clcd_fb* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = call i32 @fb_dealloc_cmap(%struct.TYPE_6__* %20)
  br label %22

22:                                               ; preds = %17, %1
  %23 = load %struct.clcd_fb*, %struct.clcd_fb** %3, align 8
  %24 = getelementptr inbounds %struct.clcd_fb, %struct.clcd_fb* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @iounmap(i32 %25)
  %27 = load %struct.clcd_fb*, %struct.clcd_fb** %3, align 8
  %28 = getelementptr inbounds %struct.clcd_fb, %struct.clcd_fb* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @clk_unprepare(i32 %29)
  %31 = load %struct.clcd_fb*, %struct.clcd_fb** %3, align 8
  %32 = getelementptr inbounds %struct.clcd_fb, %struct.clcd_fb* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @clk_put(i32 %33)
  %35 = load %struct.clcd_fb*, %struct.clcd_fb** %3, align 8
  %36 = getelementptr inbounds %struct.clcd_fb, %struct.clcd_fb* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32 (%struct.clcd_fb*)*, i32 (%struct.clcd_fb*)** %38, align 8
  %40 = load %struct.clcd_fb*, %struct.clcd_fb** %3, align 8
  %41 = call i32 %39(%struct.clcd_fb* %40)
  %42 = load %struct.clcd_fb*, %struct.clcd_fb** %3, align 8
  %43 = call i32 @kfree(%struct.clcd_fb* %42)
  %44 = load %struct.amba_device*, %struct.amba_device** %2, align 8
  %45 = call i32 @amba_release_regions(%struct.amba_device* %44)
  ret i32 0
}

declare dso_local %struct.clcd_fb* @amba_get_drvdata(%struct.amba_device*) #1

declare dso_local i32 @clcdfb_disable(%struct.clcd_fb*) #1

declare dso_local i32 @unregister_framebuffer(%struct.TYPE_5__*) #1

declare dso_local i32 @fb_dealloc_cmap(%struct.TYPE_6__*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @clk_unprepare(i32) #1

declare dso_local i32 @clk_put(i32) #1

declare dso_local i32 @kfree(%struct.clcd_fb*) #1

declare dso_local i32 @amba_release_regions(%struct.amba_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
