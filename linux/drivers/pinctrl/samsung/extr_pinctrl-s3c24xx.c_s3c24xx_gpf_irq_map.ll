; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/samsung/extr_pinctrl-s3c24xx.c_s3c24xx_gpf_irq_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/samsung/extr_pinctrl-s3c24xx.c_s3c24xx_gpf_irq_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { %struct.s3c24xx_eint_domain_data* }
%struct.s3c24xx_eint_domain_data = type { i64, %struct.samsung_pin_bank* }
%struct.samsung_pin_bank = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@s3c2410_eint0_3_chip = common dso_local global i32 0, align 4
@handle_edge_irq = common dso_local global i32 0, align 4
@s3c2412_eint0_3_chip = common dso_local global i32 0, align 4
@s3c24xx_eint_chip = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_domain*, i32, i32)* @s3c24xx_gpf_irq_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c24xx_gpf_irq_map(%struct.irq_domain* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.irq_domain*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.s3c24xx_eint_domain_data*, align 8
  %9 = alloca %struct.samsung_pin_bank*, align 8
  store %struct.irq_domain* %0, %struct.irq_domain** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.irq_domain*, %struct.irq_domain** %5, align 8
  %11 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %10, i32 0, i32 0
  %12 = load %struct.s3c24xx_eint_domain_data*, %struct.s3c24xx_eint_domain_data** %11, align 8
  store %struct.s3c24xx_eint_domain_data* %12, %struct.s3c24xx_eint_domain_data** %8, align 8
  %13 = load %struct.s3c24xx_eint_domain_data*, %struct.s3c24xx_eint_domain_data** %8, align 8
  %14 = getelementptr inbounds %struct.s3c24xx_eint_domain_data, %struct.s3c24xx_eint_domain_data* %13, i32 0, i32 1
  %15 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %14, align 8
  store %struct.samsung_pin_bank* %15, %struct.samsung_pin_bank** %9, align 8
  %16 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %9, align 8
  %17 = getelementptr inbounds %struct.samsung_pin_bank, %struct.samsung_pin_bank* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %9, align 8
  %20 = getelementptr inbounds %struct.samsung_pin_bank, %struct.samsung_pin_bank* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %7, align 4
  %23 = add nsw i32 %21, %22
  %24 = shl i32 1, %23
  %25 = and i32 %18, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %3
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %55

30:                                               ; preds = %3
  %31 = load i32, i32* %7, align 4
  %32 = icmp sle i32 %31, 3
  br i1 %32, label %33, label %47

33:                                               ; preds = %30
  %34 = load %struct.s3c24xx_eint_domain_data*, %struct.s3c24xx_eint_domain_data** %8, align 8
  %35 = getelementptr inbounds %struct.s3c24xx_eint_domain_data, %struct.s3c24xx_eint_domain_data* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @handle_edge_irq, align 4
  %41 = call i32 @irq_set_chip_and_handler(i32 %39, i32* @s3c2410_eint0_3_chip, i32 %40)
  br label %46

42:                                               ; preds = %33
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @handle_edge_irq, align 4
  %45 = call i32 @irq_set_chip_and_handler(i32 %43, i32* @s3c2412_eint0_3_chip, i32 %44)
  br label %46

46:                                               ; preds = %42, %38
  br label %51

47:                                               ; preds = %30
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @handle_edge_irq, align 4
  %50 = call i32 @irq_set_chip_and_handler(i32 %48, i32* @s3c24xx_eint_chip, i32 %49)
  br label %51

51:                                               ; preds = %47, %46
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %9, align 8
  %54 = call i32 @irq_set_chip_data(i32 %52, %struct.samsung_pin_bank* %53)
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %51, %27
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @irq_set_chip_and_handler(i32, i32*, i32) #1

declare dso_local i32 @irq_set_chip_data(i32, %struct.samsung_pin_bank*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
