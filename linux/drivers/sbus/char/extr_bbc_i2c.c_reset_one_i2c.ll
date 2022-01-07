; ModuleID = '/home/carl/AnghaBench/linux/drivers/sbus/char/extr_bbc_i2c.c_reset_one_i2c.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/sbus/char/extr_bbc_i2c.c_reset_one_i2c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bbc_i2c_bus = type { i32, i32, i64 }

@I2C_PCF_PIN = common dso_local global i32 0, align 4
@I2C_PCF_ES1 = common dso_local global i32 0, align 4
@I2C_PCF_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bbc_i2c_bus*)* @reset_one_i2c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset_one_i2c(%struct.bbc_i2c_bus* %0) #0 {
  %2 = alloca %struct.bbc_i2c_bus*, align 8
  store %struct.bbc_i2c_bus* %0, %struct.bbc_i2c_bus** %2, align 8
  %3 = load i32, i32* @I2C_PCF_PIN, align 4
  %4 = load %struct.bbc_i2c_bus*, %struct.bbc_i2c_bus** %2, align 8
  %5 = getelementptr inbounds %struct.bbc_i2c_bus, %struct.bbc_i2c_bus* %4, i32 0, i32 2
  %6 = load i64, i64* %5, align 8
  %7 = add nsw i64 %6, 0
  %8 = call i32 @writeb(i32 %3, i64 %7)
  %9 = load %struct.bbc_i2c_bus*, %struct.bbc_i2c_bus** %2, align 8
  %10 = getelementptr inbounds %struct.bbc_i2c_bus, %struct.bbc_i2c_bus* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.bbc_i2c_bus*, %struct.bbc_i2c_bus** %2, align 8
  %13 = getelementptr inbounds %struct.bbc_i2c_bus, %struct.bbc_i2c_bus* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %14, 1
  %16 = call i32 @writeb(i32 %11, i64 %15)
  %17 = load i32, i32* @I2C_PCF_PIN, align 4
  %18 = load i32, i32* @I2C_PCF_ES1, align 4
  %19 = or i32 %17, %18
  %20 = load %struct.bbc_i2c_bus*, %struct.bbc_i2c_bus** %2, align 8
  %21 = getelementptr inbounds %struct.bbc_i2c_bus, %struct.bbc_i2c_bus* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, 0
  %24 = call i32 @writeb(i32 %19, i64 %23)
  %25 = load %struct.bbc_i2c_bus*, %struct.bbc_i2c_bus** %2, align 8
  %26 = getelementptr inbounds %struct.bbc_i2c_bus, %struct.bbc_i2c_bus* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.bbc_i2c_bus*, %struct.bbc_i2c_bus** %2, align 8
  %29 = getelementptr inbounds %struct.bbc_i2c_bus, %struct.bbc_i2c_bus* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, 1
  %32 = call i32 @writeb(i32 %27, i64 %31)
  %33 = load i32, i32* @I2C_PCF_IDLE, align 4
  %34 = load %struct.bbc_i2c_bus*, %struct.bbc_i2c_bus** %2, align 8
  %35 = getelementptr inbounds %struct.bbc_i2c_bus, %struct.bbc_i2c_bus* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, 0
  %38 = call i32 @writeb(i32 %33, i64 %37)
  ret void
}

declare dso_local i32 @writeb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
