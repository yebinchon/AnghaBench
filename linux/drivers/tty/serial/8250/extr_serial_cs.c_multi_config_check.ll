; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_serial_cs.c_multi_config_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_serial_cs.c_multi_config_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@IO_DATA_PATH_WIDTH = common dso_local global i32 0, align 4
@IO_DATA_PATH_WIDTH_8 = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*, i8*)* @multi_config_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @multi_config_check(%struct.pcmcia_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pcmcia_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = bitcast i8* %7 to i32*
  store i32* %8, i32** %6, align 8
  %9 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %10 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %11, i64 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %68

20:                                               ; preds = %2
  %21 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %22 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %23, i64 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp sle i32 %27, 8
  br i1 %28, label %29, label %32

29:                                               ; preds = %20
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %68

32:                                               ; preds = %20
  %33 = load i32, i32* @IO_DATA_PATH_WIDTH, align 4
  %34 = xor i32 %33, -1
  %35 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %36 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %37, i64 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, %34
  store i32 %42, i32* %40, align 4
  %43 = load i32, i32* @IO_DATA_PATH_WIDTH_8, align 4
  %44 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %45 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %46, i64 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %43
  store i32 %51, i32* %49, align 4
  %52 = load i32*, i32** %6, align 8
  %53 = load i32, i32* %52, align 4
  %54 = mul nsw i32 %53, 8
  %55 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %56 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %57, i64 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  store i32 %54, i32* %60, align 4
  %61 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %62 = call i64 @pcmcia_request_io(%struct.pcmcia_device* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %32
  %65 = load i32, i32* @ENODEV, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %68

67:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %67, %64, %29, %17
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i64 @pcmcia_request_io(%struct.pcmcia_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
