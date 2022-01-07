; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_das16.c_das16_ao_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_das16.c_das16_ao_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_lrange = type { i32, %struct.comedi_krange* }
%struct.comedi_krange = type { i32, i32, i32 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_devconfig = type { i32* }

@range_unknown = common dso_local global %struct.comedi_lrange zeroinitializer, align 8
@UNIT_volt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.comedi_lrange* (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_devconfig*)* @das16_ao_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.comedi_lrange* @das16_ao_range(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_devconfig* %2) #0 {
  %4 = alloca %struct.comedi_lrange*, align 8
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_devconfig*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.comedi_lrange*, align 8
  %11 = alloca %struct.comedi_krange*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_devconfig* %2, %struct.comedi_devconfig** %7, align 8
  %12 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %7, align 8
  %13 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 6
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %8, align 4
  %17 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %7, align 8
  %18 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 7
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %49

27:                                               ; preds = %24, %3
  %28 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %29 = call %struct.comedi_lrange* @comedi_alloc_spriv(%struct.comedi_subdevice* %28, i32 28)
  store %struct.comedi_lrange* %29, %struct.comedi_lrange** %10, align 8
  %30 = load %struct.comedi_lrange*, %struct.comedi_lrange** %10, align 8
  %31 = icmp ne %struct.comedi_lrange* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  store %struct.comedi_lrange* @range_unknown, %struct.comedi_lrange** %4, align 8
  br label %50

33:                                               ; preds = %27
  %34 = load %struct.comedi_lrange*, %struct.comedi_lrange** %10, align 8
  %35 = getelementptr inbounds %struct.comedi_lrange, %struct.comedi_lrange* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  %36 = load %struct.comedi_lrange*, %struct.comedi_lrange** %10, align 8
  %37 = getelementptr inbounds %struct.comedi_lrange, %struct.comedi_lrange* %36, i32 0, i32 1
  %38 = load %struct.comedi_krange*, %struct.comedi_krange** %37, align 8
  store %struct.comedi_krange* %38, %struct.comedi_krange** %11, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.comedi_krange*, %struct.comedi_krange** %11, align 8
  %41 = getelementptr inbounds %struct.comedi_krange, %struct.comedi_krange* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load %struct.comedi_krange*, %struct.comedi_krange** %11, align 8
  %44 = getelementptr inbounds %struct.comedi_krange, %struct.comedi_krange* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @UNIT_volt, align 4
  %46 = load %struct.comedi_krange*, %struct.comedi_krange** %11, align 8
  %47 = getelementptr inbounds %struct.comedi_krange, %struct.comedi_krange* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  %48 = load %struct.comedi_lrange*, %struct.comedi_lrange** %10, align 8
  store %struct.comedi_lrange* %48, %struct.comedi_lrange** %4, align 8
  br label %50

49:                                               ; preds = %24
  store %struct.comedi_lrange* @range_unknown, %struct.comedi_lrange** %4, align 8
  br label %50

50:                                               ; preds = %49, %33, %32
  %51 = load %struct.comedi_lrange*, %struct.comedi_lrange** %4, align 8
  ret %struct.comedi_lrange* %51
}

declare dso_local %struct.comedi_lrange* @comedi_alloc_spriv(%struct.comedi_subdevice*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
