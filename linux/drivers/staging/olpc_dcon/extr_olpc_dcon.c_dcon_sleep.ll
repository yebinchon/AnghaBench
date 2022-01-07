; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/olpc_dcon/extr_olpc_dcon.c_dcon_sleep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/olpc_dcon/extr_olpc_dcon.c_dcon_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dcon_priv = type { i32, i64, i32 }

@EC_DCON_POWER_MODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"unable to force dcon to power down: %d!\0A\00", align 1
@MODE_BL_ENABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"unable to reinit dcon hardware: %d!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dcon_priv*, i32)* @dcon_sleep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dcon_sleep(%struct.dcon_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.dcon_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dcon_priv* %0, %struct.dcon_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.dcon_priv*, %struct.dcon_priv** %3, align 8
  %8 = getelementptr inbounds %struct.dcon_priv, %struct.dcon_priv* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %63

13:                                               ; preds = %2
  %14 = call i32 @olpc_board(i32 194)
  %15 = call i32 @olpc_board_at_least(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  br label %63

18:                                               ; preds = %13
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %18
  store i32 0, i32* %6, align 4
  %22 = load i32, i32* @EC_DCON_POWER_MODE, align 4
  %23 = call i32 @olpc_ec_cmd(i32 %22, i32* %6, i32 1, i32* null, i32 0)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @pr_warn(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %33

29:                                               ; preds = %21
  %30 = load i32, i32* %4, align 4
  %31 = load %struct.dcon_priv*, %struct.dcon_priv** %3, align 8
  %32 = getelementptr inbounds %struct.dcon_priv, %struct.dcon_priv* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  br label %33

33:                                               ; preds = %29, %26
  br label %63

34:                                               ; preds = %18
  %35 = load %struct.dcon_priv*, %struct.dcon_priv** %3, align 8
  %36 = getelementptr inbounds %struct.dcon_priv, %struct.dcon_priv* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load i32, i32* @MODE_BL_ENABLE, align 4
  %41 = load %struct.dcon_priv*, %struct.dcon_priv** %3, align 8
  %42 = getelementptr inbounds %struct.dcon_priv, %struct.dcon_priv* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 8
  br label %45

45:                                               ; preds = %39, %34
  %46 = load %struct.dcon_priv*, %struct.dcon_priv** %3, align 8
  %47 = call i32 @dcon_bus_stabilize(%struct.dcon_priv* %46, i32 1)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @pr_warn(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  br label %57

53:                                               ; preds = %45
  %54 = load i32, i32* %4, align 4
  %55 = load %struct.dcon_priv*, %struct.dcon_priv** %3, align 8
  %56 = getelementptr inbounds %struct.dcon_priv, %struct.dcon_priv* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  br label %57

57:                                               ; preds = %53, %50
  %58 = load %struct.dcon_priv*, %struct.dcon_priv** %3, align 8
  %59 = load %struct.dcon_priv*, %struct.dcon_priv** %3, align 8
  %60 = getelementptr inbounds %struct.dcon_priv, %struct.dcon_priv* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @dcon_set_backlight(%struct.dcon_priv* %58, i64 %61)
  br label %63

63:                                               ; preds = %12, %17, %57, %33
  ret void
}

declare dso_local i32 @olpc_board_at_least(i32) #1

declare dso_local i32 @olpc_board(i32) #1

declare dso_local i32 @olpc_ec_cmd(i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @dcon_bus_stabilize(%struct.dcon_priv*, i32) #1

declare dso_local i32 @dcon_set_backlight(%struct.dcon_priv*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
