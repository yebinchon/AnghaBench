; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fb_ddc.c_fb_do_probe_ddc_edid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fb_ddc.c_fb_do_probe_ddc_edid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32, i8*, i32, i32 }

@EDID_LENGTH = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@DDC_ADDR = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"unable to allocate memory for EDID block.\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"unable to read EDID block.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.i2c_adapter*)* @fb_do_probe_ddc_edid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @fb_do_probe_ddc_edid(%struct.i2c_adapter* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.i2c_adapter*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  %6 = alloca [2 x %struct.i2c_msg], align 16
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %3, align 8
  store i8 0, i8* %4, align 1
  %7 = load i32, i32* @EDID_LENGTH, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call i8* @kmalloc(i32 %7, i32 %8)
  store i8* %9, i8** %5, align 8
  %10 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %6, i64 0, i64 0
  %11 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %10, i32 0, i32 0
  store i32 1, i32* %11, align 8
  %12 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %10, i32 0, i32 1
  store i8* %4, i8** %12, align 8
  %13 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %10, i32 0, i32 2
  store i32 0, i32* %13, align 8
  %14 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %10, i32 0, i32 3
  %15 = load i32, i32* @DDC_ADDR, align 4
  store i32 %15, i32* %14, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %10, i64 1
  %17 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %16, i32 0, i32 0
  %18 = load i32, i32* @EDID_LENGTH, align 4
  store i32 %18, i32* %17, align 8
  %19 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %16, i32 0, i32 1
  %20 = load i8*, i8** %5, align 8
  store i8* %20, i8** %19, align 8
  %21 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %16, i32 0, i32 2
  %22 = load i32, i32* @I2C_M_RD, align 4
  store i32 %22, i32* %21, align 8
  %23 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %16, i32 0, i32 3
  %24 = load i32, i32* @DDC_ADDR, align 4
  store i32 %24, i32* %23, align 4
  %25 = load i8*, i8** %5, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %1
  %28 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %29 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %28, i32 0, i32 0
  %30 = call i32 @dev_warn(i32* %29, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %2, align 8
  br label %44

31:                                               ; preds = %1
  %32 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %33 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %6, i64 0, i64 0
  %34 = call i32 @i2c_transfer(%struct.i2c_adapter* %32, %struct.i2c_msg* %33, i32 2)
  %35 = icmp eq i32 %34, 2
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i8*, i8** %5, align 8
  store i8* %37, i8** %2, align 8
  br label %44

38:                                               ; preds = %31
  %39 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %40 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %39, i32 0, i32 0
  %41 = call i32 @dev_warn(i32* %40, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i8*, i8** %5, align 8
  %43 = call i32 @kfree(i8* %42)
  store i8* null, i8** %2, align 8
  br label %44

44:                                               ; preds = %38, %36, %27
  %45 = load i8*, i8** %2, align 8
  ret i8* %45
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @i2c_transfer(%struct.i2c_adapter*, %struct.i2c_msg*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
