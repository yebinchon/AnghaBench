; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_setup_sample_counters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_setup_sample_counters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.pcidas64_private* }
%struct.pcidas64_private = type { i64 }
%struct.comedi_cmd = type { i32 }

@ADC_COUNT_LOWER_REG = common dso_local global i64 0, align 8
@ADC_COUNT_UPPER_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_cmd*)* @setup_sample_counters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_sample_counters(%struct.comedi_device* %0, %struct.comedi_cmd* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_cmd*, align 8
  %5 = alloca %struct.pcidas64_private*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_cmd* %1, %struct.comedi_cmd** %4, align 8
  %6 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %7 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %6, i32 0, i32 0
  %8 = load %struct.pcidas64_private*, %struct.pcidas64_private** %7, align 8
  store %struct.pcidas64_private* %8, %struct.pcidas64_private** %5, align 8
  %9 = load %struct.comedi_cmd*, %struct.comedi_cmd** %4, align 8
  %10 = call i64 @use_hw_sample_counter(%struct.comedi_cmd* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %34

12:                                               ; preds = %2
  %13 = load %struct.comedi_cmd*, %struct.comedi_cmd** %4, align 8
  %14 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, 65535
  %17 = load %struct.pcidas64_private*, %struct.pcidas64_private** %5, align 8
  %18 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @ADC_COUNT_LOWER_REG, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @writew(i32 %16, i64 %21)
  %23 = load %struct.comedi_cmd*, %struct.comedi_cmd** %4, align 8
  %24 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = ashr i32 %25, 16
  %27 = and i32 %26, 255
  %28 = load %struct.pcidas64_private*, %struct.pcidas64_private** %5, align 8
  %29 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @ADC_COUNT_UPPER_REG, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @writew(i32 %27, i64 %32)
  br label %41

34:                                               ; preds = %2
  %35 = load %struct.pcidas64_private*, %struct.pcidas64_private** %5, align 8
  %36 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @ADC_COUNT_LOWER_REG, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @writew(i32 1, i64 %39)
  br label %41

41:                                               ; preds = %34, %12
  ret void
}

declare dso_local i64 @use_hw_sample_counter(%struct.comedi_cmd*) #1

declare dso_local i32 @writew(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
