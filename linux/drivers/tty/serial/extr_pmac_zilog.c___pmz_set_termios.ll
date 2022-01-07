; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_pmac_zilog.c___pmz_set_termios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_pmac_zilog.c___pmz_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.ktermios = type { i32, i32 }
%struct.uart_pmac_port = type { i32*, i32, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"pmz: set_termios()\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"pmz: switch IRDA to %ld bauds\0A\00", align 1
@DCDIE = common dso_local global i32 0, align 4
@SYNCIE = common dso_local global i32 0, align 4
@CTSIE = common dso_local global i32 0, align 4
@R15 = common dso_local global i64 0, align 8
@PMACZILOG_FLAG_MODEM_STATUS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"pmz: set_termios() done.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, %struct.ktermios*, %struct.ktermios*)* @__pmz_set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__pmz_set_termios(%struct.uart_port* %0, %struct.ktermios* %1, %struct.ktermios* %2) #0 {
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca %struct.ktermios*, align 8
  %6 = alloca %struct.ktermios*, align 8
  %7 = alloca %struct.uart_pmac_port*, align 8
  %8 = alloca i64, align 8
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store %struct.ktermios* %1, %struct.ktermios** %5, align 8
  store %struct.ktermios* %2, %struct.ktermios** %6, align 8
  %9 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %10 = call %struct.uart_pmac_port* @to_pmz(%struct.uart_port* %9)
  store %struct.uart_pmac_port* %10, %struct.uart_pmac_port** %7, align 8
  %11 = call i32 (i8*, ...) @pmz_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %7, align 8
  %13 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %12, i32 0, i32 3
  %14 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %15 = call i32 @memcpy(i32* %13, %struct.ktermios* %14, i32 8)
  %16 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %7, align 8
  %17 = call i64 @ZS_IS_IRDA(%struct.uart_pmac_port* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %44

19:                                               ; preds = %3
  %20 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %21 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %22 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %23 = call i64 @uart_get_baud_rate(%struct.uart_port* %20, %struct.ktermios* %21, %struct.ktermios* %22, i32 1200, i32 4000000)
  store i64 %23, i64* %8, align 8
  %24 = load i64, i64* %8, align 8
  %25 = call i32 (i8*, ...) @pmz_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %24)
  %26 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %7, align 8
  %27 = call i32 @pmz_irda_setup(%struct.uart_pmac_port* %26, i64* %8)
  %28 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %7, align 8
  %29 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %30 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %33 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i64, i64* %8, align 8
  %36 = call i32 @pmz_convert_to_zs(%struct.uart_pmac_port* %28, i32 %31, i32 %34, i64 %35)
  %37 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %7, align 8
  %38 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %7, align 8
  %39 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @pmz_load_zsregs(%struct.uart_pmac_port* %37, i32* %40)
  %42 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %7, align 8
  %43 = call i32 @zssync(%struct.uart_pmac_port* %42)
  br label %106

44:                                               ; preds = %3
  %45 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %46 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %47 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %48 = call i64 @uart_get_baud_rate(%struct.uart_port* %45, %struct.ktermios* %46, %struct.ktermios* %47, i32 1200, i32 230400)
  store i64 %48, i64* %8, align 8
  %49 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %7, align 8
  %50 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %51 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %54 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i64, i64* %8, align 8
  %57 = call i32 @pmz_convert_to_zs(%struct.uart_pmac_port* %49, i32 %52, i32 %55, i64 %56)
  %58 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %7, align 8
  %59 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %58, i32 0, i32 2
  %60 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %61 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @UART_ENABLE_MS(i32* %59, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %83

65:                                               ; preds = %44
  %66 = load i32, i32* @DCDIE, align 4
  %67 = load i32, i32* @SYNCIE, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @CTSIE, align 4
  %70 = or i32 %68, %69
  %71 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %7, align 8
  %72 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i64, i64* @R15, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %70
  store i32 %77, i32* %75, align 4
  %78 = load i32, i32* @PMACZILOG_FLAG_MODEM_STATUS, align 4
  %79 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %7, align 8
  %80 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 8
  br label %103

83:                                               ; preds = %44
  %84 = load i32, i32* @DCDIE, align 4
  %85 = load i32, i32* @SYNCIE, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @CTSIE, align 4
  %88 = or i32 %86, %87
  %89 = xor i32 %88, -1
  %90 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %7, align 8
  %91 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = load i64, i64* @R15, align 8
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = and i32 %95, %89
  store i32 %96, i32* %94, align 4
  %97 = load i32, i32* @PMACZILOG_FLAG_MODEM_STATUS, align 4
  %98 = xor i32 %97, -1
  %99 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %7, align 8
  %100 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = and i32 %101, %98
  store i32 %102, i32* %100, align 8
  br label %103

103:                                              ; preds = %83, %65
  %104 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %7, align 8
  %105 = call i32 @pmz_maybe_update_regs(%struct.uart_pmac_port* %104)
  br label %106

106:                                              ; preds = %103, %19
  %107 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %108 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %109 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i64, i64* %8, align 8
  %112 = call i32 @uart_update_timeout(%struct.uart_port* %107, i32 %110, i64 %111)
  %113 = call i32 (i8*, ...) @pmz_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local %struct.uart_pmac_port* @to_pmz(%struct.uart_port*) #1

declare dso_local i32 @pmz_debug(i8*, ...) #1

declare dso_local i32 @memcpy(i32*, %struct.ktermios*, i32) #1

declare dso_local i64 @ZS_IS_IRDA(%struct.uart_pmac_port*) #1

declare dso_local i64 @uart_get_baud_rate(%struct.uart_port*, %struct.ktermios*, %struct.ktermios*, i32, i32) #1

declare dso_local i32 @pmz_irda_setup(%struct.uart_pmac_port*, i64*) #1

declare dso_local i32 @pmz_convert_to_zs(%struct.uart_pmac_port*, i32, i32, i64) #1

declare dso_local i32 @pmz_load_zsregs(%struct.uart_pmac_port*, i32*) #1

declare dso_local i32 @zssync(%struct.uart_pmac_port*) #1

declare dso_local i64 @UART_ENABLE_MS(i32*, i32) #1

declare dso_local i32 @pmz_maybe_update_regs(%struct.uart_pmac_port*) #1

declare dso_local i32 @uart_update_timeout(%struct.uart_port*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
