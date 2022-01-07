; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/kpc2000/extr_kpc2000_i2c.c_i801_check_pre.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/kpc2000/extr_kpc2000_i2c.c_i801_check_pre.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SMBHSTSTS_HOST_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"SMBus is busy, can't use it! (status=%x)\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@STATUS_FLAGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Failed clearing status flags (%02x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_device*)* @i801_check_pre to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i801_check_pre(%struct.i2c_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_device*, align 8
  %4 = alloca i32, align 4
  store %struct.i2c_device* %0, %struct.i2c_device** %3, align 8
  %5 = load %struct.i2c_device*, %struct.i2c_device** %3, align 8
  %6 = call i32 @SMBHSTSTS(%struct.i2c_device* %5)
  %7 = call i32 @inb_p(i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @SMBHSTSTS_HOST_BUSY, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %1
  %13 = load %struct.i2c_device*, %struct.i2c_device** %3, align 8
  %14 = getelementptr inbounds %struct.i2c_device, %struct.i2c_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @dev_err(i32* %15, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* @EBUSY, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %48

20:                                               ; preds = %1
  %21 = load i32, i32* @STATUS_FLAGS, align 4
  %22 = load i32, i32* %4, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %47

26:                                               ; preds = %20
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.i2c_device*, %struct.i2c_device** %3, align 8
  %29 = call i32 @SMBHSTSTS(%struct.i2c_device* %28)
  %30 = call i32 @outb_p(i32 %27, i32 %29)
  %31 = load %struct.i2c_device*, %struct.i2c_device** %3, align 8
  %32 = call i32 @SMBHSTSTS(%struct.i2c_device* %31)
  %33 = call i32 @inb_p(i32 %32)
  %34 = load i32, i32* @STATUS_FLAGS, align 4
  %35 = and i32 %33, %34
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %26
  %39 = load %struct.i2c_device*, %struct.i2c_device** %3, align 8
  %40 = getelementptr inbounds %struct.i2c_device, %struct.i2c_device* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @dev_err(i32* %41, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* @EBUSY, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %48

46:                                               ; preds = %26
  br label %47

47:                                               ; preds = %46, %20
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %47, %38, %12
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @inb_p(i32) #1

declare dso_local i32 @SMBHSTSTS(%struct.i2c_device*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @outb_p(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
