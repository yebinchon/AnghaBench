; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_radeon_i2c.c_radeon_probe_i2c_connector.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_radeon_i2c.c_radeon_probe_i2c_connector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeonfb_info = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"radeonfb: I2C (port %d) ... not found\0A\00", align 1
@MT_NONE = common dso_local global i32 0, align 4
@LVDS_GEN_CNTL = common dso_local global i32 0, align 4
@LVDS_ON = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"radeonfb: I2C (port %d) ... found LVDS panel\0A\00", align 1
@MT_LCD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"radeonfb: I2C (port %d) ... found TMDS panel\0A\00", align 1
@MT_DFP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"radeonfb: I2C (port %d) ... found CRT display\0A\00", align 1
@MT_CRT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_probe_i2c_connector(%struct.radeonfb_info* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.radeonfb_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  store %struct.radeonfb_info* %0, %struct.radeonfb_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32** %2, i32*** %7, align 8
  %9 = load %struct.radeonfb_info*, %struct.radeonfb_info** %5, align 8
  %10 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = load i32, i32* %6, align 4
  %13 = sub nsw i32 %12, 1
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call i32* @fb_ddc_read(i32* %16)
  store i32* %17, i32** %8, align 8
  %18 = load i32**, i32*** %7, align 8
  %19 = icmp ne i32** %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32*, i32** %8, align 8
  %22 = load i32**, i32*** %7, align 8
  store i32* %21, i32** %22, align 8
  br label %23

23:                                               ; preds = %20, %3
  %24 = load i32*, i32** %8, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @pr_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @MT_NONE, align 4
  store i32 %29, i32* %4, align 4
  br label %59

30:                                               ; preds = %23
  %31 = load i32*, i32** %8, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 20
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, 128
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %55

36:                                               ; preds = %30
  %37 = load %struct.radeonfb_info*, %struct.radeonfb_info** %5, align 8
  %38 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %36
  %42 = load i32, i32* @LVDS_GEN_CNTL, align 4
  %43 = call i32 @INREG(i32 %42)
  %44 = load i32, i32* @LVDS_ON, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @pr_debug(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @MT_LCD, align 4
  store i32 %50, i32* %4, align 4
  br label %59

51:                                               ; preds = %41, %36
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @pr_debug(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @MT_DFP, align 4
  store i32 %54, i32* %4, align 4
  br label %59

55:                                               ; preds = %30
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @pr_debug(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* @MT_CRT, align 4
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %55, %51, %47, %26
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32* @fb_ddc_read(i32*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @INREG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
