; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_cs.c_mio_pcmcia_config_loop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_cs.c_mio_pcmcia_config_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32, i32 }

@IO_DATA_PATH_WIDTH = common dso_local global i32 0, align 4
@IO_DATA_PATH_WIDTH_16 = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*, i8*)* @mio_pcmcia_config_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mio_pcmcia_config_loop(%struct.pcmcia_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pcmcia_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i32, i32* @IO_DATA_PATH_WIDTH, align 4
  %9 = xor i32 %8, -1
  %10 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %11 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %12, i64 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, %9
  store i32 %17, i32* %15, align 4
  %18 = load i32, i32* @IO_DATA_PATH_WIDTH_16, align 4
  %19 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %20 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %21, i64 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %18
  store i32 %26, i32* %24, align 4
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %44, %2
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %28, 1024
  br i1 %29, label %30, label %47

30:                                               ; preds = %27
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %33 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %34, i64 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i32 %31, i32* %37, align 4
  %38 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %39 = call i32 @pcmcia_request_io(%struct.pcmcia_device* %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %50

43:                                               ; preds = %30
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 32
  store i32 %46, i32* %6, align 4
  br label %27

47:                                               ; preds = %27
  %48 = load i32, i32* @ENODEV, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %47, %42
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @pcmcia_request_io(%struct.pcmcia_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
