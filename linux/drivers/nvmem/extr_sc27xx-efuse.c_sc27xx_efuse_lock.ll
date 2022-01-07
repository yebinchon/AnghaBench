; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvmem/extr_sc27xx-efuse.c_sc27xx_efuse_lock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvmem/extr_sc27xx-efuse.c_sc27xx_efuse_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc27xx_efuse = type { i32, i32, i32 }

@SC27XX_EFUSE_HWLOCK_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"timeout to get the hwspinlock\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sc27xx_efuse*)* @sc27xx_efuse_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sc27xx_efuse_lock(%struct.sc27xx_efuse* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sc27xx_efuse*, align 8
  %4 = alloca i32, align 4
  store %struct.sc27xx_efuse* %0, %struct.sc27xx_efuse** %3, align 8
  %5 = load %struct.sc27xx_efuse*, %struct.sc27xx_efuse** %3, align 8
  %6 = getelementptr inbounds %struct.sc27xx_efuse, %struct.sc27xx_efuse* %5, i32 0, i32 0
  %7 = call i32 @mutex_lock(i32* %6)
  %8 = load %struct.sc27xx_efuse*, %struct.sc27xx_efuse** %3, align 8
  %9 = getelementptr inbounds %struct.sc27xx_efuse, %struct.sc27xx_efuse* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @SC27XX_EFUSE_HWLOCK_TIMEOUT, align 4
  %12 = call i32 @hwspin_lock_timeout_raw(i32 %10, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %1
  %16 = load %struct.sc27xx_efuse*, %struct.sc27xx_efuse** %3, align 8
  %17 = getelementptr inbounds %struct.sc27xx_efuse, %struct.sc27xx_efuse* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @dev_err(i32 %18, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.sc27xx_efuse*, %struct.sc27xx_efuse** %3, align 8
  %21 = getelementptr inbounds %struct.sc27xx_efuse, %struct.sc27xx_efuse* %20, i32 0, i32 0
  %22 = call i32 @mutex_unlock(i32* %21)
  %23 = load i32, i32* %4, align 4
  store i32 %23, i32* %2, align 4
  br label %25

24:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %24, %15
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @hwspin_lock_timeout_raw(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
