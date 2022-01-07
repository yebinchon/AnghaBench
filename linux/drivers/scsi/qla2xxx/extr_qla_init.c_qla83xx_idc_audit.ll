; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_init.c_qla83xx_idc_audit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_init.c_qla83xx_idc_audit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32, i32 }

@jiffies = common dso_local global i32 0, align 4
@QLA83XX_IDC_AUDIT = common dso_local global i32 0, align 4
@ql_log_warn = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Invalid audit type specified.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qla83xx_idc_audit(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.qla_hw_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  store %struct.qla_hw_data* %10, %struct.qla_hw_data** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %11 = load i32, i32* %4, align 4
  switch i32 %11, label %51 [
    i32 128, label %12
    i32 129, label %31
  ]

12:                                               ; preds = %2
  %13 = load i32, i32* @jiffies, align 4
  %14 = call i32 @jiffies_to_msecs(i32 %13)
  %15 = sdiv i32 %14, 1000
  %16 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %17 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %19 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, 16384
  %22 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %23 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = shl i32 %24, 8
  %26 = or i32 %21, %25
  store i32 %26, i32* %6, align 4
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %28 = load i32, i32* @QLA83XX_IDC_AUDIT, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @qla83xx_wr_reg(%struct.TYPE_5__* %27, i32 %28, i32 %29)
  br label %55

31:                                               ; preds = %2
  %32 = load i32, i32* @jiffies, align 4
  %33 = call i32 @jiffies_to_msecs(i32 %32)
  %34 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %35 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @jiffies_to_msecs(i32 %36)
  %38 = sub nsw i32 %33, %37
  %39 = sdiv i32 %38, 1000
  store i32 %39, i32* %7, align 4
  %40 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %41 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, 16512
  %44 = load i32, i32* %7, align 4
  %45 = shl i32 %44, 8
  %46 = or i32 %43, %45
  store i32 %46, i32* %6, align 4
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %48 = load i32, i32* @QLA83XX_IDC_AUDIT, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @qla83xx_wr_reg(%struct.TYPE_5__* %47, i32 %48, i32 %49)
  br label %55

51:                                               ; preds = %2
  %52 = load i32, i32* @ql_log_warn, align 4
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %54 = call i32 @ql_log(i32 %52, %struct.TYPE_5__* %53, i32 45176, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %55

55:                                               ; preds = %51, %31, %12
  ret void
}

declare dso_local i32 @jiffies_to_msecs(i32) #1

declare dso_local i32 @qla83xx_wr_reg(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @ql_log(i32, %struct.TYPE_5__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
