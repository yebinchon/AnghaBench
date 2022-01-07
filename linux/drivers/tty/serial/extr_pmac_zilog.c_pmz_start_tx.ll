; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_pmac_zilog.c_pmz_start_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_pmac_zilog.c_pmz_start_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { %struct.TYPE_4__, %struct.TYPE_3__*, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.circ_buf }
%struct.circ_buf = type { i64, i64* }
%struct.uart_pmac_port = type { i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"pmz: start_tx()\0A\00", align 1
@PMACZILOG_FLAG_TX_ACTIVE = common dso_local global i32 0, align 4
@PMACZILOG_FLAG_TX_STOPPED = common dso_local global i32 0, align 4
@R0 = common dso_local global i32 0, align 4
@Tx_BUF_EMP = common dso_local global i8 0, align 1
@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@WAKEUP_CHARS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"pmz: start_tx() done.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @pmz_start_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmz_start_tx(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.uart_pmac_port*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.circ_buf*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %6 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %7 = call %struct.uart_pmac_port* @to_pmz(%struct.uart_port* %6)
  store %struct.uart_pmac_port* %7, %struct.uart_pmac_port** %3, align 8
  %8 = call i32 @pmz_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @PMACZILOG_FLAG_TX_ACTIVE, align 4
  %10 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %11 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = or i32 %12, %9
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* @PMACZILOG_FLAG_TX_STOPPED, align 4
  %15 = xor i32 %14, -1
  %16 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %17 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, %15
  store i32 %19, i32* %17, align 4
  %20 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %21 = load i32, i32* @R0, align 4
  %22 = call zeroext i8 @read_zsreg(%struct.uart_pmac_port* %20, i32 %21)
  store i8 %22, i8* %4, align 1
  %23 = load i8, i8* %4, align 1
  %24 = zext i8 %23 to i32
  %25 = load i8, i8* @Tx_BUF_EMP, align 1
  %26 = zext i8 %25 to i32
  %27 = and i32 %24, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %1
  br label %99

30:                                               ; preds = %1
  %31 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %32 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %50

35:                                               ; preds = %30
  %36 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %37 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %38 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @write_zsdata(%struct.uart_pmac_port* %36, i64 %39)
  %41 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %42 = call i32 @zssync(%struct.uart_pmac_port* %41)
  %43 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %44 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 8
  %48 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %49 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %48, i32 0, i32 2
  store i64 0, i64* %49, align 8
  br label %96

50:                                               ; preds = %30
  %51 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %52 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %51, i32 0, i32 1
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  store %struct.circ_buf* %54, %struct.circ_buf** %5, align 8
  %55 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %56 = call i64 @uart_circ_empty(%struct.circ_buf* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  br label %97

59:                                               ; preds = %50
  %60 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %61 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %62 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %61, i32 0, i32 1
  %63 = load i64*, i64** %62, align 8
  %64 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %65 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds i64, i64* %63, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @write_zsdata(%struct.uart_pmac_port* %60, i64 %68)
  %70 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %71 = call i32 @zssync(%struct.uart_pmac_port* %70)
  %72 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %73 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = add i64 %74, 1
  %76 = load i32, i32* @UART_XMIT_SIZE, align 4
  %77 = sub nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = and i64 %75, %78
  %80 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %81 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %80, i32 0, i32 0
  store i64 %79, i64* %81, align 8
  %82 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %83 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 8
  %87 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %88 = call i64 @uart_circ_chars_pending(%struct.circ_buf* %87)
  %89 = load i64, i64* @WAKEUP_CHARS, align 8
  %90 = icmp slt i64 %88, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %59
  %92 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %93 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %92, i32 0, i32 0
  %94 = call i32 @uart_write_wakeup(i32* %93)
  br label %95

95:                                               ; preds = %91, %59
  br label %96

96:                                               ; preds = %95, %35
  br label %97

97:                                               ; preds = %96, %58
  %98 = call i32 @pmz_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %99

99:                                               ; preds = %97, %29
  ret void
}

declare dso_local %struct.uart_pmac_port* @to_pmz(%struct.uart_port*) #1

declare dso_local i32 @pmz_debug(i8*) #1

declare dso_local zeroext i8 @read_zsreg(%struct.uart_pmac_port*, i32) #1

declare dso_local i32 @write_zsdata(%struct.uart_pmac_port*, i64) #1

declare dso_local i32 @zssync(%struct.uart_pmac_port*) #1

declare dso_local i64 @uart_circ_empty(%struct.circ_buf*) #1

declare dso_local i64 @uart_circ_chars_pending(%struct.circ_buf*) #1

declare dso_local i32 @uart_write_wakeup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
