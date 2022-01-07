; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/i810/extr_i810-i2c.c_i810_probe_i2c_connector.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/i810/extr_i810-i2c.c_i810_probe_i2c_connector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32, %struct.i810fb_par* }
%struct.i810fb_par = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"i810-i2c: Probe DDC%i Bus\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"i810-i2c: Getting EDID from BIOS\0A\00", align 1
@EDID_LENGTH = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i810_probe_i2c_connector(%struct.fb_info* %0, i32** %1, i32 %2) #0 {
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.i810fb_par*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %4, align 8
  store i32** %1, i32*** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %11 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %10, i32 0, i32 1
  %12 = load %struct.i810fb_par*, %struct.i810fb_par** %11, align 8
  store %struct.i810fb_par* %12, %struct.i810fb_par** %7, align 8
  store i32* null, i32** %8, align 8
  %13 = load i32, i32* %6, align 4
  %14 = add nsw i32 %13, 1
  %15 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.i810fb_par*, %struct.i810fb_par** %7, align 8
  %18 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %30

21:                                               ; preds = %3
  %22 = load %struct.i810fb_par*, %struct.i810fb_par** %7, align 8
  %23 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = call i32* @fb_ddc_read(i32* %28)
  store i32* %29, i32** %8, align 8
  br label %44

30:                                               ; preds = %3
  %31 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %32 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32* @fb_firmware_edid(i32 %33)
  store i32* %34, i32** %9, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %30
  %38 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32*, i32** %9, align 8
  %40 = load i32, i32* @EDID_LENGTH, align 4
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call i32* @kmemdup(i32* %39, i32 %40, i32 %41)
  store i32* %42, i32** %8, align 8
  br label %43

43:                                               ; preds = %37, %30
  br label %44

44:                                               ; preds = %43, %21
  %45 = load i32*, i32** %8, align 8
  %46 = load i32**, i32*** %5, align 8
  store i32* %45, i32** %46, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = icmp ne i32* %47, null
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i32 0, i32 1
  ret i32 %50
}

declare dso_local i32 @DPRINTK(i8*, ...) #1

declare dso_local i32* @fb_ddc_read(i32*) #1

declare dso_local i32* @fb_firmware_edid(i32) #1

declare dso_local i32* @kmemdup(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
