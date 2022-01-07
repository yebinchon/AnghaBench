; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/samsung/extr_pinctrl-s3c24xx.c_s3c2410_demux_eint0_3.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/samsung/extr_pinctrl-s3c24xx.c_s3c2410_demux_eint0_3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32 }
%struct.irq_data = type { i64 }
%struct.s3c24xx_eint_data = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_desc*)* @s3c2410_demux_eint0_3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c2410_demux_eint0_3(%struct.irq_desc* %0) #0 {
  %2 = alloca %struct.irq_desc*, align 8
  %3 = alloca %struct.irq_data*, align 8
  %4 = alloca %struct.s3c24xx_eint_data*, align 8
  %5 = alloca i32, align 4
  store %struct.irq_desc* %0, %struct.irq_desc** %2, align 8
  %6 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %7 = call %struct.irq_data* @irq_desc_get_irq_data(%struct.irq_desc* %6)
  store %struct.irq_data* %7, %struct.irq_data** %3, align 8
  %8 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %9 = call %struct.s3c24xx_eint_data* @irq_desc_get_handler_data(%struct.irq_desc* %8)
  store %struct.s3c24xx_eint_data* %9, %struct.s3c24xx_eint_data** %4, align 8
  %10 = load %struct.s3c24xx_eint_data*, %struct.s3c24xx_eint_data** %4, align 8
  %11 = getelementptr inbounds %struct.s3c24xx_eint_data, %struct.s3c24xx_eint_data* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %14 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds i32, i32* %12, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %19 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @irq_linear_revmap(i32 %17, i64 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @BUG_ON(i32 %25)
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @generic_handle_irq(i32 %27)
  ret void
}

declare dso_local %struct.irq_data* @irq_desc_get_irq_data(%struct.irq_desc*) #1

declare dso_local %struct.s3c24xx_eint_data* @irq_desc_get_handler_data(%struct.irq_desc*) #1

declare dso_local i32 @irq_linear_revmap(i32, i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @generic_handle_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
