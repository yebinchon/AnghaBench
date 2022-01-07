; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap/extr_omapfb_main.c_ctrl_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap/extr_omapfb_main.c_ctrl_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omapfb_device = type { %struct.TYPE_6__, i32, %struct.TYPE_4__*, %struct.lcd_panel* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8*, i32, i32 }
%struct.TYPE_4__ = type { i32 (%struct.omapfb_device*, i32, %struct.TYPE_6__*)* }
%struct.lcd_panel = type { i32 }

@def_vram_cnt = common dso_local global i32 0, align 4
@def_vram = common dso_local global i32* null, align 8
@def_vxres = common dso_local global i32 0, align 4
@def_vyres = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"controller initialization failed (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omapfb_device*)* @ctrl_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctrl_init(%struct.omapfb_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.omapfb_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.lcd_panel*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.omapfb_device* %0, %struct.omapfb_device** %3, align 8
  %9 = load i32, i32* @def_vram_cnt, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %39

11:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %31, %11
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @def_vram_cnt, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %34

16:                                               ; preds = %12
  %17 = load i32*, i32** @def_vram, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = call i8* @PAGE_ALIGN(i32 %21)
  %23 = load %struct.omapfb_device*, %struct.omapfb_device** %3, align 8
  %24 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  store i8* %22, i8** %30, align 8
  br label %31

31:                                               ; preds = %16
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %5, align 4
  br label %12

34:                                               ; preds = %12
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.omapfb_device*, %struct.omapfb_device** %3, align 8
  %37 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 8
  br label %39

39:                                               ; preds = %34, %1
  %40 = load %struct.omapfb_device*, %struct.omapfb_device** %3, align 8
  %41 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %73, label %45

45:                                               ; preds = %39
  %46 = load %struct.omapfb_device*, %struct.omapfb_device** %3, align 8
  %47 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %46, i32 0, i32 3
  %48 = load %struct.lcd_panel*, %struct.lcd_panel** %47, align 8
  store %struct.lcd_panel* %48, %struct.lcd_panel** %6, align 8
  %49 = load %struct.lcd_panel*, %struct.lcd_panel** %6, align 8
  %50 = getelementptr inbounds %struct.lcd_panel, %struct.lcd_panel* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp eq i32 %52, 12
  br i1 %53, label %54, label %55

54:                                               ; preds = %45
  store i32 16, i32* %8, align 4
  br label %55

55:                                               ; preds = %54, %45
  %56 = load i32, i32* @def_vxres, align 4
  %57 = load i32, i32* @def_vyres, align 4
  %58 = mul nsw i32 %56, %57
  %59 = load i32, i32* %8, align 4
  %60 = mul nsw i32 %58, %59
  %61 = sdiv i32 %60, 8
  store i32 %61, i32* %7, align 4
  %62 = load %struct.omapfb_device*, %struct.omapfb_device** %3, align 8
  %63 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  store i32 1, i32* %64, align 8
  %65 = load i32, i32* %7, align 4
  %66 = call i8* @PAGE_ALIGN(i32 %65)
  %67 = load %struct.omapfb_device*, %struct.omapfb_device** %3, align 8
  %68 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i64 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  store i8* %66, i8** %72, align 8
  br label %73

73:                                               ; preds = %55, %39
  %74 = load %struct.omapfb_device*, %struct.omapfb_device** %3, align 8
  %75 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %74, i32 0, i32 2
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32 (%struct.omapfb_device*, i32, %struct.TYPE_6__*)*, i32 (%struct.omapfb_device*, i32, %struct.TYPE_6__*)** %77, align 8
  %79 = load %struct.omapfb_device*, %struct.omapfb_device** %3, align 8
  %80 = load %struct.omapfb_device*, %struct.omapfb_device** %3, align 8
  %81 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %80, i32 0, i32 0
  %82 = call i32 %78(%struct.omapfb_device* %79, i32 0, %struct.TYPE_6__* %81)
  store i32 %82, i32* %4, align 4
  %83 = load i32, i32* %4, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %73
  %86 = load %struct.omapfb_device*, %struct.omapfb_device** %3, align 8
  %87 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %4, align 4
  %90 = call i32 @dev_err(i32 %88, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* %4, align 4
  store i32 %91, i32* %2, align 4
  br label %93

92:                                               ; preds = %73
  store i32 0, i32* %2, align 4
  br label %93

93:                                               ; preds = %92, %85
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i8* @PAGE_ALIGN(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
