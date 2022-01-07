; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_dt282x.c_dt282x_initialize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_dt282x.c_dt282x_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, i64 }

@DT2821_SUPCSR_BDINIT = common dso_local global i32 0, align 4
@DT2821_SUPCSR_REG = common dso_local global i64 0, align 8
@DT2821_ADCSR_REG = common dso_local global i64 0, align 8
@DT2821_CHANCSR_REG = common dso_local global i64 0, align 8
@DT2821_DACSR_REG = common dso_local global i64 0, align 8
@DT2821_TMRCTR_REG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"board not found\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*)* @dt282x_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dt282x_initialize(%struct.comedi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.comedi_device*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  %4 = load i32, i32* @DT2821_SUPCSR_BDINIT, align 4
  %5 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %6 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @DT2821_SUPCSR_REG, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @outw(i32 %4, i64 %9)
  %11 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %12 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @DT2821_ADCSR_REG, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @inw(i64 %15)
  %17 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %18 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @DT2821_ADCSR_REG, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @inw(i64 %21)
  %23 = and i32 %22, 65520
  %24 = icmp ne i32 %23, 31744
  br i1 %24, label %61, label %25

25:                                               ; preds = %1
  %26 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %27 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @DT2821_CHANCSR_REG, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @inw(i64 %30)
  %32 = and i32 %31, 61680
  %33 = icmp ne i32 %32, 28912
  br i1 %33, label %61, label %34

34:                                               ; preds = %25
  %35 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %36 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @DT2821_DACSR_REG, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @inw(i64 %39)
  %41 = and i32 %40, 31891
  %42 = icmp ne i32 %41, 31888
  br i1 %42, label %61, label %43

43:                                               ; preds = %34
  %44 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %45 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @DT2821_SUPCSR_REG, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @inw(i64 %48)
  %50 = and i32 %49, 63743
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %61, label %52

52:                                               ; preds = %43
  %53 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %54 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @DT2821_TMRCTR_REG, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @inw(i64 %57)
  %59 = and i32 %58, 65280
  %60 = icmp ne i32 %59, 61440
  br i1 %60, label %61, label %68

61:                                               ; preds = %52, %43, %34, %25, %1
  %62 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %63 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @dev_err(i32 %64, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %66 = load i32, i32* @EIO, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %69

68:                                               ; preds = %52
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %68, %61
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @inw(i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
