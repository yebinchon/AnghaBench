; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_tio_get_gate_src_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_tio_get_gate_src_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ni_gpct = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ni_gpct*, i32, i32*)* @ni_tio_get_gate_src_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_tio_get_gate_src_raw(%struct.ni_gpct* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ni_gpct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.ni_gpct* %0, %struct.ni_gpct** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %23 [
    i32 0, label %9
    i32 1, label %16
  ]

9:                                                ; preds = %3
  %10 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %11 = call i32 @ni_tio_get_gate_mode(%struct.ni_gpct* %10)
  %12 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %13 = call i32 @ni_tio_get_gate_val(%struct.ni_gpct* %12)
  %14 = or i32 %11, %13
  %15 = load i32*, i32** %7, align 8
  store i32 %14, i32* %15, align 4
  br label %26

16:                                               ; preds = %3
  %17 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %18 = call i32 @ni_tio_get_gate2_mode(%struct.ni_gpct* %17)
  %19 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %20 = call i32 @ni_tio_get_gate2_val(%struct.ni_gpct* %19)
  %21 = or i32 %18, %20
  %22 = load i32*, i32** %7, align 8
  store i32 %21, i32* %22, align 4
  br label %26

23:                                               ; preds = %3
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %27

26:                                               ; preds = %16, %9
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %26, %23
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local i32 @ni_tio_get_gate_mode(%struct.ni_gpct*) #1

declare dso_local i32 @ni_tio_get_gate_val(%struct.ni_gpct*) #1

declare dso_local i32 @ni_tio_get_gate2_mode(%struct.ni_gpct*) #1

declare dso_local i32 @ni_tio_get_gate2_val(%struct.ni_gpct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
