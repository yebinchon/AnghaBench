; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-single.c_pcs_get_pin_by_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-single.c_pcs_get_pin_by_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcs_device = type { i32, i32, i32, i64, i32 }

@.str = private unnamed_addr constant [38 x i8] c"mux offset out of range: 0x%x (0x%x)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@BITS_PER_BYTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcs_device*, i32)* @pcs_get_pin_by_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcs_get_pin_by_offset(%struct.pcs_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pcs_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pcs_device* %0, %struct.pcs_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.pcs_device*, %struct.pcs_device** %4, align 8
  %9 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp uge i32 %7, %10
  br i1 %11, label %12, label %23

12:                                               ; preds = %2
  %13 = load %struct.pcs_device*, %struct.pcs_device** %4, align 8
  %14 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.pcs_device*, %struct.pcs_device** %4, align 8
  %18 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @dev_err(i32 %15, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %19)
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %46

23:                                               ; preds = %2
  %24 = load %struct.pcs_device*, %struct.pcs_device** %4, align 8
  %25 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %23
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @BITS_PER_BYTE, align 4
  %31 = mul i32 %29, %30
  %32 = load %struct.pcs_device*, %struct.pcs_device** %4, align 8
  %33 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = udiv i32 %31, %34
  store i32 %35, i32* %6, align 4
  br label %44

36:                                               ; preds = %23
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.pcs_device*, %struct.pcs_device** %4, align 8
  %39 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @BITS_PER_BYTE, align 4
  %42 = udiv i32 %40, %41
  %43 = udiv i32 %37, %42
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %36, %28
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %44, %12
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
