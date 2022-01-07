; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-sd3078.c_sd3078_enable_reg_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-sd3078.c_sd3078_enable_reg_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd3078 = type { i32 }

@SD3078_REG_CTRL2 = common dso_local global i32 0, align 4
@KEY_WRITE1 = common dso_local global i32 0, align 4
@SD3078_REG_CTRL1 = common dso_local global i32 0, align 4
@KEY_WRITE2 = common dso_local global i32 0, align 4
@KEY_WRITE3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sd3078*)* @sd3078_enable_reg_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sd3078_enable_reg_write(%struct.sd3078* %0) #0 {
  %2 = alloca %struct.sd3078*, align 8
  store %struct.sd3078* %0, %struct.sd3078** %2, align 8
  %3 = load %struct.sd3078*, %struct.sd3078** %2, align 8
  %4 = getelementptr inbounds %struct.sd3078, %struct.sd3078* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @SD3078_REG_CTRL2, align 4
  %7 = load i32, i32* @KEY_WRITE1, align 4
  %8 = load i32, i32* @KEY_WRITE1, align 4
  %9 = call i32 @regmap_update_bits(i32 %5, i32 %6, i32 %7, i32 %8)
  %10 = load %struct.sd3078*, %struct.sd3078** %2, align 8
  %11 = getelementptr inbounds %struct.sd3078, %struct.sd3078* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @SD3078_REG_CTRL1, align 4
  %14 = load i32, i32* @KEY_WRITE2, align 4
  %15 = load i32, i32* @KEY_WRITE2, align 4
  %16 = call i32 @regmap_update_bits(i32 %12, i32 %13, i32 %14, i32 %15)
  %17 = load %struct.sd3078*, %struct.sd3078** %2, align 8
  %18 = getelementptr inbounds %struct.sd3078, %struct.sd3078* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @SD3078_REG_CTRL1, align 4
  %21 = load i32, i32* @KEY_WRITE3, align 4
  %22 = load i32, i32* @KEY_WRITE3, align 4
  %23 = call i32 @regmap_update_bits(i32 %19, i32 %20, i32 %21, i32 %22)
  ret void
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
