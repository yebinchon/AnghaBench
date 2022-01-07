; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/mb862xx/extr_mb862xx-i2c.c_mb862xx_i2c_read_byte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/mb862xx/extr_mb862xx-i2c.c_mb862xx_i2c_read_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { %struct.mb862xxfb_par* }
%struct.mb862xxfb_par = type { i32 }

@i2c = common dso_local global i32 0, align 4
@GC_I2C_BCR = common dso_local global i32 0, align 4
@I2C_START = common dso_local global i32 0, align 4
@I2C_ACK = common dso_local global i32 0, align 4
@GC_I2C_DAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, i32*, i32)* @mb862xx_i2c_read_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mb862xx_i2c_read_byte(%struct.i2c_adapter* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mb862xxfb_par*, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %10 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %9, i32 0, i32 0
  %11 = load %struct.mb862xxfb_par*, %struct.mb862xxfb_par** %10, align 8
  store %struct.mb862xxfb_par* %11, %struct.mb862xxfb_par** %8, align 8
  %12 = load i32, i32* @i2c, align 4
  %13 = load i32, i32* @GC_I2C_BCR, align 4
  %14 = load i32, i32* @I2C_START, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @I2C_ACK, align 4
  br label %20

20:                                               ; preds = %18, %17
  %21 = phi i32 [ 0, %17 ], [ %19, %18 ]
  %22 = or i32 %14, %21
  %23 = call i32 @outreg(i32 %12, i32 %13, i32 %22)
  %24 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %25 = call i32 @mb862xx_i2c_wait_event(%struct.i2c_adapter* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %33

28:                                               ; preds = %20
  %29 = load i32, i32* @i2c, align 4
  %30 = load i32, i32* @GC_I2C_DAR, align 4
  %31 = call i32 @inreg(i32 %29, i32 %30)
  %32 = load i32*, i32** %6, align 8
  store i32 %31, i32* %32, align 4
  store i32 1, i32* %4, align 4
  br label %33

33:                                               ; preds = %28, %27
  %34 = load i32, i32* %4, align 4
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
