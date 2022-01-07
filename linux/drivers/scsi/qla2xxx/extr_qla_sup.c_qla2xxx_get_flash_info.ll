; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_sup.c_qla2xxx_get_flash_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_sup.c_qla2xxx_get_flash_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32 }

@QLA_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla2xxx_get_flash_info(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.qla_hw_data*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  store %struct.qla_hw_data* %9, %struct.qla_hw_data** %6, align 8
  %10 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %11 = call i32 @IS_QLA24XX_TYPE(%struct.qla_hw_data* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %35, label %13

13:                                               ; preds = %1
  %14 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %15 = call i32 @IS_QLA25XX(%struct.qla_hw_data* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %35, label %17

17:                                               ; preds = %13
  %18 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %19 = call i32 @IS_CNA_CAPABLE(%struct.qla_hw_data* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %35, label %21

21:                                               ; preds = %17
  %22 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %23 = call i32 @IS_QLA2031(%struct.qla_hw_data* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %21
  %26 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %27 = call i32 @IS_QLA27XX(%struct.qla_hw_data* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %25
  %30 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %31 = call i32 @IS_QLA28XX(%struct.qla_hw_data* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %34, i32* %2, align 4
  br label %52

35:                                               ; preds = %29, %25, %21, %17, %13, %1
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %37 = call i32 @qla2xxx_find_flt_start(%struct.TYPE_7__* %36, i32* %5)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @QLA_SUCCESS, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* %4, align 4
  store i32 %42, i32* %2, align 4
  br label %52

43:                                               ; preds = %35
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @qla2xxx_get_flt_info(%struct.TYPE_7__* %44, i32 %45)
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %48 = call i32 @qla2xxx_get_fdt_info(%struct.TYPE_7__* %47)
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %50 = call i32 @qla2xxx_get_idc_param(%struct.TYPE_7__* %49)
  %51 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %43, %41, %33
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @IS_QLA24XX_TYPE(%struct.qla_hw_data*) #1

declare dso_local i32 @IS_QLA25XX(%struct.qla_hw_data*) #1

declare dso_local i32 @IS_CNA_CAPABLE(%struct.qla_hw_data*) #1

declare dso_local i32 @IS_QLA2031(%struct.qla_hw_data*) #1

declare dso_local i32 @IS_QLA27XX(%struct.qla_hw_data*) #1

declare dso_local i32 @IS_QLA28XX(%struct.qla_hw_data*) #1

declare dso_local i32 @qla2xxx_find_flt_start(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @qla2xxx_get_flt_info(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @qla2xxx_get_fdt_info(%struct.TYPE_7__*) #1

declare dso_local i32 @qla2xxx_get_idc_param(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
