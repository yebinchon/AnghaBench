; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_msi-wmi.c_bl_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_msi-wmi.c_bl_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backlight_device = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"Could not query backlight: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Get: Query block returned: %d\0A\00", align 1
@backlight_map = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [43 x i8] c"Current backlight level: 0x%X - index: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"get: Invalid brightness value: 0x%X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.backlight_device*)* @bl_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bl_get(%struct.backlight_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.backlight_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.backlight_device* %0, %struct.backlight_device** %3, align 8
  %7 = call i32 @msi_wmi_query_block(i32 1, i32* %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %55

15:                                               ; preds = %1
  %16 = load i32, i32* %6, align 4
  %17 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %40, %15
  %19 = load i32, i32* %4, align 4
  %20 = load i32*, i32** @backlight_map, align 8
  %21 = call i32 @ARRAY_SIZE(i32* %20)
  %22 = icmp slt i32 %19, %21
  br i1 %22, label %23, label %43

23:                                               ; preds = %18
  %24 = load i32*, i32** @backlight_map, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %23
  %32 = load i32*, i32** @backlight_map, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %4, align 4
  %38 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %36, i32 %37)
  br label %43

39:                                               ; preds = %23
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %4, align 4
  br label %18

43:                                               ; preds = %31, %18
  %44 = load i32, i32* %4, align 4
  %45 = load i32*, i32** @backlight_map, align 8
  %46 = call i32 @ARRAY_SIZE(i32* %45)
  %47 = icmp eq i32 %44, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %55

53:                                               ; preds = %43
  %54 = load i32, i32* %4, align 4
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %53, %48, %10
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @msi_wmi_query_block(i32, i32*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
