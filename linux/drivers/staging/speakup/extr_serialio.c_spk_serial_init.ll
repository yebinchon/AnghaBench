; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_serialio.c_spk_serial_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_serialio.c_spk_serial_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.old_serial_port = type { i32, i32, i64 }
%struct.TYPE_2__ = type { i64 }

@CREAD = common dso_local global i32 0, align 4
@HUPCL = common dso_local global i32 0, align 4
@CLOCAL = common dso_local global i32 0, align 4
@B9600 = common dso_local global i32 0, align 4
@CS8 = common dso_local global i32 0, align 4
@rs_table = common dso_local global %struct.old_serial_port* null, align 8
@.str = private unnamed_addr constant [25 x i8] c"no port info for ttyS%d\0A\00", align 1
@CSIZE = common dso_local global i32 0, align 4
@CSTOPB = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@UART_LCR_PARITY = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@UART_LCR_EPAR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Ports not available, trying to steal them\0A\00", align 1
@ioport_resource = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"Unable to allocate port at %x, errno %i\00", align 1
@UART_LCR_DLAB = common dso_local global i32 0, align 4
@UART_LCR = common dso_local global i64 0, align 8
@UART_DLL = common dso_local global i64 0, align 8
@UART_DLM = common dso_local global i64 0, align 8
@UART_IER = common dso_local global i64 0, align 8
@UART_MCR_DTR = common dso_local global i32 0, align 4
@UART_MCR_RTS = common dso_local global i32 0, align 4
@UART_MCR = common dso_local global i64 0, align 8
@UART_LSR = common dso_local global i64 0, align 8
@serstate = common dso_local global %struct.old_serial_port* null, align 8
@speakup_info = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.old_serial_port* @spk_serial_init(i32 %0) #0 {
  %2 = alloca %struct.old_serial_port*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.old_serial_port*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 9600, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %10 = load i32, i32* @CREAD, align 4
  %11 = load i32, i32* @HUPCL, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @CLOCAL, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @B9600, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @CS8, align 4
  %18 = or i32 %16, %17
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.old_serial_port*, %struct.old_serial_port** @rs_table, align 8
  %21 = call i32 @ARRAY_SIZE(%struct.old_serial_port* %20)
  %22 = icmp sge i32 %19, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load i32, i32* %3, align 4
  %25 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %24)
  store %struct.old_serial_port* null, %struct.old_serial_port** %2, align 8
  br label %156

26:                                               ; preds = %1
  %27 = load %struct.old_serial_port*, %struct.old_serial_port** @rs_table, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.old_serial_port, %struct.old_serial_port* %27, i64 %29
  store %struct.old_serial_port* %30, %struct.old_serial_port** %8, align 8
  %31 = load %struct.old_serial_port*, %struct.old_serial_port** %8, align 8
  %32 = getelementptr inbounds %struct.old_serial_port, %struct.old_serial_port* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sdiv i32 %33, %34
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @CSIZE, align 4
  %38 = load i32, i32* @CSTOPB, align 4
  %39 = or i32 %37, %38
  %40 = and i32 %36, %39
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = lshr i32 %41, 4
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @PARENB, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %26
  %48 = load i32, i32* @UART_LCR_PARITY, align 4
  %49 = load i32, i32* %6, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %47, %26
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @PARODD, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %51
  %57 = load i32, i32* @UART_LCR_EPAR, align 4
  %58 = load i32, i32* %6, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %56, %51
  %61 = load %struct.old_serial_port*, %struct.old_serial_port** %8, align 8
  %62 = getelementptr inbounds %struct.old_serial_port, %struct.old_serial_port* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @synth_request_region(i64 %63, i32 8)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %85

66:                                               ; preds = %60
  %67 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %68 = load %struct.old_serial_port*, %struct.old_serial_port** %8, align 8
  %69 = getelementptr inbounds %struct.old_serial_port, %struct.old_serial_port* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @__release_region(i32* @ioport_resource, i64 %70, i32 8)
  %72 = load %struct.old_serial_port*, %struct.old_serial_port** %8, align 8
  %73 = getelementptr inbounds %struct.old_serial_port, %struct.old_serial_port* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @synth_request_region(i64 %74, i32 8)
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %66
  %79 = load %struct.old_serial_port*, %struct.old_serial_port** %8, align 8
  %80 = getelementptr inbounds %struct.old_serial_port, %struct.old_serial_port* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @pr_warn(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i64 %81, i32 %82)
  store %struct.old_serial_port* null, %struct.old_serial_port** %2, align 8
  br label %156

84:                                               ; preds = %66
  br label %85

85:                                               ; preds = %84, %60
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* @UART_LCR_DLAB, align 4
  %88 = or i32 %86, %87
  %89 = load %struct.old_serial_port*, %struct.old_serial_port** %8, align 8
  %90 = getelementptr inbounds %struct.old_serial_port, %struct.old_serial_port* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @UART_LCR, align 8
  %93 = add nsw i64 %91, %92
  %94 = call i32 @outb(i32 %88, i64 %93)
  %95 = load i32, i32* %5, align 4
  %96 = and i32 %95, 255
  %97 = load %struct.old_serial_port*, %struct.old_serial_port** %8, align 8
  %98 = getelementptr inbounds %struct.old_serial_port, %struct.old_serial_port* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @UART_DLL, align 8
  %101 = add nsw i64 %99, %100
  %102 = call i32 @outb(i32 %96, i64 %101)
  %103 = load i32, i32* %5, align 4
  %104 = ashr i32 %103, 8
  %105 = load %struct.old_serial_port*, %struct.old_serial_port** %8, align 8
  %106 = getelementptr inbounds %struct.old_serial_port, %struct.old_serial_port* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @UART_DLM, align 8
  %109 = add nsw i64 %107, %108
  %110 = call i32 @outb(i32 %104, i64 %109)
  %111 = load i32, i32* %6, align 4
  %112 = load %struct.old_serial_port*, %struct.old_serial_port** %8, align 8
  %113 = getelementptr inbounds %struct.old_serial_port, %struct.old_serial_port* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @UART_LCR, align 8
  %116 = add nsw i64 %114, %115
  %117 = call i32 @outb(i32 %111, i64 %116)
  %118 = load %struct.old_serial_port*, %struct.old_serial_port** %8, align 8
  %119 = getelementptr inbounds %struct.old_serial_port, %struct.old_serial_port* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @UART_IER, align 8
  %122 = add nsw i64 %120, %121
  %123 = call i32 @outb(i32 0, i64 %122)
  %124 = load i32, i32* @UART_MCR_DTR, align 4
  %125 = load i32, i32* @UART_MCR_RTS, align 4
  %126 = or i32 %124, %125
  %127 = load %struct.old_serial_port*, %struct.old_serial_port** %8, align 8
  %128 = getelementptr inbounds %struct.old_serial_port, %struct.old_serial_port* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @UART_MCR, align 8
  %131 = add nsw i64 %129, %130
  %132 = call i32 @outb(i32 %126, i64 %131)
  %133 = load %struct.old_serial_port*, %struct.old_serial_port** %8, align 8
  %134 = getelementptr inbounds %struct.old_serial_port, %struct.old_serial_port* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @UART_LSR, align 8
  %137 = add nsw i64 %135, %136
  %138 = call i32 @inb(i64 %137)
  %139 = icmp eq i32 %138, 255
  br i1 %139, label %140, label %145

140:                                              ; preds = %85
  %141 = load %struct.old_serial_port*, %struct.old_serial_port** %8, align 8
  %142 = getelementptr inbounds %struct.old_serial_port, %struct.old_serial_port* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = call i32 @synth_release_region(i64 %143, i32 8)
  store %struct.old_serial_port* null, %struct.old_serial_port** @serstate, align 8
  store %struct.old_serial_port* null, %struct.old_serial_port** %2, align 8
  br label %156

145:                                              ; preds = %85
  %146 = call i32 @mdelay(i32 1)
  %147 = load %struct.old_serial_port*, %struct.old_serial_port** %8, align 8
  %148 = getelementptr inbounds %struct.old_serial_port, %struct.old_serial_port* %147, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  store i64 %149, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @speakup_info, i32 0, i32 0), align 8
  %150 = load %struct.old_serial_port*, %struct.old_serial_port** %8, align 8
  store %struct.old_serial_port* %150, %struct.old_serial_port** @serstate, align 8
  %151 = load %struct.old_serial_port*, %struct.old_serial_port** %8, align 8
  %152 = getelementptr inbounds %struct.old_serial_port, %struct.old_serial_port* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @start_serial_interrupt(i32 %153)
  %155 = load %struct.old_serial_port*, %struct.old_serial_port** %8, align 8
  store %struct.old_serial_port* %155, %struct.old_serial_port** %2, align 8
  br label %156

156:                                              ; preds = %145, %140, %78, %23
  %157 = load %struct.old_serial_port*, %struct.old_serial_port** %2, align 8
  ret %struct.old_serial_port* %157
}

declare dso_local i32 @ARRAY_SIZE(%struct.old_serial_port*) #1

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32 @synth_request_region(i64, i32) #1

declare dso_local i32 @__release_region(i32*, i64, i32) #1

declare dso_local i32 @pr_warn(i8*, i64, i32) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @synth_release_region(i64, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @start_serial_interrupt(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
