; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_da9150-fg.c_da9150_fg_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_da9150-fg.c_da9150_fg_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.da9150_fg = type { i32 }

@DA9150_QIF_E_FG_STATUS = common dso_local global i32 0, align 4
@DA9150_QIF_E_FG_STATUS_SIZE = common dso_local global i32 0, align 4
@DA9150_FG_IRQ_SOC_MASK = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @da9150_fg_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9150_fg_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.da9150_fg*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.da9150_fg*
  store %struct.da9150_fg* %8, %struct.da9150_fg** %5, align 8
  %9 = load %struct.da9150_fg*, %struct.da9150_fg** %5, align 8
  %10 = load i32, i32* @DA9150_QIF_E_FG_STATUS, align 4
  %11 = load i32, i32* @DA9150_QIF_E_FG_STATUS_SIZE, align 4
  %12 = call i32 @da9150_fg_read_attr(%struct.da9150_fg* %9, i32 %10, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @DA9150_FG_IRQ_SOC_MASK, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load %struct.da9150_fg*, %struct.da9150_fg** %5, align 8
  %19 = call i32 @da9150_fg_soc_event_config(%struct.da9150_fg* %18)
  br label %20

20:                                               ; preds = %17, %2
  %21 = load %struct.da9150_fg*, %struct.da9150_fg** %5, align 8
  %22 = load i32, i32* @DA9150_QIF_E_FG_STATUS, align 4
  %23 = load i32, i32* @DA9150_QIF_E_FG_STATUS_SIZE, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @da9150_fg_write_attr(%struct.da9150_fg* %21, i32 %22, i32 %23, i32 %24)
  %26 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %26
}

declare dso_local i32 @da9150_fg_read_attr(%struct.da9150_fg*, i32, i32) #1

declare dso_local i32 @da9150_fg_soc_event_config(%struct.da9150_fg*) #1

declare dso_local i32 @da9150_fg_write_attr(%struct.da9150_fg*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
