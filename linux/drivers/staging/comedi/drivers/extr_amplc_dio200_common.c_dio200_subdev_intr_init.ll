; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_amplc_dio200_common.c_dio200_subdev_intr_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_amplc_dio200_common.c_dio200_subdev_intr_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.dio200_board* }
%struct.dio200_board = type { i64 }
%struct.comedi_subdevice = type { i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32 }
%struct.dio200_subdev_intr = type { i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@COMEDI_SUBD_DI = common dso_local global i32 0, align 4
@SDF_READABLE = common dso_local global i32 0, align 4
@SDF_CMD_READ = common dso_local global i32 0, align 4
@SDF_PACKED = common dso_local global i32 0, align 4
@DIO200_MAX_ISNS = common dso_local global i8* null, align 8
@range_digital = common dso_local global i32 0, align 4
@dio200_subdev_intr_insn_bits = common dso_local global i32 0, align 4
@dio200_subdev_intr_cmdtest = common dso_local global i32 0, align 4
@dio200_subdev_intr_cmd = common dso_local global i32 0, align 4
@dio200_subdev_intr_cancel = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, i32, i32)* @dio200_subdev_intr_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dio200_subdev_intr_init(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.dio200_board*, align 8
  %11 = alloca %struct.dio200_subdev_intr*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %13 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %12, i32 0, i32 0
  %14 = load %struct.dio200_board*, %struct.dio200_board** %13, align 8
  store %struct.dio200_board* %14, %struct.dio200_board** %10, align 8
  %15 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %16 = call %struct.dio200_subdev_intr* @comedi_alloc_spriv(%struct.comedi_subdevice* %15, i32 12)
  store %struct.dio200_subdev_intr* %16, %struct.dio200_subdev_intr** %11, align 8
  %17 = load %struct.dio200_subdev_intr*, %struct.dio200_subdev_intr** %11, align 8
  %18 = icmp ne %struct.dio200_subdev_intr* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %88

22:                                               ; preds = %4
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.dio200_subdev_intr*, %struct.dio200_subdev_intr** %11, align 8
  %25 = getelementptr inbounds %struct.dio200_subdev_intr, %struct.dio200_subdev_intr* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.dio200_subdev_intr*, %struct.dio200_subdev_intr** %11, align 8
  %28 = getelementptr inbounds %struct.dio200_subdev_intr, %struct.dio200_subdev_intr* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.dio200_subdev_intr*, %struct.dio200_subdev_intr** %11, align 8
  %30 = getelementptr inbounds %struct.dio200_subdev_intr, %struct.dio200_subdev_intr* %29, i32 0, i32 2
  %31 = call i32 @spin_lock_init(i32* %30)
  %32 = load %struct.dio200_board*, %struct.dio200_board** %10, align 8
  %33 = getelementptr inbounds %struct.dio200_board, %struct.dio200_board* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %22
  %37 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %38 = load %struct.dio200_subdev_intr*, %struct.dio200_subdev_intr** %11, align 8
  %39 = getelementptr inbounds %struct.dio200_subdev_intr, %struct.dio200_subdev_intr* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @dio200_write8(%struct.comedi_device* %37, i32 %40, i32 0)
  br label %42

42:                                               ; preds = %36, %22
  %43 = load i32, i32* @COMEDI_SUBD_DI, align 4
  %44 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %45 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %44, i32 0, i32 9
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* @SDF_READABLE, align 4
  %47 = load i32, i32* @SDF_CMD_READ, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @SDF_PACKED, align 4
  %50 = or i32 %48, %49
  %51 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %52 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.dio200_board*, %struct.dio200_board** %10, align 8
  %54 = getelementptr inbounds %struct.dio200_board, %struct.dio200_board* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %42
  %58 = load i8*, i8** @DIO200_MAX_ISNS, align 8
  %59 = ptrtoint i8* %58 to i32
  %60 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %61 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load i8*, i8** @DIO200_MAX_ISNS, align 8
  %63 = ptrtoint i8* %62 to i32
  %64 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %65 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 8
  br label %71

66:                                               ; preds = %42
  %67 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %68 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %67, i32 0, i32 1
  store i32 1, i32* %68, align 4
  %69 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %70 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %69, i32 0, i32 2
  store i32 1, i32* %70, align 8
  br label %71

71:                                               ; preds = %66, %57
  %72 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %73 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %72, i32 0, i32 8
  store i32* @range_digital, i32** %73, align 8
  %74 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %75 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %74, i32 0, i32 3
  store i32 1, i32* %75, align 4
  %76 = load i32, i32* @dio200_subdev_intr_insn_bits, align 4
  %77 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %78 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %77, i32 0, i32 7
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* @dio200_subdev_intr_cmdtest, align 4
  %80 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %81 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %80, i32 0, i32 6
  store i32 %79, i32* %81, align 8
  %82 = load i32, i32* @dio200_subdev_intr_cmd, align 4
  %83 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %84 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %83, i32 0, i32 5
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* @dio200_subdev_intr_cancel, align 4
  %86 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %87 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %86, i32 0, i32 4
  store i32 %85, i32* %87, align 8
  store i32 0, i32* %5, align 4
  br label %88

88:                                               ; preds = %71, %19
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local %struct.dio200_subdev_intr* @comedi_alloc_spriv(%struct.comedi_subdevice*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @dio200_write8(%struct.comedi_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
