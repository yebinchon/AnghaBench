; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/via/extr_dvi.c_viafb_dvi_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/via/extr_dvi.c_viafb_dvi_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }

@viaparinfo = common dso_local global %struct.TYPE_8__* null, align 8
@CR6B = common dso_local global i32 0, align 4
@VIACR = common dso_local global i32 0, align 4
@BIT0 = common dso_local global i32 0, align 4
@CR6C = common dso_local global i32 0, align 4
@BIT5 = common dso_local global i32 0, align 4
@UNICHROME_CLE266 = common dso_local global i32 0, align 4
@CR93 = common dso_local global i32 0, align 4
@viafb_platform_epia_dvi = common dso_local global i32 0, align 4
@CR91 = common dso_local global i32 0, align 4
@CR88 = common dso_local global i32 0, align 4
@BIT6 = common dso_local global i32 0, align 4
@viafb_bus_width = common dso_local global i32 0, align 4
@viafb_device_lcd_dualedge = common dso_local global i32 0, align 4
@CR97 = common dso_local global i32 0, align 4
@BIT7 = common dso_local global i32 0, align 4
@CRD2 = common dso_local global i32 0, align 4
@BIT3 = common dso_local global i32 0, align 4
@IGA2 = common dso_local global i64 0, align 8
@CR79 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @viafb_dvi_enable() #0 {
  %1 = alloca i32, align 4
  %2 = load %struct.TYPE_8__*, %struct.TYPE_8__** @viaparinfo, align 8
  %3 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 1
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %135 [
    i32 130, label %8
    i32 129, label %33
    i32 132, label %98
    i32 131, label %113
    i32 128, label %126
  ]

8:                                                ; preds = %0
  %9 = load i32, i32* @CR6B, align 4
  %10 = load i32, i32* @VIACR, align 4
  %11 = load i32, i32* @BIT0, align 4
  %12 = call i32 @viafb_write_reg_mask(i32 %9, i32 %10, i32 1, i32 %11)
  %13 = load i32, i32* @CR6C, align 4
  %14 = load i32, i32* @VIACR, align 4
  %15 = load i32, i32* @BIT0, align 4
  %16 = load i32, i32* @BIT5, align 4
  %17 = add nsw i32 %15, %16
  %18 = call i32 @viafb_write_reg_mask(i32 %13, i32 %14, i32 33, i32 %17)
  %19 = call i32 (...) @dvi_patch_skew_dvp0()
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** @viaparinfo, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @UNICHROME_CLE266, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %8
  %28 = call i32 @tmds_register_write(i32 136, i32 59)
  br label %32

29:                                               ; preds = %8
  %30 = load i32, i32* @VIACR, align 4
  %31 = call i32 @via_write_reg_mask(i32 %30, i32 145, i32 0, i32 32)
  br label %32

32:                                               ; preds = %29, %27
  br label %135

33:                                               ; preds = %0
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** @viaparinfo, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @UNICHROME_CLE266, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %33
  %42 = load i32, i32* @CR93, align 4
  %43 = load i32, i32* @VIACR, align 4
  %44 = load i32, i32* @BIT0, align 4
  %45 = load i32, i32* @BIT5, align 4
  %46 = add nsw i32 %44, %45
  %47 = call i32 @viafb_write_reg_mask(i32 %42, i32 %43, i32 33, i32 %46)
  br label %48

48:                                               ; preds = %41, %33
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** @viaparinfo, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @UNICHROME_CLE266, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %48
  %57 = call i32 @tmds_register_write(i32 136, i32 59)
  br label %61

58:                                               ; preds = %48
  %59 = load i32, i32* @VIACR, align 4
  %60 = call i32 @via_write_reg_mask(i32 %59, i32 145, i32 0, i32 32)
  br label %61

61:                                               ; preds = %58, %56
  %62 = load i32, i32* @viafb_platform_epia_dvi, align 4
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %64, label %97

64:                                               ; preds = %61
  %65 = load i32, i32* @CR91, align 4
  %66 = load i32, i32* @VIACR, align 4
  %67 = call i32 @viafb_write_reg_mask(i32 %65, i32 %66, i32 31, i32 31)
  %68 = load i32, i32* @CR88, align 4
  %69 = load i32, i32* @VIACR, align 4
  %70 = load i32, i32* @BIT6, align 4
  %71 = load i32, i32* @BIT0, align 4
  %72 = add nsw i32 %70, %71
  %73 = call i32 @viafb_write_reg_mask(i32 %68, i32 %69, i32 0, i32 %72)
  %74 = load i32, i32* @viafb_bus_width, align 4
  %75 = icmp eq i32 %74, 24
  br i1 %75, label %76, label %96

76:                                               ; preds = %64
  %77 = load i32, i32* @viafb_device_lcd_dualedge, align 4
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  store i32 63, i32* %1, align 4
  br label %81

80:                                               ; preds = %76
  store i32 55, i32* %1, align 4
  br label %81

81:                                               ; preds = %80, %79
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** @viaparinfo, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** @viaparinfo, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %1, align 4
  %95 = call i32 @viafb_i2c_writebyte(i32 %87, i32 %93, i32 8, i32 %94)
  br label %96

96:                                               ; preds = %81, %64
  br label %97

97:                                               ; preds = %96, %61
  br label %135

98:                                               ; preds = %0
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** @viaparinfo, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @UNICHROME_CLE266, align 4
  %105 = icmp ne i32 %103, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %98
  %107 = load i32, i32* @VIACR, align 4
  %108 = load i32, i32* @CR97, align 4
  %109 = call i32 @via_write_reg_mask(i32 %107, i32 %108, i32 3, i32 3)
  br label %110

110:                                              ; preds = %106, %98
  %111 = load i32, i32* @VIACR, align 4
  %112 = call i32 @via_write_reg_mask(i32 %111, i32 145, i32 0, i32 32)
  br label %135

113:                                              ; preds = %0
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** @viaparinfo, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @UNICHROME_CLE266, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %113
  br label %135

122:                                              ; preds = %113
  %123 = call i32 (...) @dvi_patch_skew_dvp_low()
  %124 = load i32, i32* @VIACR, align 4
  %125 = call i32 @via_write_reg_mask(i32 %124, i32 145, i32 0, i32 32)
  br label %135

126:                                              ; preds = %0
  %127 = load i32, i32* @CR91, align 4
  %128 = load i32, i32* @VIACR, align 4
  %129 = load i32, i32* @BIT7, align 4
  %130 = call i32 @viafb_write_reg_mask(i32 %127, i32 %128, i32 0, i32 %129)
  %131 = load i32, i32* @CRD2, align 4
  %132 = load i32, i32* @VIACR, align 4
  %133 = load i32, i32* @BIT3, align 4
  %134 = call i32 @viafb_write_reg_mask(i32 %131, i32 %132, i32 0, i32 %133)
  br label %135

135:                                              ; preds = %0, %126, %122, %121, %110, %97, %32
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** @viaparinfo, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @IGA2, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %148

143:                                              ; preds = %135
  %144 = load i32, i32* @CR79, align 4
  %145 = load i32, i32* @VIACR, align 4
  %146 = load i32, i32* @BIT0, align 4
  %147 = call i32 @viafb_write_reg_mask(i32 %144, i32 %145, i32 0, i32 %146)
  br label %148

148:                                              ; preds = %143, %135
  ret void
}

declare dso_local i32 @viafb_write_reg_mask(i32, i32, i32, i32) #1

declare dso_local i32 @dvi_patch_skew_dvp0(...) #1

declare dso_local i32 @tmds_register_write(i32, i32) #1

declare dso_local i32 @via_write_reg_mask(i32, i32, i32, i32) #1

declare dso_local i32 @viafb_i2c_writebyte(i32, i32, i32, i32) #1

declare dso_local i32 @dvi_patch_skew_dvp_low(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
