; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_apple-gmux.c_gmux_write_switch_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_apple-gmux.c_gmux_write_switch_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apple_gmux_data = type { i64, i64, i64 }

@VGA_SWITCHEROO_IGD = common dso_local global i64 0, align 8
@GMUX_PORT_SWITCH_DDC = common dso_local global i32 0, align 4
@GMUX_PORT_SWITCH_DISPLAY = common dso_local global i32 0, align 4
@GMUX_PORT_SWITCH_EXTERNAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.apple_gmux_data*)* @gmux_write_switch_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gmux_write_switch_state(%struct.apple_gmux_data* %0) #0 {
  %2 = alloca %struct.apple_gmux_data*, align 8
  store %struct.apple_gmux_data* %0, %struct.apple_gmux_data** %2, align 8
  %3 = load %struct.apple_gmux_data*, %struct.apple_gmux_data** %2, align 8
  %4 = getelementptr inbounds %struct.apple_gmux_data, %struct.apple_gmux_data* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @VGA_SWITCHEROO_IGD, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.apple_gmux_data*, %struct.apple_gmux_data** %2, align 8
  %10 = load i32, i32* @GMUX_PORT_SWITCH_DDC, align 4
  %11 = call i32 @gmux_write8(%struct.apple_gmux_data* %9, i32 %10, i32 1)
  br label %16

12:                                               ; preds = %1
  %13 = load %struct.apple_gmux_data*, %struct.apple_gmux_data** %2, align 8
  %14 = load i32, i32* @GMUX_PORT_SWITCH_DDC, align 4
  %15 = call i32 @gmux_write8(%struct.apple_gmux_data* %13, i32 %14, i32 2)
  br label %16

16:                                               ; preds = %12, %8
  %17 = load %struct.apple_gmux_data*, %struct.apple_gmux_data** %2, align 8
  %18 = getelementptr inbounds %struct.apple_gmux_data, %struct.apple_gmux_data* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @VGA_SWITCHEROO_IGD, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = load %struct.apple_gmux_data*, %struct.apple_gmux_data** %2, align 8
  %24 = load i32, i32* @GMUX_PORT_SWITCH_DISPLAY, align 4
  %25 = call i32 @gmux_write8(%struct.apple_gmux_data* %23, i32 %24, i32 2)
  br label %30

26:                                               ; preds = %16
  %27 = load %struct.apple_gmux_data*, %struct.apple_gmux_data** %2, align 8
  %28 = load i32, i32* @GMUX_PORT_SWITCH_DISPLAY, align 4
  %29 = call i32 @gmux_write8(%struct.apple_gmux_data* %27, i32 %28, i32 3)
  br label %30

30:                                               ; preds = %26, %22
  %31 = load %struct.apple_gmux_data*, %struct.apple_gmux_data** %2, align 8
  %32 = getelementptr inbounds %struct.apple_gmux_data, %struct.apple_gmux_data* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @VGA_SWITCHEROO_IGD, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load %struct.apple_gmux_data*, %struct.apple_gmux_data** %2, align 8
  %38 = load i32, i32* @GMUX_PORT_SWITCH_EXTERNAL, align 4
  %39 = call i32 @gmux_write8(%struct.apple_gmux_data* %37, i32 %38, i32 2)
  br label %44

40:                                               ; preds = %30
  %41 = load %struct.apple_gmux_data*, %struct.apple_gmux_data** %2, align 8
  %42 = load i32, i32* @GMUX_PORT_SWITCH_EXTERNAL, align 4
  %43 = call i32 @gmux_write8(%struct.apple_gmux_data* %41, i32 %42, i32 3)
  br label %44

44:                                               ; preds = %40, %36
  ret void
}

declare dso_local i32 @gmux_write8(%struct.apple_gmux_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
