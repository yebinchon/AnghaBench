; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_fusb302.c_fusb302_i2c_mask_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_fusb302.c_fusb302_i2c_mask_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fusb302_chip = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fusb302_chip*, i32, i32, i32)* @fusb302_i2c_mask_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fusb302_i2c_mask_write(%struct.fusb302_chip* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fusb302_chip*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.fusb302_chip* %0, %struct.fusb302_chip** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %12 = load %struct.fusb302_chip*, %struct.fusb302_chip** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @fusb302_i2c_read(%struct.fusb302_chip* %12, i32 %13, i32* %11)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* %10, align 4
  store i32 %18, i32* %5, align 4
  br label %37

19:                                               ; preds = %4
  %20 = load i32, i32* %8, align 4
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %11, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %11, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %11, align 4
  %27 = load %struct.fusb302_chip*, %struct.fusb302_chip** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %11, align 4
  %30 = call i32 @fusb302_i2c_write(%struct.fusb302_chip* %27, i32 %28, i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %19
  %34 = load i32, i32* %10, align 4
  store i32 %34, i32* %5, align 4
  br label %37

35:                                               ; preds = %19
  %36 = load i32, i32* %10, align 4
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %35, %33, %17
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local i32 @fusb302_i2c_read(%struct.fusb302_chip*, i32, i32*) #1

declare dso_local i32 @fusb302_i2c_write(%struct.fusb302_chip*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
