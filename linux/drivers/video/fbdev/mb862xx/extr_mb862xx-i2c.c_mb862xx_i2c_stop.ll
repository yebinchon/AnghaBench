; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/mb862xx/extr_mb862xx-i2c.c_mb862xx_i2c_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/mb862xx/extr_mb862xx-i2c.c_mb862xx_i2c_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { %struct.mb862xxfb_par* }
%struct.mb862xxfb_par = type { i64 }

@i2c = common dso_local global i32 0, align 4
@GC_I2C_BCR = common dso_local global i32 0, align 4
@I2C_STOP = common dso_local global i32 0, align 4
@GC_I2C_CCR = common dso_local global i32 0, align 4
@I2C_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_adapter*)* @mb862xx_i2c_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mb862xx_i2c_stop(%struct.i2c_adapter* %0) #0 {
  %2 = alloca %struct.i2c_adapter*, align 8
  %3 = alloca %struct.mb862xxfb_par*, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %2, align 8
  %4 = load %struct.i2c_adapter*, %struct.i2c_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %4, i32 0, i32 0
  %6 = load %struct.mb862xxfb_par*, %struct.mb862xxfb_par** %5, align 8
  store %struct.mb862xxfb_par* %6, %struct.mb862xxfb_par** %3, align 8
  %7 = load i32, i32* @i2c, align 4
  %8 = load i32, i32* @GC_I2C_BCR, align 4
  %9 = load i32, i32* @I2C_STOP, align 4
  %10 = call i32 @outreg(i32 %7, i32 %8, i32 %9)
  %11 = load i32, i32* @i2c, align 4
  %12 = load i32, i32* @GC_I2C_CCR, align 4
  %13 = load i32, i32* @I2C_DISABLE, align 4
  %14 = call i32 @outreg(i32 %11, i32 %12, i32 %13)
  %15 = load %struct.mb862xxfb_par*, %struct.mb862xxfb_par** %3, align 8
  %16 = getelementptr inbounds %struct.mb862xxfb_par, %struct.mb862xxfb_par* %15, i32 0, i32 0
  store i64 0, i64* %16, align 8
  ret void
}

declare dso_local i32 @outreg(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
