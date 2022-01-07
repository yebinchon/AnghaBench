; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_smscufx.c_ufx_set_vid_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_smscufx.c_ufx_set_vid_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufx_data = type { i32 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [41 x i8] c"ufx_set_vid_mode error disabling RGB pad\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"ufx_set_vid_mode error disabling VDAC\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"ufx_set_vid_mode error blanking display\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"ufx_set_vid_mode error disabling display\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"ufx_set_vid_mode error configuring pixclock\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"ufx_set_vid_mode error writing 0x2000\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"ufx_set_vid_mode error writing 0x2008\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"ufx_set_vid_mode error writing 0x200C\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"ufx_set_vid_mode error writing 0x2010\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"ufx_set_vid_mode error writing 0x2014\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"ufx_set_vid_mode error writing 0x2018\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"ufx_set_vid_mode error writing 0x201C\00", align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"ufx_set_vid_mode error writing 0x2020\00", align 1
@.str.13 = private unnamed_addr constant [38 x i8] c"ufx_set_vid_mode error writing 0x2024\00", align 1
@.str.14 = private unnamed_addr constant [38 x i8] c"ufx_set_vid_mode error writing 0x2028\00", align 1
@.str.15 = private unnamed_addr constant [38 x i8] c"ufx_set_vid_mode error writing 0x2040\00", align 1
@.str.16 = private unnamed_addr constant [38 x i8] c"ufx_set_vid_mode error writing 0x2044\00", align 1
@.str.17 = private unnamed_addr constant [38 x i8] c"ufx_set_vid_mode error writing 0x2048\00", align 1
@FB_SYNC_HOR_HIGH_ACT = common dso_local global i32 0, align 4
@FB_SYNC_VERT_HIGH_ACT = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [40 x i8] c"ufx_set_vid_mode error enabling display\00", align 1
@.str.19 = private unnamed_addr constant [42 x i8] c"ufx_set_vid_mode error unblanking display\00", align 1
@.str.20 = private unnamed_addr constant [40 x i8] c"ufx_set_vid_mode error enabling RGB pad\00", align 1
@.str.21 = private unnamed_addr constant [37 x i8] c"ufx_set_vid_mode error enabling VDAC\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ufx_data*, %struct.fb_var_screeninfo*)* @ufx_set_vid_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufx_set_vid_mode(%struct.ufx_data* %0, %struct.fb_var_screeninfo* %1) #0 {
  %3 = alloca %struct.ufx_data*, align 8
  %4 = alloca %struct.fb_var_screeninfo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.ufx_data* %0, %struct.ufx_data** %3, align 8
  store %struct.fb_var_screeninfo* %1, %struct.fb_var_screeninfo** %4, align 8
  %19 = load %struct.ufx_data*, %struct.ufx_data** %3, align 8
  %20 = call i32 @ufx_reg_write(%struct.ufx_data* %19, i32 32808, i32 0)
  store i32 %20, i32* %18, align 4
  %21 = load i32, i32* %18, align 4
  %22 = call i32 @check_warn_return(i32 %21, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.ufx_data*, %struct.ufx_data** %3, align 8
  %24 = call i32 @ufx_reg_write(%struct.ufx_data* %23, i32 32804, i32 0)
  store i32 %24, i32* %18, align 4
  %25 = load i32, i32* %18, align 4
  %26 = call i32 @check_warn_return(i32 %25, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %27 = load %struct.ufx_data*, %struct.ufx_data** %3, align 8
  %28 = call i32 @ufx_blank(%struct.ufx_data* %27, i32 1)
  store i32 %28, i32* %18, align 4
  %29 = load i32, i32* %18, align 4
  %30 = call i32 @check_warn_return(i32 %29, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %31 = load %struct.ufx_data*, %struct.ufx_data** %3, align 8
  %32 = call i32 @ufx_disable(%struct.ufx_data* %31, i32 1)
  store i32 %32, i32* %18, align 4
  %33 = load i32, i32* %18, align 4
  %34 = call i32 @check_warn_return(i32 %33, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %35 = load %struct.ufx_data*, %struct.ufx_data** %3, align 8
  %36 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %37 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %36, i32 0, i32 9
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @ufx_config_pix_clk(%struct.ufx_data* %35, i32 %38)
  store i32 %39, i32* %18, align 4
  %40 = load i32, i32* %18, align 4
  %41 = call i32 @check_warn_return(i32 %40, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  %42 = load %struct.ufx_data*, %struct.ufx_data** %3, align 8
  %43 = call i32 @ufx_reg_write(%struct.ufx_data* %42, i32 8192, i32 260)
  store i32 %43, i32* %18, align 4
  %44 = load i32, i32* %18, align 4
  %45 = call i32 @check_warn_return(i32 %44, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  %46 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %47 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %50 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %48, %51
  %53 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %54 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %52, %55
  %57 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %58 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %56, %59
  store i32 %60, i32* %6, align 4
  %61 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %62 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %7, align 4
  %64 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %65 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %68 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %66, %69
  store i32 %70, i32* %8, align 4
  %71 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %72 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %75 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %73, %76
  %78 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %79 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %77, %80
  store i32 %81, i32* %9, align 4
  %82 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %83 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %86 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %84, %87
  store i32 %88, i32* %10, align 4
  %89 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %90 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %93 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %91, %94
  %96 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %97 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %95, %98
  store i32 %99, i32* %11, align 4
  %100 = load i32, i32* %6, align 4
  %101 = sub nsw i32 %100, 1
  %102 = shl i32 %101, 16
  %103 = load i32, i32* %7, align 4
  %104 = sub nsw i32 %103, 1
  %105 = or i32 %102, %104
  store i32 %105, i32* %5, align 4
  %106 = load %struct.ufx_data*, %struct.ufx_data** %3, align 8
  %107 = load i32, i32* %5, align 4
  %108 = call i32 @ufx_reg_write(%struct.ufx_data* %106, i32 8200, i32 %107)
  store i32 %108, i32* %18, align 4
  %109 = load i32, i32* %18, align 4
  %110 = call i32 @check_warn_return(i32 %109, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  %111 = load i32, i32* %8, align 4
  %112 = sub nsw i32 %111, 1
  %113 = shl i32 %112, 16
  %114 = load i32, i32* %9, align 4
  %115 = sub nsw i32 %114, 1
  %116 = or i32 %113, %115
  store i32 %116, i32* %5, align 4
  %117 = load %struct.ufx_data*, %struct.ufx_data** %3, align 8
  %118 = load i32, i32* %5, align 4
  %119 = call i32 @ufx_reg_write(%struct.ufx_data* %117, i32 8204, i32 %118)
  store i32 %119, i32* %18, align 4
  %120 = load i32, i32* %18, align 4
  %121 = call i32 @check_warn_return(i32 %120, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0))
  %122 = load i32, i32* %10, align 4
  %123 = sub nsw i32 %122, 1
  %124 = shl i32 %123, 16
  %125 = load i32, i32* %11, align 4
  %126 = sub nsw i32 %125, 1
  %127 = or i32 %124, %126
  store i32 %127, i32* %5, align 4
  %128 = load %struct.ufx_data*, %struct.ufx_data** %3, align 8
  %129 = load i32, i32* %5, align 4
  %130 = call i32 @ufx_reg_write(%struct.ufx_data* %128, i32 8208, i32 %129)
  store i32 %130, i32* %18, align 4
  %131 = load i32, i32* %18, align 4
  %132 = call i32 @check_warn_return(i32 %131, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0))
  %133 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %134 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %137 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %136, i32 0, i32 5
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %135, %138
  %140 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %141 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %140, i32 0, i32 6
  %142 = load i32, i32* %141, align 4
  %143 = add nsw i32 %139, %142
  %144 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %145 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %144, i32 0, i32 7
  %146 = load i32, i32* %145, align 4
  %147 = add nsw i32 %143, %146
  store i32 %147, i32* %12, align 4
  %148 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %149 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %148, i32 0, i32 5
  %150 = load i32, i32* %149, align 4
  store i32 %150, i32* %13, align 4
  %151 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %152 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %151, i32 0, i32 5
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %155 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %154, i32 0, i32 6
  %156 = load i32, i32* %155, align 4
  %157 = add nsw i32 %153, %156
  store i32 %157, i32* %14, align 4
  %158 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %159 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %158, i32 0, i32 5
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %162 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %161, i32 0, i32 6
  %163 = load i32, i32* %162, align 4
  %164 = add nsw i32 %160, %163
  %165 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %166 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %165, i32 0, i32 7
  %167 = load i32, i32* %166, align 4
  %168 = add nsw i32 %164, %167
  store i32 %168, i32* %15, align 4
  %169 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %170 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %169, i32 0, i32 5
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %173 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %172, i32 0, i32 6
  %174 = load i32, i32* %173, align 4
  %175 = add nsw i32 %171, %174
  store i32 %175, i32* %16, align 4
  %176 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %177 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %176, i32 0, i32 5
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %180 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %179, i32 0, i32 6
  %181 = load i32, i32* %180, align 4
  %182 = add nsw i32 %178, %181
  %183 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %184 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %183, i32 0, i32 7
  %185 = load i32, i32* %184, align 4
  %186 = add nsw i32 %182, %185
  store i32 %186, i32* %17, align 4
  %187 = load i32, i32* %12, align 4
  %188 = sub nsw i32 %187, 1
  %189 = shl i32 %188, 16
  %190 = load i32, i32* %13, align 4
  %191 = sub nsw i32 %190, 1
  %192 = or i32 %189, %191
  store i32 %192, i32* %5, align 4
  %193 = load %struct.ufx_data*, %struct.ufx_data** %3, align 8
  %194 = load i32, i32* %5, align 4
  %195 = call i32 @ufx_reg_write(%struct.ufx_data* %193, i32 8212, i32 %194)
  store i32 %195, i32* %18, align 4
  %196 = load i32, i32* %18, align 4
  %197 = call i32 @check_warn_return(i32 %196, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0))
  %198 = load i32, i32* %14, align 4
  %199 = sub nsw i32 %198, 1
  %200 = shl i32 %199, 16
  %201 = load i32, i32* %15, align 4
  %202 = sub nsw i32 %201, 1
  %203 = or i32 %200, %202
  store i32 %203, i32* %5, align 4
  %204 = load %struct.ufx_data*, %struct.ufx_data** %3, align 8
  %205 = load i32, i32* %5, align 4
  %206 = call i32 @ufx_reg_write(%struct.ufx_data* %204, i32 8216, i32 %205)
  store i32 %206, i32* %18, align 4
  %207 = load i32, i32* %18, align 4
  %208 = call i32 @check_warn_return(i32 %207, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0))
  %209 = load i32, i32* %16, align 4
  %210 = sub nsw i32 %209, 1
  %211 = shl i32 %210, 16
  %212 = load i32, i32* %17, align 4
  %213 = sub nsw i32 %212, 1
  %214 = or i32 %211, %213
  store i32 %214, i32* %5, align 4
  %215 = load %struct.ufx_data*, %struct.ufx_data** %3, align 8
  %216 = load i32, i32* %5, align 4
  %217 = call i32 @ufx_reg_write(%struct.ufx_data* %215, i32 8220, i32 %216)
  store i32 %217, i32* %18, align 4
  %218 = load i32, i32* %18, align 4
  %219 = call i32 @check_warn_return(i32 %218, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i64 0, i64 0))
  %220 = load %struct.ufx_data*, %struct.ufx_data** %3, align 8
  %221 = call i32 @ufx_reg_write(%struct.ufx_data* %220, i32 8224, i32 0)
  store i32 %221, i32* %18, align 4
  %222 = load i32, i32* %18, align 4
  %223 = call i32 @check_warn_return(i32 %222, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i64 0, i64 0))
  %224 = load %struct.ufx_data*, %struct.ufx_data** %3, align 8
  %225 = call i32 @ufx_reg_write(%struct.ufx_data* %224, i32 8228, i32 0)
  store i32 %225, i32* %18, align 4
  %226 = load i32, i32* %18, align 4
  %227 = call i32 @check_warn_return(i32 %226, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.13, i64 0, i64 0))
  %228 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %229 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %232 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %231, i32 0, i32 5
  %233 = load i32, i32* %232, align 4
  %234 = mul nsw i32 %230, %233
  %235 = mul nsw i32 %234, 2
  store i32 %235, i32* %5, align 4
  %236 = load i32, i32* %5, align 4
  %237 = add nsw i32 %236, 7
  %238 = and i32 %237, -8
  store i32 %238, i32* %5, align 4
  %239 = load %struct.ufx_data*, %struct.ufx_data** %3, align 8
  %240 = load i32, i32* %5, align 4
  %241 = call i32 @ufx_reg_write(%struct.ufx_data* %239, i32 8232, i32 %240)
  store i32 %241, i32* %18, align 4
  %242 = load i32, i32* %18, align 4
  %243 = call i32 @check_warn_return(i32 %242, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.14, i64 0, i64 0))
  %244 = load %struct.ufx_data*, %struct.ufx_data** %3, align 8
  %245 = call i32 @ufx_reg_write(%struct.ufx_data* %244, i32 8256, i32 0)
  store i32 %245, i32* %18, align 4
  %246 = load i32, i32* %18, align 4
  %247 = call i32 @check_warn_return(i32 %246, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.15, i64 0, i64 0))
  %248 = load %struct.ufx_data*, %struct.ufx_data** %3, align 8
  %249 = call i32 @ufx_reg_write(%struct.ufx_data* %248, i32 8260, i32 0)
  store i32 %249, i32* %18, align 4
  %250 = load i32, i32* %18, align 4
  %251 = call i32 @check_warn_return(i32 %250, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.16, i64 0, i64 0))
  %252 = load %struct.ufx_data*, %struct.ufx_data** %3, align 8
  %253 = call i32 @ufx_reg_write(%struct.ufx_data* %252, i32 8264, i32 0)
  store i32 %253, i32* %18, align 4
  %254 = load i32, i32* %18, align 4
  %255 = call i32 @check_warn_return(i32 %254, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.17, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  %256 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %257 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %256, i32 0, i32 8
  %258 = load i32, i32* %257, align 4
  %259 = load i32, i32* @FB_SYNC_HOR_HIGH_ACT, align 4
  %260 = and i32 %258, %259
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %265

262:                                              ; preds = %2
  %263 = load i32, i32* %5, align 4
  %264 = or i32 %263, 16
  store i32 %264, i32* %5, align 4
  br label %265

265:                                              ; preds = %262, %2
  %266 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %267 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %266, i32 0, i32 8
  %268 = load i32, i32* %267, align 4
  %269 = load i32, i32* @FB_SYNC_VERT_HIGH_ACT, align 4
  %270 = and i32 %268, %269
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %275

272:                                              ; preds = %265
  %273 = load i32, i32* %5, align 4
  %274 = or i32 %273, 8
  store i32 %274, i32* %5, align 4
  br label %275

275:                                              ; preds = %272, %265
  %276 = load %struct.ufx_data*, %struct.ufx_data** %3, align 8
  %277 = load i32, i32* %5, align 4
  %278 = call i32 @ufx_reg_write(%struct.ufx_data* %276, i32 8256, i32 %277)
  store i32 %278, i32* %18, align 4
  %279 = load i32, i32* %18, align 4
  %280 = call i32 @check_warn_return(i32 %279, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.15, i64 0, i64 0))
  %281 = load %struct.ufx_data*, %struct.ufx_data** %3, align 8
  %282 = call i32 @ufx_enable(%struct.ufx_data* %281, i32 1)
  store i32 %282, i32* %18, align 4
  %283 = load i32, i32* %18, align 4
  %284 = call i32 @check_warn_return(i32 %283, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18, i64 0, i64 0))
  %285 = load %struct.ufx_data*, %struct.ufx_data** %3, align 8
  %286 = call i32 @ufx_unblank(%struct.ufx_data* %285, i32 1)
  store i32 %286, i32* %18, align 4
  %287 = load i32, i32* %18, align 4
  %288 = call i32 @check_warn_return(i32 %287, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.19, i64 0, i64 0))
  %289 = load %struct.ufx_data*, %struct.ufx_data** %3, align 8
  %290 = call i32 @ufx_reg_write(%struct.ufx_data* %289, i32 32808, i32 3)
  store i32 %290, i32* %18, align 4
  %291 = load i32, i32* %18, align 4
  %292 = call i32 @check_warn_return(i32 %291, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20, i64 0, i64 0))
  %293 = load %struct.ufx_data*, %struct.ufx_data** %3, align 8
  %294 = call i32 @ufx_reg_write(%struct.ufx_data* %293, i32 32804, i32 7)
  store i32 %294, i32* %18, align 4
  %295 = load i32, i32* %18, align 4
  %296 = call i32 @check_warn_return(i32 %295, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.21, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @ufx_reg_write(%struct.ufx_data*, i32, i32) #1

declare dso_local i32 @check_warn_return(i32, i8*) #1

declare dso_local i32 @ufx_blank(%struct.ufx_data*, i32) #1

declare dso_local i32 @ufx_disable(%struct.ufx_data*, i32) #1

declare dso_local i32 @ufx_config_pix_clk(%struct.ufx_data*, i32) #1

declare dso_local i32 @ufx_enable(%struct.ufx_data*, i32) #1

declare dso_local i32 @ufx_unblank(%struct.ufx_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
