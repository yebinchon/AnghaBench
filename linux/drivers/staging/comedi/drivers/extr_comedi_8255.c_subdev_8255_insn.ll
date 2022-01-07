; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_comedi_8255.c_subdev_8255_insn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_comedi_8255.c_subdev_8255_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32, %struct.subdev_8255_private* }
%struct.subdev_8255_private = type { i64, i32 (%struct.comedi_device.0*, i32, i32, i32, i64)* }
%struct.comedi_device.0 = type opaque
%struct.comedi_insn = type { i32 }

@I8255_DATA_A_REG = common dso_local global i32 0, align 4
@I8255_DATA_B_REG = common dso_local global i32 0, align 4
@I8255_DATA_C_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @subdev_8255_insn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @subdev_8255_insn(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.subdev_8255_private*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %14 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %13, i32 0, i32 1
  %15 = load %struct.subdev_8255_private*, %struct.subdev_8255_private** %14, align 8
  store %struct.subdev_8255_private* %15, %struct.subdev_8255_private** %9, align 8
  %16 = load %struct.subdev_8255_private*, %struct.subdev_8255_private** %9, align 8
  %17 = getelementptr inbounds %struct.subdev_8255_private, %struct.subdev_8255_private* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %10, align 8
  %19 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = call i32 @comedi_dio_update_state(%struct.comedi_subdevice* %19, i32* %20)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %78

24:                                               ; preds = %4
  %25 = load i32, i32* %11, align 4
  %26 = and i32 %25, 255
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %24
  %29 = load %struct.subdev_8255_private*, %struct.subdev_8255_private** %9, align 8
  %30 = getelementptr inbounds %struct.subdev_8255_private, %struct.subdev_8255_private* %29, i32 0, i32 1
  %31 = load i32 (%struct.comedi_device.0*, i32, i32, i32, i64)*, i32 (%struct.comedi_device.0*, i32, i32, i32, i64)** %30, align 8
  %32 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %33 = bitcast %struct.comedi_device* %32 to %struct.comedi_device.0*
  %34 = load i32, i32* @I8255_DATA_A_REG, align 4
  %35 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %36 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = and i32 %37, 255
  %39 = load i64, i64* %10, align 8
  %40 = call i32 %31(%struct.comedi_device.0* %33, i32 1, i32 %34, i32 %38, i64 %39)
  br label %41

41:                                               ; preds = %28, %24
  %42 = load i32, i32* %11, align 4
  %43 = and i32 %42, 65280
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %41
  %46 = load %struct.subdev_8255_private*, %struct.subdev_8255_private** %9, align 8
  %47 = getelementptr inbounds %struct.subdev_8255_private, %struct.subdev_8255_private* %46, i32 0, i32 1
  %48 = load i32 (%struct.comedi_device.0*, i32, i32, i32, i64)*, i32 (%struct.comedi_device.0*, i32, i32, i32, i64)** %47, align 8
  %49 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %50 = bitcast %struct.comedi_device* %49 to %struct.comedi_device.0*
  %51 = load i32, i32* @I8255_DATA_B_REG, align 4
  %52 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %53 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = ashr i32 %54, 8
  %56 = and i32 %55, 255
  %57 = load i64, i64* %10, align 8
  %58 = call i32 %48(%struct.comedi_device.0* %50, i32 1, i32 %51, i32 %56, i64 %57)
  br label %59

59:                                               ; preds = %45, %41
  %60 = load i32, i32* %11, align 4
  %61 = and i32 %60, 16711680
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %77

63:                                               ; preds = %59
  %64 = load %struct.subdev_8255_private*, %struct.subdev_8255_private** %9, align 8
  %65 = getelementptr inbounds %struct.subdev_8255_private, %struct.subdev_8255_private* %64, i32 0, i32 1
  %66 = load i32 (%struct.comedi_device.0*, i32, i32, i32, i64)*, i32 (%struct.comedi_device.0*, i32, i32, i32, i64)** %65, align 8
  %67 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %68 = bitcast %struct.comedi_device* %67 to %struct.comedi_device.0*
  %69 = load i32, i32* @I8255_DATA_C_REG, align 4
  %70 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %71 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = ashr i32 %72, 16
  %74 = and i32 %73, 255
  %75 = load i64, i64* %10, align 8
  %76 = call i32 %66(%struct.comedi_device.0* %68, i32 1, i32 %69, i32 %74, i64 %75)
  br label %77

77:                                               ; preds = %63, %59
  br label %78

78:                                               ; preds = %77, %4
  %79 = load %struct.subdev_8255_private*, %struct.subdev_8255_private** %9, align 8
  %80 = getelementptr inbounds %struct.subdev_8255_private, %struct.subdev_8255_private* %79, i32 0, i32 1
  %81 = load i32 (%struct.comedi_device.0*, i32, i32, i32, i64)*, i32 (%struct.comedi_device.0*, i32, i32, i32, i64)** %80, align 8
  %82 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %83 = bitcast %struct.comedi_device* %82 to %struct.comedi_device.0*
  %84 = load i32, i32* @I8255_DATA_A_REG, align 4
  %85 = load i64, i64* %10, align 8
  %86 = call i32 %81(%struct.comedi_device.0* %83, i32 0, i32 %84, i32 0, i64 %85)
  store i32 %86, i32* %12, align 4
  %87 = load %struct.subdev_8255_private*, %struct.subdev_8255_private** %9, align 8
  %88 = getelementptr inbounds %struct.subdev_8255_private, %struct.subdev_8255_private* %87, i32 0, i32 1
  %89 = load i32 (%struct.comedi_device.0*, i32, i32, i32, i64)*, i32 (%struct.comedi_device.0*, i32, i32, i32, i64)** %88, align 8
  %90 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %91 = bitcast %struct.comedi_device* %90 to %struct.comedi_device.0*
  %92 = load i32, i32* @I8255_DATA_B_REG, align 4
  %93 = load i64, i64* %10, align 8
  %94 = call i32 %89(%struct.comedi_device.0* %91, i32 0, i32 %92, i32 0, i64 %93)
  %95 = shl i32 %94, 8
  %96 = load i32, i32* %12, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %12, align 4
  %98 = load %struct.subdev_8255_private*, %struct.subdev_8255_private** %9, align 8
  %99 = getelementptr inbounds %struct.subdev_8255_private, %struct.subdev_8255_private* %98, i32 0, i32 1
  %100 = load i32 (%struct.comedi_device.0*, i32, i32, i32, i64)*, i32 (%struct.comedi_device.0*, i32, i32, i32, i64)** %99, align 8
  %101 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %102 = bitcast %struct.comedi_device* %101 to %struct.comedi_device.0*
  %103 = load i32, i32* @I8255_DATA_C_REG, align 4
  %104 = load i64, i64* %10, align 8
  %105 = call i32 %100(%struct.comedi_device.0* %102, i32 0, i32 %103, i32 0, i64 %104)
  %106 = shl i32 %105, 16
  %107 = load i32, i32* %12, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %12, align 4
  %109 = load i32, i32* %12, align 4
  %110 = load i32*, i32** %8, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 1
  store i32 %109, i32* %111, align 4
  %112 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %113 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  ret i32 %114
}

declare dso_local i32 @comedi_dio_update_state(%struct.comedi_subdevice*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
