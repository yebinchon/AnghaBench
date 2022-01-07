; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_das16.c_das16_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_das16.c_das16_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, i64, %struct.das16_board* }
%struct.das16_board = type { i32 }
%struct.comedi_devconfig = type { i32 }

@DAS16_DIO_REG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [56 x i8] c"requested board's id bits are incorrect (0x%x != 0x%x)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_devconfig*)* @das16_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @das16_probe(%struct.comedi_device* %0, %struct.comedi_devconfig* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_devconfig*, align 8
  %6 = alloca %struct.das16_board*, align 8
  %7 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_devconfig* %1, %struct.comedi_devconfig** %5, align 8
  %8 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %9 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %8, i32 0, i32 2
  %10 = load %struct.das16_board*, %struct.das16_board** %9, align 8
  store %struct.das16_board* %10, %struct.das16_board** %6, align 8
  %11 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %12 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @DAS16_DIO_REG, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @inb(i64 %15)
  %17 = and i32 %16, 240
  store i32 %17, i32* %7, align 4
  %18 = load %struct.das16_board*, %struct.das16_board** %6, align 8
  %19 = getelementptr inbounds %struct.das16_board, %struct.das16_board* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %2
  %24 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %25 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.das16_board*, %struct.das16_board** %6, align 8
  %28 = getelementptr inbounds %struct.das16_board, %struct.das16_board* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @dev_err(i32 %26, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30)
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %35

34:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %34, %23
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
