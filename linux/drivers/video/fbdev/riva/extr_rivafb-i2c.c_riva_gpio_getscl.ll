; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/riva/extr_rivafb-i2c.c_riva_gpio_getscl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/riva/extr_rivafb-i2c.c_riva_gpio_getscl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.riva_i2c_chan = type { i32, %struct.riva_par* }
%struct.riva_par = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @riva_gpio_getscl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @riva_gpio_getscl(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.riva_i2c_chan*, align 8
  %4 = alloca %struct.riva_par*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.riva_i2c_chan*
  store %struct.riva_i2c_chan* %7, %struct.riva_i2c_chan** %3, align 8
  %8 = load %struct.riva_i2c_chan*, %struct.riva_i2c_chan** %3, align 8
  %9 = getelementptr inbounds %struct.riva_i2c_chan, %struct.riva_i2c_chan* %8, i32 0, i32 1
  %10 = load %struct.riva_par*, %struct.riva_par** %9, align 8
  store %struct.riva_par* %10, %struct.riva_par** %4, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.riva_par*, %struct.riva_par** %4, align 8
  %12 = getelementptr inbounds %struct.riva_par, %struct.riva_par* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.riva_i2c_chan*, %struct.riva_i2c_chan** %3, align 8
  %16 = getelementptr inbounds %struct.riva_i2c_chan, %struct.riva_i2c_chan* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @VGA_WR08(i32 %14, i32 980, i32 %17)
  %19 = load %struct.riva_par*, %struct.riva_par** %4, align 8
  %20 = getelementptr inbounds %struct.riva_par, %struct.riva_par* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @VGA_RD08(i32 %22, i32 981)
  %24 = and i32 %23, 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  store i32 1, i32* %5, align 4
  br label %27

27:                                               ; preds = %26, %1
  %28 = load i32, i32* %5, align 4
  ret i32 %28
}

declare dso_local i32 @VGA_WR08(i32, i32, i32) #1

declare dso_local i32 @VGA_RD08(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
