; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_max3100.c_max3100_calc_parity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_max3100.c_max3100_calc_parity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max3100_port = type { i32 }

@MAX3100_7BIT = common dso_local global i32 0, align 4
@MAX3100_PARITY_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.max3100_port*, i32*)* @max3100_calc_parity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @max3100_calc_parity(%struct.max3100_port* %0, i32* %1) #0 {
  %3 = alloca %struct.max3100_port*, align 8
  %4 = alloca i32*, align 8
  store %struct.max3100_port* %0, %struct.max3100_port** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.max3100_port*, %struct.max3100_port** %3, align 8
  %6 = getelementptr inbounds %struct.max3100_port, %struct.max3100_port* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @MAX3100_7BIT, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i32*, i32** %4, align 8
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, 127
  store i32 %14, i32* %12, align 4
  br label %19

15:                                               ; preds = %2
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, 255
  store i32 %18, i32* %16, align 4
  br label %19

19:                                               ; preds = %15, %11
  %20 = load %struct.max3100_port*, %struct.max3100_port** %3, align 8
  %21 = getelementptr inbounds %struct.max3100_port, %struct.max3100_port* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @MAX3100_PARITY_ON, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %19
  %27 = load %struct.max3100_port*, %struct.max3100_port** %3, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @max3100_do_parity(%struct.max3100_port* %27, i32 %29)
  %31 = shl i32 %30, 8
  %32 = load i32*, i32** %4, align 8
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %31
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %26, %19
  ret void
}

declare dso_local i32 @max3100_do_parity(%struct.max3100_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
