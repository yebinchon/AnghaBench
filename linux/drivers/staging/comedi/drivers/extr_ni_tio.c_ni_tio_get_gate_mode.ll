; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_tio_get_gate_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_tio_get_gate_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ni_gpct = type { i32 }

@GI_GATING_MODE_MASK = common dso_local global i32 0, align 4
@GI_GATING_DISABLED = common dso_local global i32 0, align 4
@NI_GPCT_DISABLED_GATE_SELECT = common dso_local global i32 0, align 4
@GI_GATE_POL_INVERT = common dso_local global i32 0, align 4
@CR_INVERT = common dso_local global i32 0, align 4
@GI_LEVEL_GATING = common dso_local global i32 0, align 4
@CR_EDGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ni_gpct*)* @ni_tio_get_gate_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_tio_get_gate_mode(%struct.ni_gpct* %0) #0 {
  %2 = alloca %struct.ni_gpct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ni_gpct* %0, %struct.ni_gpct** %2, align 8
  %5 = load %struct.ni_gpct*, %struct.ni_gpct** %2, align 8
  %6 = load %struct.ni_gpct*, %struct.ni_gpct** %2, align 8
  %7 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @NITIO_MODE_REG(i32 %8)
  %10 = call i32 @ni_tio_get_soft_copy(%struct.ni_gpct* %5, i32 %9)
  store i32 %10, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @GI_GATING_MODE_MASK, align 4
  %13 = and i32 %11, %12
  %14 = load i32, i32* @GI_GATING_DISABLED, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load i32, i32* @NI_GPCT_DISABLED_GATE_SELECT, align 4
  %18 = load i32, i32* %4, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %4, align 4
  br label %20

20:                                               ; preds = %16, %1
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @GI_GATE_POL_INVERT, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load i32, i32* @CR_INVERT, align 4
  %27 = load i32, i32* %4, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %25, %20
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @GI_GATING_MODE_MASK, align 4
  %32 = and i32 %30, %31
  %33 = load i32, i32* @GI_LEVEL_GATING, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load i32, i32* @CR_EDGE, align 4
  %37 = load i32, i32* %4, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %35, %29
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32 @ni_tio_get_soft_copy(%struct.ni_gpct*, i32) #1

declare dso_local i32 @NITIO_MODE_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
