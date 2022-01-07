; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_daqboard2000.c_db2k_ai_insn_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_daqboard2000.c_db2k_ai_insn_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@DB2K_ACQ_CONTROL_RESET_SCAN_LIST_FIFO = common dso_local global i32 0, align 4
@DB2K_ACQ_CONTROL_RESET_RESULTS_FIFO = common dso_local global i32 0, align 4
@DB2K_ACQ_CONTROL_RESET_CONFIG_PIPE = common dso_local global i32 0, align 4
@DB2K_REG_ACQ_CONTROL = common dso_local global i64 0, align 8
@DB2K_REG_ACQ_PACER_CLOCK_DIV_LOW = common dso_local global i64 0, align 8
@DB2K_REG_ACQ_PACER_CLOCK_DIV_HIGH = common dso_local global i64 0, align 8
@DB2K_ACQ_CONTROL_SEQ_START_SCAN_LIST = common dso_local global i32 0, align 4
@db2k_ai_status = common dso_local global i32 0, align 4
@DB2K_ACQ_STATUS_CONFIG_PIPE_FULL = common dso_local global i32 0, align 4
@DB2K_ACQ_CONTROL_ADC_PACER_ENABLE = common dso_local global i32 0, align 4
@DB2K_ACQ_STATUS_LOGIC_SCANNING = common dso_local global i32 0, align 4
@DB2K_ACQ_STATUS_RESULTS_FIFO_HAS_DATA = common dso_local global i32 0, align 4
@DB2K_REG_ACQ_RESULTS_FIFO = common dso_local global i64 0, align 8
@DB2K_ACQ_CONTROL_ADC_PACER_DISABLE = common dso_local global i32 0, align 4
@DB2K_ACQ_CONTROL_SEQ_STOP_SCAN_LIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @db2k_ai_insn_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @db2k_ai_insn_read(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load i32, i32* @DB2K_ACQ_CONTROL_RESET_SCAN_LIST_FIFO, align 4
  %15 = load i32, i32* @DB2K_ACQ_CONTROL_RESET_RESULTS_FIFO, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @DB2K_ACQ_CONTROL_RESET_CONFIG_PIPE, align 4
  %18 = or i32 %16, %17
  %19 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %20 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @DB2K_REG_ACQ_CONTROL, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @writew(i32 %18, i64 %23)
  %25 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %26 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @DB2K_REG_ACQ_PACER_CLOCK_DIV_LOW, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @writel(i32 1000000, i64 %29)
  %31 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %32 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @DB2K_REG_ACQ_PACER_CLOCK_DIV_HIGH, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @writew(i32 0, i64 %35)
  %37 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %38 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @CR_RANGE(i32 %39)
  store i32 %40, i32* %10, align 4
  %41 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %42 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @CR_CHAN(i32 %43)
  store i32 %44, i32* %11, align 4
  store i32 0, i32* %13, align 4
  br label %45

45:                                               ; preds = %127, %4
  %46 = load i32, i32* %13, align 4
  %47 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %48 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %130

51:                                               ; preds = %45
  %52 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @db2k_setup_sampling(%struct.comedi_device* %52, i32 %53, i32 %54)
  %56 = load i32, i32* @DB2K_ACQ_CONTROL_SEQ_START_SCAN_LIST, align 4
  %57 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %58 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @DB2K_REG_ACQ_CONTROL, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @writew(i32 %56, i64 %61)
  %63 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %64 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %65 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %66 = load i32, i32* @db2k_ai_status, align 4
  %67 = load i32, i32* @DB2K_ACQ_STATUS_CONFIG_PIPE_FULL, align 4
  %68 = call i32 @comedi_timeout(%struct.comedi_device* %63, %struct.comedi_subdevice* %64, %struct.comedi_insn* %65, i32 %66, i32 %67)
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %12, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %51
  %72 = load i32, i32* %12, align 4
  store i32 %72, i32* %5, align 4
  br label %132

73:                                               ; preds = %51
  %74 = load i32, i32* @DB2K_ACQ_CONTROL_ADC_PACER_ENABLE, align 4
  %75 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %76 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @DB2K_REG_ACQ_CONTROL, align 8
  %79 = add nsw i64 %77, %78
  %80 = call i32 @writew(i32 %74, i64 %79)
  %81 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %82 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %83 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %84 = load i32, i32* @db2k_ai_status, align 4
  %85 = load i32, i32* @DB2K_ACQ_STATUS_LOGIC_SCANNING, align 4
  %86 = call i32 @comedi_timeout(%struct.comedi_device* %81, %struct.comedi_subdevice* %82, %struct.comedi_insn* %83, i32 %84, i32 %85)
  store i32 %86, i32* %12, align 4
  %87 = load i32, i32* %12, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %73
  %90 = load i32, i32* %12, align 4
  store i32 %90, i32* %5, align 4
  br label %132

91:                                               ; preds = %73
  %92 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %93 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %94 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %95 = load i32, i32* @db2k_ai_status, align 4
  %96 = load i32, i32* @DB2K_ACQ_STATUS_RESULTS_FIFO_HAS_DATA, align 4
  %97 = call i32 @comedi_timeout(%struct.comedi_device* %92, %struct.comedi_subdevice* %93, %struct.comedi_insn* %94, i32 %95, i32 %96)
  store i32 %97, i32* %12, align 4
  %98 = load i32, i32* %12, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %91
  %101 = load i32, i32* %12, align 4
  store i32 %101, i32* %5, align 4
  br label %132

102:                                              ; preds = %91
  %103 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %104 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @DB2K_REG_ACQ_RESULTS_FIFO, align 8
  %107 = add nsw i64 %105, %106
  %108 = call i32 @readw(i64 %107)
  %109 = load i32*, i32** %9, align 8
  %110 = load i32, i32* %13, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  store i32 %108, i32* %112, align 4
  %113 = load i32, i32* @DB2K_ACQ_CONTROL_ADC_PACER_DISABLE, align 4
  %114 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %115 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @DB2K_REG_ACQ_CONTROL, align 8
  %118 = add nsw i64 %116, %117
  %119 = call i32 @writew(i32 %113, i64 %118)
  %120 = load i32, i32* @DB2K_ACQ_CONTROL_SEQ_STOP_SCAN_LIST, align 4
  %121 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %122 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @DB2K_REG_ACQ_CONTROL, align 8
  %125 = add nsw i64 %123, %124
  %126 = call i32 @writew(i32 %120, i64 %125)
  br label %127

127:                                              ; preds = %102
  %128 = load i32, i32* %13, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %13, align 4
  br label %45

130:                                              ; preds = %45
  %131 = load i32, i32* %13, align 4
  store i32 %131, i32* %5, align 4
  br label %132

132:                                              ; preds = %130, %100, %89, %71
  %133 = load i32, i32* %5, align 4
  ret i32 %133
}

declare dso_local i32 @writew(i32, i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @db2k_setup_sampling(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @comedi_timeout(%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32, i32) #1

declare dso_local i32 @readw(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
