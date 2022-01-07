; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_das16.c_das16_ai_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_das16.c_das16_ai_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_lrange = type { i32, %struct.comedi_krange* }
%struct.comedi_krange = type { i32, i32, i32 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_devconfig = type { i32* }

@das16_pg_none = common dso_local global i32 0, align 4
@range_unknown = common dso_local global %struct.comedi_lrange zeroinitializer, align 8
@UNIT_volt = common dso_local global i32 0, align 4
@DAS16_STATUS_UNIPOLAR = common dso_local global i32 0, align 4
@das16_ai_uni_lranges = common dso_local global %struct.comedi_lrange** null, align 8
@das16_ai_bip_lranges = common dso_local global %struct.comedi_lrange** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.comedi_lrange* (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_devconfig*, i32, i32)* @das16_ai_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.comedi_lrange* @das16_ai_range(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_devconfig* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.comedi_lrange*, align 8
  %7 = alloca %struct.comedi_device*, align 8
  %8 = alloca %struct.comedi_subdevice*, align 8
  %9 = alloca %struct.comedi_devconfig*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.comedi_lrange*, align 8
  %15 = alloca %struct.comedi_krange*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %7, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %8, align 8
  store %struct.comedi_devconfig* %2, %struct.comedi_devconfig** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %9, align 8
  %17 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 4
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %12, align 4
  %21 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %9, align 8
  %22 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 5
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @das16_pg_none, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %57

29:                                               ; preds = %5
  %30 = load i32, i32* %12, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %13, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %57

35:                                               ; preds = %32, %29
  %36 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %37 = call %struct.comedi_lrange* @comedi_alloc_spriv(%struct.comedi_subdevice* %36, i32 28)
  store %struct.comedi_lrange* %37, %struct.comedi_lrange** %14, align 8
  %38 = load %struct.comedi_lrange*, %struct.comedi_lrange** %14, align 8
  %39 = icmp ne %struct.comedi_lrange* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  store %struct.comedi_lrange* @range_unknown, %struct.comedi_lrange** %6, align 8
  br label %74

41:                                               ; preds = %35
  %42 = load %struct.comedi_lrange*, %struct.comedi_lrange** %14, align 8
  %43 = getelementptr inbounds %struct.comedi_lrange, %struct.comedi_lrange* %42, i32 0, i32 0
  store i32 1, i32* %43, align 8
  %44 = load %struct.comedi_lrange*, %struct.comedi_lrange** %14, align 8
  %45 = getelementptr inbounds %struct.comedi_lrange, %struct.comedi_lrange* %44, i32 0, i32 1
  %46 = load %struct.comedi_krange*, %struct.comedi_krange** %45, align 8
  store %struct.comedi_krange* %46, %struct.comedi_krange** %15, align 8
  %47 = load i32, i32* %12, align 4
  %48 = load %struct.comedi_krange*, %struct.comedi_krange** %15, align 8
  %49 = getelementptr inbounds %struct.comedi_krange, %struct.comedi_krange* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* %13, align 4
  %51 = load %struct.comedi_krange*, %struct.comedi_krange** %15, align 8
  %52 = getelementptr inbounds %struct.comedi_krange, %struct.comedi_krange* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* @UNIT_volt, align 4
  %54 = load %struct.comedi_krange*, %struct.comedi_krange** %15, align 8
  %55 = getelementptr inbounds %struct.comedi_krange, %struct.comedi_krange* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 4
  %56 = load %struct.comedi_lrange*, %struct.comedi_lrange** %14, align 8
  store %struct.comedi_lrange* %56, %struct.comedi_lrange** %6, align 8
  br label %74

57:                                               ; preds = %32, %5
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* @DAS16_STATUS_UNIPOLAR, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %57
  %63 = load %struct.comedi_lrange**, %struct.comedi_lrange*** @das16_ai_uni_lranges, align 8
  %64 = load i32, i32* %10, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.comedi_lrange*, %struct.comedi_lrange** %63, i64 %65
  %67 = load %struct.comedi_lrange*, %struct.comedi_lrange** %66, align 8
  store %struct.comedi_lrange* %67, %struct.comedi_lrange** %6, align 8
  br label %74

68:                                               ; preds = %57
  %69 = load %struct.comedi_lrange**, %struct.comedi_lrange*** @das16_ai_bip_lranges, align 8
  %70 = load i32, i32* %10, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.comedi_lrange*, %struct.comedi_lrange** %69, i64 %71
  %73 = load %struct.comedi_lrange*, %struct.comedi_lrange** %72, align 8
  store %struct.comedi_lrange* %73, %struct.comedi_lrange** %6, align 8
  br label %74

74:                                               ; preds = %68, %62, %41, %40
  %75 = load %struct.comedi_lrange*, %struct.comedi_lrange** %6, align 8
  ret %struct.comedi_lrange* %75
}

declare dso_local %struct.comedi_lrange* @comedi_alloc_spriv(%struct.comedi_subdevice*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
