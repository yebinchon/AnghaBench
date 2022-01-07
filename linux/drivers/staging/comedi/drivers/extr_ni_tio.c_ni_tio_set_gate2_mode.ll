; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_tio_set_gate2_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_tio_set_gate2_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ni_gpct = type { i32 }

@GI_GATE2_MODE = common dso_local global i32 0, align 4
@NI_GPCT_DISABLED_GATE_SELECT = common dso_local global i32 0, align 4
@GI_GATING_DISABLED = common dso_local global i32 0, align 4
@CR_INVERT = common dso_local global i32 0, align 4
@GI_GATE2_POL_INVERT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ni_gpct*, i32)* @ni_tio_set_gate2_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ni_tio_set_gate2_mode(%struct.ni_gpct* %0, i32 %1) #0 {
  %3 = alloca %struct.ni_gpct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ni_gpct* %0, %struct.ni_gpct** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @GI_GATE2_MODE, align 4
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @CR_CHAN(i32 %7)
  %9 = load i32, i32* @NI_GPCT_DISABLED_GATE_SELECT, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @GI_GATING_DISABLED, align 4
  store i32 %13, i32* %5, align 4
  br label %14

14:                                               ; preds = %12, %2
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @CR_INVERT, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load i32, i32* @GI_GATE2_POL_INVERT, align 4
  %21 = load i32, i32* %5, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %19, %14
  %24 = load %struct.ni_gpct*, %struct.ni_gpct** %3, align 8
  %25 = load %struct.ni_gpct*, %struct.ni_gpct** %3, align 8
  %26 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @NITIO_GATE2_REG(i32 %27)
  %29 = load i32, i32* @GI_GATE2_POL_INVERT, align 4
  %30 = load i32, i32* @GI_GATE2_MODE, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @ni_tio_set_bits(%struct.ni_gpct* %24, i32 %28, i32 %31, i32 %32)
  ret void
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @ni_tio_set_bits(%struct.ni_gpct*, i32, i32, i32) #1

declare dso_local i32 @NITIO_GATE2_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
