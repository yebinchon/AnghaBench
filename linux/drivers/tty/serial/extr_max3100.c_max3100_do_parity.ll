; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_max3100.c_max3100_do_parity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_max3100.c_max3100_do_parity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max3100_port = type { i32 }

@MAX3100_PARITY_ODD = common dso_local global i32 0, align 4
@MAX3100_7BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max3100_port*, i32)* @max3100_do_parity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max3100_do_parity(%struct.max3100_port* %0, i32 %1) #0 {
  %3 = alloca %struct.max3100_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.max3100_port* %0, %struct.max3100_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.max3100_port*, %struct.max3100_port** %3, align 8
  %7 = getelementptr inbounds %struct.max3100_port, %struct.max3100_port* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @MAX3100_PARITY_ODD, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 1, i32* %5, align 4
  br label %14

13:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %13, %12
  %15 = load %struct.max3100_port*, %struct.max3100_port** %3, align 8
  %16 = getelementptr inbounds %struct.max3100_port, %struct.max3100_port* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @MAX3100_7BIT, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %14
  %22 = load i32, i32* %4, align 4
  %23 = and i32 %22, 127
  store i32 %23, i32* %4, align 4
  br label %27

24:                                               ; preds = %14
  %25 = load i32, i32* %4, align 4
  %26 = and i32 %25, 255
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %24, %21
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @hweight8(i32 %29)
  %31 = and i32 %30, 1
  %32 = xor i32 %28, %31
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local i32 @hweight8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
