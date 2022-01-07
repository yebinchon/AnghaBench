; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_lm3533_bl.c_show_linear.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_lm3533_bl.c_show_linear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.lm3533_bl = type { i32 }

@LM3533_REG_CTRLBANK_AB_BCONF = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @show_linear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_linear(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.lm3533_bl*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = call %struct.lm3533_bl* @dev_get_drvdata(%struct.device* %13)
  store %struct.lm3533_bl* %14, %struct.lm3533_bl** %8, align 8
  %15 = load %struct.lm3533_bl*, %struct.lm3533_bl** %8, align 8
  %16 = getelementptr inbounds %struct.lm3533_bl, %struct.lm3533_bl* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @LM3533_REG_CTRLBANK_AB_BCONF, align 4
  %19 = call i32 @lm3533_read(i32 %17, i32 %18, i32* %9)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* %12, align 4
  store i32 %23, i32* %4, align 4
  br label %41

24:                                               ; preds = %3
  %25 = load %struct.lm3533_bl*, %struct.lm3533_bl** %8, align 8
  %26 = call i32 @lm3533_bl_get_ctrlbank_id(%struct.lm3533_bl* %25)
  %27 = mul nsw i32 2, %26
  %28 = add nsw i32 %27, 1
  %29 = shl i32 1, %28
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %10, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %24
  store i32 1, i32* %11, align 4
  br label %36

35:                                               ; preds = %24
  store i32 0, i32* %11, align 4
  br label %36

36:                                               ; preds = %35, %34
  %37 = load i8*, i8** %7, align 8
  %38 = load i32, i32* @PAGE_SIZE, align 4
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @scnprintf(i8* %37, i32 %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %39)
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %36, %22
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local %struct.lm3533_bl* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @lm3533_read(i32, i32, i32*) #1

declare dso_local i32 @lm3533_bl_get_ctrlbank_id(%struct.lm3533_bl*) #1

declare dso_local i32 @scnprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
