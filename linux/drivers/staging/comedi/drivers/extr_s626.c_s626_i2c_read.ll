; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_s626.c_s626_i2c_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_s626.c_s626_i2c_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, %struct.s626_private* }
%struct.s626_private = type { i32 }

@S626_I2C_ATTRSTART = common dso_local global i32 0, align 4
@S626_I2C_ATTRSTOP = common dso_local global i32 0, align 4
@S626_I2C_ATTRNOP = common dso_local global i32 0, align 4
@S626_P_I2CCTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, i32)* @s626_i2c_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s626_i2c_read(%struct.comedi_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.s626_private*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %8 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %7, i32 0, i32 1
  %9 = load %struct.s626_private*, %struct.s626_private** %8, align 8
  store %struct.s626_private* %9, %struct.s626_private** %6, align 8
  %10 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %11 = load i32, i32* @S626_I2C_ATTRSTART, align 4
  %12 = load %struct.s626_private*, %struct.s626_private** %6, align 8
  %13 = getelementptr inbounds %struct.s626_private, %struct.s626_private* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @S626_I2C_B2(i32 %11, i32 %14)
  %16 = load i32, i32* @S626_I2C_ATTRSTOP, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @S626_I2C_B1(i32 %16, i32 %17)
  %19 = or i32 %15, %18
  %20 = load i32, i32* @S626_I2C_ATTRNOP, align 4
  %21 = call i32 @S626_I2C_B0(i32 %20, i32 0)
  %22 = or i32 %19, %21
  %23 = call i64 @s626_i2c_handshake(%struct.comedi_device* %10, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %52

26:                                               ; preds = %2
  %27 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %28 = load i32, i32* @S626_I2C_ATTRSTART, align 4
  %29 = load %struct.s626_private*, %struct.s626_private** %6, align 8
  %30 = getelementptr inbounds %struct.s626_private, %struct.s626_private* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, 1
  %33 = call i32 @S626_I2C_B2(i32 %28, i32 %32)
  %34 = load i32, i32* @S626_I2C_ATTRSTOP, align 4
  %35 = call i32 @S626_I2C_B1(i32 %34, i32 0)
  %36 = or i32 %33, %35
  %37 = load i32, i32* @S626_I2C_ATTRNOP, align 4
  %38 = call i32 @S626_I2C_B0(i32 %37, i32 0)
  %39 = or i32 %36, %38
  %40 = call i64 @s626_i2c_handshake(%struct.comedi_device* %27, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %52

43:                                               ; preds = %26
  %44 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %45 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @S626_P_I2CCTRL, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @readl(i64 %48)
  %50 = ashr i32 %49, 16
  %51 = and i32 %50, 255
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %43, %42, %25
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i64 @s626_i2c_handshake(%struct.comedi_device*, i32) #1

declare dso_local i32 @S626_I2C_B2(i32, i32) #1

declare dso_local i32 @S626_I2C_B1(i32, i32) #1

declare dso_local i32 @S626_I2C_B0(i32, i32) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
