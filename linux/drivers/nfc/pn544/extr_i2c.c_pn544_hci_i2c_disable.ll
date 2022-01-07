; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/pn544/extr_i2c.c_pn544_hci_i2c_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/pn544/extr_i2c.c_pn544_hci_i2c_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pn544_i2c_phy = type { i32, i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @pn544_hci_i2c_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pn544_hci_i2c_disable(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.pn544_i2c_phy*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.pn544_i2c_phy*
  store %struct.pn544_i2c_phy* %5, %struct.pn544_i2c_phy** %3, align 8
  %6 = load %struct.pn544_i2c_phy*, %struct.pn544_i2c_phy** %3, align 8
  %7 = getelementptr inbounds %struct.pn544_i2c_phy, %struct.pn544_i2c_phy* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @gpiod_set_value_cansleep(i32 %8, i32 0)
  %10 = load %struct.pn544_i2c_phy*, %struct.pn544_i2c_phy** %3, align 8
  %11 = getelementptr inbounds %struct.pn544_i2c_phy, %struct.pn544_i2c_phy* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.pn544_i2c_phy*, %struct.pn544_i2c_phy** %3, align 8
  %14 = getelementptr inbounds %struct.pn544_i2c_phy, %struct.pn544_i2c_phy* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @gpiod_set_value_cansleep(i32 %12, i32 %18)
  %20 = call i32 @usleep_range(i32 10000, i32 15000)
  %21 = load %struct.pn544_i2c_phy*, %struct.pn544_i2c_phy** %3, align 8
  %22 = getelementptr inbounds %struct.pn544_i2c_phy, %struct.pn544_i2c_phy* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.pn544_i2c_phy*, %struct.pn544_i2c_phy** %3, align 8
  %25 = getelementptr inbounds %struct.pn544_i2c_phy, %struct.pn544_i2c_phy* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @gpiod_set_value_cansleep(i32 %23, i32 %26)
  %28 = call i32 @usleep_range(i32 10000, i32 15000)
  %29 = load %struct.pn544_i2c_phy*, %struct.pn544_i2c_phy** %3, align 8
  %30 = getelementptr inbounds %struct.pn544_i2c_phy, %struct.pn544_i2c_phy* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.pn544_i2c_phy*, %struct.pn544_i2c_phy** %3, align 8
  %33 = getelementptr inbounds %struct.pn544_i2c_phy, %struct.pn544_i2c_phy* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i32 @gpiod_set_value_cansleep(i32 %31, i32 %37)
  %39 = call i32 @usleep_range(i32 10000, i32 15000)
  %40 = load %struct.pn544_i2c_phy*, %struct.pn544_i2c_phy** %3, align 8
  %41 = getelementptr inbounds %struct.pn544_i2c_phy, %struct.pn544_i2c_phy* %40, i32 0, i32 1
  store i64 0, i64* %41, align 8
  ret void
}

declare dso_local i32 @gpiod_set_value_cansleep(i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
