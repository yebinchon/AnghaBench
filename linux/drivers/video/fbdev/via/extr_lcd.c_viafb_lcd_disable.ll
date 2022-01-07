; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/via/extr_lcd.c_viafb_lcd_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/via/extr_lcd.c_viafb_lcd_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i64, %struct.TYPE_7__, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }

@viaparinfo = common dso_local global %struct.TYPE_6__* null, align 8
@UNICHROME_CLE266 = common dso_local global i64 0, align 8
@SR1E = common dso_local global i32 0, align 4
@VIASR = common dso_local global i32 0, align 4
@UNICHROME_CX700 = common dso_local global i64 0, align 8
@viafb_LCD2_ON = common dso_local global i64 0, align 8
@INTEGRATED_LVDS = common dso_local global i64 0, align 8
@VT1636_LVDS = common dso_local global i64 0, align 8
@SR3D = common dso_local global i32 0, align 4
@CR91 = common dso_local global i32 0, align 4
@VIACR = common dso_local global i32 0, align 4
@CR79 = common dso_local global i32 0, align 4
@CR6B = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @viafb_lcd_disable() #0 {
  %1 = load %struct.TYPE_6__*, %struct.TYPE_6__** @viaparinfo, align 8
  %2 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %3 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @UNICHROME_CLE266, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %13

8:                                                ; preds = %0
  %9 = call i32 (...) @lcd_powersequence_off()
  %10 = load i32, i32* @SR1E, align 4
  %11 = load i32, i32* @VIASR, align 4
  %12 = call i32 @viafb_write_reg_mask(i32 %10, i32 %11, i32 0, i32 48)
  br label %106

13:                                               ; preds = %0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** @viaparinfo, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @UNICHROME_CX700, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %79

21:                                               ; preds = %13
  %22 = load i64, i64* @viafb_LCD2_ON, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %42

24:                                               ; preds = %21
  %25 = load i64, i64* @INTEGRATED_LVDS, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** @viaparinfo, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %25, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %24
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** @viaparinfo, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** @viaparinfo, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 2
  %41 = call i32 @integrated_lvds_disable(i32 %36, %struct.TYPE_7__* %40)
  br label %42

42:                                               ; preds = %33, %24, %21
  %43 = load i64, i64* @INTEGRATED_LVDS, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** @viaparinfo, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %43, %49
  br i1 %50, label %51, label %60

51:                                               ; preds = %42
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** @viaparinfo, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** @viaparinfo, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = call i32 @integrated_lvds_disable(i32 %54, %struct.TYPE_7__* %58)
  br label %60

60:                                               ; preds = %51, %42
  %61 = load i64, i64* @VT1636_LVDS, align 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** @viaparinfo, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %61, %67
  br i1 %68, label %69, label %78

69:                                               ; preds = %60
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** @viaparinfo, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** @viaparinfo, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  %77 = call i32 @viafb_disable_lvds_vt1636(i32 %72, %struct.TYPE_7__* %76)
  br label %78

78:                                               ; preds = %69, %60
  br label %105

79:                                               ; preds = %13
  %80 = load i64, i64* @VT1636_LVDS, align 8
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** @viaparinfo, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp eq i64 %80, %86
  br i1 %87, label %88, label %97

88:                                               ; preds = %79
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** @viaparinfo, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** @viaparinfo, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 1
  %96 = call i32 @viafb_disable_lvds_vt1636(i32 %91, %struct.TYPE_7__* %95)
  br label %104

97:                                               ; preds = %79
  %98 = load i32, i32* @SR3D, align 4
  %99 = load i32, i32* @VIASR, align 4
  %100 = call i32 @viafb_write_reg_mask(i32 %98, i32 %99, i32 0, i32 32)
  %101 = load i32, i32* @CR91, align 4
  %102 = load i32, i32* @VIACR, align 4
  %103 = call i32 @viafb_write_reg_mask(i32 %101, i32 %102, i32 128, i32 128)
  br label %104

104:                                              ; preds = %97, %88
  br label %105

105:                                              ; preds = %104, %78
  br label %106

106:                                              ; preds = %105, %8
  %107 = load i32, i32* @CR79, align 4
  %108 = load i32, i32* @VIACR, align 4
  %109 = call i32 @viafb_write_reg_mask(i32 %107, i32 %108, i32 0, i32 1)
  %110 = load i32, i32* @CR6B, align 4
  %111 = load i32, i32* @VIACR, align 4
  %112 = call i32 @viafb_write_reg_mask(i32 %110, i32 %111, i32 0, i32 8)
  ret void
}

declare dso_local i32 @lcd_powersequence_off(...) #1

declare dso_local i32 @viafb_write_reg_mask(i32, i32, i32, i32) #1

declare dso_local i32 @integrated_lvds_disable(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @viafb_disable_lvds_vt1636(i32, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
