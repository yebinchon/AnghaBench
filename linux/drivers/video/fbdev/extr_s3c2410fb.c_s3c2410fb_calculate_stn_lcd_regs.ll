; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_s3c2410fb.c_s3c2410fb_calculate_stn_lcd_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_s3c2410fb.c_s3c2410fb_calculate_stn_lcd_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.fb_var_screeninfo, %struct.s3c2410fb_info* }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i64 }
%struct.s3c2410fb_info = type { i32 }
%struct.s3c2410fb_hw = type { i32, i32, i32, i32 }

@S3C2410_LCDCON1_TFT = common dso_local global i32 0, align 4
@S3C2410_LCDCON1_STN4 = common dso_local global i32 0, align 4
@S3C2410_LCDCON1_STN1BPP = common dso_local global i32 0, align 4
@S3C2410_LCDCON1_STN2GREY = common dso_local global i32 0, align 4
@S3C2410_LCDCON1_STN4GREY = common dso_local global i32 0, align 4
@S3C2410_LCDCON1_STN8BPP = common dso_local global i32 0, align 4
@S3C2410_LCDCON1_STN12BPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"invalid bpp %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"setting horz: lft=%d, rt=%d, sync=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*, %struct.s3c2410fb_hw*)* @s3c2410fb_calculate_stn_lcd_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c2410fb_calculate_stn_lcd_regs(%struct.fb_info* %0, %struct.s3c2410fb_hw* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.s3c2410fb_hw*, align 8
  %5 = alloca %struct.s3c2410fb_info*, align 8
  %6 = alloca %struct.fb_var_screeninfo*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.s3c2410fb_hw* %1, %struct.s3c2410fb_hw** %4, align 8
  %11 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %12 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %11, i32 0, i32 1
  %13 = load %struct.s3c2410fb_info*, %struct.s3c2410fb_info** %12, align 8
  store %struct.s3c2410fb_info* %13, %struct.s3c2410fb_info** %5, align 8
  %14 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %15 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %14, i32 0, i32 0
  store %struct.fb_var_screeninfo* %15, %struct.fb_var_screeninfo** %6, align 8
  %16 = load %struct.s3c2410fb_hw*, %struct.s3c2410fb_hw** %4, align 8
  %17 = getelementptr inbounds %struct.s3c2410fb_hw, %struct.s3c2410fb_hw* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @S3C2410_LCDCON1_TFT, align 4
  %20 = xor i32 %19, -1
  %21 = and i32 %18, %20
  store i32 %21, i32* %7, align 4
  %22 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %23 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = ashr i32 %24, 2
  store i32 %25, i32* %8, align 4
  %26 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %27 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = ashr i32 %28, 4
  %30 = sub nsw i32 %29, 1
  store i32 %30, i32* %9, align 4
  %31 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %32 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = ashr i32 %33, 4
  %35 = sub nsw i32 %34, 1
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @S3C2410_LCDCON1_STN4, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %2
  %40 = load i32, i32* %8, align 4
  %41 = ashr i32 %40, 1
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %39, %2
  %43 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %44 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  switch i32 %45, label %80 [
    i32 1, label %46
    i32 2, label %52
    i32 4, label %58
    i32 8, label %64
    i32 12, label %72
  ]

46:                                               ; preds = %42
  %47 = load i32, i32* @S3C2410_LCDCON1_STN1BPP, align 4
  %48 = load %struct.s3c2410fb_hw*, %struct.s3c2410fb_hw** %4, align 8
  %49 = getelementptr inbounds %struct.s3c2410fb_hw, %struct.s3c2410fb_hw* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 4
  br label %88

52:                                               ; preds = %42
  %53 = load i32, i32* @S3C2410_LCDCON1_STN2GREY, align 4
  %54 = load %struct.s3c2410fb_hw*, %struct.s3c2410fb_hw** %4, align 8
  %55 = getelementptr inbounds %struct.s3c2410fb_hw, %struct.s3c2410fb_hw* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 4
  br label %88

58:                                               ; preds = %42
  %59 = load i32, i32* @S3C2410_LCDCON1_STN4GREY, align 4
  %60 = load %struct.s3c2410fb_hw*, %struct.s3c2410fb_hw** %4, align 8
  %61 = getelementptr inbounds %struct.s3c2410fb_hw, %struct.s3c2410fb_hw* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 4
  br label %88

64:                                               ; preds = %42
  %65 = load i32, i32* @S3C2410_LCDCON1_STN8BPP, align 4
  %66 = load %struct.s3c2410fb_hw*, %struct.s3c2410fb_hw** %4, align 8
  %67 = getelementptr inbounds %struct.s3c2410fb_hw, %struct.s3c2410fb_hw* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 4
  %70 = load i32, i32* %8, align 4
  %71 = mul nsw i32 %70, 3
  store i32 %71, i32* %8, align 4
  br label %88

72:                                               ; preds = %42
  %73 = load i32, i32* @S3C2410_LCDCON1_STN12BPP, align 4
  %74 = load %struct.s3c2410fb_hw*, %struct.s3c2410fb_hw** %4, align 8
  %75 = getelementptr inbounds %struct.s3c2410fb_hw, %struct.s3c2410fb_hw* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 4
  %78 = load i32, i32* %8, align 4
  %79 = mul nsw i32 %78, 3
  store i32 %79, i32* %8, align 4
  br label %88

80:                                               ; preds = %42
  %81 = load %struct.s3c2410fb_info*, %struct.s3c2410fb_info** %5, align 8
  %82 = getelementptr inbounds %struct.s3c2410fb_info, %struct.s3c2410fb_info* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %85 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @dev_err(i32 %83, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %86)
  br label %88

88:                                               ; preds = %80, %72, %64, %58, %52, %46
  %89 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %90 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %93 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %96 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @dprintk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %91, i32 %94, i32 %97)
  %99 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %100 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %99, i32 0, i32 5
  %101 = load i64, i64* %100, align 8
  %102 = sub nsw i64 %101, 1
  %103 = call i32 @S3C2410_LCDCON2_LINEVAL(i64 %102)
  %104 = load %struct.s3c2410fb_hw*, %struct.s3c2410fb_hw** %4, align 8
  %105 = getelementptr inbounds %struct.s3c2410fb_hw, %struct.s3c2410fb_hw* %104, i32 0, i32 3
  store i32 %103, i32* %105, align 4
  %106 = load i32, i32* %9, align 4
  %107 = icmp ugt i32 %106, 3
  br i1 %107, label %108, label %109

108:                                              ; preds = %88
  store i32 3, i32* %9, align 4
  br label %109

109:                                              ; preds = %108, %88
  %110 = load i32, i32* %10, align 4
  %111 = icmp ugt i32 %110, 3
  br i1 %111, label %112, label %113

112:                                              ; preds = %109
  store i32 3, i32* %10, align 4
  br label %113

113:                                              ; preds = %112, %109
  %114 = load i32, i32* %9, align 4
  %115 = call i32 @S3C2410_LCDCON3_WDLY(i32 %114)
  %116 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %117 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 8
  %119 = sdiv i32 %118, 8
  %120 = call i32 @S3C2410_LCDCON3_LINEBLANK(i32 %119)
  %121 = or i32 %115, %120
  %122 = load i32, i32* %8, align 4
  %123 = sub nsw i32 %122, 1
  %124 = call i32 @S3C2410_LCDCON3_HOZVAL(i32 %123)
  %125 = or i32 %121, %124
  %126 = load %struct.s3c2410fb_hw*, %struct.s3c2410fb_hw** %4, align 8
  %127 = getelementptr inbounds %struct.s3c2410fb_hw, %struct.s3c2410fb_hw* %126, i32 0, i32 1
  store i32 %125, i32* %127, align 4
  %128 = load i32, i32* %10, align 4
  %129 = call i32 @S3C2410_LCDCON4_WLH(i32 %128)
  %130 = load %struct.s3c2410fb_hw*, %struct.s3c2410fb_hw** %4, align 8
  %131 = getelementptr inbounds %struct.s3c2410fb_hw, %struct.s3c2410fb_hw* %130, i32 0, i32 2
  store i32 %129, i32* %131, align 4
  ret void
}

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @dprintk(i8*, i32, i32, i32) #1

declare dso_local i32 @S3C2410_LCDCON2_LINEVAL(i64) #1

declare dso_local i32 @S3C2410_LCDCON3_WDLY(i32) #1

declare dso_local i32 @S3C2410_LCDCON3_LINEBLANK(i32) #1

declare dso_local i32 @S3C2410_LCDCON3_HOZVAL(i32) #1

declare dso_local i32 @S3C2410_LCDCON4_WLH(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
