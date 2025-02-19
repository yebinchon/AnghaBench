; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_s626.c_s626_i2c_handshake.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_s626.c_s626_i2c_handshake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64 }

@S626_P_I2CCTRL = common dso_local global i64 0, align 8
@S626_MC2_UPLD_IIC = common dso_local global i32 0, align 4
@S626_P_MC2 = common dso_local global i32 0, align 4
@s626_i2c_handshake_eoc = common dso_local global i32 0, align 4
@S626_I2C_BUSY = common dso_local global i32 0, align 4
@S626_I2C_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, i32)* @s626_i2c_handshake to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s626_i2c_handshake(%struct.comedi_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %10 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @S626_P_I2CCTRL, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @writel(i32 %8, i64 %13)
  %15 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %16 = load i32, i32* @S626_MC2_UPLD_IIC, align 4
  %17 = load i32, i32* @S626_P_MC2, align 4
  %18 = call i32 @s626_mc_enable(%struct.comedi_device* %15, i32 %16, i32 %17)
  %19 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %20 = load i32, i32* @s626_i2c_handshake_eoc, align 4
  %21 = call i32 @comedi_timeout(%struct.comedi_device* %19, i32* null, i32* null, i32 %20, i32 0)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %3, align 4
  br label %46

26:                                               ; preds = %2
  br label %27

27:                                               ; preds = %34, %26
  %28 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %29 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @S626_P_I2CCTRL, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @readl(i64 %32)
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %27
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @S626_I2C_BUSY, align 4
  %37 = load i32, i32* @S626_I2C_ERR, align 4
  %38 = or i32 %36, %37
  %39 = and i32 %35, %38
  %40 = load i32, i32* @S626_I2C_BUSY, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %27, label %42

42:                                               ; preds = %34
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @S626_I2C_ERR, align 4
  %45 = and i32 %43, %44
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %42, %24
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @s626_mc_enable(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @comedi_timeout(%struct.comedi_device*, i32*, i32*, i32, i32) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
