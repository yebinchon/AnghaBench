; ModuleID = '/home/carl/AnghaBench/linux/drivers/parport/extr_parport_cs.c_parport_config_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/parport/extr_parport_cs.c_parport_config_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }

@IO_DATA_PATH_WIDTH = common dso_local global i32 0, align 4
@IO_DATA_PATH_WIDTH_8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*, i8*)* @parport_config_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parport_config_check(%struct.pcmcia_device* %0, i8* %1) #0 {
  %3 = alloca %struct.pcmcia_device*, align 8
  %4 = alloca i8*, align 8
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i32, i32* @IO_DATA_PATH_WIDTH, align 4
  %6 = xor i32 %5, -1
  %7 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %8 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %9, i64 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, %6
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* @IO_DATA_PATH_WIDTH_8, align 4
  %16 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %17 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %18, i64 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %15
  store i32 %23, i32* %21, align 4
  %24 = load i32, i32* @IO_DATA_PATH_WIDTH, align 4
  %25 = xor i32 %24, -1
  %26 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %27 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %28, i64 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, %25
  store i32 %33, i32* %31, align 4
  %34 = load i32, i32* @IO_DATA_PATH_WIDTH_8, align 4
  %35 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %36 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %37, i64 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %34
  store i32 %42, i32* %40, align 4
  %43 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %44 = call i32 @pcmcia_request_io(%struct.pcmcia_device* %43)
  ret i32 %44
}

declare dso_local i32 @pcmcia_request_io(%struct.pcmcia_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
