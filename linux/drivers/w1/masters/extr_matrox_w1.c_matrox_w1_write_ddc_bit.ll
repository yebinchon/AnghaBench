; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/masters/extr_matrox_w1.c_matrox_w1_write_ddc_bit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/masters/extr_matrox_w1.c_matrox_w1_write_ddc_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.matrox_device = type { i32 }

@MATROX_GET_CONTROL = common dso_local global i32 0, align 4
@MATROX_GET_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @matrox_w1_write_ddc_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @matrox_w1_write_ddc_bit(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.matrox_device*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.matrox_device*
  store %struct.matrox_device* %8, %struct.matrox_device** %6, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %4, align 4
  br label %16

12:                                               ; preds = %2
  %13 = load %struct.matrox_device*, %struct.matrox_device** %6, align 8
  %14 = getelementptr inbounds %struct.matrox_device, %struct.matrox_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %4, align 4
  br label %16

16:                                               ; preds = %12, %11
  %17 = load %struct.matrox_device*, %struct.matrox_device** %6, align 8
  %18 = load i32, i32* @MATROX_GET_CONTROL, align 4
  %19 = call i32 @matrox_w1_read_reg(%struct.matrox_device* %17, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load %struct.matrox_device*, %struct.matrox_device** %6, align 8
  %21 = load i32, i32* @MATROX_GET_CONTROL, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.matrox_device*, %struct.matrox_device** %6, align 8
  %24 = getelementptr inbounds %struct.matrox_device, %struct.matrox_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = xor i32 %25, -1
  %27 = and i32 %22, %26
  %28 = load i32, i32* %4, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @matrox_w1_write_reg(%struct.matrox_device* %20, i32 %21, i32 %29)
  %31 = load %struct.matrox_device*, %struct.matrox_device** %6, align 8
  %32 = load i32, i32* @MATROX_GET_DATA, align 4
  %33 = call i32 @matrox_w1_write_reg(%struct.matrox_device* %31, i32 %32, i32 0)
  ret void
}

declare dso_local i32 @matrox_w1_read_reg(%struct.matrox_device*, i32) #1

declare dso_local i32 @matrox_w1_write_reg(%struct.matrox_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
