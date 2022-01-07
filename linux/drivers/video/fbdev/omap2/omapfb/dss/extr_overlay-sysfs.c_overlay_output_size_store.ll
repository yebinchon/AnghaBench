; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_overlay-sysfs.c_overlay_output_size_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_overlay-sysfs.c_overlay_output_size_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_overlay = type { i32 (%struct.omap_overlay*, %struct.omap_overlay_info*)*, %struct.TYPE_2__*, i32 (%struct.omap_overlay*, %struct.omap_overlay_info*)* }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*)* }
%struct.omap_overlay_info = type { i8*, i8* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_overlay*, i8*, i64)* @overlay_output_size_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @overlay_output_size_store(%struct.omap_overlay* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.omap_overlay*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.omap_overlay_info, align 8
  store %struct.omap_overlay* %0, %struct.omap_overlay** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.omap_overlay*, %struct.omap_overlay** %5, align 8
  %12 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %11, i32 0, i32 2
  %13 = load i32 (%struct.omap_overlay*, %struct.omap_overlay_info*)*, i32 (%struct.omap_overlay*, %struct.omap_overlay_info*)** %12, align 8
  %14 = load %struct.omap_overlay*, %struct.omap_overlay** %5, align 8
  %15 = call i32 %13(%struct.omap_overlay* %14, %struct.omap_overlay_info* %10)
  %16 = load i8*, i8** %6, align 8
  %17 = call i8* @simple_strtoul(i8* %16, i8** %9, i32 10)
  %18 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %10, i32 0, i32 1
  store i8* %17, i8** %18, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %20, i8** %9, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = ptrtoint i8* %21 to i64
  %24 = ptrtoint i8* %22 to i64
  %25 = sub i64 %23, %24
  %26 = load i64, i64* %7, align 8
  %27 = icmp uge i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %3
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %67

31:                                               ; preds = %3
  %32 = load i8*, i8** %9, align 8
  %33 = call i8* @simple_strtoul(i8* %32, i8** %9, i32 10)
  %34 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %10, i32 0, i32 0
  store i8* %33, i8** %34, align 8
  %35 = load %struct.omap_overlay*, %struct.omap_overlay** %5, align 8
  %36 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %35, i32 0, i32 0
  %37 = load i32 (%struct.omap_overlay*, %struct.omap_overlay_info*)*, i32 (%struct.omap_overlay*, %struct.omap_overlay_info*)** %36, align 8
  %38 = load %struct.omap_overlay*, %struct.omap_overlay** %5, align 8
  %39 = call i32 %37(%struct.omap_overlay* %38, %struct.omap_overlay_info* %10)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %31
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %4, align 4
  br label %67

44:                                               ; preds = %31
  %45 = load %struct.omap_overlay*, %struct.omap_overlay** %5, align 8
  %46 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = icmp ne %struct.TYPE_2__* %47, null
  br i1 %48, label %49, label %64

49:                                               ; preds = %44
  %50 = load %struct.omap_overlay*, %struct.omap_overlay** %5, align 8
  %51 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32 (%struct.TYPE_2__*)*, i32 (%struct.TYPE_2__*)** %53, align 8
  %55 = load %struct.omap_overlay*, %struct.omap_overlay** %5, align 8
  %56 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %55, i32 0, i32 1
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = call i32 %54(%struct.TYPE_2__* %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %49
  %62 = load i32, i32* %8, align 4
  store i32 %62, i32* %4, align 4
  br label %67

63:                                               ; preds = %49
  br label %64

64:                                               ; preds = %63, %44
  %65 = load i64, i64* %7, align 8
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %64, %61, %42, %28
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i8* @simple_strtoul(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
