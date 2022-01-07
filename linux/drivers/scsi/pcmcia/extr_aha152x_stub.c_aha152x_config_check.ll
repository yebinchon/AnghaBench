; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pcmcia/extr_aha152x_stub.c_aha152x_config_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pcmcia/extr_aha152x_stub.c_aha152x_config_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@IO_DATA_PATH_WIDTH = common dso_local global i32 0, align 4
@IO_DATA_PATH_WIDTH_AUTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*, i8*)* @aha152x_config_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aha152x_config_check(%struct.pcmcia_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pcmcia_device*, align 8
  %5 = alloca i8*, align 8
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %7 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %6, i32 0, i32 0
  store i32 10, i32* %7, align 8
  %8 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %9 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %10, i64 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp slt i32 %14, 32
  br i1 %15, label %16, label %39

16:                                               ; preds = %2
  %17 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %18 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %19, i64 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp sge i32 %23, 32
  br i1 %24, label %25, label %39

25:                                               ; preds = %16
  %26 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %27 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %28, i64 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %34 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %35, i64 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  store i32 %32, i32* %38, align 4
  br label %39

39:                                               ; preds = %25, %16, %2
  %40 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %41 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %42, i64 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp sge i32 %46, 65535
  br i1 %47, label %48, label %51

48:                                               ; preds = %39
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %91

51:                                               ; preds = %39
  %52 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %53 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %54, i64 1
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  store i32 0, i32* %57, align 4
  %58 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %59 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %60, i64 1
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  store i32 0, i32* %63, align 4
  %64 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %65 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %64, i32 0, i32 1
  %66 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %66, i64 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  store i32 32, i32* %69, align 4
  %70 = load i32, i32* @IO_DATA_PATH_WIDTH, align 4
  %71 = xor i32 %70, -1
  %72 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %73 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %72, i32 0, i32 1
  %74 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %74, i64 0
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %78, %71
  store i32 %79, i32* %77, align 4
  %80 = load i32, i32* @IO_DATA_PATH_WIDTH_AUTO, align 4
  %81 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %82 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %81, i32 0, i32 1
  %83 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %83, i64 0
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, %80
  store i32 %88, i32* %86, align 4
  %89 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %90 = call i32 @pcmcia_request_io(%struct.pcmcia_device* %89)
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %51, %48
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @pcmcia_request_io(%struct.pcmcia_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
