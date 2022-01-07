; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_dt9812.c_dt9812_analog_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_dt9812.c_dt9812_analog_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.dt9812_private* }
%struct.dt9812_private = type { i32 }
%struct.dt9812_rmw_byte = type { i32, i32, i32 }

@F020_SFR_DAC0CN = common dso_local global i32 0, align 4
@F020_MASK_DACXCN_DACXEN = common dso_local global i8* null, align 8
@F020_SFR_DAC0L = common dso_local global i32 0, align 4
@F020_SFR_DAC0H = common dso_local global i32 0, align 4
@F020_SFR_DAC1CN = common dso_local global i32 0, align 4
@F020_SFR_DAC1L = common dso_local global i32 0, align 4
@F020_SFR_DAC1H = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, i32, i32)* @dt9812_analog_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dt9812_analog_out(%struct.comedi_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dt9812_private*, align 8
  %8 = alloca [3 x %struct.dt9812_rmw_byte], align 16
  %9 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %11 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %10, i32 0, i32 0
  %12 = load %struct.dt9812_private*, %struct.dt9812_private** %11, align 8
  store %struct.dt9812_private* %12, %struct.dt9812_private** %7, align 8
  %13 = load %struct.dt9812_private*, %struct.dt9812_private** %7, align 8
  %14 = getelementptr inbounds %struct.dt9812_private, %struct.dt9812_private* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load i32, i32* %5, align 4
  switch i32 %16, label %75 [
    i32 0, label %17
    i32 1, label %46
  ]

17:                                               ; preds = %3
  %18 = load i32, i32* @F020_SFR_DAC0CN, align 4
  %19 = getelementptr inbounds [3 x %struct.dt9812_rmw_byte], [3 x %struct.dt9812_rmw_byte]* %8, i64 0, i64 0
  %20 = getelementptr inbounds %struct.dt9812_rmw_byte, %struct.dt9812_rmw_byte* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 8
  %21 = getelementptr inbounds [3 x %struct.dt9812_rmw_byte], [3 x %struct.dt9812_rmw_byte]* %8, i64 0, i64 0
  %22 = getelementptr inbounds %struct.dt9812_rmw_byte, %struct.dt9812_rmw_byte* %21, i32 0, i32 0
  store i32 255, i32* %22, align 16
  %23 = load i8*, i8** @F020_MASK_DACXCN_DACXEN, align 8
  %24 = ptrtoint i8* %23 to i32
  %25 = getelementptr inbounds [3 x %struct.dt9812_rmw_byte], [3 x %struct.dt9812_rmw_byte]* %8, i64 0, i64 0
  %26 = getelementptr inbounds %struct.dt9812_rmw_byte, %struct.dt9812_rmw_byte* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @F020_SFR_DAC0L, align 4
  %28 = getelementptr inbounds [3 x %struct.dt9812_rmw_byte], [3 x %struct.dt9812_rmw_byte]* %8, i64 0, i64 1
  %29 = getelementptr inbounds %struct.dt9812_rmw_byte, %struct.dt9812_rmw_byte* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  %30 = getelementptr inbounds [3 x %struct.dt9812_rmw_byte], [3 x %struct.dt9812_rmw_byte]* %8, i64 0, i64 1
  %31 = getelementptr inbounds %struct.dt9812_rmw_byte, %struct.dt9812_rmw_byte* %30, i32 0, i32 0
  store i32 255, i32* %31, align 4
  %32 = load i32, i32* %6, align 4
  %33 = and i32 %32, 255
  %34 = getelementptr inbounds [3 x %struct.dt9812_rmw_byte], [3 x %struct.dt9812_rmw_byte]* %8, i64 0, i64 1
  %35 = getelementptr inbounds %struct.dt9812_rmw_byte, %struct.dt9812_rmw_byte* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @F020_SFR_DAC0H, align 4
  %37 = getelementptr inbounds [3 x %struct.dt9812_rmw_byte], [3 x %struct.dt9812_rmw_byte]* %8, i64 0, i64 2
  %38 = getelementptr inbounds %struct.dt9812_rmw_byte, %struct.dt9812_rmw_byte* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = getelementptr inbounds [3 x %struct.dt9812_rmw_byte], [3 x %struct.dt9812_rmw_byte]* %8, i64 0, i64 2
  %40 = getelementptr inbounds %struct.dt9812_rmw_byte, %struct.dt9812_rmw_byte* %39, i32 0, i32 0
  store i32 255, i32* %40, align 8
  %41 = load i32, i32* %6, align 4
  %42 = ashr i32 %41, 8
  %43 = and i32 %42, 15
  %44 = getelementptr inbounds [3 x %struct.dt9812_rmw_byte], [3 x %struct.dt9812_rmw_byte]* %8, i64 0, i64 2
  %45 = getelementptr inbounds %struct.dt9812_rmw_byte, %struct.dt9812_rmw_byte* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  br label %75

46:                                               ; preds = %3
  %47 = load i32, i32* @F020_SFR_DAC1CN, align 4
  %48 = getelementptr inbounds [3 x %struct.dt9812_rmw_byte], [3 x %struct.dt9812_rmw_byte]* %8, i64 0, i64 0
  %49 = getelementptr inbounds %struct.dt9812_rmw_byte, %struct.dt9812_rmw_byte* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  %50 = getelementptr inbounds [3 x %struct.dt9812_rmw_byte], [3 x %struct.dt9812_rmw_byte]* %8, i64 0, i64 0
  %51 = getelementptr inbounds %struct.dt9812_rmw_byte, %struct.dt9812_rmw_byte* %50, i32 0, i32 0
  store i32 255, i32* %51, align 16
  %52 = load i8*, i8** @F020_MASK_DACXCN_DACXEN, align 8
  %53 = ptrtoint i8* %52 to i32
  %54 = getelementptr inbounds [3 x %struct.dt9812_rmw_byte], [3 x %struct.dt9812_rmw_byte]* %8, i64 0, i64 0
  %55 = getelementptr inbounds %struct.dt9812_rmw_byte, %struct.dt9812_rmw_byte* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* @F020_SFR_DAC1L, align 4
  %57 = getelementptr inbounds [3 x %struct.dt9812_rmw_byte], [3 x %struct.dt9812_rmw_byte]* %8, i64 0, i64 1
  %58 = getelementptr inbounds %struct.dt9812_rmw_byte, %struct.dt9812_rmw_byte* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 4
  %59 = getelementptr inbounds [3 x %struct.dt9812_rmw_byte], [3 x %struct.dt9812_rmw_byte]* %8, i64 0, i64 1
  %60 = getelementptr inbounds %struct.dt9812_rmw_byte, %struct.dt9812_rmw_byte* %59, i32 0, i32 0
  store i32 255, i32* %60, align 4
  %61 = load i32, i32* %6, align 4
  %62 = and i32 %61, 255
  %63 = getelementptr inbounds [3 x %struct.dt9812_rmw_byte], [3 x %struct.dt9812_rmw_byte]* %8, i64 0, i64 1
  %64 = getelementptr inbounds %struct.dt9812_rmw_byte, %struct.dt9812_rmw_byte* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* @F020_SFR_DAC1H, align 4
  %66 = getelementptr inbounds [3 x %struct.dt9812_rmw_byte], [3 x %struct.dt9812_rmw_byte]* %8, i64 0, i64 2
  %67 = getelementptr inbounds %struct.dt9812_rmw_byte, %struct.dt9812_rmw_byte* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 8
  %68 = getelementptr inbounds [3 x %struct.dt9812_rmw_byte], [3 x %struct.dt9812_rmw_byte]* %8, i64 0, i64 2
  %69 = getelementptr inbounds %struct.dt9812_rmw_byte, %struct.dt9812_rmw_byte* %68, i32 0, i32 0
  store i32 255, i32* %69, align 8
  %70 = load i32, i32* %6, align 4
  %71 = ashr i32 %70, 8
  %72 = and i32 %71, 15
  %73 = getelementptr inbounds [3 x %struct.dt9812_rmw_byte], [3 x %struct.dt9812_rmw_byte]* %8, i64 0, i64 2
  %74 = getelementptr inbounds %struct.dt9812_rmw_byte, %struct.dt9812_rmw_byte* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  br label %75

75:                                               ; preds = %3, %46, %17
  %76 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %77 = getelementptr inbounds [3 x %struct.dt9812_rmw_byte], [3 x %struct.dt9812_rmw_byte]* %8, i64 0, i64 0
  %78 = call i32 @dt9812_rmw_multiple_registers(%struct.comedi_device* %76, i32 3, %struct.dt9812_rmw_byte* %77)
  store i32 %78, i32* %9, align 4
  %79 = load %struct.dt9812_private*, %struct.dt9812_private** %7, align 8
  %80 = getelementptr inbounds %struct.dt9812_private, %struct.dt9812_private* %79, i32 0, i32 0
  %81 = call i32 @mutex_unlock(i32* %80)
  %82 = load i32, i32* %9, align 4
  ret i32 %82
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dt9812_rmw_multiple_registers(%struct.comedi_device*, i32, %struct.dt9812_rmw_byte*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
