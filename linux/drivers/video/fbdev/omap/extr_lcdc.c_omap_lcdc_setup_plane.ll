; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap/extr_lcdc.c_omap_lcdc_setup_plane.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap/extr_lcdc.c_omap_lcdc_setup_plane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32, i32, i32, i32, i32, i32, i64, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, %struct.lcd_panel*, %struct.TYPE_4__** }
%struct.lcd_panel = type { i32, i32 }
%struct.TYPE_4__ = type { %struct.fb_var_screeninfo }
%struct.fb_var_screeninfo = type { i64 }

@lcdc = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"invalid color mode %d\0A\00", align 1
@OMAPFB_AUTO_UPDATE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i64, i32, i32, i32, i32, i32, i32)* @omap_lcdc_setup_plane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_lcdc_setup_plane(i32 %0, i32 %1, i64 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.fb_var_screeninfo*, align 8
  %21 = alloca %struct.lcd_panel*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32 %0, i32* %11, align 4
  store i32 %1, i32* %12, align 4
  store i64 %2, i64* %13, align 8
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @lcdc, i32 0, i32 10), align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %26, i64 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store %struct.fb_var_screeninfo* %29, %struct.fb_var_screeninfo** %20, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @lcdc, i32 0, i32 10), align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load %struct.lcd_panel*, %struct.lcd_panel** %31, align 8
  store %struct.lcd_panel* %32, %struct.lcd_panel** %21, align 8
  %33 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %20, align 8
  %34 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %9
  %38 = load %struct.lcd_panel*, %struct.lcd_panel** %21, align 8
  %39 = getelementptr inbounds %struct.lcd_panel, %struct.lcd_panel* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %22, align 4
  %41 = load %struct.lcd_panel*, %struct.lcd_panel** %21, align 8
  %42 = getelementptr inbounds %struct.lcd_panel, %struct.lcd_panel* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %23, align 4
  br label %51

44:                                               ; preds = %9
  %45 = load %struct.lcd_panel*, %struct.lcd_panel** %21, align 8
  %46 = getelementptr inbounds %struct.lcd_panel, %struct.lcd_panel* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %22, align 4
  %48 = load %struct.lcd_panel*, %struct.lcd_panel** %21, align 8
  %49 = getelementptr inbounds %struct.lcd_panel, %struct.lcd_panel* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %23, align 4
  br label %51

51:                                               ; preds = %44, %37
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %71, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* %12, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %71, label %57

57:                                               ; preds = %54
  %58 = load i32, i32* %15, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %71, label %60

60:                                               ; preds = %57
  %61 = load i32, i32* %16, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %71, label %63

63:                                               ; preds = %60
  %64 = load i32, i32* %17, align 4
  %65 = load i32, i32* %22, align 4
  %66 = icmp sgt i32 %64, %65
  br i1 %66, label %71, label %67

67:                                               ; preds = %63
  %68 = load i32, i32* %18, align 4
  %69 = load i32, i32* %23, align 4
  %70 = icmp sgt i32 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %67, %63, %60, %57, %54, %51
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %10, align 4
  br label %116

74:                                               ; preds = %67
  %75 = load i64, i64* %13, align 8
  store i64 %75, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @lcdc, i32 0, i32 0), align 8
  %76 = load i32, i32* %17, align 4
  store i32 %76, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @lcdc, i32 0, i32 1), align 8
  %77 = load i32, i32* %18, align 4
  store i32 %77, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @lcdc, i32 0, i32 2), align 4
  %78 = load i32, i32* %14, align 4
  store i32 %78, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @lcdc, i32 0, i32 3), align 8
  %79 = load i32, i32* %19, align 4
  store i32 %79, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @lcdc, i32 0, i32 4), align 4
  %80 = load i32, i32* %19, align 4
  switch i32 %80, label %94 [
    i32 132, label %81
    i32 130, label %82
    i32 131, label %83
    i32 129, label %84
    i32 128, label %89
  ]

81:                                               ; preds = %74
  store i32 8, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @lcdc, i32 0, i32 5), align 8
  store i32 12288, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @lcdc, i32 0, i32 6), align 4
  store i32 512, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @lcdc, i32 0, i32 7), align 8
  br label %101

82:                                               ; preds = %74
  store i32 16, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @lcdc, i32 0, i32 5), align 8
  store i32 16384, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @lcdc, i32 0, i32 6), align 4
  store i32 32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @lcdc, i32 0, i32 7), align 8
  br label %101

83:                                               ; preds = %74
  store i32 16, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @lcdc, i32 0, i32 5), align 8
  store i32 16384, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @lcdc, i32 0, i32 6), align 4
  store i32 32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @lcdc, i32 0, i32 7), align 8
  br label %101

84:                                               ; preds = %74
  %85 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @lcdc, i32 0, i32 9), align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %84
  store i32 12, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @lcdc, i32 0, i32 5), align 8
  br label %101

88:                                               ; preds = %84
  br label %89

89:                                               ; preds = %74, %88
  %90 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @lcdc, i32 0, i32 9), align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  store i32 16, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @lcdc, i32 0, i32 5), align 8
  br label %101

93:                                               ; preds = %89
  br label %94

94:                                               ; preds = %74, %93
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @lcdc, i32 0, i32 10), align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* %19, align 4
  %99 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %97, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %98)
  %100 = call i32 (...) @BUG()
  store i32 -1, i32* %10, align 4
  br label %116

101:                                              ; preds = %92, %87, %83, %82, %81
  %102 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @lcdc, i32 0, i32 9), align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %101
  %105 = call i32 (...) @setup_lcd_dma()
  store i32 0, i32* %10, align 4
  br label %116

106:                                              ; preds = %101
  %107 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @lcdc, i32 0, i32 8), align 8
  %108 = load i64, i64* @OMAPFB_AUTO_UPDATE, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %115

110:                                              ; preds = %106
  %111 = call i32 (...) @disable_controller()
  %112 = call i32 (...) @omap_stop_lcd_dma()
  %113 = call i32 (...) @setup_lcd_dma()
  %114 = call i32 (...) @enable_controller()
  br label %115

115:                                              ; preds = %110, %106
  store i32 0, i32* %10, align 4
  br label %116

116:                                              ; preds = %115, %104, %94, %71
  %117 = load i32, i32* %10, align 4
  ret i32 %117
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, ...) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @setup_lcd_dma(...) #1

declare dso_local i32 @disable_controller(...) #1

declare dso_local i32 @omap_stop_lcd_dma(...) #1

declare dso_local i32 @enable_controller(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
