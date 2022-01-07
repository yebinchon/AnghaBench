; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rza1.c_rza1_pinmux_get_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rza1.c_rza1_pinmux_get_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rza1_pinctrl = type { %struct.rza1_pinmux_conf* }
%struct.rza1_pinmux_conf = type { %struct.rza1_swio_entry*, %struct.rza1_bidir_entry* }
%struct.rza1_swio_entry = type { i32 }
%struct.rza1_bidir_entry = type { i32 }

@MUX_FLAGS_BIDIR = common dso_local global i32 0, align 4
@MUX_FLAGS_SWIO_OUTPUT = common dso_local global i32 0, align 4
@MUX_FLAGS_SWIO_INPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, %struct.rza1_pinctrl*)* @rza1_pinmux_get_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rza1_pinmux_get_flags(i32 %0, i32 %1, i32 %2, %struct.rza1_pinctrl* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.rza1_pinctrl*, align 8
  %9 = alloca %struct.rza1_pinmux_conf*, align 8
  %10 = alloca %struct.rza1_bidir_entry*, align 8
  %11 = alloca %struct.rza1_swio_entry*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.rza1_pinctrl* %3, %struct.rza1_pinctrl** %8, align 8
  %14 = load %struct.rza1_pinctrl*, %struct.rza1_pinctrl** %8, align 8
  %15 = getelementptr inbounds %struct.rza1_pinctrl, %struct.rza1_pinctrl* %14, i32 0, i32 0
  %16 = load %struct.rza1_pinmux_conf*, %struct.rza1_pinmux_conf** %15, align 8
  store %struct.rza1_pinmux_conf* %16, %struct.rza1_pinmux_conf** %9, align 8
  %17 = load %struct.rza1_pinmux_conf*, %struct.rza1_pinmux_conf** %9, align 8
  %18 = getelementptr inbounds %struct.rza1_pinmux_conf, %struct.rza1_pinmux_conf* %17, i32 0, i32 1
  %19 = load %struct.rza1_bidir_entry*, %struct.rza1_bidir_entry** %18, align 8
  store %struct.rza1_bidir_entry* %19, %struct.rza1_bidir_entry** %10, align 8
  %20 = load %struct.rza1_pinmux_conf*, %struct.rza1_pinmux_conf** %9, align 8
  %21 = getelementptr inbounds %struct.rza1_pinmux_conf, %struct.rza1_pinmux_conf* %20, i32 0, i32 0
  %22 = load %struct.rza1_swio_entry*, %struct.rza1_swio_entry** %21, align 8
  store %struct.rza1_swio_entry* %22, %struct.rza1_swio_entry** %11, align 8
  store i32 0, i32* %12, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.rza1_bidir_entry*, %struct.rza1_bidir_entry** %10, align 8
  %27 = call i64 @rza1_pinmux_get_bidir(i32 %23, i32 %24, i32 %25, %struct.rza1_bidir_entry* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %4
  %30 = load i32, i32* @MUX_FLAGS_BIDIR, align 4
  %31 = load i32, i32* %12, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %12, align 4
  br label %33

33:                                               ; preds = %29, %4
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.rza1_swio_entry*, %struct.rza1_swio_entry** %11, align 8
  %38 = call i32 @rza1_pinmux_get_swio(i32 %34, i32 %35, i32 %36, %struct.rza1_swio_entry* %37)
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %13, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %33
  %42 = load i32, i32* @MUX_FLAGS_SWIO_OUTPUT, align 4
  %43 = load i32, i32* %12, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %12, align 4
  br label %53

45:                                               ; preds = %33
  %46 = load i32, i32* %13, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load i32, i32* @MUX_FLAGS_SWIO_INPUT, align 4
  %50 = load i32, i32* %12, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %12, align 4
  br label %52

52:                                               ; preds = %48, %45
  br label %53

53:                                               ; preds = %52, %41
  %54 = load i32, i32* %12, align 4
  ret i32 %54
}

declare dso_local i64 @rza1_pinmux_get_bidir(i32, i32, i32, %struct.rza1_bidir_entry*) #1

declare dso_local i32 @rza1_pinmux_get_swio(i32, i32, i32, %struct.rza1_swio_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
