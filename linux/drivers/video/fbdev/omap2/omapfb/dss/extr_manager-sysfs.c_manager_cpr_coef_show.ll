; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_manager-sysfs.c_manager_cpr_coef_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_manager-sysfs.c_manager_cpr_coef_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_overlay_manager = type { i32 (%struct.omap_overlay_manager*, %struct.omap_overlay_manager_info*)* }
%struct.omap_overlay_manager_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"%d %d %d %d %d %d %d %d %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_overlay_manager*, i8*)* @manager_cpr_coef_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @manager_cpr_coef_show(%struct.omap_overlay_manager* %0, i8* %1) #0 {
  %3 = alloca %struct.omap_overlay_manager*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.omap_overlay_manager_info, align 4
  store %struct.omap_overlay_manager* %0, %struct.omap_overlay_manager** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %3, align 8
  %7 = getelementptr inbounds %struct.omap_overlay_manager, %struct.omap_overlay_manager* %6, i32 0, i32 0
  %8 = load i32 (%struct.omap_overlay_manager*, %struct.omap_overlay_manager_info*)*, i32 (%struct.omap_overlay_manager*, %struct.omap_overlay_manager_info*)** %7, align 8
  %9 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %3, align 8
  %10 = call i32 %8(%struct.omap_overlay_manager* %9, %struct.omap_overlay_manager_info* %5)
  %11 = load i8*, i8** %4, align 8
  %12 = load i32, i32* @PAGE_SIZE, align 4
  %13 = getelementptr inbounds %struct.omap_overlay_manager_info, %struct.omap_overlay_manager_info* %5, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.omap_overlay_manager_info, %struct.omap_overlay_manager_info* %5, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.omap_overlay_manager_info, %struct.omap_overlay_manager_info* %5, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.omap_overlay_manager_info, %struct.omap_overlay_manager_info* %5, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.omap_overlay_manager_info, %struct.omap_overlay_manager_info* %5, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.omap_overlay_manager_info, %struct.omap_overlay_manager_info* %5, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.omap_overlay_manager_info, %struct.omap_overlay_manager_info* %5, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 6
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.omap_overlay_manager_info, %struct.omap_overlay_manager_info* %5, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 7
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.omap_overlay_manager_info, %struct.omap_overlay_manager_info* %5, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 8
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @snprintf(i8* %11, i32 %12, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %18, i32 %21, i32 %24, i32 %27, i32 %30, i32 %33, i32 %36, i32 %39)
  ret i32 %40
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
