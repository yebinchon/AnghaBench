; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvmem/extr_sc27xx-efuse.c_sc27xx_efuse_poll_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvmem/extr_sc27xx-efuse.c_sc27xx_efuse_poll_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc27xx_efuse = type { i32, i64, i32 }

@SC27XX_EFUSE_STATUS = common dso_local global i64 0, align 8
@SC27XX_EFUSE_POLL_DELAY_US = common dso_local global i32 0, align 4
@SC27XX_EFUSE_POLL_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"timeout to update the efuse status\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sc27xx_efuse*, i32)* @sc27xx_efuse_poll_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sc27xx_efuse_poll_status(%struct.sc27xx_efuse* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sc27xx_efuse*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sc27xx_efuse* %0, %struct.sc27xx_efuse** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.sc27xx_efuse*, %struct.sc27xx_efuse** %4, align 8
  %9 = getelementptr inbounds %struct.sc27xx_efuse, %struct.sc27xx_efuse* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.sc27xx_efuse*, %struct.sc27xx_efuse** %4, align 8
  %12 = getelementptr inbounds %struct.sc27xx_efuse, %struct.sc27xx_efuse* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SC27XX_EFUSE_STATUS, align 8
  %15 = add nsw i64 %13, %14
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %5, align 4
  %19 = and i32 %17, %18
  %20 = load i32, i32* @SC27XX_EFUSE_POLL_DELAY_US, align 4
  %21 = load i32, i32* @SC27XX_EFUSE_POLL_TIMEOUT, align 4
  %22 = call i32 @regmap_read_poll_timeout(i32 %10, i64 %15, i32 %16, i32 %19, i32 %20, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %2
  %26 = load %struct.sc27xx_efuse*, %struct.sc27xx_efuse** %4, align 8
  %27 = getelementptr inbounds %struct.sc27xx_efuse, %struct.sc27xx_efuse* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @dev_err(i32 %28, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %3, align 4
  br label %32

31:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %31, %25
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @regmap_read_poll_timeout(i32, i64, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
