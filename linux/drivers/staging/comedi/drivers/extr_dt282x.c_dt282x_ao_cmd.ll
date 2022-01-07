; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_dt282x.c_dt282x_ao_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_dt282x.c_dt282x_ao_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, %struct.dt282x_private* }
%struct.dt282x_private = type { i32, i32, i32, i32, i32, i32, %struct.comedi_isadma* }
%struct.comedi_isadma = type { i64 }
%struct.comedi_subdevice = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.comedi_cmd }
%struct.comedi_cmd = type { i32, i32 }

@DT2821_SUPCSR_ERRINTEN = common dso_local global i32 0, align 4
@DT2821_SUPCSR_DS_DA_CLK = common dso_local global i32 0, align 4
@DT2821_SUPCSR_DDMA = common dso_local global i32 0, align 4
@DT2821_SUPCSR_CLRDMADNE = common dso_local global i32 0, align 4
@DT2821_SUPCSR_BUFFB = common dso_local global i32 0, align 4
@DT2821_SUPCSR_DACINIT = common dso_local global i32 0, align 4
@DT2821_SUPCSR_REG = common dso_local global i64 0, align 8
@COMEDI_ISADMA_WRITE = common dso_local global i32 0, align 4
@DT2821_TMRCTR_REG = common dso_local global i64 0, align 8
@DT2821_DACSR_LBOE = common dso_local global i32 0, align 4
@DT2821_DACSR_HBOE = common dso_local global i32 0, align 4
@DT2821_DACSR_SSEL = common dso_local global i32 0, align 4
@DT2821_DACSR_DACLK = common dso_local global i32 0, align 4
@DT2821_DACSR_IDARDY = common dso_local global i32 0, align 4
@DT2821_DACSR_REG = common dso_local global i64 0, align 8
@dt282x_ao_inttrig = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @dt282x_ao_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dt282x_ao_cmd(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca %struct.dt282x_private*, align 8
  %6 = alloca %struct.comedi_isadma*, align 8
  %7 = alloca %struct.comedi_cmd*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %8 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %9 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %8, i32 0, i32 1
  %10 = load %struct.dt282x_private*, %struct.dt282x_private** %9, align 8
  store %struct.dt282x_private* %10, %struct.dt282x_private** %5, align 8
  %11 = load %struct.dt282x_private*, %struct.dt282x_private** %5, align 8
  %12 = getelementptr inbounds %struct.dt282x_private, %struct.dt282x_private* %11, i32 0, i32 6
  %13 = load %struct.comedi_isadma*, %struct.comedi_isadma** %12, align 8
  store %struct.comedi_isadma* %13, %struct.comedi_isadma** %6, align 8
  %14 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %15 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  store %struct.comedi_cmd* %17, %struct.comedi_cmd** %7, align 8
  %18 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %19 = call i32 @dt282x_disable_dma(%struct.comedi_device* %18)
  %20 = load i32, i32* @DT2821_SUPCSR_ERRINTEN, align 4
  %21 = load i32, i32* @DT2821_SUPCSR_DS_DA_CLK, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @DT2821_SUPCSR_DDMA, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.dt282x_private*, %struct.dt282x_private** %5, align 8
  %26 = getelementptr inbounds %struct.dt282x_private, %struct.dt282x_private* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.dt282x_private*, %struct.dt282x_private** %5, align 8
  %28 = getelementptr inbounds %struct.dt282x_private, %struct.dt282x_private* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @DT2821_SUPCSR_CLRDMADNE, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @DT2821_SUPCSR_BUFFB, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @DT2821_SUPCSR_DACINIT, align 4
  %35 = or i32 %33, %34
  %36 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %37 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @DT2821_SUPCSR_REG, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @outw(i32 %35, i64 %40)
  %42 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %43 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %46 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = mul nsw i32 %44, %47
  %49 = load %struct.dt282x_private*, %struct.dt282x_private** %5, align 8
  %50 = getelementptr inbounds %struct.dt282x_private, %struct.dt282x_private* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.dt282x_private*, %struct.dt282x_private** %5, align 8
  %52 = getelementptr inbounds %struct.dt282x_private, %struct.dt282x_private* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.dt282x_private*, %struct.dt282x_private** %5, align 8
  %55 = getelementptr inbounds %struct.dt282x_private, %struct.dt282x_private* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 8
  %56 = load i32, i32* @COMEDI_ISADMA_WRITE, align 4
  %57 = load %struct.dt282x_private*, %struct.dt282x_private** %5, align 8
  %58 = getelementptr inbounds %struct.dt282x_private, %struct.dt282x_private* %57, i32 0, i32 5
  store i32 %56, i32* %58, align 4
  %59 = load %struct.comedi_isadma*, %struct.comedi_isadma** %6, align 8
  %60 = getelementptr inbounds %struct.comedi_isadma, %struct.comedi_isadma* %59, i32 0, i32 0
  store i64 0, i64* %60, align 8
  %61 = load %struct.dt282x_private*, %struct.dt282x_private** %5, align 8
  %62 = getelementptr inbounds %struct.dt282x_private, %struct.dt282x_private* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %65 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @DT2821_TMRCTR_REG, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @outw(i32 %63, i64 %68)
  %70 = load i32, i32* @DT2821_DACSR_LBOE, align 4
  %71 = load i32, i32* @DT2821_DACSR_HBOE, align 4
  %72 = or i32 %70, %71
  %73 = load %struct.dt282x_private*, %struct.dt282x_private** %5, align 8
  %74 = getelementptr inbounds %struct.dt282x_private, %struct.dt282x_private* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = and i32 %75, %72
  store i32 %76, i32* %74, align 8
  %77 = load i32, i32* @DT2821_DACSR_SSEL, align 4
  %78 = load i32, i32* @DT2821_DACSR_DACLK, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @DT2821_DACSR_IDARDY, align 4
  %81 = or i32 %79, %80
  %82 = load %struct.dt282x_private*, %struct.dt282x_private** %5, align 8
  %83 = getelementptr inbounds %struct.dt282x_private, %struct.dt282x_private* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 8
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 8
  %86 = load %struct.dt282x_private*, %struct.dt282x_private** %5, align 8
  %87 = getelementptr inbounds %struct.dt282x_private, %struct.dt282x_private* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %90 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @DT2821_DACSR_REG, align 8
  %93 = add nsw i64 %91, %92
  %94 = call i32 @outw(i32 %88, i64 %93)
  %95 = load i32, i32* @dt282x_ao_inttrig, align 4
  %96 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %97 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %96, i32 0, i32 0
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  store i32 %95, i32* %99, align 4
  ret i32 0
}

declare dso_local i32 @dt282x_disable_dma(%struct.comedi_device*) #1

declare dso_local i32 @outw(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
