; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/savage/extr_savagefb-i2c.c_prosavage_gpio_setscl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/savage/extr_savagefb-i2c.c_prosavage_gpio_setscl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.savagefb_i2c_chan = type { i32, i32 }

@PROSAVAGE_I2C_ENAB = common dso_local global i32 0, align 4
@PROSAVAGE_I2C_SCL_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @prosavage_gpio_setscl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prosavage_gpio_setscl(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.savagefb_i2c_chan*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.savagefb_i2c_chan*
  store %struct.savagefb_i2c_chan* %8, %struct.savagefb_i2c_chan** %5, align 8
  %9 = load %struct.savagefb_i2c_chan*, %struct.savagefb_i2c_chan** %5, align 8
  %10 = getelementptr inbounds %struct.savagefb_i2c_chan, %struct.savagefb_i2c_chan* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.savagefb_i2c_chan*, %struct.savagefb_i2c_chan** %5, align 8
  %13 = getelementptr inbounds %struct.savagefb_i2c_chan, %struct.savagefb_i2c_chan* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @VGArCR(i32 %11, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* @PROSAVAGE_I2C_ENAB, align 4
  %17 = load i32, i32* %6, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load i32, i32* @PROSAVAGE_I2C_SCL_OUT, align 4
  %23 = load i32, i32* %6, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %6, align 4
  br label %30

25:                                               ; preds = %2
  %26 = load i32, i32* @PROSAVAGE_I2C_SCL_OUT, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %6, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %25, %21
  %31 = load %struct.savagefb_i2c_chan*, %struct.savagefb_i2c_chan** %5, align 8
  %32 = getelementptr inbounds %struct.savagefb_i2c_chan, %struct.savagefb_i2c_chan* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.savagefb_i2c_chan*, %struct.savagefb_i2c_chan** %5, align 8
  %36 = getelementptr inbounds %struct.savagefb_i2c_chan, %struct.savagefb_i2c_chan* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @VGAwCR(i32 %33, i32 %34, i32 %37)
  ret void
}

declare dso_local i32 @VGArCR(i32, i32) #1

declare dso_local i32 @VGAwCR(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
