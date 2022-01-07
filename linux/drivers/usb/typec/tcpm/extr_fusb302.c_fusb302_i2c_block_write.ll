; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_fusb302.c_fusb302_i2c_block_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_fusb302.c_fusb302_i2c_block_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fusb302_chip = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"cannot block write 0x%02x, len=%d, ret=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fusb302_chip*, i64, i64, i64*)* @fusb302_i2c_block_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fusb302_i2c_block_write(%struct.fusb302_chip* %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fusb302_chip*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  store %struct.fusb302_chip* %0, %struct.fusb302_chip** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  store i32 0, i32* %10, align 4
  %11 = load i64, i64* %8, align 8
  %12 = icmp sle i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %4
  %14 = load i32, i32* %10, align 4
  store i32 %14, i32* %5, align 4
  br label %33

15:                                               ; preds = %4
  %16 = load %struct.fusb302_chip*, %struct.fusb302_chip** %6, align 8
  %17 = getelementptr inbounds %struct.fusb302_chip, %struct.fusb302_chip* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* %8, align 8
  %21 = load i64*, i64** %9, align 8
  %22 = call i32 @i2c_smbus_write_i2c_block_data(i32 %18, i64 %19, i64 %20, i64* %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %15
  %26 = load %struct.fusb302_chip*, %struct.fusb302_chip** %6, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* %8, align 8
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @fusb302_log(%struct.fusb302_chip* %26, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %27, i64 %28, i32 %29)
  br label %31

31:                                               ; preds = %25, %15
  %32 = load i32, i32* %10, align 4
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %31, %13
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local i32 @i2c_smbus_write_i2c_block_data(i32, i64, i64, i64*) #1

declare dso_local i32 @fusb302_log(%struct.fusb302_chip*, i8*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
