; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/via/extr_lcd.c_viafb_lcd_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/via/extr_lcd.c_viafb_lcd_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.TYPE_9__*, %struct.TYPE_9__* }
%struct.TYPE_7__ = type { i64, %struct.TYPE_10__, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_9__ = type { i32 }

@CR6B = common dso_local global i32 0, align 4
@VIACR = common dso_local global i32 0, align 4
@BIT3 = common dso_local global i32 0, align 4
@CR6A = common dso_local global i32 0, align 4
@viaparinfo = common dso_local global %struct.TYPE_8__* null, align 8
@viafb_LCD2_ON = common dso_local global i64 0, align 8
@UNICHROME_CLE266 = common dso_local global i64 0, align 8
@SR1E = common dso_local global i32 0, align 4
@VIASR = common dso_local global i32 0, align 4
@UNICHROME_CX700 = common dso_local global i64 0, align 8
@INTEGRATED_LVDS = common dso_local global i64 0, align 8
@VT1636_LVDS = common dso_local global i64 0, align 8
@SR3D = common dso_local global i32 0, align 4
@CR91 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @viafb_lcd_enable() #0 {
  %1 = load i32, i32* @CR6B, align 4
  %2 = load i32, i32* @VIACR, align 4
  %3 = load i32, i32* @BIT3, align 4
  %4 = call i32 @viafb_write_reg_mask(i32 %1, i32 %2, i32 0, i32 %3)
  %5 = load i32, i32* @CR6A, align 4
  %6 = load i32, i32* @VIACR, align 4
  %7 = load i32, i32* @BIT3, align 4
  %8 = call i32 @viafb_write_reg_mask(i32 %5, i32 %6, i32 8, i32 %7)
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** @viaparinfo, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** @viaparinfo, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @set_lcd_output_path(i32 %13, i32 %19)
  %21 = load i64, i64* @viafb_LCD2_ON, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %0
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** @viaparinfo, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** @viaparinfo, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @set_lcd_output_path(i32 %28, i32 %34)
  br label %36

36:                                               ; preds = %23, %0
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** @viaparinfo, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @UNICHROME_CLE266, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %36
  %45 = load i32, i32* @SR1E, align 4
  %46 = load i32, i32* @VIASR, align 4
  %47 = call i32 @viafb_write_reg_mask(i32 %45, i32 %46, i32 48, i32 48)
  %48 = call i32 (...) @lcd_powersequence_on()
  br label %145

49:                                               ; preds = %36
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** @viaparinfo, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @UNICHROME_CX700, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %115

57:                                               ; preds = %49
  %58 = load i64, i64* @viafb_LCD2_ON, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %78

60:                                               ; preds = %57
  %61 = load i64, i64* @INTEGRATED_LVDS, align 8
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** @viaparinfo, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %61, %67
  br i1 %68, label %69, label %78

69:                                               ; preds = %60
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** @viaparinfo, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 2
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %71, align 8
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** @viaparinfo, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 2
  %77 = call i32 @integrated_lvds_enable(%struct.TYPE_9__* %72, %struct.TYPE_10__* %76)
  br label %78

78:                                               ; preds = %69, %60, %57
  %79 = load i64, i64* @INTEGRATED_LVDS, align 8
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** @viaparinfo, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp eq i64 %79, %85
  br i1 %86, label %87, label %96

87:                                               ; preds = %78
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** @viaparinfo, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %89, align 8
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** @viaparinfo, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 1
  %95 = call i32 @integrated_lvds_enable(%struct.TYPE_9__* %90, %struct.TYPE_10__* %94)
  br label %96

96:                                               ; preds = %87, %78
  %97 = load i64, i64* @VT1636_LVDS, align 8
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** @viaparinfo, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp eq i64 %97, %103
  br i1 %104, label %105, label %114

105:                                              ; preds = %96
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** @viaparinfo, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %107, align 8
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** @viaparinfo, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 1
  %113 = call i32 @viafb_enable_lvds_vt1636(%struct.TYPE_9__* %108, %struct.TYPE_10__* %112)
  br label %114

114:                                              ; preds = %105, %96
  br label %144

115:                                              ; preds = %49
  %116 = load i64, i64* @VT1636_LVDS, align 8
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** @viaparinfo, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp eq i64 %116, %122
  br i1 %123, label %124, label %133

124:                                              ; preds = %115
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** @viaparinfo, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %126, align 8
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** @viaparinfo, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 1
  %132 = call i32 @viafb_enable_lvds_vt1636(%struct.TYPE_9__* %127, %struct.TYPE_10__* %131)
  br label %143

133:                                              ; preds = %115
  %134 = load i32, i32* @SR3D, align 4
  %135 = load i32, i32* @VIASR, align 4
  %136 = call i32 @viafb_write_reg_mask(i32 %134, i32 %135, i32 32, i32 32)
  %137 = load i32, i32* @CR91, align 4
  %138 = load i32, i32* @VIACR, align 4
  %139 = call i32 @viafb_write_reg_mask(i32 %137, i32 %138, i32 0, i32 128)
  %140 = load i32, i32* @CR6A, align 4
  %141 = load i32, i32* @VIACR, align 4
  %142 = call i32 @viafb_write_reg_mask(i32 %140, i32 %141, i32 72, i32 72)
  br label %143

143:                                              ; preds = %133, %124
  br label %144

144:                                              ; preds = %143, %114
  br label %145

145:                                              ; preds = %144, %44
  ret void
}

declare dso_local i32 @viafb_write_reg_mask(i32, i32, i32, i32) #1

declare dso_local i32 @set_lcd_output_path(i32, i32) #1

declare dso_local i32 @lcd_powersequence_on(...) #1

declare dso_local i32 @integrated_lvds_enable(%struct.TYPE_9__*, %struct.TYPE_10__*) #1

declare dso_local i32 @viafb_enable_lvds_vt1636(%struct.TYPE_9__*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
