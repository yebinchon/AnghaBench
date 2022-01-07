; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_fintek.c_fintek_8250_check_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_fintek.c_fintek_8250_check_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fintek_8250 = type { i32 }

@VENDOR_ID1 = common dso_local global i32 0, align 4
@VENDOR_ID1_VAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@VENDOR_ID2 = common dso_local global i32 0, align 4
@VENDOR_ID2_VAL = common dso_local global i32 0, align 4
@CHIP_ID1 = common dso_local global i32 0, align 4
@CHIP_ID2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fintek_8250*)* @fintek_8250_check_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fintek_8250_check_id(%struct.fintek_8250* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fintek_8250*, align 8
  %4 = alloca i32, align 4
  store %struct.fintek_8250* %0, %struct.fintek_8250** %3, align 8
  %5 = load %struct.fintek_8250*, %struct.fintek_8250** %3, align 8
  %6 = load i32, i32* @VENDOR_ID1, align 4
  %7 = call i32 @sio_read_reg(%struct.fintek_8250* %5, i32 %6)
  %8 = load i32, i32* @VENDOR_ID1_VAL, align 4
  %9 = icmp ne i32 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @ENODEV, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %41

13:                                               ; preds = %1
  %14 = load %struct.fintek_8250*, %struct.fintek_8250** %3, align 8
  %15 = load i32, i32* @VENDOR_ID2, align 4
  %16 = call i32 @sio_read_reg(%struct.fintek_8250* %14, i32 %15)
  %17 = load i32, i32* @VENDOR_ID2_VAL, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %41

22:                                               ; preds = %13
  %23 = load %struct.fintek_8250*, %struct.fintek_8250** %3, align 8
  %24 = load i32, i32* @CHIP_ID1, align 4
  %25 = call i32 @sio_read_reg(%struct.fintek_8250* %23, i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load %struct.fintek_8250*, %struct.fintek_8250** %3, align 8
  %27 = load i32, i32* @CHIP_ID2, align 4
  %28 = call i32 @sio_read_reg(%struct.fintek_8250* %26, i32 %27)
  %29 = shl i32 %28, 8
  %30 = load i32, i32* %4, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  switch i32 %32, label %34 [
    i32 129, label %33
    i32 128, label %33
    i32 131, label %33
    i32 130, label %33
    i32 132, label %33
  ]

33:                                               ; preds = %22, %22, %22, %22, %22
  br label %37

34:                                               ; preds = %22
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %41

37:                                               ; preds = %33
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.fintek_8250*, %struct.fintek_8250** %3, align 8
  %40 = getelementptr inbounds %struct.fintek_8250, %struct.fintek_8250* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %37, %34, %19, %10
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @sio_read_reg(%struct.fintek_8250*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
