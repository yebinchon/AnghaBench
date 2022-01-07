; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_mbx.c_qla2x00_get_thermal_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_mbx.c_qla2x00_get_thermal_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i32 }

@QLA_FUNCTION_FAILED = common dso_local global i32 0, align 4
@ql_dbg_mbx = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Thermal not supported by this card.\0A\00", align 1
@PCI_VENDOR_ID_QLOGIC = common dso_local global i64 0, align 8
@BIT_13 = common dso_local global i32 0, align 4
@BIT_0 = common dso_local global i32 0, align 4
@PCI_VENDOR_ID_HP = common dso_local global i64 0, align 8
@BIT_15 = common dso_local global i32 0, align 4
@BIT_14 = common dso_local global i32 0, align 4
@QLA_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla2x00_get_thermal_temp(%struct.TYPE_10__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.qla_hw_data*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %9, i32* %6, align 4
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  store %struct.qla_hw_data* %12, %struct.qla_hw_data** %7, align 8
  %13 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %14 = call i32 @IS_FWI2_CAPABLE(%struct.qla_hw_data* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %2
  %17 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %18 = call i64 @IS_QLA24XX_TYPE(%struct.qla_hw_data* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %22 = call i64 @IS_QLA81XX(%struct.qla_hw_data* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %20, %16, %2
  %25 = load i32, i32* @ql_dbg_mbx, align 4
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %27 = call i32 @ql_dbg(i32 %25, %struct.TYPE_10__* %26, i32 4432, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %3, align 4
  br label %114

29:                                               ; preds = %20
  %30 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %31 = call i64 @IS_QLA25XX(%struct.qla_hw_data* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %88

33:                                               ; preds = %29
  %34 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %35 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %34, i32 0, i32 0
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @PCI_VENDOR_ID_QLOGIC, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %57

41:                                               ; preds = %33
  %42 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %43 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %42, i32 0, i32 0
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = icmp eq i32 %46, 373
  br i1 %47, label %48, label %57

48:                                               ; preds = %41
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %50 = load i32, i32* @BIT_13, align 4
  %51 = load i32, i32* @BIT_0, align 4
  %52 = or i32 %50, %51
  %53 = call i32 @qla2x00_read_sfp(%struct.TYPE_10__* %49, i32 0, i32* %8, i32 152, i32 1, i32 1, i32 %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i32*, i32** %5, align 8
  store i32 %54, i32* %55, align 4
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %3, align 4
  br label %114

57:                                               ; preds = %41, %33
  %58 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %59 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %58, i32 0, i32 0
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @PCI_VENDOR_ID_HP, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %83

65:                                               ; preds = %57
  %66 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %67 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %66, i32 0, i32 0
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = icmp eq i32 %70, 13198
  br i1 %71, label %72, label %83

72:                                               ; preds = %65
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %74 = load i32, i32* @BIT_15, align 4
  %75 = load i32, i32* @BIT_14, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @BIT_0, align 4
  %78 = or i32 %76, %77
  %79 = call i32 @qla2x00_read_sfp(%struct.TYPE_10__* %73, i32 0, i32* %8, i32 152, i32 1, i32 1, i32 %78)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %8, align 4
  %81 = load i32*, i32** %5, align 8
  store i32 %80, i32* %81, align 4
  %82 = load i32, i32* %6, align 4
  store i32 %82, i32* %3, align 4
  br label %114

83:                                               ; preds = %65, %57
  %84 = load i32, i32* @ql_dbg_mbx, align 4
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %86 = call i32 @ql_dbg(i32 %84, %struct.TYPE_10__* %85, i32 4297, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %87 = load i32, i32* %6, align 4
  store i32 %87, i32* %3, align 4
  br label %114

88:                                               ; preds = %29
  %89 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %90 = call i64 @IS_QLA82XX(%struct.qla_hw_data* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %88
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %94 = call i32 @qla82xx_read_temperature(%struct.TYPE_10__* %93)
  %95 = load i32*, i32** %5, align 8
  store i32 %94, i32* %95, align 4
  %96 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %96, i32* %6, align 4
  %97 = load i32, i32* %6, align 4
  store i32 %97, i32* %3, align 4
  br label %114

98:                                               ; preds = %88
  %99 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %100 = call i64 @IS_QLA8044(%struct.qla_hw_data* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %98
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %104 = call i32 @qla8044_read_temperature(%struct.TYPE_10__* %103)
  %105 = load i32*, i32** %5, align 8
  store i32 %104, i32* %105, align 4
  %106 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %106, i32* %6, align 4
  %107 = load i32, i32* %6, align 4
  store i32 %107, i32* %3, align 4
  br label %114

108:                                              ; preds = %98
  br label %109

109:                                              ; preds = %108
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %111 = load i32*, i32** %5, align 8
  %112 = call i32 @qla2x00_read_asic_temperature(%struct.TYPE_10__* %110, i32* %111)
  store i32 %112, i32* %6, align 4
  %113 = load i32, i32* %6, align 4
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %109, %102, %92, %83, %72, %48, %24
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local i32 @IS_FWI2_CAPABLE(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_QLA24XX_TYPE(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_QLA81XX(%struct.qla_hw_data*) #1

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_10__*, i32, i8*) #1

declare dso_local i64 @IS_QLA25XX(%struct.qla_hw_data*) #1

declare dso_local i32 @qla2x00_read_sfp(%struct.TYPE_10__*, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i64 @IS_QLA82XX(%struct.qla_hw_data*) #1

declare dso_local i32 @qla82xx_read_temperature(%struct.TYPE_10__*) #1

declare dso_local i64 @IS_QLA8044(%struct.qla_hw_data*) #1

declare dso_local i32 @qla8044_read_temperature(%struct.TYPE_10__*) #1

declare dso_local i32 @qla2x00_read_asic_temperature(%struct.TYPE_10__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
