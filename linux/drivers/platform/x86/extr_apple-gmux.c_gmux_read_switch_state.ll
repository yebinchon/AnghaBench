; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_apple-gmux.c_gmux_read_switch_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_apple-gmux.c_gmux_read_switch_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apple_gmux_data = type { i8*, i8*, i8* }

@GMUX_PORT_SWITCH_DDC = common dso_local global i32 0, align 4
@VGA_SWITCHEROO_IGD = common dso_local global i8* null, align 8
@VGA_SWITCHEROO_DIS = common dso_local global i8* null, align 8
@GMUX_PORT_SWITCH_DISPLAY = common dso_local global i32 0, align 4
@GMUX_PORT_SWITCH_EXTERNAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.apple_gmux_data*)* @gmux_read_switch_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gmux_read_switch_state(%struct.apple_gmux_data* %0) #0 {
  %2 = alloca %struct.apple_gmux_data*, align 8
  store %struct.apple_gmux_data* %0, %struct.apple_gmux_data** %2, align 8
  %3 = load %struct.apple_gmux_data*, %struct.apple_gmux_data** %2, align 8
  %4 = load i32, i32* @GMUX_PORT_SWITCH_DDC, align 4
  %5 = call i32 @gmux_read8(%struct.apple_gmux_data* %3, i32 %4)
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load i8*, i8** @VGA_SWITCHEROO_IGD, align 8
  %9 = load %struct.apple_gmux_data*, %struct.apple_gmux_data** %2, align 8
  %10 = getelementptr inbounds %struct.apple_gmux_data, %struct.apple_gmux_data* %9, i32 0, i32 2
  store i8* %8, i8** %10, align 8
  br label %15

11:                                               ; preds = %1
  %12 = load i8*, i8** @VGA_SWITCHEROO_DIS, align 8
  %13 = load %struct.apple_gmux_data*, %struct.apple_gmux_data** %2, align 8
  %14 = getelementptr inbounds %struct.apple_gmux_data, %struct.apple_gmux_data* %13, i32 0, i32 2
  store i8* %12, i8** %14, align 8
  br label %15

15:                                               ; preds = %11, %7
  %16 = load %struct.apple_gmux_data*, %struct.apple_gmux_data** %2, align 8
  %17 = load i32, i32* @GMUX_PORT_SWITCH_DISPLAY, align 4
  %18 = call i32 @gmux_read8(%struct.apple_gmux_data* %16, i32 %17)
  %19 = icmp eq i32 %18, 2
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load i8*, i8** @VGA_SWITCHEROO_IGD, align 8
  %22 = load %struct.apple_gmux_data*, %struct.apple_gmux_data** %2, align 8
  %23 = getelementptr inbounds %struct.apple_gmux_data, %struct.apple_gmux_data* %22, i32 0, i32 1
  store i8* %21, i8** %23, align 8
  br label %28

24:                                               ; preds = %15
  %25 = load i8*, i8** @VGA_SWITCHEROO_DIS, align 8
  %26 = load %struct.apple_gmux_data*, %struct.apple_gmux_data** %2, align 8
  %27 = getelementptr inbounds %struct.apple_gmux_data, %struct.apple_gmux_data* %26, i32 0, i32 1
  store i8* %25, i8** %27, align 8
  br label %28

28:                                               ; preds = %24, %20
  %29 = load %struct.apple_gmux_data*, %struct.apple_gmux_data** %2, align 8
  %30 = load i32, i32* @GMUX_PORT_SWITCH_EXTERNAL, align 4
  %31 = call i32 @gmux_read8(%struct.apple_gmux_data* %29, i32 %30)
  %32 = icmp eq i32 %31, 2
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load i8*, i8** @VGA_SWITCHEROO_IGD, align 8
  %35 = load %struct.apple_gmux_data*, %struct.apple_gmux_data** %2, align 8
  %36 = getelementptr inbounds %struct.apple_gmux_data, %struct.apple_gmux_data* %35, i32 0, i32 0
  store i8* %34, i8** %36, align 8
  br label %41

37:                                               ; preds = %28
  %38 = load i8*, i8** @VGA_SWITCHEROO_DIS, align 8
  %39 = load %struct.apple_gmux_data*, %struct.apple_gmux_data** %2, align 8
  %40 = getelementptr inbounds %struct.apple_gmux_data, %struct.apple_gmux_data* %39, i32 0, i32 0
  store i8* %38, i8** %40, align 8
  br label %41

41:                                               ; preds = %37, %33
  ret void
}

declare dso_local i32 @gmux_read8(%struct.apple_gmux_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
