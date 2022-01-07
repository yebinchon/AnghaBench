; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sm501fb.c_sm501fb_crtsrc_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sm501fb.c_sm501fb_crtsrc_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sm501fb_info = type { i64 }

@EINVAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"crt\00", align 1
@HEAD_CRT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"panel\00", align 1
@HEAD_PANEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"setting crt source to head %d\0A\00", align 1
@SM501_DC_CRT_CONTROL = common dso_local global i64 0, align 8
@SM501_DC_CRT_CONTROL_SEL = common dso_local global i64 0, align 8
@SM501_DC_CRT_CONTROL_ENABLE = common dso_local global i64 0, align 8
@SM501_DC_CRT_CONTROL_TE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @sm501fb_crtsrc_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sm501fb_crtsrc_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sm501fb_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.sm501fb_info* @dev_get_drvdata(%struct.device* %13)
  store %struct.sm501fb_info* %14, %struct.sm501fb_info** %10, align 8
  %15 = load i64, i64* %9, align 8
  %16 = icmp ult i64 %15, 1
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i64, i64* @EINVAL, align 8
  %19 = sub i64 0, %18
  store i64 %19, i64* %5, align 8
  br label %83

20:                                               ; preds = %4
  %21 = load i8*, i8** %8, align 8
  %22 = call i64 @strncasecmp(i8* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* @HEAD_CRT, align 4
  store i32 %25, i32* %11, align 4
  br label %36

26:                                               ; preds = %20
  %27 = load i8*, i8** %8, align 8
  %28 = call i64 @strncasecmp(i8* %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 5)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32, i32* @HEAD_PANEL, align 4
  store i32 %31, i32* %11, align 4
  br label %35

32:                                               ; preds = %26
  %33 = load i64, i64* @EINVAL, align 8
  %34 = sub i64 0, %33
  store i64 %34, i64* %5, align 8
  br label %83

35:                                               ; preds = %30
  br label %36

36:                                               ; preds = %35, %24
  %37 = load %struct.device*, %struct.device** %6, align 8
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @dev_info(%struct.device* %37, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  %40 = load %struct.sm501fb_info*, %struct.sm501fb_info** %10, align 8
  %41 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @SM501_DC_CRT_CONTROL, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i64 @smc501_readl(i64 %44)
  store i64 %45, i64* %12, align 8
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* @HEAD_CRT, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %36
  %50 = load i64, i64* @SM501_DC_CRT_CONTROL_SEL, align 8
  %51 = load i64, i64* %12, align 8
  %52 = or i64 %51, %50
  store i64 %52, i64* %12, align 8
  %53 = load i64, i64* @SM501_DC_CRT_CONTROL_ENABLE, align 8
  %54 = load i64, i64* %12, align 8
  %55 = or i64 %54, %53
  store i64 %55, i64* %12, align 8
  %56 = load i64, i64* @SM501_DC_CRT_CONTROL_TE, align 8
  %57 = load i64, i64* %12, align 8
  %58 = or i64 %57, %56
  store i64 %58, i64* %12, align 8
  br label %72

59:                                               ; preds = %36
  %60 = load i64, i64* @SM501_DC_CRT_CONTROL_SEL, align 8
  %61 = xor i64 %60, -1
  %62 = load i64, i64* %12, align 8
  %63 = and i64 %62, %61
  store i64 %63, i64* %12, align 8
  %64 = load i64, i64* @SM501_DC_CRT_CONTROL_ENABLE, align 8
  %65 = xor i64 %64, -1
  %66 = load i64, i64* %12, align 8
  %67 = and i64 %66, %65
  store i64 %67, i64* %12, align 8
  %68 = load i64, i64* @SM501_DC_CRT_CONTROL_TE, align 8
  %69 = xor i64 %68, -1
  %70 = load i64, i64* %12, align 8
  %71 = and i64 %70, %69
  store i64 %71, i64* %12, align 8
  br label %72

72:                                               ; preds = %59, %49
  %73 = load i64, i64* %12, align 8
  %74 = load %struct.sm501fb_info*, %struct.sm501fb_info** %10, align 8
  %75 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @SM501_DC_CRT_CONTROL, align 8
  %78 = add nsw i64 %76, %77
  %79 = call i32 @smc501_writel(i64 %73, i64 %78)
  %80 = load %struct.sm501fb_info*, %struct.sm501fb_info** %10, align 8
  %81 = call i32 @sm501fb_sync_regs(%struct.sm501fb_info* %80)
  %82 = load i64, i64* %9, align 8
  store i64 %82, i64* %5, align 8
  br label %83

83:                                               ; preds = %72, %32, %17
  %84 = load i64, i64* %5, align 8
  ret i64 %84
}

declare dso_local %struct.sm501fb_info* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

declare dso_local i64 @smc501_readl(i64) #1

declare dso_local i32 @smc501_writel(i64, i64) #1

declare dso_local i32 @sm501fb_sync_regs(%struct.sm501fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
