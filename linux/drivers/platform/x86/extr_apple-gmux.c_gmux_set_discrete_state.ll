; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_apple-gmux.c_gmux_set_discrete_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_apple-gmux.c_gmux_set_discrete_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apple_gmux_data = type { i32, i64, i32 }

@VGA_SWITCHEROO_ON = common dso_local global i32 0, align 4
@GMUX_PORT_DISCRETE_POWER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Discrete card powered up\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Discrete card powered down\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"Timeout waiting for gmux switch to complete\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.apple_gmux_data*, i32)* @gmux_set_discrete_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gmux_set_discrete_state(%struct.apple_gmux_data* %0, i32 %1) #0 {
  %3 = alloca %struct.apple_gmux_data*, align 8
  %4 = alloca i32, align 4
  store %struct.apple_gmux_data* %0, %struct.apple_gmux_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.apple_gmux_data*, %struct.apple_gmux_data** %3, align 8
  %6 = getelementptr inbounds %struct.apple_gmux_data, %struct.apple_gmux_data* %5, i32 0, i32 2
  %7 = call i32 @reinit_completion(i32* %6)
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @VGA_SWITCHEROO_ON, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %19

11:                                               ; preds = %2
  %12 = load %struct.apple_gmux_data*, %struct.apple_gmux_data** %3, align 8
  %13 = load i32, i32* @GMUX_PORT_DISCRETE_POWER, align 4
  %14 = call i32 @gmux_write8(%struct.apple_gmux_data* %12, i32 %13, i32 1)
  %15 = load %struct.apple_gmux_data*, %struct.apple_gmux_data** %3, align 8
  %16 = load i32, i32* @GMUX_PORT_DISCRETE_POWER, align 4
  %17 = call i32 @gmux_write8(%struct.apple_gmux_data* %15, i32 %16, i32 3)
  %18 = call i32 @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %27

19:                                               ; preds = %2
  %20 = load %struct.apple_gmux_data*, %struct.apple_gmux_data** %3, align 8
  %21 = load i32, i32* @GMUX_PORT_DISCRETE_POWER, align 4
  %22 = call i32 @gmux_write8(%struct.apple_gmux_data* %20, i32 %21, i32 1)
  %23 = load %struct.apple_gmux_data*, %struct.apple_gmux_data** %3, align 8
  %24 = load i32, i32* @GMUX_PORT_DISCRETE_POWER, align 4
  %25 = call i32 @gmux_write8(%struct.apple_gmux_data* %23, i32 %24, i32 0)
  %26 = call i32 @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %19, %11
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.apple_gmux_data*, %struct.apple_gmux_data** %3, align 8
  %30 = getelementptr inbounds %struct.apple_gmux_data, %struct.apple_gmux_data* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.apple_gmux_data*, %struct.apple_gmux_data** %3, align 8
  %32 = getelementptr inbounds %struct.apple_gmux_data, %struct.apple_gmux_data* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp sge i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %27
  %36 = load %struct.apple_gmux_data*, %struct.apple_gmux_data** %3, align 8
  %37 = getelementptr inbounds %struct.apple_gmux_data, %struct.apple_gmux_data* %36, i32 0, i32 2
  %38 = call i32 @msecs_to_jiffies(i32 200)
  %39 = call i32 @wait_for_completion_interruptible_timeout(i32* %37, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %35
  %42 = call i32 @pr_warn(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %35, %27
  ret i32 0
}

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @gmux_write8(%struct.apple_gmux_data*, i32, i32) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @wait_for_completion_interruptible_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @pr_warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
