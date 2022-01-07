; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_pnp.c_serial_pnp_guess_board.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_pnp.c_serial_pnp_guess_board.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnp_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pnp_dev*)* @serial_pnp_guess_board to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serial_pnp_guess_board(%struct.pnp_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pnp_dev*, align 8
  store %struct.pnp_dev* %0, %struct.pnp_dev** %3, align 8
  %4 = load %struct.pnp_dev*, %struct.pnp_dev** %3, align 8
  %5 = call i32 @pnp_dev_name(%struct.pnp_dev* %4)
  %6 = call i64 @check_name(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %24, label %8

8:                                                ; preds = %1
  %9 = load %struct.pnp_dev*, %struct.pnp_dev** %3, align 8
  %10 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = icmp ne %struct.TYPE_2__* %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %8
  %14 = load %struct.pnp_dev*, %struct.pnp_dev** %3, align 8
  %15 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @check_name(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %13, %8
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %32

24:                                               ; preds = %13, %1
  %25 = load %struct.pnp_dev*, %struct.pnp_dev** %3, align 8
  %26 = call i64 @check_resources(%struct.pnp_dev* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %32

29:                                               ; preds = %24
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %29, %28, %21
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i64 @check_name(i32) #1

declare dso_local i32 @pnp_dev_name(%struct.pnp_dev*) #1

declare dso_local i64 @check_resources(%struct.pnp_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
