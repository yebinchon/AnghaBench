; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/kpc2000/extr_kpc2000_i2c.c_i801_transaction.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/kpc2000/extr_kpc2000_i2c.c_i801_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_device = type { i32 }

@I801_START = common dso_local global i32 0, align 4
@SMBHSTSTS_HOST_BUSY = common dso_local global i32 0, align 4
@MAX_RETRIES = common dso_local global i32 0, align 4
@SMBHSTSTS_INTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_device*, i32)* @i801_transaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i801_transaction(%struct.i2c_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.i2c_device* %0, %struct.i2c_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.i2c_device*, %struct.i2c_device** %4, align 8
  %10 = call i32 @i801_check_pre(%struct.i2c_device* %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %3, align 4
  br label %56

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @I801_START, align 4
  %18 = or i32 %16, %17
  %19 = load %struct.i2c_device*, %struct.i2c_device** %4, align 8
  %20 = call i32 @SMBHSTCNT(%struct.i2c_device* %19)
  %21 = call i32 @outb_p(i32 %18, i32 %20)
  br label %22

22:                                               ; preds = %37, %15
  %23 = call i32 @usleep_range(i32 250, i32 500)
  %24 = load %struct.i2c_device*, %struct.i2c_device** %4, align 8
  %25 = call i32 @SMBHSTSTS(%struct.i2c_device* %24)
  %26 = call i32 @inb_p(i32 %25)
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %22
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @SMBHSTSTS_HOST_BUSY, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load i32, i32* %8, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* @MAX_RETRIES, align 4
  %36 = icmp slt i32 %33, %35
  br label %37

37:                                               ; preds = %32, %27
  %38 = phi i1 [ false, %27 ], [ %36, %32 ]
  br i1 %38, label %22, label %39

39:                                               ; preds = %37
  %40 = load %struct.i2c_device*, %struct.i2c_device** %4, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @MAX_RETRIES, align 4
  %44 = icmp sgt i32 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @i801_check_post(%struct.i2c_device* %40, i32 %41, i32 %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %39
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %3, align 4
  br label %56

51:                                               ; preds = %39
  %52 = load i32, i32* @SMBHSTSTS_INTR, align 4
  %53 = load %struct.i2c_device*, %struct.i2c_device** %4, align 8
  %54 = call i32 @SMBHSTSTS(%struct.i2c_device* %53)
  %55 = call i32 @outb_p(i32 %52, i32 %54)
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %51, %49, %13
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @i801_check_pre(%struct.i2c_device*) #1

declare dso_local i32 @outb_p(i32, i32) #1

declare dso_local i32 @SMBHSTCNT(%struct.i2c_device*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @inb_p(i32) #1

declare dso_local i32 @SMBHSTSTS(%struct.i2c_device*) #1

declare dso_local i32 @i801_check_post(%struct.i2c_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
