; ModuleID = '/home/carl/AnghaBench/linux/drivers/reset/extr_reset-axs10x.c_axs10x_reset_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/reset/extr_reset-axs10x.c_axs10x_reset_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reset_controller_dev = type { i32 }
%struct.axs10x_rst = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.reset_controller_dev*, i64)* @axs10x_reset_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axs10x_reset_reset(%struct.reset_controller_dev* %0, i64 %1) #0 {
  %3 = alloca %struct.reset_controller_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.axs10x_rst*, align 8
  %6 = alloca i64, align 8
  store %struct.reset_controller_dev* %0, %struct.reset_controller_dev** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.reset_controller_dev*, %struct.reset_controller_dev** %3, align 8
  %8 = call %struct.axs10x_rst* @to_axs10x_rst(%struct.reset_controller_dev* %7)
  store %struct.axs10x_rst* %8, %struct.axs10x_rst** %5, align 8
  %9 = load %struct.axs10x_rst*, %struct.axs10x_rst** %5, align 8
  %10 = getelementptr inbounds %struct.axs10x_rst, %struct.axs10x_rst* %9, i32 0, i32 0
  %11 = load i64, i64* %6, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @BIT(i64 %13)
  %15 = load %struct.axs10x_rst*, %struct.axs10x_rst** %5, align 8
  %16 = getelementptr inbounds %struct.axs10x_rst, %struct.axs10x_rst* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @writel(i32 %14, i32 %17)
  %19 = load %struct.axs10x_rst*, %struct.axs10x_rst** %5, align 8
  %20 = getelementptr inbounds %struct.axs10x_rst, %struct.axs10x_rst* %19, i32 0, i32 0
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @spin_unlock_irqrestore(i32* %20, i64 %21)
  ret i32 0
}

declare dso_local %struct.axs10x_rst* @to_axs10x_rst(%struct.reset_controller_dev*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @BIT(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
