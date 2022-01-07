; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sa1100fb.c_sa1100fb_activate_var.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sa1100fb.c_sa1100fb_activate_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sa1100fb_info = type { i64, i64, i64, i64, i32, i32, i32, i32, i64, i32, %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.sa1100fb_lcd_reg = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"Configuring SA1100 LCD\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"var: xres=%d hslen=%d lm=%d rm=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"var: yres=%d vslen=%d um=%d bm=%d\0A\00", align 1
@LCCR0_LEN = common dso_local global i32 0, align 4
@LCCR0_LDM = common dso_local global i32 0, align 4
@LCCR0_BAM = common dso_local global i32 0, align 4
@LCCR0_ERM = common dso_local global i32 0, align 4
@LCCR0_LtlEnd = common dso_local global i32 0, align 4
@LCCR0_Dual = common dso_local global i32 0, align 4
@FB_SYNC_HOR_HIGH_ACT = common dso_local global i32 0, align 4
@LCCR3_HorSnchH = common dso_local global i32 0, align 4
@LCCR3_HorSnchL = common dso_local global i32 0, align 4
@FB_SYNC_VERT_HIGH_ACT = common dso_local global i32 0, align 4
@LCCR3_VrtSnchH = common dso_local global i32 0, align 4
@LCCR3_VrtSnchL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"nlccr0 = 0x%08lx\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"nlccr1 = 0x%08lx\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"nlccr2 = 0x%08lx\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"nlccr3 = 0x%08lx\0A\00", align 1
@LCCR0 = common dso_local global i64 0, align 8
@LCCR1 = common dso_local global i64 0, align 8
@LCCR2 = common dso_local global i64 0, align 8
@LCCR3 = common dso_local global i64 0, align 8
@DBAR1 = common dso_local global i64 0, align 8
@DBAR2 = common dso_local global i64 0, align 8
@C_REENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_var_screeninfo*, %struct.sa1100fb_info*)* @sa1100fb_activate_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sa1100fb_activate_var(%struct.fb_var_screeninfo* %0, %struct.sa1100fb_info* %1) #0 {
  %3 = alloca %struct.fb_var_screeninfo*, align 8
  %4 = alloca %struct.sa1100fb_info*, align 8
  %5 = alloca %struct.sa1100fb_lcd_reg, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %3, align 8
  store %struct.sa1100fb_info* %1, %struct.sa1100fb_info** %4, align 8
  %10 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %4, align 8
  %11 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %10, i32 0, i32 9
  %12 = load i32, i32* %11, align 8
  %13 = call i32 (i32, i8*, ...) @dev_dbg(i32 %12, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %4, align 8
  %15 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %14, i32 0, i32 9
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %18 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %21 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %24 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %27 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (i32, i8*, ...) @dev_dbg(i32 %16, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %19, i32 %22, i32 %25, i32 %28)
  %30 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %4, align 8
  %31 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %30, i32 0, i32 9
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %34 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %37 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %40 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %39, i32 0, i32 6
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %43 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %42, i32 0, i32 7
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (i32, i8*, ...) @dev_dbg(i32 %32, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %35, i32 %38, i32 %41, i32 %44)
  %46 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %4, align 8
  %47 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %46, i32 0, i32 10
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @LCCR0_LEN, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @LCCR0_LDM, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @LCCR0_BAM, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @LCCR0_ERM, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @LCCR0_LtlEnd, align 4
  %60 = or i32 %58, %59
  %61 = call i32 @LCCR0_DMADel(i32 0)
  %62 = or i32 %60, %61
  %63 = getelementptr inbounds %struct.sa1100fb_lcd_reg, %struct.sa1100fb_lcd_reg* %5, i32 0, i32 0
  store i32 %62, i32* %63, align 4
  %64 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %65 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @LCCR1_DisWdth(i32 %66)
  %68 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %69 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @LCCR1_HorSnchWdth(i32 %70)
  %72 = add nsw i32 %67, %71
  %73 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %74 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @LCCR1_BegLnDel(i32 %75)
  %77 = add nsw i32 %72, %76
  %78 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %79 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @LCCR1_EndLnDel(i32 %80)
  %82 = add nsw i32 %77, %81
  %83 = getelementptr inbounds %struct.sa1100fb_lcd_reg, %struct.sa1100fb_lcd_reg* %5, i32 0, i32 1
  store i32 %82, i32* %83, align 4
  %84 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %85 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %7, align 4
  %87 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %4, align 8
  %88 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %87, i32 0, i32 10
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @LCCR0_Dual, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %2
  %96 = load i32, i32* %7, align 4
  %97 = sdiv i32 %96, 2
  store i32 %97, i32* %7, align 4
  br label %98

98:                                               ; preds = %95, %2
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @LCCR2_DisHght(i32 %99)
  %101 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %102 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @LCCR2_VrtSnchWdth(i32 %103)
  %105 = add nsw i32 %100, %104
  %106 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %107 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %106, i32 0, i32 6
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @LCCR2_BegFrmDel(i32 %108)
  %110 = add nsw i32 %105, %109
  %111 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %112 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %111, i32 0, i32 7
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @LCCR2_EndFrmDel(i32 %113)
  %115 = add nsw i32 %110, %114
  %116 = getelementptr inbounds %struct.sa1100fb_lcd_reg, %struct.sa1100fb_lcd_reg* %5, i32 0, i32 2
  store i32 %115, i32* %116, align 4
  %117 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %4, align 8
  %118 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %119 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %118, i32 0, i32 10
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @get_pcd(%struct.sa1100fb_info* %117, i32 %120)
  store i32 %121, i32* %8, align 4
  %122 = load i32, i32* %8, align 4
  %123 = call i32 @LCCR3_PixClkDiv(i32 %122)
  %124 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %4, align 8
  %125 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %124, i32 0, i32 10
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = or i32 %123, %128
  %130 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %131 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %130, i32 0, i32 8
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @FB_SYNC_HOR_HIGH_ACT, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %98
  %137 = load i32, i32* @LCCR3_HorSnchH, align 4
  br label %140

138:                                              ; preds = %98
  %139 = load i32, i32* @LCCR3_HorSnchL, align 4
  br label %140

140:                                              ; preds = %138, %136
  %141 = phi i32 [ %137, %136 ], [ %139, %138 ]
  %142 = or i32 %129, %141
  %143 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %144 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %143, i32 0, i32 8
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @FB_SYNC_VERT_HIGH_ACT, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %140
  %150 = load i32, i32* @LCCR3_VrtSnchH, align 4
  br label %153

151:                                              ; preds = %140
  %152 = load i32, i32* @LCCR3_VrtSnchL, align 4
  br label %153

153:                                              ; preds = %151, %149
  %154 = phi i32 [ %150, %149 ], [ %152, %151 ]
  %155 = or i32 %142, %154
  %156 = getelementptr inbounds %struct.sa1100fb_lcd_reg, %struct.sa1100fb_lcd_reg* %5, i32 0, i32 3
  store i32 %155, i32* %156, align 4
  %157 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %4, align 8
  %158 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %157, i32 0, i32 9
  %159 = load i32, i32* %158, align 8
  %160 = getelementptr inbounds %struct.sa1100fb_lcd_reg, %struct.sa1100fb_lcd_reg* %5, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = call i32 (i32, i8*, ...) @dev_dbg(i32 %159, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %161)
  %163 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %4, align 8
  %164 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %163, i32 0, i32 9
  %165 = load i32, i32* %164, align 8
  %166 = getelementptr inbounds %struct.sa1100fb_lcd_reg, %struct.sa1100fb_lcd_reg* %5, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = call i32 (i32, i8*, ...) @dev_dbg(i32 %165, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %167)
  %169 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %4, align 8
  %170 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %169, i32 0, i32 9
  %171 = load i32, i32* %170, align 8
  %172 = getelementptr inbounds %struct.sa1100fb_lcd_reg, %struct.sa1100fb_lcd_reg* %5, i32 0, i32 2
  %173 = load i32, i32* %172, align 4
  %174 = call i32 (i32, i8*, ...) @dev_dbg(i32 %171, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %173)
  %175 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %4, align 8
  %176 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %175, i32 0, i32 9
  %177 = load i32, i32* %176, align 8
  %178 = getelementptr inbounds %struct.sa1100fb_lcd_reg, %struct.sa1100fb_lcd_reg* %5, i32 0, i32 3
  %179 = load i32, i32* %178, align 4
  %180 = call i32 (i32, i8*, ...) @dev_dbg(i32 %177, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 %179)
  %181 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %182 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %181, i32 0, i32 9
  %183 = load i32, i32* %182, align 4
  store i32 %183, i32* %6, align 4
  %184 = load i32, i32* %6, align 4
  %185 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %186 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = mul nsw i32 %184, %187
  %189 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %190 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %189, i32 0, i32 4
  %191 = load i32, i32* %190, align 4
  %192 = mul nsw i32 %188, %191
  %193 = sdiv i32 %192, 16
  store i32 %193, i32* %6, align 4
  %194 = load i32, i32* %9, align 4
  %195 = call i32 @local_irq_save(i32 %194)
  %196 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %4, align 8
  %197 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %4, align 8
  %200 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %199, i32 0, i32 0
  store i64 %198, i64* %200, align 8
  %201 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %4, align 8
  %202 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %201, i32 0, i32 3
  %203 = load i64, i64* %202, align 8
  %204 = load i32, i32* %6, align 4
  %205 = sext i32 %204 to i64
  %206 = add nsw i64 %203, %205
  %207 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %4, align 8
  %208 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %207, i32 0, i32 2
  store i64 %206, i64* %208, align 8
  %209 = getelementptr inbounds %struct.sa1100fb_lcd_reg, %struct.sa1100fb_lcd_reg* %5, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %4, align 8
  %212 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %211, i32 0, i32 4
  store i32 %210, i32* %212, align 8
  %213 = getelementptr inbounds %struct.sa1100fb_lcd_reg, %struct.sa1100fb_lcd_reg* %5, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %4, align 8
  %216 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %215, i32 0, i32 5
  store i32 %214, i32* %216, align 4
  %217 = getelementptr inbounds %struct.sa1100fb_lcd_reg, %struct.sa1100fb_lcd_reg* %5, i32 0, i32 2
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %4, align 8
  %220 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %219, i32 0, i32 6
  store i32 %218, i32* %220, align 8
  %221 = getelementptr inbounds %struct.sa1100fb_lcd_reg, %struct.sa1100fb_lcd_reg* %5, i32 0, i32 3
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %4, align 8
  %224 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %223, i32 0, i32 7
  store i32 %222, i32* %224, align 4
  %225 = load i32, i32* %9, align 4
  %226 = call i32 @local_irq_restore(i32 %225)
  %227 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %4, align 8
  %228 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %227, i32 0, i32 8
  %229 = load i64, i64* %228, align 8
  %230 = load i64, i64* @LCCR0, align 8
  %231 = add nsw i64 %229, %230
  %232 = call i64 @readl_relaxed(i64 %231)
  %233 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %4, align 8
  %234 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %233, i32 0, i32 4
  %235 = load i32, i32* %234, align 8
  %236 = sext i32 %235 to i64
  %237 = icmp ne i64 %232, %236
  br i1 %237, label %296, label %238

238:                                              ; preds = %153
  %239 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %4, align 8
  %240 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %239, i32 0, i32 8
  %241 = load i64, i64* %240, align 8
  %242 = load i64, i64* @LCCR1, align 8
  %243 = add nsw i64 %241, %242
  %244 = call i64 @readl_relaxed(i64 %243)
  %245 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %4, align 8
  %246 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %245, i32 0, i32 5
  %247 = load i32, i32* %246, align 4
  %248 = sext i32 %247 to i64
  %249 = icmp ne i64 %244, %248
  br i1 %249, label %296, label %250

250:                                              ; preds = %238
  %251 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %4, align 8
  %252 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %251, i32 0, i32 8
  %253 = load i64, i64* %252, align 8
  %254 = load i64, i64* @LCCR2, align 8
  %255 = add nsw i64 %253, %254
  %256 = call i64 @readl_relaxed(i64 %255)
  %257 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %4, align 8
  %258 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %257, i32 0, i32 6
  %259 = load i32, i32* %258, align 8
  %260 = sext i32 %259 to i64
  %261 = icmp ne i64 %256, %260
  br i1 %261, label %296, label %262

262:                                              ; preds = %250
  %263 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %4, align 8
  %264 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %263, i32 0, i32 8
  %265 = load i64, i64* %264, align 8
  %266 = load i64, i64* @LCCR3, align 8
  %267 = add nsw i64 %265, %266
  %268 = call i64 @readl_relaxed(i64 %267)
  %269 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %4, align 8
  %270 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %269, i32 0, i32 7
  %271 = load i32, i32* %270, align 4
  %272 = sext i32 %271 to i64
  %273 = icmp ne i64 %268, %272
  br i1 %273, label %296, label %274

274:                                              ; preds = %262
  %275 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %4, align 8
  %276 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %275, i32 0, i32 8
  %277 = load i64, i64* %276, align 8
  %278 = load i64, i64* @DBAR1, align 8
  %279 = add nsw i64 %277, %278
  %280 = call i64 @readl_relaxed(i64 %279)
  %281 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %4, align 8
  %282 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %281, i32 0, i32 0
  %283 = load i64, i64* %282, align 8
  %284 = icmp ne i64 %280, %283
  br i1 %284, label %296, label %285

285:                                              ; preds = %274
  %286 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %4, align 8
  %287 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %286, i32 0, i32 8
  %288 = load i64, i64* %287, align 8
  %289 = load i64, i64* @DBAR2, align 8
  %290 = add nsw i64 %288, %289
  %291 = call i64 @readl_relaxed(i64 %290)
  %292 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %4, align 8
  %293 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %292, i32 0, i32 2
  %294 = load i64, i64* %293, align 8
  %295 = icmp ne i64 %291, %294
  br i1 %295, label %296, label %300

296:                                              ; preds = %285, %274, %262, %250, %238, %153
  %297 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %4, align 8
  %298 = load i32, i32* @C_REENABLE, align 4
  %299 = call i32 @sa1100fb_schedule_work(%struct.sa1100fb_info* %297, i32 %298)
  br label %300

300:                                              ; preds = %296, %285
  ret i32 0
}

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @LCCR0_DMADel(i32) #1

declare dso_local i32 @LCCR1_DisWdth(i32) #1

declare dso_local i32 @LCCR1_HorSnchWdth(i32) #1

declare dso_local i32 @LCCR1_BegLnDel(i32) #1

declare dso_local i32 @LCCR1_EndLnDel(i32) #1

declare dso_local i32 @LCCR2_DisHght(i32) #1

declare dso_local i32 @LCCR2_VrtSnchWdth(i32) #1

declare dso_local i32 @LCCR2_BegFrmDel(i32) #1

declare dso_local i32 @LCCR2_EndFrmDel(i32) #1

declare dso_local i32 @get_pcd(%struct.sa1100fb_info*, i32) #1

declare dso_local i32 @LCCR3_PixClkDiv(i32) #1

declare dso_local i32 @local_irq_save(i32) #1

declare dso_local i32 @local_irq_restore(i32) #1

declare dso_local i64 @readl_relaxed(i64) #1

declare dso_local i32 @sa1100fb_schedule_work(%struct.sa1100fb_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
