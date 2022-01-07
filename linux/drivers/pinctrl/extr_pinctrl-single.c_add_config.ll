; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-single.c_add_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-single.c_add_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcs_conf_vals = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcs_conf_vals**, i32, i32, i32, i32, i32)* @add_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_config(%struct.pcs_conf_vals** %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.pcs_conf_vals**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.pcs_conf_vals** %0, %struct.pcs_conf_vals*** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load %struct.pcs_conf_vals**, %struct.pcs_conf_vals*** %7, align 8
  %15 = load %struct.pcs_conf_vals*, %struct.pcs_conf_vals** %14, align 8
  %16 = getelementptr inbounds %struct.pcs_conf_vals, %struct.pcs_conf_vals* %15, i32 0, i32 0
  store i32 %13, i32* %16, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load %struct.pcs_conf_vals**, %struct.pcs_conf_vals*** %7, align 8
  %19 = load %struct.pcs_conf_vals*, %struct.pcs_conf_vals** %18, align 8
  %20 = getelementptr inbounds %struct.pcs_conf_vals, %struct.pcs_conf_vals* %19, i32 0, i32 1
  store i32 %17, i32* %20, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load %struct.pcs_conf_vals**, %struct.pcs_conf_vals*** %7, align 8
  %23 = load %struct.pcs_conf_vals*, %struct.pcs_conf_vals** %22, align 8
  %24 = getelementptr inbounds %struct.pcs_conf_vals, %struct.pcs_conf_vals* %23, i32 0, i32 2
  store i32 %21, i32* %24, align 4
  %25 = load i32, i32* %11, align 4
  %26 = load %struct.pcs_conf_vals**, %struct.pcs_conf_vals*** %7, align 8
  %27 = load %struct.pcs_conf_vals*, %struct.pcs_conf_vals** %26, align 8
  %28 = getelementptr inbounds %struct.pcs_conf_vals, %struct.pcs_conf_vals* %27, i32 0, i32 3
  store i32 %25, i32* %28, align 4
  %29 = load i32, i32* %12, align 4
  %30 = load %struct.pcs_conf_vals**, %struct.pcs_conf_vals*** %7, align 8
  %31 = load %struct.pcs_conf_vals*, %struct.pcs_conf_vals** %30, align 8
  %32 = getelementptr inbounds %struct.pcs_conf_vals, %struct.pcs_conf_vals* %31, i32 0, i32 4
  store i32 %29, i32* %32, align 4
  %33 = load %struct.pcs_conf_vals**, %struct.pcs_conf_vals*** %7, align 8
  %34 = load %struct.pcs_conf_vals*, %struct.pcs_conf_vals** %33, align 8
  %35 = getelementptr inbounds %struct.pcs_conf_vals, %struct.pcs_conf_vals* %34, i32 1
  store %struct.pcs_conf_vals* %35, %struct.pcs_conf_vals** %33, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
