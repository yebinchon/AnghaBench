; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/samsung/extr_pinctrl-s3c24xx.c_s3c2412_demux_eint0_3.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/samsung/extr_pinctrl-s3c24xx.c_s3c2412_demux_eint0_3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32 }
%struct.s3c24xx_eint_data = type { i32* }
%struct.irq_data = type { i64 }
%struct.irq_chip = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_desc*)* @s3c2412_demux_eint0_3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c2412_demux_eint0_3(%struct.irq_desc* %0) #0 {
  %2 = alloca %struct.irq_desc*, align 8
  %3 = alloca %struct.s3c24xx_eint_data*, align 8
  %4 = alloca %struct.irq_data*, align 8
  %5 = alloca %struct.irq_chip*, align 8
  %6 = alloca i32, align 4
  store %struct.irq_desc* %0, %struct.irq_desc** %2, align 8
  %7 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %8 = call %struct.s3c24xx_eint_data* @irq_desc_get_handler_data(%struct.irq_desc* %7)
  store %struct.s3c24xx_eint_data* %8, %struct.s3c24xx_eint_data** %3, align 8
  %9 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %10 = call %struct.irq_data* @irq_desc_get_irq_data(%struct.irq_desc* %9)
  store %struct.irq_data* %10, %struct.irq_data** %4, align 8
  %11 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %12 = call %struct.irq_chip* @irq_data_get_irq_chip(%struct.irq_data* %11)
  store %struct.irq_chip* %12, %struct.irq_chip** %5, align 8
  %13 = load %struct.irq_chip*, %struct.irq_chip** %5, align 8
  %14 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %15 = call i32 @chained_irq_enter(%struct.irq_chip* %13, %struct.irq_desc* %14)
  %16 = load %struct.s3c24xx_eint_data*, %struct.s3c24xx_eint_data** %3, align 8
  %17 = getelementptr inbounds %struct.s3c24xx_eint_data, %struct.s3c24xx_eint_data* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %20 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds i32, i32* %18, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %25 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @irq_linear_revmap(i32 %23, i64 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i32 @BUG_ON(i32 %31)
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @generic_handle_irq(i32 %33)
  %35 = load %struct.irq_chip*, %struct.irq_chip** %5, align 8
  %36 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %37 = call i32 @chained_irq_exit(%struct.irq_chip* %35, %struct.irq_desc* %36)
  ret void
}

declare dso_local %struct.s3c24xx_eint_data* @irq_desc_get_handler_data(%struct.irq_desc*) #1

declare dso_local %struct.irq_data* @irq_desc_get_irq_data(%struct.irq_desc*) #1

declare dso_local %struct.irq_chip* @irq_data_get_irq_chip(%struct.irq_data*) #1

declare dso_local i32 @chained_irq_enter(%struct.irq_chip*, %struct.irq_desc*) #1

declare dso_local i32 @irq_linear_revmap(i32, i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @generic_handle_irq(i32) #1

declare dso_local i32 @chained_irq_exit(%struct.irq_chip*, %struct.irq_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
