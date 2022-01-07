; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_au1200fb.c_au1200_setpanel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_au1200fb.c_au1200_setpanel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32 }
%struct.panel_settings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.au1200fb_platdata = type { i32 (...)*, i32 (...)* }
%struct.clk = type { i32 }

@lcd = common dso_local global %struct.TYPE_10__* null, align 8
@LCD_SCREEN_SEN = common dso_local global i32 0, align 4
@LCD_INT_SS = common dso_local global i32 0, align 4
@LCD_INT_SD = common dso_local global i32 0, align 4
@panel = common dso_local global %struct.panel_settings* null, align 8
@.str = private unnamed_addr constant [18 x i8] c"Panel(%s), %dx%d\0A\00", align 1
@LCD_CLKCONTROL_EXT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"lcd_intclk\00", align 1
@win = common dso_local global %struct.TYPE_9__* null, align 8
@fbdev = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.panel_settings*, %struct.au1200fb_platdata*)* @au1200_setpanel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @au1200_setpanel(%struct.panel_settings* %0, %struct.au1200fb_platdata* %1) #0 {
  %3 = alloca %struct.panel_settings*, align 8
  %4 = alloca %struct.au1200fb_platdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.clk*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.panel_settings* %0, %struct.panel_settings** %3, align 8
  store %struct.au1200fb_platdata* %1, %struct.au1200fb_platdata** %4, align 8
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** @lcd, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %5, align 4
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** @lcd, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  store i32 0, i32* %13, align 8
  %14 = call i32 (...) @wmb()
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** @lcd, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @LCD_SCREEN_SEN, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %65

21:                                               ; preds = %2
  %22 = load i32, i32* @LCD_INT_SS, align 4
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** @lcd, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 8
  br label %25

25:                                               ; preds = %32, %21
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** @lcd, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @LCD_INT_SS, align 4
  %30 = and i32 %28, %29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %25

33:                                               ; preds = %25
  %34 = load i32, i32* @LCD_SCREEN_SEN, align 4
  %35 = xor i32 %34, -1
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** @lcd, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, %35
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %47, %33
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** @lcd, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** @lcd, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 8
  %46 = call i32 (...) @wmb()
  br label %47

47:                                               ; preds = %40
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** @lcd, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @LCD_INT_SD, align 4
  %52 = and i32 %50, %51
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %40, label %54

54:                                               ; preds = %47
  %55 = load %struct.au1200fb_platdata*, %struct.au1200fb_platdata** %4, align 8
  %56 = getelementptr inbounds %struct.au1200fb_platdata, %struct.au1200fb_platdata* %55, i32 0, i32 1
  %57 = load i32 (...)*, i32 (...)** %56, align 8
  %58 = icmp ne i32 (...)* %57, null
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load %struct.au1200fb_platdata*, %struct.au1200fb_platdata** %4, align 8
  %61 = getelementptr inbounds %struct.au1200fb_platdata, %struct.au1200fb_platdata* %60, i32 0, i32 1
  %62 = load i32 (...)*, i32 (...)** %61, align 8
  %63 = call i32 (...) %62()
  br label %64

64:                                               ; preds = %59, %54
  br label %65

65:                                               ; preds = %64, %2
  %66 = load %struct.panel_settings*, %struct.panel_settings** %3, align 8
  %67 = icmp eq %struct.panel_settings* %66, null
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  br label %215

69:                                               ; preds = %65
  %70 = load %struct.panel_settings*, %struct.panel_settings** %3, align 8
  store %struct.panel_settings* %70, %struct.panel_settings** @panel, align 8
  %71 = load %struct.panel_settings*, %struct.panel_settings** @panel, align 8
  %72 = getelementptr inbounds %struct.panel_settings, %struct.panel_settings* %71, i32 0, i32 11
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.panel_settings*, %struct.panel_settings** @panel, align 8
  %75 = getelementptr inbounds %struct.panel_settings, %struct.panel_settings* %74, i32 0, i32 10
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.panel_settings*, %struct.panel_settings** @panel, align 8
  %78 = getelementptr inbounds %struct.panel_settings, %struct.panel_settings* %77, i32 0, i32 9
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %73, i32 %76, i32 %79)
  %81 = load %struct.panel_settings*, %struct.panel_settings** @panel, align 8
  %82 = getelementptr inbounds %struct.panel_settings, %struct.panel_settings* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @LCD_CLKCONTROL_EXT, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %117, label %87

87:                                               ; preds = %69
  %88 = call %struct.clk* @clk_get(i32* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store %struct.clk* %88, %struct.clk** %6, align 8
  %89 = load %struct.panel_settings*, %struct.panel_settings** @panel, align 8
  %90 = getelementptr inbounds %struct.panel_settings, %struct.panel_settings* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = mul nsw i32 %91, 1000000
  %93 = sext i32 %92 to i64
  store i64 %93, i64* %8, align 8
  %94 = load %struct.clk*, %struct.clk** %6, align 8
  %95 = call i32 @IS_ERR(%struct.clk* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %116, label %97

97:                                               ; preds = %87
  %98 = load %struct.clk*, %struct.clk** %6, align 8
  %99 = load i64, i64* %8, align 8
  %100 = call i64 @clk_round_rate(%struct.clk* %98, i64 %99)
  store i64 %100, i64* %7, align 8
  %101 = load i64, i64* %8, align 8
  %102 = load i64, i64* %7, align 8
  %103 = sub nsw i64 %101, %102
  %104 = load i64, i64* %8, align 8
  %105 = sdiv i64 %104, 10
  %106 = icmp slt i64 %103, %105
  br i1 %106, label %107, label %113

107:                                              ; preds = %97
  %108 = load %struct.clk*, %struct.clk** %6, align 8
  %109 = load i64, i64* %7, align 8
  %110 = call i32 @clk_set_rate(%struct.clk* %108, i64 %109)
  %111 = load %struct.clk*, %struct.clk** %6, align 8
  %112 = call i32 @clk_prepare_enable(%struct.clk* %111)
  br label %113

113:                                              ; preds = %107, %97
  %114 = load %struct.clk*, %struct.clk** %6, align 8
  %115 = call i32 @clk_put(%struct.clk* %114)
  br label %116

116:                                              ; preds = %113, %87
  br label %117

117:                                              ; preds = %116, %69
  %118 = load %struct.panel_settings*, %struct.panel_settings** @panel, align 8
  %119 = getelementptr inbounds %struct.panel_settings, %struct.panel_settings* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** @lcd, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 4
  %123 = load %struct.panel_settings*, %struct.panel_settings** @panel, align 8
  %124 = getelementptr inbounds %struct.panel_settings, %struct.panel_settings* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** @lcd, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 3
  store i32 %125, i32* %127, align 4
  %128 = load %struct.panel_settings*, %struct.panel_settings** @panel, align 8
  %129 = getelementptr inbounds %struct.panel_settings, %struct.panel_settings* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** @lcd, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 4
  store i32 %130, i32* %132, align 8
  %133 = load %struct.panel_settings*, %struct.panel_settings** @panel, align 8
  %134 = getelementptr inbounds %struct.panel_settings, %struct.panel_settings* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** @lcd, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 5
  store i32 %135, i32* %137, align 4
  %138 = load %struct.panel_settings*, %struct.panel_settings** @panel, align 8
  %139 = getelementptr inbounds %struct.panel_settings, %struct.panel_settings* %138, i32 0, i32 5
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** @lcd, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 6
  store i32 %140, i32* %142, align 8
  %143 = load %struct.panel_settings*, %struct.panel_settings** @panel, align 8
  %144 = getelementptr inbounds %struct.panel_settings, %struct.panel_settings* %143, i32 0, i32 6
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** @lcd, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 7
  store i32 %145, i32* %147, align 4
  %148 = load %struct.panel_settings*, %struct.panel_settings** @panel, align 8
  %149 = getelementptr inbounds %struct.panel_settings, %struct.panel_settings* %148, i32 0, i32 7
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** @lcd, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 8
  store i32 %150, i32* %152, align 8
  %153 = load %struct.panel_settings*, %struct.panel_settings** @panel, align 8
  %154 = getelementptr inbounds %struct.panel_settings, %struct.panel_settings* %153, i32 0, i32 8
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** @lcd, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 9
  store i32 %155, i32* %157, align 4
  %158 = call i32 (...) @wmb()
  %159 = load i32, i32* %5, align 4
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** @lcd, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 0
  store i32 %159, i32* %161, align 8
  %162 = load i32, i32* @LCD_SCREEN_SEN, align 4
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** @lcd, align 8
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = or i32 %165, %162
  store i32 %166, i32* %164, align 4
  %167 = call i32 (...) @wmb()
  %168 = load %struct.au1200fb_platdata*, %struct.au1200fb_platdata** %4, align 8
  %169 = getelementptr inbounds %struct.au1200fb_platdata, %struct.au1200fb_platdata* %168, i32 0, i32 0
  %170 = load i32 (...)*, i32 (...)** %169, align 8
  %171 = icmp ne i32 (...)* %170, null
  br i1 %171, label %172, label %177

172:                                              ; preds = %117
  %173 = load %struct.au1200fb_platdata*, %struct.au1200fb_platdata** %4, align 8
  %174 = getelementptr inbounds %struct.au1200fb_platdata, %struct.au1200fb_platdata* %173, i32 0, i32 0
  %175 = load i32 (...)*, i32 (...)** %174, align 8
  %176 = call i32 (...) %175()
  br label %177

177:                                              ; preds = %172, %117
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** @lcd, align 8
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 10
  store i32 0, i32* %179, align 8
  %180 = load %struct.TYPE_10__*, %struct.TYPE_10__** @lcd, align 8
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 2
  store i32 -1, i32* %181, align 8
  %182 = load %struct.TYPE_9__*, %struct.TYPE_9__** @win, align 8
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** @lcd, align 8
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 11
  store i32 %184, i32* %186, align 4
  %187 = load %struct.TYPE_9__*, %struct.TYPE_9__** @win, align 8
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.TYPE_10__*, %struct.TYPE_10__** @lcd, align 8
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 12
  store i32 %189, i32* %191, align 8
  %192 = load %struct.TYPE_9__*, %struct.TYPE_9__** @win, align 8
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.TYPE_10__*, %struct.TYPE_10__** @lcd, align 8
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %195, i32 0, i32 13
  store i32 %194, i32* %196, align 4
  %197 = load %struct.TYPE_10__*, %struct.TYPE_10__** @lcd, align 8
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i32 0, i32 14
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 0
  store i32 0, i32* %199, align 8
  %200 = load %struct.TYPE_10__*, %struct.TYPE_10__** @lcd, align 8
  %201 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %200, i32 0, i32 14
  %202 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %201, i32 0, i32 1
  store i32 0, i32* %202, align 4
  %203 = load %struct.TYPE_10__*, %struct.TYPE_10__** @lcd, align 8
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i32 0, i32 14
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i32 0, i32 2
  store i32 0, i32* %205, align 8
  %206 = load %struct.TYPE_10__*, %struct.TYPE_10__** @lcd, align 8
  %207 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %206, i32 0, i32 14
  %208 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %207, i32 0, i32 3
  store i32 0, i32* %208, align 4
  %209 = load %struct.TYPE_10__*, %struct.TYPE_10__** @lcd, align 8
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %209, i32 0, i32 14
  %211 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %210, i32 0, i32 4
  store i32 0, i32* %211, align 8
  %212 = load %struct.TYPE_10__*, %struct.TYPE_10__** @lcd, align 8
  %213 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %212, i32 0, i32 14
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %213, i32 0, i32 5
  store i32 0, i32* %214, align 4
  br label %215

215:                                              ; preds = %177, %68
  ret void
}

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @printk(i8*, i32, i32, i32) #1

declare dso_local %struct.clk* @clk_get(i32*, i8*) #1

declare dso_local i32 @IS_ERR(%struct.clk*) #1

declare dso_local i64 @clk_round_rate(%struct.clk*, i64) #1

declare dso_local i32 @clk_set_rate(%struct.clk*, i64) #1

declare dso_local i32 @clk_prepare_enable(%struct.clk*) #1

declare dso_local i32 @clk_put(%struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
