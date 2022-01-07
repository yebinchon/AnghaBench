; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_set_dac_interval_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_set_dac_interval_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, %struct.pcidas64_private* }
%struct.pcidas64_private = type { i64 }
%struct.comedi_cmd = type { i64, i32, i32 }

@TRIG_TIMER = common dso_local global i64 0, align 8
@max_counter_value = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"bug! ao divisor too big\0A\00", align 1
@DAC_SAMPLE_INTERVAL_LOWER_REG = common dso_local global i64 0, align 8
@DAC_SAMPLE_INTERVAL_UPPER_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_cmd*)* @set_dac_interval_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_dac_interval_regs(%struct.comedi_device* %0, %struct.comedi_cmd* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_cmd*, align 8
  %5 = alloca %struct.pcidas64_private*, align 8
  %6 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_cmd* %1, %struct.comedi_cmd** %4, align 8
  %7 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %8 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %7, i32 0, i32 1
  %9 = load %struct.pcidas64_private*, %struct.pcidas64_private** %8, align 8
  store %struct.pcidas64_private* %9, %struct.pcidas64_private** %5, align 8
  %10 = load %struct.comedi_cmd*, %struct.comedi_cmd** %4, align 8
  %11 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @TRIG_TIMER, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %51

16:                                               ; preds = %2
  %17 = load %struct.comedi_cmd*, %struct.comedi_cmd** %4, align 8
  %18 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.comedi_cmd*, %struct.comedi_cmd** %4, align 8
  %21 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @get_ao_divisor(i32 %19, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @max_counter_value, align 4
  %26 = icmp ugt i32 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %16
  %28 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %29 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @dev_err(i32 %30, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @max_counter_value, align 4
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %27, %16
  %34 = load i32, i32* %6, align 4
  %35 = and i32 %34, 65535
  %36 = load %struct.pcidas64_private*, %struct.pcidas64_private** %5, align 8
  %37 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @DAC_SAMPLE_INTERVAL_LOWER_REG, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @writew(i32 %35, i64 %40)
  %42 = load i32, i32* %6, align 4
  %43 = lshr i32 %42, 16
  %44 = and i32 %43, 255
  %45 = load %struct.pcidas64_private*, %struct.pcidas64_private** %5, align 8
  %46 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @DAC_SAMPLE_INTERVAL_UPPER_REG, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @writew(i32 %44, i64 %49)
  br label %51

51:                                               ; preds = %33, %15
  ret void
}

declare dso_local i32 @get_ao_divisor(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @writew(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
