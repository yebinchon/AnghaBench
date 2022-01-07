; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/mb862xx/extr_mb862xx-i2c.c_mb862xx_i2c_write_byte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/mb862xx/extr_mb862xx-i2c.c_mb862xx_i2c_write_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { %struct.mb862xxfb_par* }
%struct.mb862xxfb_par = type { i32 }

@i2c = common dso_local global i32 0, align 4
@GC_I2C_DAR = common dso_local global i32 0, align 4
@GC_I2C_BCR = common dso_local global i32 0, align 4
@I2C_START = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@GC_I2C_BSR = common dso_local global i32 0, align 4
@I2C_LRB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, i32)* @mb862xx_i2c_write_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mb862xx_i2c_write_byte(%struct.i2c_adapter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mb862xxfb_par*, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %8 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %7, i32 0, i32 0
  %9 = load %struct.mb862xxfb_par*, %struct.mb862xxfb_par** %8, align 8
  store %struct.mb862xxfb_par* %9, %struct.mb862xxfb_par** %6, align 8
  %10 = load i32, i32* @i2c, align 4
  %11 = load i32, i32* @GC_I2C_DAR, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @outreg(i32 %10, i32 %11, i32 %12)
  %14 = load i32, i32* @i2c, align 4
  %15 = load i32, i32* @GC_I2C_BCR, align 4
  %16 = load i32, i32* @I2C_START, align 4
  %17 = call i32 @outreg(i32 %14, i32 %15, i32 %16)
  %18 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %19 = call i32 @mb862xx_i2c_wait_event(%struct.i2c_adapter* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @EIO, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %33

24:                                               ; preds = %2
  %25 = load i32, i32* @i2c, align 4
  %26 = load i32, i32* @GC_I2C_BSR, align 4
  %27 = call i32 @inreg(i32 %25, i32 %26)
  %28 = load i32, i32* @I2C_LRB, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %24, %21
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @outreg(i32, i32, i32) #1

declare dso_local i32 @mb862xx_i2c_wait_event(%struct.i2c_adapter*) #1

declare dso_local i32 @inreg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
