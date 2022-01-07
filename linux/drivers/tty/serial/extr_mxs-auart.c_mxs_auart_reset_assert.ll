; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_mxs-auart.c_mxs_auart_reset_assert.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_mxs-auart.c_mxs_auart_reset_assert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxs_auart_port = type { i32 }

@REG_CTRL0 = common dso_local global i32 0, align 4
@AUART_CTRL0_SFTRST = common dso_local global i32 0, align 4
@AUART_CTRL0_CLKGATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Failed to reset the unit.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mxs_auart_port*)* @mxs_auart_reset_assert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxs_auart_reset_assert(%struct.mxs_auart_port* %0) #0 {
  %2 = alloca %struct.mxs_auart_port*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.mxs_auart_port* %0, %struct.mxs_auart_port** %2, align 8
  %5 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %2, align 8
  %6 = load i32, i32* @REG_CTRL0, align 4
  %7 = call i32 @mxs_read(%struct.mxs_auart_port* %5, i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @AUART_CTRL0_SFTRST, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %44

13:                                               ; preds = %1
  %14 = load i32, i32* @AUART_CTRL0_CLKGATE, align 4
  %15 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %2, align 8
  %16 = load i32, i32* @REG_CTRL0, align 4
  %17 = call i32 @mxs_clr(i32 %14, %struct.mxs_auart_port* %15, i32 %16)
  %18 = load i32, i32* @AUART_CTRL0_SFTRST, align 4
  %19 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %2, align 8
  %20 = load i32, i32* @REG_CTRL0, align 4
  %21 = call i32 @mxs_set(i32 %18, %struct.mxs_auart_port* %19, i32 %20)
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %36, %13
  %23 = load i32, i32* %3, align 4
  %24 = icmp slt i32 %23, 1000
  br i1 %24, label %25, label %39

25:                                               ; preds = %22
  %26 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %2, align 8
  %27 = load i32, i32* @REG_CTRL0, align 4
  %28 = call i32 @mxs_read(%struct.mxs_auart_port* %26, i32 %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @AUART_CTRL0_CLKGATE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %44

34:                                               ; preds = %25
  %35 = call i32 @udelay(i32 10)
  br label %36

36:                                               ; preds = %34
  %37 = load i32, i32* %3, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %3, align 4
  br label %22

39:                                               ; preds = %22
  %40 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %2, align 8
  %41 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @dev_err(i32 %42, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %39, %33, %12
  ret void
}

declare dso_local i32 @mxs_read(%struct.mxs_auart_port*, i32) #1

declare dso_local i32 @mxs_clr(i32, %struct.mxs_auart_port*, i32) #1

declare dso_local i32 @mxs_set(i32, %struct.mxs_auart_port*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
