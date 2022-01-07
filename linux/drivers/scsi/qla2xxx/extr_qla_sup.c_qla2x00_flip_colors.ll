; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_sup.c_qla2x00_flip_colors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_sup.c_qla2x00_flip_colors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qla_hw_data = type { i64 }

@QLA_LED_ALL_ON = common dso_local global i64 0, align 8
@GPIO_LED_ALL_OFF = common dso_local global i32 0, align 4
@GPIO_LED_RGA_ON = common dso_local global i32 0, align 4
@QLA_LED_GRN_ON = common dso_local global i64 0, align 8
@GPIO_LED_GREEN_OFF_AMBER_OFF = common dso_local global i32 0, align 4
@GPIO_LED_GREEN_ON_AMBER_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qla_hw_data*, i32*)* @qla2x00_flip_colors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla2x00_flip_colors(%struct.qla_hw_data* %0, i32* %1) #0 {
  %3 = alloca %struct.qla_hw_data*, align 8
  %4 = alloca i32*, align 8
  store %struct.qla_hw_data* %0, %struct.qla_hw_data** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %6 = call i64 @IS_QLA2322(%struct.qla_hw_data* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %26

8:                                                ; preds = %2
  %9 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %10 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @QLA_LED_ALL_ON, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %8
  %15 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %16 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %15, i32 0, i32 0
  store i64 0, i64* %16, align 8
  %17 = load i32, i32* @GPIO_LED_ALL_OFF, align 4
  %18 = load i32*, i32** %4, align 8
  store i32 %17, i32* %18, align 4
  br label %25

19:                                               ; preds = %8
  %20 = load i64, i64* @QLA_LED_ALL_ON, align 8
  %21 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %22 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  %23 = load i32, i32* @GPIO_LED_RGA_ON, align 4
  %24 = load i32*, i32** %4, align 8
  store i32 %23, i32* %24, align 4
  br label %25

25:                                               ; preds = %19, %14
  br label %44

26:                                               ; preds = %2
  %27 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %28 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @QLA_LED_GRN_ON, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %26
  %33 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %34 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %33, i32 0, i32 0
  store i64 0, i64* %34, align 8
  %35 = load i32, i32* @GPIO_LED_GREEN_OFF_AMBER_OFF, align 4
  %36 = load i32*, i32** %4, align 8
  store i32 %35, i32* %36, align 4
  br label %43

37:                                               ; preds = %26
  %38 = load i64, i64* @QLA_LED_GRN_ON, align 8
  %39 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %40 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load i32, i32* @GPIO_LED_GREEN_ON_AMBER_OFF, align 4
  %42 = load i32*, i32** %4, align 8
  store i32 %41, i32* %42, align 4
  br label %43

43:                                               ; preds = %37, %32
  br label %44

44:                                               ; preds = %43, %25
  ret void
}

declare dso_local i64 @IS_QLA2322(%struct.qla_hw_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
