; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sh-sci.c_sci_probe_regmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sh-sci.c_sci_probe_regmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sci_port_params = type { i32 }
%struct.plat_sci_port = type { i64, i32 }

@SCIx_PROBE_REGTYPE = common dso_local global i64 0, align 8
@sci_port_params = common dso_local global %struct.sci_port_params* null, align 8
@SCIx_SCI_REGTYPE = common dso_local global i32 0, align 4
@SCIx_IRDA_REGTYPE = common dso_local global i32 0, align 4
@SCIx_SCIFA_REGTYPE = common dso_local global i32 0, align 4
@SCIx_SCIFB_REGTYPE = common dso_local global i32 0, align 4
@SCIx_SH4_SCIF_REGTYPE = common dso_local global i32 0, align 4
@SCIx_HSCIF_REGTYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Can't probe register map for given port\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sci_port_params* (%struct.plat_sci_port*)* @sci_probe_regmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sci_port_params* @sci_probe_regmap(%struct.plat_sci_port* %0) #0 {
  %2 = alloca %struct.sci_port_params*, align 8
  %3 = alloca %struct.plat_sci_port*, align 8
  %4 = alloca i32, align 4
  store %struct.plat_sci_port* %0, %struct.plat_sci_port** %3, align 8
  %5 = load %struct.plat_sci_port*, %struct.plat_sci_port** %3, align 8
  %6 = getelementptr inbounds %struct.plat_sci_port, %struct.plat_sci_port* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @SCIx_PROBE_REGTYPE, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load %struct.sci_port_params*, %struct.sci_port_params** @sci_port_params, align 8
  %12 = load %struct.plat_sci_port*, %struct.plat_sci_port** %3, align 8
  %13 = getelementptr inbounds %struct.plat_sci_port, %struct.plat_sci_port* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.sci_port_params, %struct.sci_port_params* %11, i64 %14
  store %struct.sci_port_params* %15, %struct.sci_port_params** %2, align 8
  br label %39

16:                                               ; preds = %1
  %17 = load %struct.plat_sci_port*, %struct.plat_sci_port** %3, align 8
  %18 = getelementptr inbounds %struct.plat_sci_port, %struct.plat_sci_port* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %32 [
    i32 131, label %20
    i32 132, label %22
    i32 129, label %24
    i32 128, label %26
    i32 130, label %28
    i32 133, label %30
  ]

20:                                               ; preds = %16
  %21 = load i32, i32* @SCIx_SCI_REGTYPE, align 4
  store i32 %21, i32* %4, align 4
  br label %34

22:                                               ; preds = %16
  %23 = load i32, i32* @SCIx_IRDA_REGTYPE, align 4
  store i32 %23, i32* %4, align 4
  br label %34

24:                                               ; preds = %16
  %25 = load i32, i32* @SCIx_SCIFA_REGTYPE, align 4
  store i32 %25, i32* %4, align 4
  br label %34

26:                                               ; preds = %16
  %27 = load i32, i32* @SCIx_SCIFB_REGTYPE, align 4
  store i32 %27, i32* %4, align 4
  br label %34

28:                                               ; preds = %16
  %29 = load i32, i32* @SCIx_SH4_SCIF_REGTYPE, align 4
  store i32 %29, i32* %4, align 4
  br label %34

30:                                               ; preds = %16
  %31 = load i32, i32* @SCIx_HSCIF_REGTYPE, align 4
  store i32 %31, i32* %4, align 4
  br label %34

32:                                               ; preds = %16
  %33 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  store %struct.sci_port_params* null, %struct.sci_port_params** %2, align 8
  br label %39

34:                                               ; preds = %30, %28, %26, %24, %22, %20
  %35 = load %struct.sci_port_params*, %struct.sci_port_params** @sci_port_params, align 8
  %36 = load i32, i32* %4, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.sci_port_params, %struct.sci_port_params* %35, i64 %37
  store %struct.sci_port_params* %38, %struct.sci_port_params** %2, align 8
  br label %39

39:                                               ; preds = %34, %32, %10
  %40 = load %struct.sci_port_params*, %struct.sci_port_params** %2, align 8
  ret %struct.sci_port_params* %40
}

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
