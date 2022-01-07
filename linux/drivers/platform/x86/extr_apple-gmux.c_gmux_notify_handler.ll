; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_apple-gmux.c_gmux_notify_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_apple-gmux.c_gmux_notify_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnp_dev = type { i32 }
%struct.apple_gmux_data = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"Notify handler called: status %d\0A\00", align 1
@GMUX_INTERRUPT_STATUS_POWER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*)* @gmux_notify_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gmux_notify_handler(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pnp_dev*, align 8
  %9 = alloca %struct.apple_gmux_data*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.pnp_dev*
  store %struct.pnp_dev* %11, %struct.pnp_dev** %8, align 8
  %12 = load %struct.pnp_dev*, %struct.pnp_dev** %8, align 8
  %13 = call %struct.apple_gmux_data* @pnp_get_drvdata(%struct.pnp_dev* %12)
  store %struct.apple_gmux_data* %13, %struct.apple_gmux_data** %9, align 8
  %14 = load %struct.apple_gmux_data*, %struct.apple_gmux_data** %9, align 8
  %15 = call i32 @gmux_interrupt_get_status(%struct.apple_gmux_data* %14)
  store i32 %15, i32* %7, align 4
  %16 = load %struct.apple_gmux_data*, %struct.apple_gmux_data** %9, align 8
  %17 = call i32 @gmux_disable_interrupts(%struct.apple_gmux_data* %16)
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.apple_gmux_data*, %struct.apple_gmux_data** %9, align 8
  %21 = call i32 @gmux_clear_interrupts(%struct.apple_gmux_data* %20)
  %22 = load %struct.apple_gmux_data*, %struct.apple_gmux_data** %9, align 8
  %23 = call i32 @gmux_enable_interrupts(%struct.apple_gmux_data* %22)
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @GMUX_INTERRUPT_STATUS_POWER, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %3
  %29 = load %struct.apple_gmux_data*, %struct.apple_gmux_data** %9, align 8
  %30 = getelementptr inbounds %struct.apple_gmux_data, %struct.apple_gmux_data* %29, i32 0, i32 0
  %31 = call i32 @complete(i32* %30)
  br label %32

32:                                               ; preds = %28, %3
  ret void
}

declare dso_local %struct.apple_gmux_data* @pnp_get_drvdata(%struct.pnp_dev*) #1

declare dso_local i32 @gmux_interrupt_get_status(%struct.apple_gmux_data*) #1

declare dso_local i32 @gmux_disable_interrupts(%struct.apple_gmux_data*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @gmux_clear_interrupts(%struct.apple_gmux_data*) #1

declare dso_local i32 @gmux_enable_interrupts(%struct.apple_gmux_data*) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
