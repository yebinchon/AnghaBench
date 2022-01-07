; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/olpc_dcon/extr_olpc_dcon.c_dcon_bus_stabilize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/olpc_dcon/extr_olpc_dcon.c_dcon_bus_stabilize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (...)* }
%struct.dcon_priv = type { i32 }

@EC_DCON_POWER_MODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"unable to force dcon to power up: %d!\0A\00", align 1
@pdata = common dso_local global %struct.TYPE_2__* null, align 8
@DCON_REG_ID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [66 x i8] c"unable to stabilize dcon's smbus, reasserting power and praying.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dcon_priv*, i32)* @dcon_bus_stabilize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dcon_bus_stabilize(%struct.dcon_priv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dcon_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dcon_priv* %0, %struct.dcon_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  br label %9

9:                                                ; preds = %47, %2
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %9
  store i32 1, i32* %7, align 4
  %13 = load i32, i32* @EC_DCON_POWER_MODE, align 4
  %14 = call i32 @olpc_ec_cmd(i32 %13, i32* %7, i32 1, i32* null, i32 0)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @pr_warn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %3, align 4
  br label %62

21:                                               ; preds = %12
  %22 = call i32 @usleep_range(i32 10000, i32 11000)
  br label %23

23:                                               ; preds = %21, %9
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pdata, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32 (...)*, i32 (...)** %25, align 8
  %27 = call i32 (...) %26()
  store i32 -1, i32* %8, align 4
  store i64 50, i64* %6, align 8
  br label %28

28:                                               ; preds = %41, %23
  %29 = load i64, i64* %6, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %32, 0
  br label %34

34:                                               ; preds = %31, %28
  %35 = phi i1 [ false, %28 ], [ %33, %31 ]
  br i1 %35, label %36, label %44

36:                                               ; preds = %34
  %37 = call i32 @usleep_range(i32 1000, i32 1100)
  %38 = load %struct.dcon_priv*, %struct.dcon_priv** %4, align 8
  %39 = load i32, i32* @DCON_REG_ID, align 4
  %40 = call i32 @dcon_read(%struct.dcon_priv* %38, i32 %39)
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %36
  %42 = load i64, i64* %6, align 8
  %43 = add i64 %42, -1
  store i64 %43, i64* %6, align 8
  br label %28

44:                                               ; preds = %34
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %44
  %48 = call i32 @pr_err(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0))
  %49 = call i32 @olpc_board(i32 194)
  %50 = call i32 @olpc_board_at_least(i32 %49)
  %51 = call i32 @BUG_ON(i32 %50)
  store i32 0, i32* %7, align 4
  %52 = load i32, i32* @EC_DCON_POWER_MODE, align 4
  %53 = call i32 @olpc_ec_cmd(i32 %52, i32* %7, i32 1, i32* null, i32 0)
  %54 = call i32 @msleep(i32 100)
  store i32 1, i32* %5, align 4
  br label %9

55:                                               ; preds = %44
  %56 = load i32, i32* %5, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load %struct.dcon_priv*, %struct.dcon_priv** %4, align 8
  %60 = call i32 @dcon_hw_init(%struct.dcon_priv* %59, i32 0)
  store i32 %60, i32* %3, align 4
  br label %62

61:                                               ; preds = %55
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %61, %58, %17
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @olpc_ec_cmd(i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @dcon_read(%struct.dcon_priv*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @olpc_board_at_least(i32) #1

declare dso_local i32 @olpc_board(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dcon_hw_init(%struct.dcon_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
