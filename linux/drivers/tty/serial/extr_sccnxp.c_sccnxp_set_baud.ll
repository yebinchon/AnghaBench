; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sccnxp.c_sccnxp_set_baud.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sccnxp.c_sccnxp_set_baud.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i64, i64 }
%struct.uart_port = type { i32, i32 }
%struct.sccnxp_port = type { %struct.sccnxp_chip* }
%struct.sccnxp_chip = type { i32, i32 }

@INT_MAX = common dso_local global i32 0, align 4
@CSR_TIMER_MODE = common dso_local global i64 0, align 8
@SCCNXP_CTPU_REG = common dso_local global i32 0, align 4
@SCCNXP_CTPL_REG = common dso_local global i32 0, align 4
@SCCNXP_START_COUNTER_REG = common dso_local global i32 0, align 4
@baud_std = common dso_local global %struct.TYPE_2__* null, align 8
@SCCNXP_HAVE_MR0 = common dso_local global i32 0, align 4
@MR0_FIFO = common dso_local global i64 0, align 8
@MR0_TXLVL = common dso_local global i64 0, align 8
@SCCNXP_CR_REG = common dso_local global i32 0, align 4
@CR_CMD_MRPTR0 = common dso_local global i64 0, align 8
@SCCNXP_MR_REG = common dso_local global i32 0, align 4
@SCCNXP_ACR_REG = common dso_local global i32 0, align 4
@ACR_TIMER_MODE = common dso_local global i64 0, align 8
@SCCNXP_CSR_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Baudrate desired: %i, calculated: %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*, i32)* @sccnxp_set_baud to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sccnxp_set_baud(%struct.uart_port* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sccnxp_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sccnxp_chip*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %15 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %16 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.sccnxp_port* @dev_get_drvdata(i32 %17)
  store %struct.sccnxp_port* %18, %struct.sccnxp_port** %5, align 8
  %19 = load i32, i32* @INT_MAX, align 4
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* @INT_MAX, align 4
  store i32 %20, i32* %9, align 4
  %21 = load %struct.sccnxp_port*, %struct.sccnxp_port** %5, align 8
  %22 = getelementptr inbounds %struct.sccnxp_port, %struct.sccnxp_port* %21, i32 0, i32 0
  %23 = load %struct.sccnxp_chip*, %struct.sccnxp_chip** %22, align 8
  store %struct.sccnxp_chip* %23, %struct.sccnxp_chip** %10, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  %24 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %25 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %4, align 4
  %28 = mul nsw i32 32, %27
  %29 = call i32 @DIV_ROUND_CLOSEST(i32 %26, i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp sge i32 %30, 2
  br i1 %31, label %32, label %60

32:                                               ; preds = %2
  %33 = load i32, i32* %6, align 4
  %34 = icmp sle i32 %33, 65535
  br i1 %34, label %35, label %60

35:                                               ; preds = %32
  %36 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %37 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %6, align 4
  %40 = mul nsw i32 32, %39
  %41 = call i32 @DIV_ROUND_CLOSEST(i32 %38, i32 %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @sccnxp_update_best_err(i32 %42, i32 %43, i32* %9)
  %45 = load i64, i64* @CSR_TIMER_MODE, align 8
  store i64 %45, i64* %13, align 8
  %46 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %47 = load i32, i32* @SCCNXP_CTPU_REG, align 4
  %48 = load i32, i32* %6, align 4
  %49 = ashr i32 %48, 8
  %50 = sext i32 %49 to i64
  %51 = call i32 @sccnxp_port_write(%struct.uart_port* %46, i32 %47, i64 %50)
  %52 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %53 = load i32, i32* @SCCNXP_CTPL_REG, align 4
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = call i32 @sccnxp_port_write(%struct.uart_port* %52, i32 %53, i64 %55)
  %57 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %58 = load i32, i32* @SCCNXP_START_COUNTER_REG, align 4
  %59 = call i32 @sccnxp_port_read(%struct.uart_port* %57, i32 %58)
  br label %60

60:                                               ; preds = %35, %32, %2
  store i64 0, i64* %11, align 8
  br label %61

61:                                               ; preds = %125, %60
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** @baud_std, align 8
  %63 = load i64, i64* %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %61
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br label %71

71:                                               ; preds = %68, %61
  %72 = phi i1 [ false, %61 ], [ %70, %68 ]
  br i1 %72, label %73, label %128

73:                                               ; preds = %71
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** @baud_std, align 8
  %75 = load i64, i64* %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %73
  %81 = load %struct.sccnxp_chip*, %struct.sccnxp_chip** %10, align 8
  %82 = getelementptr inbounds %struct.sccnxp_chip, %struct.sccnxp_chip* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @SCCNXP_HAVE_MR0, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %80
  br label %125

88:                                               ; preds = %80, %73
  %89 = load %struct.sccnxp_chip*, %struct.sccnxp_chip** %10, align 8
  %90 = getelementptr inbounds %struct.sccnxp_chip, %struct.sccnxp_chip* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** @baud_std, align 8
  %93 = load i64, i64* %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @DIV_ROUND_CLOSEST(i32 %91, i32 %96)
  store i32 %97, i32* %6, align 4
  %98 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %99 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %6, align 4
  %102 = call i32 @DIV_ROUND_CLOSEST(i32 %100, i32 %101)
  store i32 %102, i32* %7, align 4
  %103 = load i32, i32* %4, align 4
  %104 = load i32, i32* %7, align 4
  %105 = call i32 @sccnxp_update_best_err(i32 %103, i32 %104, i32* %9)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %124, label %107

107:                                              ; preds = %88
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** @baud_std, align 8
  %109 = load i64, i64* %11, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  store i64 %112, i64* %12, align 8
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** @baud_std, align 8
  %114 = load i64, i64* %11, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  store i64 %117, i64* %13, align 8
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** @baud_std, align 8
  %119 = load i64, i64* %11, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  store i64 %122, i64* %14, align 8
  %123 = load i32, i32* %7, align 4
  store i32 %123, i32* %8, align 4
  br label %124

124:                                              ; preds = %107, %88
  br label %125

125:                                              ; preds = %124, %87
  %126 = load i64, i64* %11, align 8
  %127 = add i64 %126, 1
  store i64 %127, i64* %11, align 8
  br label %61

128:                                              ; preds = %71
  %129 = load %struct.sccnxp_chip*, %struct.sccnxp_chip** %10, align 8
  %130 = getelementptr inbounds %struct.sccnxp_chip, %struct.sccnxp_chip* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @SCCNXP_HAVE_MR0, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %149

135:                                              ; preds = %128
  %136 = load i64, i64* @MR0_FIFO, align 8
  %137 = load i64, i64* @MR0_TXLVL, align 8
  %138 = or i64 %136, %137
  %139 = load i64, i64* %14, align 8
  %140 = or i64 %139, %138
  store i64 %140, i64* %14, align 8
  %141 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %142 = load i32, i32* @SCCNXP_CR_REG, align 4
  %143 = load i64, i64* @CR_CMD_MRPTR0, align 8
  %144 = call i32 @sccnxp_port_write(%struct.uart_port* %141, i32 %142, i64 %143)
  %145 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %146 = load i32, i32* @SCCNXP_MR_REG, align 4
  %147 = load i64, i64* %14, align 8
  %148 = call i32 @sccnxp_port_write(%struct.uart_port* %145, i32 %146, i64 %147)
  br label %149

149:                                              ; preds = %135, %128
  %150 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %151 = load i32, i32* @SCCNXP_ACR_REG, align 4
  %152 = load i64, i64* %12, align 8
  %153 = load i64, i64* @ACR_TIMER_MODE, align 8
  %154 = or i64 %152, %153
  %155 = call i32 @sccnxp_port_write(%struct.uart_port* %150, i32 %151, i64 %154)
  %156 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %157 = load i32, i32* @SCCNXP_CSR_REG, align 4
  %158 = load i64, i64* %13, align 8
  %159 = shl i64 %158, 4
  %160 = load i64, i64* %13, align 8
  %161 = or i64 %159, %160
  %162 = call i32 @sccnxp_port_write(%struct.uart_port* %156, i32 %157, i64 %161)
  %163 = load i32, i32* %4, align 4
  %164 = load i32, i32* %8, align 4
  %165 = icmp ne i32 %163, %164
  br i1 %165, label %166, label %173

166:                                              ; preds = %149
  %167 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %168 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* %4, align 4
  %171 = load i32, i32* %8, align 4
  %172 = call i32 @dev_dbg(i32 %169, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %170, i32 %171)
  br label %173

173:                                              ; preds = %166, %149
  %174 = load i32, i32* %8, align 4
  ret i32 %174
}

declare dso_local %struct.sccnxp_port* @dev_get_drvdata(i32) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i32 @sccnxp_update_best_err(i32, i32, i32*) #1

declare dso_local i32 @sccnxp_port_write(%struct.uart_port*, i32, i64) #1

declare dso_local i32 @sccnxp_port_read(%struct.uart_port*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
