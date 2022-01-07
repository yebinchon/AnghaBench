; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_apple-gmux.c_gmux_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_apple-gmux.c_gmux_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.pnp_dev = type { i32 }
%struct.apple_gmux_data = type { i64 }

@VGA_SWITCHEROO_OFF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @gmux_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gmux_resume(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.pnp_dev*, align 8
  %4 = alloca %struct.apple_gmux_data*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.pnp_dev* @to_pnp_dev(%struct.device* %5)
  store %struct.pnp_dev* %6, %struct.pnp_dev** %3, align 8
  %7 = load %struct.pnp_dev*, %struct.pnp_dev** %3, align 8
  %8 = call %struct.apple_gmux_data* @pnp_get_drvdata(%struct.pnp_dev* %7)
  store %struct.apple_gmux_data* %8, %struct.apple_gmux_data** %4, align 8
  %9 = load %struct.apple_gmux_data*, %struct.apple_gmux_data** %4, align 8
  %10 = call i32 @gmux_enable_interrupts(%struct.apple_gmux_data* %9)
  %11 = load %struct.apple_gmux_data*, %struct.apple_gmux_data** %4, align 8
  %12 = call i32 @gmux_write_switch_state(%struct.apple_gmux_data* %11)
  %13 = load %struct.apple_gmux_data*, %struct.apple_gmux_data** %4, align 8
  %14 = getelementptr inbounds %struct.apple_gmux_data, %struct.apple_gmux_data* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @VGA_SWITCHEROO_OFF, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load %struct.apple_gmux_data*, %struct.apple_gmux_data** %4, align 8
  %20 = load %struct.apple_gmux_data*, %struct.apple_gmux_data** %4, align 8
  %21 = getelementptr inbounds %struct.apple_gmux_data, %struct.apple_gmux_data* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @gmux_set_discrete_state(%struct.apple_gmux_data* %19, i64 %22)
  br label %24

24:                                               ; preds = %18, %1
  ret i32 0
}

declare dso_local %struct.pnp_dev* @to_pnp_dev(%struct.device*) #1

declare dso_local %struct.apple_gmux_data* @pnp_get_drvdata(%struct.pnp_dev*) #1

declare dso_local i32 @gmux_enable_interrupts(%struct.apple_gmux_data*) #1

declare dso_local i32 @gmux_write_switch_state(%struct.apple_gmux_data*) #1

declare dso_local i32 @gmux_set_discrete_state(%struct.apple_gmux_data*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
