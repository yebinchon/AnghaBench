; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_au1200fb.c_get_window.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_au1200fb.c_get_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.au1200_lcd_window_regs_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@lcd = common dso_local global %struct.TYPE_4__* null, align 8
@LCD_WINCTRL0_OX = common dso_local global i32 0, align 4
@LCD_WINCTRL0_OY = common dso_local global i32 0, align 4
@LCD_WINCTRL0_A = common dso_local global i32 0, align 4
@LCD_WINCTRL0_AEN = common dso_local global i32 0, align 4
@LCD_WINCTRL1_PRI = common dso_local global i32 0, align 4
@LCD_WINCTRL1_PIPE = common dso_local global i32 0, align 4
@LCD_WINCTRL1_FRM = common dso_local global i32 0, align 4
@LCD_WINCTRL1_CCO = common dso_local global i32 0, align 4
@LCD_WINCTRL1_PO = common dso_local global i32 0, align 4
@LCD_WINCTRL1_SZX = common dso_local global i32 0, align 4
@LCD_WINCTRL1_SZY = common dso_local global i32 0, align 4
@LCD_WINCTRL2_CKMODE = common dso_local global i32 0, align 4
@LCD_WINCTRL2_DBM = common dso_local global i32 0, align 4
@LCD_WINCTRL2_RAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.au1200_lcd_window_regs_t*)* @get_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_window(i32 %0, %struct.au1200_lcd_window_regs_t* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.au1200_lcd_window_regs_t*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.au1200_lcd_window_regs_t* %1, %struct.au1200_lcd_window_regs_t** %4, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lcd, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = load i32, i32* %3, align 4
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i64 %9
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @LCD_WINCTRL0_OX, align 4
  %14 = and i32 %12, %13
  %15 = ashr i32 %14, 21
  %16 = load %struct.au1200_lcd_window_regs_t*, %struct.au1200_lcd_window_regs_t** %4, align 8
  %17 = getelementptr inbounds %struct.au1200_lcd_window_regs_t, %struct.au1200_lcd_window_regs_t* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lcd, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @LCD_WINCTRL0_OY, align 4
  %27 = and i32 %25, %26
  %28 = ashr i32 %27, 10
  %29 = load %struct.au1200_lcd_window_regs_t*, %struct.au1200_lcd_window_regs_t** %4, align 8
  %30 = getelementptr inbounds %struct.au1200_lcd_window_regs_t, %struct.au1200_lcd_window_regs_t* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lcd, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = load i32, i32* %3, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @LCD_WINCTRL0_A, align 4
  %40 = and i32 %38, %39
  %41 = ashr i32 %40, 2
  %42 = load %struct.au1200_lcd_window_regs_t*, %struct.au1200_lcd_window_regs_t** %4, align 8
  %43 = getelementptr inbounds %struct.au1200_lcd_window_regs_t, %struct.au1200_lcd_window_regs_t* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lcd, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = load i32, i32* %3, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @LCD_WINCTRL0_AEN, align 4
  %53 = and i32 %51, %52
  %54 = ashr i32 %53, 1
  %55 = load %struct.au1200_lcd_window_regs_t*, %struct.au1200_lcd_window_regs_t** %4, align 8
  %56 = getelementptr inbounds %struct.au1200_lcd_window_regs_t, %struct.au1200_lcd_window_regs_t* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 4
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lcd, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = load i32, i32* %3, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @LCD_WINCTRL1_PRI, align 4
  %66 = and i32 %64, %65
  %67 = ashr i32 %66, 30
  %68 = load %struct.au1200_lcd_window_regs_t*, %struct.au1200_lcd_window_regs_t** %4, align 8
  %69 = getelementptr inbounds %struct.au1200_lcd_window_regs_t, %struct.au1200_lcd_window_regs_t* %68, i32 0, i32 4
  store i32 %67, i32* %69, align 4
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lcd, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = load i32, i32* %3, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @LCD_WINCTRL1_PIPE, align 4
  %79 = and i32 %77, %78
  %80 = ashr i32 %79, 29
  %81 = load %struct.au1200_lcd_window_regs_t*, %struct.au1200_lcd_window_regs_t** %4, align 8
  %82 = getelementptr inbounds %struct.au1200_lcd_window_regs_t, %struct.au1200_lcd_window_regs_t* %81, i32 0, i32 5
  store i32 %80, i32* %82, align 4
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lcd, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = load i32, i32* %3, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @LCD_WINCTRL1_FRM, align 4
  %92 = and i32 %90, %91
  %93 = ashr i32 %92, 25
  %94 = load %struct.au1200_lcd_window_regs_t*, %struct.au1200_lcd_window_regs_t** %4, align 8
  %95 = getelementptr inbounds %struct.au1200_lcd_window_regs_t, %struct.au1200_lcd_window_regs_t* %94, i32 0, i32 6
  store i32 %93, i32* %95, align 4
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lcd, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = load i32, i32* %3, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @LCD_WINCTRL1_CCO, align 4
  %105 = and i32 %103, %104
  %106 = ashr i32 %105, 24
  %107 = load %struct.au1200_lcd_window_regs_t*, %struct.au1200_lcd_window_regs_t** %4, align 8
  %108 = getelementptr inbounds %struct.au1200_lcd_window_regs_t, %struct.au1200_lcd_window_regs_t* %107, i32 0, i32 7
  store i32 %106, i32* %108, align 4
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lcd, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %110, align 8
  %112 = load i32, i32* %3, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @LCD_WINCTRL1_PO, align 4
  %118 = and i32 %116, %117
  %119 = ashr i32 %118, 22
  %120 = load %struct.au1200_lcd_window_regs_t*, %struct.au1200_lcd_window_regs_t** %4, align 8
  %121 = getelementptr inbounds %struct.au1200_lcd_window_regs_t, %struct.au1200_lcd_window_regs_t* %120, i32 0, i32 8
  store i32 %119, i32* %121, align 4
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lcd, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 1
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %123, align 8
  %125 = load i32, i32* %3, align 4
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @LCD_WINCTRL1_SZX, align 4
  %131 = and i32 %129, %130
  %132 = ashr i32 %131, 11
  %133 = add nsw i32 %132, 1
  %134 = load %struct.au1200_lcd_window_regs_t*, %struct.au1200_lcd_window_regs_t** %4, align 8
  %135 = getelementptr inbounds %struct.au1200_lcd_window_regs_t, %struct.au1200_lcd_window_regs_t* %134, i32 0, i32 9
  store i32 %133, i32* %135, align 4
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lcd, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 1
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %137, align 8
  %139 = load i32, i32* %3, align 4
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @LCD_WINCTRL1_SZY, align 4
  %145 = and i32 %143, %144
  %146 = add nsw i32 %145, 1
  %147 = load %struct.au1200_lcd_window_regs_t*, %struct.au1200_lcd_window_regs_t** %4, align 8
  %148 = getelementptr inbounds %struct.au1200_lcd_window_regs_t, %struct.au1200_lcd_window_regs_t* %147, i32 0, i32 10
  store i32 %146, i32* %148, align 4
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lcd, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 1
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %150, align 8
  %152 = load i32, i32* %3, align 4
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @LCD_WINCTRL2_CKMODE, align 4
  %158 = and i32 %156, %157
  %159 = ashr i32 %158, 24
  %160 = load %struct.au1200_lcd_window_regs_t*, %struct.au1200_lcd_window_regs_t** %4, align 8
  %161 = getelementptr inbounds %struct.au1200_lcd_window_regs_t, %struct.au1200_lcd_window_regs_t* %160, i32 0, i32 11
  store i32 %159, i32* %161, align 4
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lcd, align 8
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 1
  %164 = load %struct.TYPE_3__*, %struct.TYPE_3__** %163, align 8
  %165 = load i32, i32* %3, align 4
  %166 = zext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @LCD_WINCTRL2_DBM, align 4
  %171 = and i32 %169, %170
  %172 = ashr i32 %171, 23
  %173 = load %struct.au1200_lcd_window_regs_t*, %struct.au1200_lcd_window_regs_t** %4, align 8
  %174 = getelementptr inbounds %struct.au1200_lcd_window_regs_t, %struct.au1200_lcd_window_regs_t* %173, i32 0, i32 12
  store i32 %172, i32* %174, align 4
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lcd, align 8
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 1
  %177 = load %struct.TYPE_3__*, %struct.TYPE_3__** %176, align 8
  %178 = load i32, i32* %3, align 4
  %179 = zext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* @LCD_WINCTRL2_RAM, align 4
  %184 = and i32 %182, %183
  %185 = ashr i32 %184, 21
  %186 = load %struct.au1200_lcd_window_regs_t*, %struct.au1200_lcd_window_regs_t** %4, align 8
  %187 = getelementptr inbounds %struct.au1200_lcd_window_regs_t, %struct.au1200_lcd_window_regs_t* %186, i32 0, i32 13
  store i32 %185, i32* %187, align 4
  %188 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lcd, align 8
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* %3, align 4
  %192 = lshr i32 %190, %191
  %193 = and i32 %192, 1
  %194 = load %struct.au1200_lcd_window_regs_t*, %struct.au1200_lcd_window_regs_t** %4, align 8
  %195 = getelementptr inbounds %struct.au1200_lcd_window_regs_t, %struct.au1200_lcd_window_regs_t* %194, i32 0, i32 14
  store i32 %193, i32* %195, align 4
  %196 = call i32 (...) @wmb()
  ret void
}

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
