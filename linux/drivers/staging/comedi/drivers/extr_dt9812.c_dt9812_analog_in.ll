; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_dt9812.c_dt9812_analog_in.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_dt9812.c_dt9812_analog_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.dt9812_private* }
%struct.dt9812_private = type { i32, i32 }
%struct.dt9812_rmw_byte = type { i32, i32, i32 }

@F020_SFR_ADC0CN = common dso_local global i32 0, align 4
@F020_SFR_ADC0H = common dso_local global i32 0, align 4
@F020_SFR_ADC0L = common dso_local global i32 0, align 4
@F020_MASK_ADC0CN_AD0EN = common dso_local global i32 0, align 4
@F020_MASK_ADC0CN_AD0BUSY = common dso_local global i32 0, align 4
@F020_MASK_ADC0CN_AD0INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, i32, i32*, i32)* @dt9812_analog_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dt9812_analog_in(%struct.comedi_device* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dt9812_private*, align 8
  %10 = alloca [3 x %struct.dt9812_rmw_byte], align 16
  %11 = alloca [3 x i32], align 4
  %12 = alloca [3 x i32], align 4
  %13 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %15 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %14, i32 0, i32 0
  %16 = load %struct.dt9812_private*, %struct.dt9812_private** %15, align 8
  store %struct.dt9812_private* %16, %struct.dt9812_private** %9, align 8
  %17 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  %18 = load i32, i32* @F020_SFR_ADC0CN, align 4
  store i32 %18, i32* %17, align 4
  %19 = getelementptr inbounds i32, i32* %17, i64 1
  %20 = load i32, i32* @F020_SFR_ADC0H, align 4
  store i32 %20, i32* %19, align 4
  %21 = getelementptr inbounds i32, i32* %19, i64 1
  %22 = load i32, i32* @F020_SFR_ADC0L, align 4
  store i32 %22, i32* %21, align 4
  %23 = load %struct.dt9812_private*, %struct.dt9812_private** %9, align 8
  %24 = getelementptr inbounds %struct.dt9812_private, %struct.dt9812_private* %23, i32 0, i32 1
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %27 = getelementptr inbounds [3 x %struct.dt9812_rmw_byte], [3 x %struct.dt9812_rmw_byte]* %10, i64 0, i64 0
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @dt9812_configure_gain(%struct.comedi_device* %26, %struct.dt9812_rmw_byte* %27, i32 %28)
  %30 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %31 = getelementptr inbounds [3 x %struct.dt9812_rmw_byte], [3 x %struct.dt9812_rmw_byte]* %10, i64 0, i64 1
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @dt9812_configure_mux(%struct.comedi_device* %30, %struct.dt9812_rmw_byte* %31, i32 %32)
  %34 = load i32, i32* @F020_SFR_ADC0CN, align 4
  %35 = getelementptr inbounds [3 x %struct.dt9812_rmw_byte], [3 x %struct.dt9812_rmw_byte]* %10, i64 0, i64 2
  %36 = getelementptr inbounds %struct.dt9812_rmw_byte, %struct.dt9812_rmw_byte* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = getelementptr inbounds [3 x %struct.dt9812_rmw_byte], [3 x %struct.dt9812_rmw_byte]* %10, i64 0, i64 2
  %38 = getelementptr inbounds %struct.dt9812_rmw_byte, %struct.dt9812_rmw_byte* %37, i32 0, i32 1
  store i32 255, i32* %38, align 4
  %39 = load i32, i32* @F020_MASK_ADC0CN_AD0EN, align 4
  %40 = load i32, i32* @F020_MASK_ADC0CN_AD0BUSY, align 4
  %41 = or i32 %39, %40
  %42 = getelementptr inbounds [3 x %struct.dt9812_rmw_byte], [3 x %struct.dt9812_rmw_byte]* %10, i64 0, i64 2
  %43 = getelementptr inbounds %struct.dt9812_rmw_byte, %struct.dt9812_rmw_byte* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 8
  %44 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %45 = getelementptr inbounds [3 x %struct.dt9812_rmw_byte], [3 x %struct.dt9812_rmw_byte]* %10, i64 0, i64 0
  %46 = call i32 @dt9812_rmw_multiple_registers(%struct.comedi_device* %44, i32 3, %struct.dt9812_rmw_byte* %45)
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %13, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %4
  br label %90

50:                                               ; preds = %4
  %51 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %52 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  %53 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  %54 = call i32 @dt9812_read_multiple_registers(%struct.comedi_device* %51, i32 3, i32* %52, i32* %53)
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %13, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  br label %90

58:                                               ; preds = %50
  %59 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @F020_MASK_ADC0CN_AD0INT, align 4
  %62 = load i32, i32* @F020_MASK_ADC0CN_AD0BUSY, align 4
  %63 = or i32 %61, %62
  %64 = and i32 %60, %63
  %65 = load i32, i32* @F020_MASK_ADC0CN_AD0INT, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %89

67:                                               ; preds = %58
  %68 = load %struct.dt9812_private*, %struct.dt9812_private** %9, align 8
  %69 = getelementptr inbounds %struct.dt9812_private, %struct.dt9812_private* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  switch i32 %70, label %88 [
    i32 129, label %71
    i32 128, label %80
  ]

71:                                               ; preds = %67
  %72 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 1
  %73 = load i32, i32* %72, align 4
  %74 = shl i32 %73, 8
  %75 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 2
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %74, %76
  %78 = add nsw i32 %77, 2048
  %79 = load i32*, i32** %7, align 8
  store i32 %78, i32* %79, align 4
  br label %88

80:                                               ; preds = %67
  %81 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 1
  %82 = load i32, i32* %81, align 4
  %83 = shl i32 %82, 8
  %84 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 2
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %83, %85
  %87 = load i32*, i32** %7, align 8
  store i32 %86, i32* %87, align 4
  br label %88

88:                                               ; preds = %67, %80, %71
  br label %89

89:                                               ; preds = %88, %58
  br label %90

90:                                               ; preds = %89, %57, %49
  %91 = load %struct.dt9812_private*, %struct.dt9812_private** %9, align 8
  %92 = getelementptr inbounds %struct.dt9812_private, %struct.dt9812_private* %91, i32 0, i32 1
  %93 = call i32 @mutex_unlock(i32* %92)
  %94 = load i32, i32* %13, align 4
  ret i32 %94
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dt9812_configure_gain(%struct.comedi_device*, %struct.dt9812_rmw_byte*, i32) #1

declare dso_local i32 @dt9812_configure_mux(%struct.comedi_device*, %struct.dt9812_rmw_byte*, i32) #1

declare dso_local i32 @dt9812_rmw_multiple_registers(%struct.comedi_device*, i32, %struct.dt9812_rmw_byte*) #1

declare dso_local i32 @dt9812_read_multiple_registers(%struct.comedi_device*, i32, i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
