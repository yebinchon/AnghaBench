; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-slave-system-control.c_spi_slave_system_control_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-slave-system-control.c_spi_slave_system_control_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_slave_system_control_priv = type { i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [21 x i8] c"Rebooting system...\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Powering off system...\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Halting system...\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Suspending system...\0A\00", align 1
@PM_SUSPEND_MEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"Unknown command 0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"Terminating\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @spi_slave_system_control_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spi_slave_system_control_complete(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.spi_slave_system_control_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.spi_slave_system_control_priv*
  store %struct.spi_slave_system_control_priv* %7, %struct.spi_slave_system_control_priv** %3, align 8
  %8 = load %struct.spi_slave_system_control_priv*, %struct.spi_slave_system_control_priv** %3, align 8
  %9 = getelementptr inbounds %struct.spi_slave_system_control_priv, %struct.spi_slave_system_control_priv* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %63

14:                                               ; preds = %1
  %15 = load %struct.spi_slave_system_control_priv*, %struct.spi_slave_system_control_priv** %3, align 8
  %16 = getelementptr inbounds %struct.spi_slave_system_control_priv, %struct.spi_slave_system_control_priv* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @be16_to_cpu(i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  switch i32 %19, label %49 [
    i32 129, label %20
    i32 130, label %27
    i32 131, label %34
    i32 128, label %41
  ]

20:                                               ; preds = %14
  %21 = load %struct.spi_slave_system_control_priv*, %struct.spi_slave_system_control_priv** %3, align 8
  %22 = getelementptr inbounds %struct.spi_slave_system_control_priv, %struct.spi_slave_system_control_priv* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = call i32 @dev_info(i32* %24, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %26 = call i32 @kernel_restart(i32* null)
  br label %56

27:                                               ; preds = %14
  %28 = load %struct.spi_slave_system_control_priv*, %struct.spi_slave_system_control_priv** %3, align 8
  %29 = getelementptr inbounds %struct.spi_slave_system_control_priv, %struct.spi_slave_system_control_priv* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = call i32 @dev_info(i32* %31, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %33 = call i32 (...) @kernel_power_off()
  br label %56

34:                                               ; preds = %14
  %35 = load %struct.spi_slave_system_control_priv*, %struct.spi_slave_system_control_priv** %3, align 8
  %36 = getelementptr inbounds %struct.spi_slave_system_control_priv, %struct.spi_slave_system_control_priv* %35, i32 0, i32 1
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = call i32 @dev_info(i32* %38, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %40 = call i32 (...) @kernel_halt()
  br label %56

41:                                               ; preds = %14
  %42 = load %struct.spi_slave_system_control_priv*, %struct.spi_slave_system_control_priv** %3, align 8
  %43 = getelementptr inbounds %struct.spi_slave_system_control_priv, %struct.spi_slave_system_control_priv* %42, i32 0, i32 1
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = call i32 @dev_info(i32* %45, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %47 = load i32, i32* @PM_SUSPEND_MEM, align 4
  %48 = call i32 @pm_suspend(i32 %47)
  br label %56

49:                                               ; preds = %14
  %50 = load %struct.spi_slave_system_control_priv*, %struct.spi_slave_system_control_priv** %3, align 8
  %51 = getelementptr inbounds %struct.spi_slave_system_control_priv, %struct.spi_slave_system_control_priv* %50, i32 0, i32 1
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @dev_warn(i32* %53, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %49, %41, %34, %27, %20
  %57 = load %struct.spi_slave_system_control_priv*, %struct.spi_slave_system_control_priv** %3, align 8
  %58 = call i32 @spi_slave_system_control_submit(%struct.spi_slave_system_control_priv* %57)
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  br label %63

62:                                               ; preds = %56
  br label %72

63:                                               ; preds = %61, %13
  %64 = load %struct.spi_slave_system_control_priv*, %struct.spi_slave_system_control_priv** %3, align 8
  %65 = getelementptr inbounds %struct.spi_slave_system_control_priv, %struct.spi_slave_system_control_priv* %64, i32 0, i32 1
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = call i32 @dev_info(i32* %67, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %69 = load %struct.spi_slave_system_control_priv*, %struct.spi_slave_system_control_priv** %3, align 8
  %70 = getelementptr inbounds %struct.spi_slave_system_control_priv, %struct.spi_slave_system_control_priv* %69, i32 0, i32 0
  %71 = call i32 @complete(i32* %70)
  br label %72

72:                                               ; preds = %63, %62
  ret void
}

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @kernel_restart(i32*) #1

declare dso_local i32 @kernel_power_off(...) #1

declare dso_local i32 @kernel_halt(...) #1

declare dso_local i32 @pm_suspend(i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @spi_slave_system_control_submit(%struct.spi_slave_system_control_priv*) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
