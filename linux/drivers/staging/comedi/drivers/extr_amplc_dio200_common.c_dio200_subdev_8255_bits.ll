; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_amplc_dio200_common.c_dio200_subdev_8255_bits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_amplc_dio200_common.c_dio200_subdev_8255_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32, %struct.dio200_subdev_8255* }
%struct.dio200_subdev_8255 = type { i64 }
%struct.comedi_insn = type { i32 }

@I8255_DATA_A_REG = common dso_local global i64 0, align 8
@I8255_DATA_B_REG = common dso_local global i64 0, align 8
@I8255_DATA_C_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @dio200_subdev_8255_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dio200_subdev_8255_bits(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.dio200_subdev_8255*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %13 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %12, i32 0, i32 1
  %14 = load %struct.dio200_subdev_8255*, %struct.dio200_subdev_8255** %13, align 8
  store %struct.dio200_subdev_8255* %14, %struct.dio200_subdev_8255** %9, align 8
  %15 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = call i32 @comedi_dio_update_state(%struct.comedi_subdevice* %15, i32* %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %71

20:                                               ; preds = %4
  %21 = load i32, i32* %10, align 4
  %22 = and i32 %21, 255
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %20
  %25 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %26 = load %struct.dio200_subdev_8255*, %struct.dio200_subdev_8255** %9, align 8
  %27 = getelementptr inbounds %struct.dio200_subdev_8255, %struct.dio200_subdev_8255* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @I8255_DATA_A_REG, align 8
  %30 = add nsw i64 %28, %29
  %31 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %32 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %33, 255
  %35 = call i32 @dio200_write8(%struct.comedi_device* %25, i64 %30, i32 %34)
  br label %36

36:                                               ; preds = %24, %20
  %37 = load i32, i32* %10, align 4
  %38 = and i32 %37, 65280
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %36
  %41 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %42 = load %struct.dio200_subdev_8255*, %struct.dio200_subdev_8255** %9, align 8
  %43 = getelementptr inbounds %struct.dio200_subdev_8255, %struct.dio200_subdev_8255* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @I8255_DATA_B_REG, align 8
  %46 = add nsw i64 %44, %45
  %47 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %48 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = ashr i32 %49, 8
  %51 = and i32 %50, 255
  %52 = call i32 @dio200_write8(%struct.comedi_device* %41, i64 %46, i32 %51)
  br label %53

53:                                               ; preds = %40, %36
  %54 = load i32, i32* %10, align 4
  %55 = and i32 %54, 16711680
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %53
  %58 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %59 = load %struct.dio200_subdev_8255*, %struct.dio200_subdev_8255** %9, align 8
  %60 = getelementptr inbounds %struct.dio200_subdev_8255, %struct.dio200_subdev_8255* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @I8255_DATA_C_REG, align 8
  %63 = add nsw i64 %61, %62
  %64 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %65 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = ashr i32 %66, 16
  %68 = and i32 %67, 255
  %69 = call i32 @dio200_write8(%struct.comedi_device* %58, i64 %63, i32 %68)
  br label %70

70:                                               ; preds = %57, %53
  br label %71

71:                                               ; preds = %70, %4
  %72 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %73 = load %struct.dio200_subdev_8255*, %struct.dio200_subdev_8255** %9, align 8
  %74 = getelementptr inbounds %struct.dio200_subdev_8255, %struct.dio200_subdev_8255* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @I8255_DATA_A_REG, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i32 @dio200_read8(%struct.comedi_device* %72, i64 %77)
  store i32 %78, i32* %11, align 4
  %79 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %80 = load %struct.dio200_subdev_8255*, %struct.dio200_subdev_8255** %9, align 8
  %81 = getelementptr inbounds %struct.dio200_subdev_8255, %struct.dio200_subdev_8255* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @I8255_DATA_B_REG, align 8
  %84 = add nsw i64 %82, %83
  %85 = call i32 @dio200_read8(%struct.comedi_device* %79, i64 %84)
  %86 = shl i32 %85, 8
  %87 = load i32, i32* %11, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %11, align 4
  %89 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %90 = load %struct.dio200_subdev_8255*, %struct.dio200_subdev_8255** %9, align 8
  %91 = getelementptr inbounds %struct.dio200_subdev_8255, %struct.dio200_subdev_8255* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @I8255_DATA_C_REG, align 8
  %94 = add nsw i64 %92, %93
  %95 = call i32 @dio200_read8(%struct.comedi_device* %89, i64 %94)
  %96 = shl i32 %95, 16
  %97 = load i32, i32* %11, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %11, align 4
  %99 = load i32, i32* %11, align 4
  %100 = load i32*, i32** %8, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 1
  store i32 %99, i32* %101, align 4
  %102 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %103 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  ret i32 %104
}

declare dso_local i32 @comedi_dio_update_state(%struct.comedi_subdevice*, i32*) #1

declare dso_local i32 @dio200_write8(%struct.comedi_device*, i64, i32) #1

declare dso_local i32 @dio200_read8(%struct.comedi_device*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
