; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/actions/extr_owl-sps.c_owl_sps_set_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/actions/extr_owl-sps.c_owl_sps_set_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.owl_sps_domain = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.owl_sps_domain*, i32)* @owl_sps_set_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @owl_sps_set_power(%struct.owl_sps_domain* %0, i32 %1) #0 {
  %3 = alloca %struct.owl_sps_domain*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.owl_sps_domain* %0, %struct.owl_sps_domain** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.owl_sps_domain*, %struct.owl_sps_domain** %3, align 8
  %8 = getelementptr inbounds %struct.owl_sps_domain, %struct.owl_sps_domain* %7, i32 0, i32 1
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @BIT(i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.owl_sps_domain*, %struct.owl_sps_domain** %3, align 8
  %14 = getelementptr inbounds %struct.owl_sps_domain, %struct.owl_sps_domain* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @BIT(i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load %struct.owl_sps_domain*, %struct.owl_sps_domain** %3, align 8
  %20 = getelementptr inbounds %struct.owl_sps_domain, %struct.owl_sps_domain* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @owl_sps_set_pg(i32 %23, i32 %24, i32 %25, i32 %26)
  ret i32 %27
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @owl_sps_set_pg(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
