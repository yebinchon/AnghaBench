; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/addac/extr_adt7316.c_adt7316_show_DAC_internal_Vref.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/addac/extr_adt7316.c_adt7316_show_DAC_internal_Vref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.iio_dev = type { i32 }
%struct.adt7316_chip_info = type { i32, i32 }

@ID_FAMILY_MASK = common dso_local global i32 0, align 4
@ID_ADT75XX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"0x%x\0A\00", align 1
@ADT7516_DAC_IN_VREF_MASK = common dso_local global i32 0, align 4
@ADT7516_DAC_IN_VREF_OFFSET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@ADT7316_DAC_IN_VREF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @adt7316_show_DAC_internal_Vref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adt7316_show_DAC_internal_Vref(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.iio_dev*, align 8
  %9 = alloca %struct.adt7316_chip_info*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.device*, %struct.device** %5, align 8
  %11 = call %struct.iio_dev* @dev_to_iio_dev(%struct.device* %10)
  store %struct.iio_dev* %11, %struct.iio_dev** %8, align 8
  %12 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %13 = call %struct.adt7316_chip_info* @iio_priv(%struct.iio_dev* %12)
  store %struct.adt7316_chip_info* %13, %struct.adt7316_chip_info** %9, align 8
  %14 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %9, align 8
  %15 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @ID_FAMILY_MASK, align 4
  %18 = and i32 %16, %17
  %19 = load i32, i32* @ID_ADT75XX, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %3
  %22 = load i8*, i8** %7, align 8
  %23 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %9, align 8
  %24 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @ADT7516_DAC_IN_VREF_MASK, align 4
  %27 = and i32 %25, %26
  %28 = load i32, i32* @ADT7516_DAC_IN_VREF_OFFSET, align 4
  %29 = ashr i32 %27, %28
  %30 = call i32 @sprintf(i8* %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %29)
  store i32 %30, i32* %4, align 4
  br label %43

31:                                               ; preds = %3
  %32 = load i8*, i8** %7, align 8
  %33 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %9, align 8
  %34 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @ADT7316_DAC_IN_VREF, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i32 @sprintf(i8* %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %31, %21
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local %struct.iio_dev* @dev_to_iio_dev(%struct.device*) #1

declare dso_local %struct.adt7316_chip_info* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
