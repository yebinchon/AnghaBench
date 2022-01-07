; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_atmio16d.c_reset_atmio16d.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_atmio16d.c_reset_atmio16d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, %struct.atmio16d_private* }
%struct.atmio16d_private = type { i32, i32 }

@COM_REG_1 = common dso_local global i64 0, align 8
@COM_REG_2 = common dso_local global i64 0, align 8
@MUX_GAIN_REG = common dso_local global i64 0, align 8
@AM9513A_COM_REG = common dso_local global i64 0, align 8
@AM9513A_DATA_REG = common dso_local global i64 0, align 8
@AD_CLEAR_REG = common dso_local global i64 0, align 8
@INT2CLR_REG = common dso_local global i64 0, align 8
@adc_straight = common dso_local global i32 0, align 4
@DAC0_REG = common dso_local global i64 0, align 8
@DAC1_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*)* @reset_atmio16d to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset_atmio16d(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca %struct.atmio16d_private*, align 8
  %4 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %5 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %6 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %5, i32 0, i32 1
  %7 = load %struct.atmio16d_private*, %struct.atmio16d_private** %6, align 8
  store %struct.atmio16d_private* %7, %struct.atmio16d_private** %3, align 8
  %8 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %9 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @COM_REG_1, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @outw(i32 0, i64 %12)
  %14 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %15 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @COM_REG_2, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @outw(i32 0, i64 %18)
  %20 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %21 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @MUX_GAIN_REG, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @outw(i32 0, i64 %24)
  %26 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %27 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @AM9513A_COM_REG, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @outw(i32 65535, i64 %30)
  %32 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %33 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @AM9513A_COM_REG, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @outw(i32 65519, i64 %36)
  %38 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %39 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @AM9513A_COM_REG, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @outw(i32 65303, i64 %42)
  %44 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %45 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @AM9513A_DATA_REG, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @outw(i32 61440, i64 %48)
  store i32 1, i32* %4, align 4
  br label %50

50:                                               ; preds = %82, %1
  %51 = load i32, i32* %4, align 4
  %52 = icmp sle i32 %51, 5
  br i1 %52, label %53, label %85

53:                                               ; preds = %50
  %54 = load i32, i32* %4, align 4
  %55 = add nsw i32 65280, %54
  %56 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %57 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @AM9513A_COM_REG, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @outw(i32 %55, i64 %60)
  %62 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %63 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @AM9513A_DATA_REG, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @outw(i32 4, i64 %66)
  %68 = load i32, i32* %4, align 4
  %69 = add nsw i32 65288, %68
  %70 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %71 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @AM9513A_COM_REG, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i32 @outw(i32 %69, i64 %74)
  %76 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %77 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @AM9513A_DATA_REG, align 8
  %80 = add nsw i64 %78, %79
  %81 = call i32 @outw(i32 3, i64 %80)
  br label %82

82:                                               ; preds = %53
  %83 = load i32, i32* %4, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %4, align 4
  br label %50

85:                                               ; preds = %50
  %86 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %87 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @AM9513A_COM_REG, align 8
  %90 = add nsw i64 %88, %89
  %91 = call i32 @outw(i32 65375, i64 %90)
  %92 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %93 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @AD_CLEAR_REG, align 8
  %96 = add nsw i64 %94, %95
  %97 = call i32 @outw(i32 0, i64 %96)
  %98 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %99 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @INT2CLR_REG, align 8
  %102 = add nsw i64 %100, %101
  %103 = call i32 @outw(i32 0, i64 %102)
  %104 = load %struct.atmio16d_private*, %struct.atmio16d_private** %3, align 8
  %105 = getelementptr inbounds %struct.atmio16d_private, %struct.atmio16d_private* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %106, 1
  store i32 %107, i32* %105, align 4
  %108 = load %struct.atmio16d_private*, %struct.atmio16d_private** %3, align 8
  %109 = getelementptr inbounds %struct.atmio16d_private, %struct.atmio16d_private* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %112 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @COM_REG_1, align 8
  %115 = add nsw i64 %113, %114
  %116 = call i32 @outw(i32 %110, i64 %115)
  %117 = load i32, i32* @adc_straight, align 4
  %118 = load %struct.atmio16d_private*, %struct.atmio16d_private** %3, align 8
  %119 = getelementptr inbounds %struct.atmio16d_private, %struct.atmio16d_private* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 4
  %120 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %121 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @DAC0_REG, align 8
  %124 = add nsw i64 %122, %123
  %125 = call i32 @outw(i32 2048, i64 %124)
  %126 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %127 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @DAC1_REG, align 8
  %130 = add nsw i64 %128, %129
  %131 = call i32 @outw(i32 2048, i64 %130)
  ret void
}

declare dso_local i32 @outw(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
