; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_au1200fb.c_set_window.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_au1200fb.c_set_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.au1200_lcd_window_regs_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@WIN_POSITION = common dso_local global i32 0, align 4
@lcd = common dso_local global %struct.TYPE_4__* null, align 8
@LCD_WINCTRL0_OX = common dso_local global i32 0, align 4
@LCD_WINCTRL0_OY = common dso_local global i32 0, align 4
@WIN_ALPHA_COLOR = common dso_local global i32 0, align 4
@LCD_WINCTRL0_A = common dso_local global i32 0, align 4
@WIN_ALPHA_MODE = common dso_local global i32 0, align 4
@LCD_WINCTRL0_AEN = common dso_local global i32 0, align 4
@WIN_PRIORITY = common dso_local global i32 0, align 4
@LCD_WINCTRL1_PRI = common dso_local global i32 0, align 4
@WIN_CHANNEL = common dso_local global i32 0, align 4
@LCD_WINCTRL1_PIPE = common dso_local global i32 0, align 4
@WIN_BUFFER_FORMAT = common dso_local global i32 0, align 4
@LCD_WINCTRL1_FRM = common dso_local global i32 0, align 4
@WIN_COLOR_ORDER = common dso_local global i32 0, align 4
@LCD_WINCTRL1_CCO = common dso_local global i32 0, align 4
@WIN_PIXEL_ORDER = common dso_local global i32 0, align 4
@LCD_WINCTRL1_PO = common dso_local global i32 0, align 4
@WIN_SIZE = common dso_local global i32 0, align 4
@LCD_WINCTRL1_SZX = common dso_local global i32 0, align 4
@LCD_WINCTRL1_SZY = common dso_local global i32 0, align 4
@LCD_WINCTRL2_BX = common dso_local global i32 0, align 4
@WIN_COLORKEY_MODE = common dso_local global i32 0, align 4
@LCD_WINCTRL2_CKMODE = common dso_local global i32 0, align 4
@WIN_DOUBLE_BUFFER_MODE = common dso_local global i32 0, align 4
@LCD_WINCTRL2_DBM = common dso_local global i32 0, align 4
@WIN_RAM_ARRAY_MODE = common dso_local global i32 0, align 4
@LCD_WINCTRL2_RAM = common dso_local global i32 0, align 4
@WIN_BUFFER_SCALE = common dso_local global i32 0, align 4
@LCD_WINCTRL2_SCX = common dso_local global i32 0, align 4
@LCD_WINCTRL2_SCY = common dso_local global i32 0, align 4
@WIN_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.au1200_lcd_window_regs_t*)* @set_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_window(i32 %0, %struct.au1200_lcd_window_regs_t* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.au1200_lcd_window_regs_t*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.au1200_lcd_window_regs_t* %1, %struct.au1200_lcd_window_regs_t** %4, align 8
  %7 = load %struct.au1200_lcd_window_regs_t*, %struct.au1200_lcd_window_regs_t** %4, align 8
  %8 = getelementptr inbounds %struct.au1200_lcd_window_regs_t, %struct.au1200_lcd_window_regs_t* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @WIN_POSITION, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %51

13:                                               ; preds = %2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lcd, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @LCD_WINCTRL0_OX, align 4
  %23 = load i32, i32* @LCD_WINCTRL0_OY, align 4
  %24 = or i32 %22, %23
  %25 = xor i32 %24, -1
  %26 = and i32 %21, %25
  store i32 %26, i32* %5, align 4
  %27 = load %struct.au1200_lcd_window_regs_t*, %struct.au1200_lcd_window_regs_t** %4, align 8
  %28 = getelementptr inbounds %struct.au1200_lcd_window_regs_t, %struct.au1200_lcd_window_regs_t* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = shl i32 %29, 21
  %31 = load i32, i32* @LCD_WINCTRL0_OX, align 4
  %32 = and i32 %30, %31
  %33 = load i32, i32* %5, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %5, align 4
  %35 = load %struct.au1200_lcd_window_regs_t*, %struct.au1200_lcd_window_regs_t** %4, align 8
  %36 = getelementptr inbounds %struct.au1200_lcd_window_regs_t, %struct.au1200_lcd_window_regs_t* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = shl i32 %37, 10
  %39 = load i32, i32* @LCD_WINCTRL0_OY, align 4
  %40 = and i32 %38, %39
  %41 = load i32, i32* %5, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lcd, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = load i32, i32* %3, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  store i32 %43, i32* %50, align 4
  br label %51

51:                                               ; preds = %13, %2
  %52 = load %struct.au1200_lcd_window_regs_t*, %struct.au1200_lcd_window_regs_t** %4, align 8
  %53 = getelementptr inbounds %struct.au1200_lcd_window_regs_t, %struct.au1200_lcd_window_regs_t* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @WIN_ALPHA_COLOR, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %86

58:                                               ; preds = %51
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lcd, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = load i32, i32* %3, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @LCD_WINCTRL0_A, align 4
  %68 = xor i32 %67, -1
  %69 = and i32 %66, %68
  store i32 %69, i32* %5, align 4
  %70 = load %struct.au1200_lcd_window_regs_t*, %struct.au1200_lcd_window_regs_t** %4, align 8
  %71 = getelementptr inbounds %struct.au1200_lcd_window_regs_t, %struct.au1200_lcd_window_regs_t* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = shl i32 %72, 2
  %74 = load i32, i32* @LCD_WINCTRL0_A, align 4
  %75 = and i32 %73, %74
  %76 = load i32, i32* %5, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %5, align 4
  %78 = load i32, i32* %5, align 4
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lcd, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = load i32, i32* %3, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  store i32 %78, i32* %85, align 4
  br label %86

86:                                               ; preds = %58, %51
  %87 = load %struct.au1200_lcd_window_regs_t*, %struct.au1200_lcd_window_regs_t** %4, align 8
  %88 = getelementptr inbounds %struct.au1200_lcd_window_regs_t, %struct.au1200_lcd_window_regs_t* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @WIN_ALPHA_MODE, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %121

93:                                               ; preds = %86
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lcd, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %95, align 8
  %97 = load i32, i32* %3, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @LCD_WINCTRL0_AEN, align 4
  %103 = xor i32 %102, -1
  %104 = and i32 %101, %103
  store i32 %104, i32* %5, align 4
  %105 = load %struct.au1200_lcd_window_regs_t*, %struct.au1200_lcd_window_regs_t** %4, align 8
  %106 = getelementptr inbounds %struct.au1200_lcd_window_regs_t, %struct.au1200_lcd_window_regs_t* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 4
  %108 = shl i32 %107, 1
  %109 = load i32, i32* @LCD_WINCTRL0_AEN, align 4
  %110 = and i32 %108, %109
  %111 = load i32, i32* %5, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %5, align 4
  %113 = load i32, i32* %5, align 4
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lcd, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %115, align 8
  %117 = load i32, i32* %3, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 0
  store i32 %113, i32* %120, align 4
  br label %121

121:                                              ; preds = %93, %86
  %122 = load %struct.au1200_lcd_window_regs_t*, %struct.au1200_lcd_window_regs_t** %4, align 8
  %123 = getelementptr inbounds %struct.au1200_lcd_window_regs_t, %struct.au1200_lcd_window_regs_t* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @WIN_PRIORITY, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %156

128:                                              ; preds = %121
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lcd, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 1
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %130, align 8
  %132 = load i32, i32* %3, align 4
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @LCD_WINCTRL1_PRI, align 4
  %138 = xor i32 %137, -1
  %139 = and i32 %136, %138
  store i32 %139, i32* %5, align 4
  %140 = load %struct.au1200_lcd_window_regs_t*, %struct.au1200_lcd_window_regs_t** %4, align 8
  %141 = getelementptr inbounds %struct.au1200_lcd_window_regs_t, %struct.au1200_lcd_window_regs_t* %140, i32 0, i32 5
  %142 = load i32, i32* %141, align 4
  %143 = shl i32 %142, 30
  %144 = load i32, i32* @LCD_WINCTRL1_PRI, align 4
  %145 = and i32 %143, %144
  %146 = load i32, i32* %5, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %5, align 4
  %148 = load i32, i32* %5, align 4
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lcd, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 1
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %150, align 8
  %152 = load i32, i32* %3, align 4
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 1
  store i32 %148, i32* %155, align 4
  br label %156

156:                                              ; preds = %128, %121
  %157 = load %struct.au1200_lcd_window_regs_t*, %struct.au1200_lcd_window_regs_t** %4, align 8
  %158 = getelementptr inbounds %struct.au1200_lcd_window_regs_t, %struct.au1200_lcd_window_regs_t* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @WIN_CHANNEL, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %191

163:                                              ; preds = %156
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lcd, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 1
  %166 = load %struct.TYPE_3__*, %struct.TYPE_3__** %165, align 8
  %167 = load i32, i32* %3, align 4
  %168 = zext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @LCD_WINCTRL1_PIPE, align 4
  %173 = xor i32 %172, -1
  %174 = and i32 %171, %173
  store i32 %174, i32* %5, align 4
  %175 = load %struct.au1200_lcd_window_regs_t*, %struct.au1200_lcd_window_regs_t** %4, align 8
  %176 = getelementptr inbounds %struct.au1200_lcd_window_regs_t, %struct.au1200_lcd_window_regs_t* %175, i32 0, i32 6
  %177 = load i32, i32* %176, align 4
  %178 = shl i32 %177, 29
  %179 = load i32, i32* @LCD_WINCTRL1_PIPE, align 4
  %180 = and i32 %178, %179
  %181 = load i32, i32* %5, align 4
  %182 = or i32 %181, %180
  store i32 %182, i32* %5, align 4
  %183 = load i32, i32* %5, align 4
  %184 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lcd, align 8
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 1
  %186 = load %struct.TYPE_3__*, %struct.TYPE_3__** %185, align 8
  %187 = load i32, i32* %3, align 4
  %188 = zext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %189, i32 0, i32 1
  store i32 %183, i32* %190, align 4
  br label %191

191:                                              ; preds = %163, %156
  %192 = load %struct.au1200_lcd_window_regs_t*, %struct.au1200_lcd_window_regs_t** %4, align 8
  %193 = getelementptr inbounds %struct.au1200_lcd_window_regs_t, %struct.au1200_lcd_window_regs_t* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* @WIN_BUFFER_FORMAT, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %226

198:                                              ; preds = %191
  %199 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lcd, align 8
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 1
  %201 = load %struct.TYPE_3__*, %struct.TYPE_3__** %200, align 8
  %202 = load i32, i32* %3, align 4
  %203 = zext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* @LCD_WINCTRL1_FRM, align 4
  %208 = xor i32 %207, -1
  %209 = and i32 %206, %208
  store i32 %209, i32* %5, align 4
  %210 = load %struct.au1200_lcd_window_regs_t*, %struct.au1200_lcd_window_regs_t** %4, align 8
  %211 = getelementptr inbounds %struct.au1200_lcd_window_regs_t, %struct.au1200_lcd_window_regs_t* %210, i32 0, i32 7
  %212 = load i32, i32* %211, align 4
  %213 = shl i32 %212, 25
  %214 = load i32, i32* @LCD_WINCTRL1_FRM, align 4
  %215 = and i32 %213, %214
  %216 = load i32, i32* %5, align 4
  %217 = or i32 %216, %215
  store i32 %217, i32* %5, align 4
  %218 = load i32, i32* %5, align 4
  %219 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lcd, align 8
  %220 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %219, i32 0, i32 1
  %221 = load %struct.TYPE_3__*, %struct.TYPE_3__** %220, align 8
  %222 = load i32, i32* %3, align 4
  %223 = zext i32 %222 to i64
  %224 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %221, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %224, i32 0, i32 1
  store i32 %218, i32* %225, align 4
  br label %226

226:                                              ; preds = %198, %191
  %227 = load %struct.au1200_lcd_window_regs_t*, %struct.au1200_lcd_window_regs_t** %4, align 8
  %228 = getelementptr inbounds %struct.au1200_lcd_window_regs_t, %struct.au1200_lcd_window_regs_t* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = load i32, i32* @WIN_COLOR_ORDER, align 4
  %231 = and i32 %229, %230
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %261

233:                                              ; preds = %226
  %234 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lcd, align 8
  %235 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %234, i32 0, i32 1
  %236 = load %struct.TYPE_3__*, %struct.TYPE_3__** %235, align 8
  %237 = load i32, i32* %3, align 4
  %238 = zext i32 %237 to i64
  %239 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %236, i64 %238
  %240 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = load i32, i32* @LCD_WINCTRL1_CCO, align 4
  %243 = xor i32 %242, -1
  %244 = and i32 %241, %243
  store i32 %244, i32* %5, align 4
  %245 = load %struct.au1200_lcd_window_regs_t*, %struct.au1200_lcd_window_regs_t** %4, align 8
  %246 = getelementptr inbounds %struct.au1200_lcd_window_regs_t, %struct.au1200_lcd_window_regs_t* %245, i32 0, i32 8
  %247 = load i32, i32* %246, align 4
  %248 = shl i32 %247, 24
  %249 = load i32, i32* @LCD_WINCTRL1_CCO, align 4
  %250 = and i32 %248, %249
  %251 = load i32, i32* %5, align 4
  %252 = or i32 %251, %250
  store i32 %252, i32* %5, align 4
  %253 = load i32, i32* %5, align 4
  %254 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lcd, align 8
  %255 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %254, i32 0, i32 1
  %256 = load %struct.TYPE_3__*, %struct.TYPE_3__** %255, align 8
  %257 = load i32, i32* %3, align 4
  %258 = zext i32 %257 to i64
  %259 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %256, i64 %258
  %260 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %259, i32 0, i32 1
  store i32 %253, i32* %260, align 4
  br label %261

261:                                              ; preds = %233, %226
  %262 = load %struct.au1200_lcd_window_regs_t*, %struct.au1200_lcd_window_regs_t** %4, align 8
  %263 = getelementptr inbounds %struct.au1200_lcd_window_regs_t, %struct.au1200_lcd_window_regs_t* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  %265 = load i32, i32* @WIN_PIXEL_ORDER, align 4
  %266 = and i32 %264, %265
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %296

268:                                              ; preds = %261
  %269 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lcd, align 8
  %270 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %269, i32 0, i32 1
  %271 = load %struct.TYPE_3__*, %struct.TYPE_3__** %270, align 8
  %272 = load i32, i32* %3, align 4
  %273 = zext i32 %272 to i64
  %274 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %271, i64 %273
  %275 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = load i32, i32* @LCD_WINCTRL1_PO, align 4
  %278 = xor i32 %277, -1
  %279 = and i32 %276, %278
  store i32 %279, i32* %5, align 4
  %280 = load %struct.au1200_lcd_window_regs_t*, %struct.au1200_lcd_window_regs_t** %4, align 8
  %281 = getelementptr inbounds %struct.au1200_lcd_window_regs_t, %struct.au1200_lcd_window_regs_t* %280, i32 0, i32 9
  %282 = load i32, i32* %281, align 4
  %283 = shl i32 %282, 22
  %284 = load i32, i32* @LCD_WINCTRL1_PO, align 4
  %285 = and i32 %283, %284
  %286 = load i32, i32* %5, align 4
  %287 = or i32 %286, %285
  store i32 %287, i32* %5, align 4
  %288 = load i32, i32* %5, align 4
  %289 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lcd, align 8
  %290 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %289, i32 0, i32 1
  %291 = load %struct.TYPE_3__*, %struct.TYPE_3__** %290, align 8
  %292 = load i32, i32* %3, align 4
  %293 = zext i32 %292 to i64
  %294 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %291, i64 %293
  %295 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %294, i32 0, i32 1
  store i32 %288, i32* %295, align 4
  br label %296

296:                                              ; preds = %268, %261
  %297 = load %struct.au1200_lcd_window_regs_t*, %struct.au1200_lcd_window_regs_t** %4, align 8
  %298 = getelementptr inbounds %struct.au1200_lcd_window_regs_t, %struct.au1200_lcd_window_regs_t* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 4
  %300 = load i32, i32* @WIN_SIZE, align 4
  %301 = and i32 %299, %300
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %374

303:                                              ; preds = %296
  %304 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lcd, align 8
  %305 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %304, i32 0, i32 1
  %306 = load %struct.TYPE_3__*, %struct.TYPE_3__** %305, align 8
  %307 = load i32, i32* %3, align 4
  %308 = zext i32 %307 to i64
  %309 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %306, i64 %308
  %310 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %309, i32 0, i32 1
  %311 = load i32, i32* %310, align 4
  %312 = load i32, i32* @LCD_WINCTRL1_SZX, align 4
  %313 = load i32, i32* @LCD_WINCTRL1_SZY, align 4
  %314 = or i32 %312, %313
  %315 = xor i32 %314, -1
  %316 = and i32 %311, %315
  store i32 %316, i32* %5, align 4
  %317 = load %struct.au1200_lcd_window_regs_t*, %struct.au1200_lcd_window_regs_t** %4, align 8
  %318 = getelementptr inbounds %struct.au1200_lcd_window_regs_t, %struct.au1200_lcd_window_regs_t* %317, i32 0, i32 10
  %319 = load i32, i32* %318, align 4
  %320 = shl i32 %319, 11
  %321 = sub nsw i32 %320, 1
  %322 = load i32, i32* @LCD_WINCTRL1_SZX, align 4
  %323 = and i32 %321, %322
  %324 = load i32, i32* %5, align 4
  %325 = or i32 %324, %323
  store i32 %325, i32* %5, align 4
  %326 = load %struct.au1200_lcd_window_regs_t*, %struct.au1200_lcd_window_regs_t** %4, align 8
  %327 = getelementptr inbounds %struct.au1200_lcd_window_regs_t, %struct.au1200_lcd_window_regs_t* %326, i32 0, i32 11
  %328 = load i32, i32* %327, align 4
  %329 = sub nsw i32 %328, 1
  %330 = load i32, i32* @LCD_WINCTRL1_SZY, align 4
  %331 = and i32 %329, %330
  %332 = load i32, i32* %5, align 4
  %333 = or i32 %332, %331
  store i32 %333, i32* %5, align 4
  %334 = load i32, i32* %5, align 4
  %335 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lcd, align 8
  %336 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %335, i32 0, i32 1
  %337 = load %struct.TYPE_3__*, %struct.TYPE_3__** %336, align 8
  %338 = load i32, i32* %3, align 4
  %339 = zext i32 %338 to i64
  %340 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %337, i64 %339
  %341 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %340, i32 0, i32 1
  store i32 %334, i32* %341, align 4
  %342 = load i32, i32* %5, align 4
  %343 = call i32 @winbpp(i32 %342)
  %344 = sdiv i32 %343, 8
  store i32 %344, i32* %6, align 4
  %345 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lcd, align 8
  %346 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %345, i32 0, i32 1
  %347 = load %struct.TYPE_3__*, %struct.TYPE_3__** %346, align 8
  %348 = load i32, i32* %3, align 4
  %349 = zext i32 %348 to i64
  %350 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %347, i64 %349
  %351 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %350, i32 0, i32 2
  %352 = load i32, i32* %351, align 4
  %353 = load i32, i32* @LCD_WINCTRL2_BX, align 4
  %354 = xor i32 %353, -1
  %355 = and i32 %352, %354
  store i32 %355, i32* %5, align 4
  %356 = load %struct.au1200_lcd_window_regs_t*, %struct.au1200_lcd_window_regs_t** %4, align 8
  %357 = getelementptr inbounds %struct.au1200_lcd_window_regs_t, %struct.au1200_lcd_window_regs_t* %356, i32 0, i32 10
  %358 = load i32, i32* %357, align 4
  %359 = load i32, i32* %6, align 4
  %360 = mul i32 %358, %359
  %361 = shl i32 %360, 8
  %362 = load i32, i32* @LCD_WINCTRL2_BX, align 4
  %363 = and i32 %361, %362
  %364 = load i32, i32* %5, align 4
  %365 = or i32 %364, %363
  store i32 %365, i32* %5, align 4
  %366 = load i32, i32* %5, align 4
  %367 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lcd, align 8
  %368 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %367, i32 0, i32 1
  %369 = load %struct.TYPE_3__*, %struct.TYPE_3__** %368, align 8
  %370 = load i32, i32* %3, align 4
  %371 = zext i32 %370 to i64
  %372 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %369, i64 %371
  %373 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %372, i32 0, i32 2
  store i32 %366, i32* %373, align 4
  br label %374

374:                                              ; preds = %303, %296
  %375 = load %struct.au1200_lcd_window_regs_t*, %struct.au1200_lcd_window_regs_t** %4, align 8
  %376 = getelementptr inbounds %struct.au1200_lcd_window_regs_t, %struct.au1200_lcd_window_regs_t* %375, i32 0, i32 0
  %377 = load i32, i32* %376, align 4
  %378 = load i32, i32* @WIN_COLORKEY_MODE, align 4
  %379 = and i32 %377, %378
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %381, label %409

381:                                              ; preds = %374
  %382 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lcd, align 8
  %383 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %382, i32 0, i32 1
  %384 = load %struct.TYPE_3__*, %struct.TYPE_3__** %383, align 8
  %385 = load i32, i32* %3, align 4
  %386 = zext i32 %385 to i64
  %387 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %384, i64 %386
  %388 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %387, i32 0, i32 2
  %389 = load i32, i32* %388, align 4
  %390 = load i32, i32* @LCD_WINCTRL2_CKMODE, align 4
  %391 = xor i32 %390, -1
  %392 = and i32 %389, %391
  store i32 %392, i32* %5, align 4
  %393 = load %struct.au1200_lcd_window_regs_t*, %struct.au1200_lcd_window_regs_t** %4, align 8
  %394 = getelementptr inbounds %struct.au1200_lcd_window_regs_t, %struct.au1200_lcd_window_regs_t* %393, i32 0, i32 12
  %395 = load i32, i32* %394, align 4
  %396 = shl i32 %395, 24
  %397 = load i32, i32* @LCD_WINCTRL2_CKMODE, align 4
  %398 = and i32 %396, %397
  %399 = load i32, i32* %5, align 4
  %400 = or i32 %399, %398
  store i32 %400, i32* %5, align 4
  %401 = load i32, i32* %5, align 4
  %402 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lcd, align 8
  %403 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %402, i32 0, i32 1
  %404 = load %struct.TYPE_3__*, %struct.TYPE_3__** %403, align 8
  %405 = load i32, i32* %3, align 4
  %406 = zext i32 %405 to i64
  %407 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %404, i64 %406
  %408 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %407, i32 0, i32 2
  store i32 %401, i32* %408, align 4
  br label %409

409:                                              ; preds = %381, %374
  %410 = load %struct.au1200_lcd_window_regs_t*, %struct.au1200_lcd_window_regs_t** %4, align 8
  %411 = getelementptr inbounds %struct.au1200_lcd_window_regs_t, %struct.au1200_lcd_window_regs_t* %410, i32 0, i32 0
  %412 = load i32, i32* %411, align 4
  %413 = load i32, i32* @WIN_DOUBLE_BUFFER_MODE, align 4
  %414 = and i32 %412, %413
  %415 = icmp ne i32 %414, 0
  br i1 %415, label %416, label %444

416:                                              ; preds = %409
  %417 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lcd, align 8
  %418 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %417, i32 0, i32 1
  %419 = load %struct.TYPE_3__*, %struct.TYPE_3__** %418, align 8
  %420 = load i32, i32* %3, align 4
  %421 = zext i32 %420 to i64
  %422 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %419, i64 %421
  %423 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %422, i32 0, i32 2
  %424 = load i32, i32* %423, align 4
  %425 = load i32, i32* @LCD_WINCTRL2_DBM, align 4
  %426 = xor i32 %425, -1
  %427 = and i32 %424, %426
  store i32 %427, i32* %5, align 4
  %428 = load %struct.au1200_lcd_window_regs_t*, %struct.au1200_lcd_window_regs_t** %4, align 8
  %429 = getelementptr inbounds %struct.au1200_lcd_window_regs_t, %struct.au1200_lcd_window_regs_t* %428, i32 0, i32 13
  %430 = load i32, i32* %429, align 4
  %431 = shl i32 %430, 23
  %432 = load i32, i32* @LCD_WINCTRL2_DBM, align 4
  %433 = and i32 %431, %432
  %434 = load i32, i32* %5, align 4
  %435 = or i32 %434, %433
  store i32 %435, i32* %5, align 4
  %436 = load i32, i32* %5, align 4
  %437 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lcd, align 8
  %438 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %437, i32 0, i32 1
  %439 = load %struct.TYPE_3__*, %struct.TYPE_3__** %438, align 8
  %440 = load i32, i32* %3, align 4
  %441 = zext i32 %440 to i64
  %442 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %439, i64 %441
  %443 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %442, i32 0, i32 2
  store i32 %436, i32* %443, align 4
  br label %444

444:                                              ; preds = %416, %409
  %445 = load %struct.au1200_lcd_window_regs_t*, %struct.au1200_lcd_window_regs_t** %4, align 8
  %446 = getelementptr inbounds %struct.au1200_lcd_window_regs_t, %struct.au1200_lcd_window_regs_t* %445, i32 0, i32 0
  %447 = load i32, i32* %446, align 4
  %448 = load i32, i32* @WIN_RAM_ARRAY_MODE, align 4
  %449 = and i32 %447, %448
  %450 = icmp ne i32 %449, 0
  br i1 %450, label %451, label %479

451:                                              ; preds = %444
  %452 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lcd, align 8
  %453 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %452, i32 0, i32 1
  %454 = load %struct.TYPE_3__*, %struct.TYPE_3__** %453, align 8
  %455 = load i32, i32* %3, align 4
  %456 = zext i32 %455 to i64
  %457 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %454, i64 %456
  %458 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %457, i32 0, i32 2
  %459 = load i32, i32* %458, align 4
  %460 = load i32, i32* @LCD_WINCTRL2_RAM, align 4
  %461 = xor i32 %460, -1
  %462 = and i32 %459, %461
  store i32 %462, i32* %5, align 4
  %463 = load %struct.au1200_lcd_window_regs_t*, %struct.au1200_lcd_window_regs_t** %4, align 8
  %464 = getelementptr inbounds %struct.au1200_lcd_window_regs_t, %struct.au1200_lcd_window_regs_t* %463, i32 0, i32 14
  %465 = load i32, i32* %464, align 4
  %466 = shl i32 %465, 21
  %467 = load i32, i32* @LCD_WINCTRL2_RAM, align 4
  %468 = and i32 %466, %467
  %469 = load i32, i32* %5, align 4
  %470 = or i32 %469, %468
  store i32 %470, i32* %5, align 4
  %471 = load i32, i32* %5, align 4
  %472 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lcd, align 8
  %473 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %472, i32 0, i32 1
  %474 = load %struct.TYPE_3__*, %struct.TYPE_3__** %473, align 8
  %475 = load i32, i32* %3, align 4
  %476 = zext i32 %475 to i64
  %477 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %474, i64 %476
  %478 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %477, i32 0, i32 2
  store i32 %471, i32* %478, align 4
  br label %479

479:                                              ; preds = %451, %444
  %480 = load %struct.au1200_lcd_window_regs_t*, %struct.au1200_lcd_window_regs_t** %4, align 8
  %481 = getelementptr inbounds %struct.au1200_lcd_window_regs_t, %struct.au1200_lcd_window_regs_t* %480, i32 0, i32 0
  %482 = load i32, i32* %481, align 4
  %483 = load i32, i32* @WIN_BUFFER_SCALE, align 4
  %484 = and i32 %482, %483
  %485 = icmp ne i32 %484, 0
  br i1 %485, label %486, label %523

486:                                              ; preds = %479
  %487 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lcd, align 8
  %488 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %487, i32 0, i32 1
  %489 = load %struct.TYPE_3__*, %struct.TYPE_3__** %488, align 8
  %490 = load i32, i32* %3, align 4
  %491 = zext i32 %490 to i64
  %492 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %489, i64 %491
  %493 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %492, i32 0, i32 2
  %494 = load i32, i32* %493, align 4
  %495 = load i32, i32* @LCD_WINCTRL2_SCX, align 4
  %496 = load i32, i32* @LCD_WINCTRL2_SCY, align 4
  %497 = or i32 %495, %496
  %498 = xor i32 %497, -1
  %499 = and i32 %494, %498
  store i32 %499, i32* %5, align 4
  %500 = load %struct.au1200_lcd_window_regs_t*, %struct.au1200_lcd_window_regs_t** %4, align 8
  %501 = getelementptr inbounds %struct.au1200_lcd_window_regs_t, %struct.au1200_lcd_window_regs_t* %500, i32 0, i32 10
  %502 = load i32, i32* %501, align 4
  %503 = shl i32 %502, 11
  %504 = load i32, i32* @LCD_WINCTRL2_SCX, align 4
  %505 = and i32 %503, %504
  %506 = load i32, i32* %5, align 4
  %507 = or i32 %506, %505
  store i32 %507, i32* %5, align 4
  %508 = load %struct.au1200_lcd_window_regs_t*, %struct.au1200_lcd_window_regs_t** %4, align 8
  %509 = getelementptr inbounds %struct.au1200_lcd_window_regs_t, %struct.au1200_lcd_window_regs_t* %508, i32 0, i32 11
  %510 = load i32, i32* %509, align 4
  %511 = load i32, i32* @LCD_WINCTRL2_SCY, align 4
  %512 = and i32 %510, %511
  %513 = load i32, i32* %5, align 4
  %514 = or i32 %513, %512
  store i32 %514, i32* %5, align 4
  %515 = load i32, i32* %5, align 4
  %516 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lcd, align 8
  %517 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %516, i32 0, i32 1
  %518 = load %struct.TYPE_3__*, %struct.TYPE_3__** %517, align 8
  %519 = load i32, i32* %3, align 4
  %520 = zext i32 %519 to i64
  %521 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %518, i64 %520
  %522 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %521, i32 0, i32 2
  store i32 %515, i32* %522, align 4
  br label %523

523:                                              ; preds = %486, %479
  %524 = load %struct.au1200_lcd_window_regs_t*, %struct.au1200_lcd_window_regs_t** %4, align 8
  %525 = getelementptr inbounds %struct.au1200_lcd_window_regs_t, %struct.au1200_lcd_window_regs_t* %524, i32 0, i32 0
  %526 = load i32, i32* %525, align 4
  %527 = load i32, i32* @WIN_ENABLE, align 4
  %528 = and i32 %526, %527
  %529 = icmp ne i32 %528, 0
  br i1 %529, label %530, label %550

530:                                              ; preds = %523
  %531 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lcd, align 8
  %532 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %531, i32 0, i32 0
  %533 = load i32, i32* %532, align 8
  store i32 %533, i32* %5, align 4
  %534 = load i32, i32* %3, align 4
  %535 = shl i32 1, %534
  %536 = xor i32 %535, -1
  %537 = load i32, i32* %5, align 4
  %538 = and i32 %537, %536
  store i32 %538, i32* %5, align 4
  %539 = load %struct.au1200_lcd_window_regs_t*, %struct.au1200_lcd_window_regs_t** %4, align 8
  %540 = getelementptr inbounds %struct.au1200_lcd_window_regs_t, %struct.au1200_lcd_window_regs_t* %539, i32 0, i32 15
  %541 = load i32, i32* %540, align 4
  %542 = and i32 %541, 1
  %543 = load i32, i32* %3, align 4
  %544 = shl i32 %542, %543
  %545 = load i32, i32* %5, align 4
  %546 = or i32 %545, %544
  store i32 %546, i32* %5, align 4
  %547 = load i32, i32* %5, align 4
  %548 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lcd, align 8
  %549 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %548, i32 0, i32 0
  store i32 %547, i32* %549, align 8
  br label %550

550:                                              ; preds = %530, %523
  %551 = call i32 (...) @wmb()
  ret void
}

declare dso_local i32 @winbpp(i32) #1

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
