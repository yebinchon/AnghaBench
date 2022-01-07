; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/bcm/extr_raspberrypi-power.c_rpi_common_init_power_domain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/bcm/extr_raspberrypi-power.c_rpi_common_init_power_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpi_power_domains = type { %struct.TYPE_3__, i32, %struct.rpi_power_domain* }
%struct.TYPE_3__ = type { %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i8*, i32, i32 }
%struct.rpi_power_domain = type { %struct.TYPE_4__, i32 }

@rpi_domain_on = common dso_local global i32 0, align 4
@rpi_domain_off = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpi_power_domains*, i32, i8*)* @rpi_common_init_power_domain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rpi_common_init_power_domain(%struct.rpi_power_domains* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.rpi_power_domains*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.rpi_power_domain*, align 8
  store %struct.rpi_power_domains* %0, %struct.rpi_power_domains** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load %struct.rpi_power_domains*, %struct.rpi_power_domains** %4, align 8
  %9 = getelementptr inbounds %struct.rpi_power_domains, %struct.rpi_power_domains* %8, i32 0, i32 2
  %10 = load %struct.rpi_power_domain*, %struct.rpi_power_domain** %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.rpi_power_domain, %struct.rpi_power_domain* %10, i64 %12
  store %struct.rpi_power_domain* %13, %struct.rpi_power_domain** %7, align 8
  %14 = load %struct.rpi_power_domains*, %struct.rpi_power_domains** %4, align 8
  %15 = getelementptr inbounds %struct.rpi_power_domains, %struct.rpi_power_domains* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.rpi_power_domain*, %struct.rpi_power_domain** %7, align 8
  %18 = getelementptr inbounds %struct.rpi_power_domain, %struct.rpi_power_domain* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = load %struct.rpi_power_domain*, %struct.rpi_power_domain** %7, align 8
  %21 = getelementptr inbounds %struct.rpi_power_domain, %struct.rpi_power_domain* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store i8* %19, i8** %22, align 8
  %23 = load i32, i32* @rpi_domain_on, align 4
  %24 = load %struct.rpi_power_domain*, %struct.rpi_power_domain** %7, align 8
  %25 = getelementptr inbounds %struct.rpi_power_domain, %struct.rpi_power_domain* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  store i32 %23, i32* %26, align 4
  %27 = load i32, i32* @rpi_domain_off, align 4
  %28 = load %struct.rpi_power_domain*, %struct.rpi_power_domain** %7, align 8
  %29 = getelementptr inbounds %struct.rpi_power_domain, %struct.rpi_power_domain* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  store i32 %27, i32* %30, align 8
  %31 = load %struct.rpi_power_domain*, %struct.rpi_power_domain** %7, align 8
  %32 = getelementptr inbounds %struct.rpi_power_domain, %struct.rpi_power_domain* %31, i32 0, i32 0
  %33 = call i32 @pm_genpd_init(%struct.TYPE_4__* %32, i32* null, i32 1)
  %34 = load %struct.rpi_power_domain*, %struct.rpi_power_domain** %7, align 8
  %35 = getelementptr inbounds %struct.rpi_power_domain, %struct.rpi_power_domain* %34, i32 0, i32 0
  %36 = load %struct.rpi_power_domains*, %struct.rpi_power_domains** %4, align 8
  %37 = getelementptr inbounds %struct.rpi_power_domains, %struct.rpi_power_domains* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %39, i64 %41
  store %struct.TYPE_4__* %35, %struct.TYPE_4__** %42, align 8
  ret void
}

declare dso_local i32 @pm_genpd_init(%struct.TYPE_4__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
