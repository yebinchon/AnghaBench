; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_caldac_8800_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_caldac_8800_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, %struct.pcidas64_private* }
%struct.pcidas64_private = type { i64 }

@caldac_8800_write.num_caldac_channels = internal constant i32 8, align 4
@caldac_8800_write.bitstream_length = internal constant i32 11, align 4
@caldac_8800_write.caldac_8800_udelay = internal constant i32 1, align 4
@.str = private unnamed_addr constant [24 x i8] c"illegal caldac channel\0A\00", align 1
@SERIAL_DATA_IN_BIT = common dso_local global i32 0, align 4
@CALIBRATION_REG = common dso_local global i64 0, align 8
@SERIAL_CLOCK_BIT = common dso_local global i32 0, align 4
@SELECT_8800_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, i32, i32)* @caldac_8800_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @caldac_8800_write(%struct.comedi_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pcidas64_private*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %13 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %12, i32 0, i32 1
  %14 = load %struct.pcidas64_private*, %struct.pcidas64_private** %13, align 8
  store %struct.pcidas64_private* %14, %struct.pcidas64_private** %8, align 8
  %15 = load i32, i32* %6, align 4
  %16 = and i32 %15, 7
  %17 = shl i32 %16, 8
  %18 = load i32, i32* %7, align 4
  %19 = or i32 %17, %18
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp uge i32 %20, 8
  br i1 %21, label %22, label %27

22:                                               ; preds = %3
  %23 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %24 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @dev_err(i32 %25, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %80

27:                                               ; preds = %3
  store i32 1024, i32* %10, align 4
  br label %28

28:                                               ; preds = %60, %27
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %63

31:                                               ; preds = %28
  store i32 0, i32* %11, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %10, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load i32, i32* @SERIAL_DATA_IN_BIT, align 4
  %38 = load i32, i32* %11, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %11, align 4
  br label %40

40:                                               ; preds = %36, %31
  %41 = call i32 @udelay(i32 1)
  %42 = load i32, i32* %11, align 4
  %43 = load %struct.pcidas64_private*, %struct.pcidas64_private** %8, align 8
  %44 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @CALIBRATION_REG, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @writew(i32 %42, i64 %47)
  %49 = load i32, i32* @SERIAL_CLOCK_BIT, align 4
  %50 = load i32, i32* %11, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %11, align 4
  %52 = call i32 @udelay(i32 1)
  %53 = load i32, i32* %11, align 4
  %54 = load %struct.pcidas64_private*, %struct.pcidas64_private** %8, align 8
  %55 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @CALIBRATION_REG, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @writew(i32 %53, i64 %58)
  br label %60

60:                                               ; preds = %40
  %61 = load i32, i32* %10, align 4
  %62 = lshr i32 %61, 1
  store i32 %62, i32* %10, align 4
  br label %28

63:                                               ; preds = %28
  %64 = call i32 @udelay(i32 1)
  %65 = load i32, i32* @SELECT_8800_BIT, align 4
  %66 = load %struct.pcidas64_private*, %struct.pcidas64_private** %8, align 8
  %67 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @CALIBRATION_REG, align 8
  %70 = add nsw i64 %68, %69
  %71 = call i32 @writew(i32 %65, i64 %70)
  %72 = call i32 @udelay(i32 1)
  %73 = load %struct.pcidas64_private*, %struct.pcidas64_private** %8, align 8
  %74 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @CALIBRATION_REG, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i32 @writew(i32 0, i64 %77)
  %79 = call i32 @udelay(i32 1)
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %63, %22
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @writew(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
