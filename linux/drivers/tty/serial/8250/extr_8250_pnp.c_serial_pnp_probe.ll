; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_pnp.c_serial_pnp_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_pnp.c_serial_pnp_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnp_dev = type { i32, i32 }
%struct.pnp_device_id = type { i32 }
%struct.uart_8250_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32*, i32, i8*, i32, i64, i8* }

@UNKNOWN_DEV = common dso_local global i32 0, align 4
@CIR_PORT = common dso_local global i32 0, align 4
@UPIO_PORT = common dso_local global i8* null, align 8
@UPIO_MEM = common dso_local global i8* null, align 8
@UPF_IOREMAP = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Setup PNP port: port %#lx, mem %#llx, irq %u, type %u\0A\00", align 1
@UPF_FIXED_PORT = common dso_local global i32 0, align 4
@UPF_FIXED_TYPE = common dso_local global i32 0, align 4
@PORT_8250_CIR = common dso_local global i32 0, align 4
@UPF_SKIP_TEST = common dso_local global i32 0, align 4
@UPF_BOOT_AUTOCONF = common dso_local global i32 0, align 4
@IORESOURCE_IRQ_SHAREABLE = common dso_local global i32 0, align 4
@UPF_SHARE_IRQ = common dso_local global i32 0, align 4
@PNP_CONSOLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pnp_dev*, %struct.pnp_device_id*)* @serial_pnp_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serial_pnp_probe(%struct.pnp_dev* %0, %struct.pnp_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pnp_dev*, align 8
  %5 = alloca %struct.pnp_device_id*, align 8
  %6 = alloca %struct.uart_8250_port, align 8
  %7 = alloca %struct.uart_8250_port*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pnp_dev* %0, %struct.pnp_dev** %4, align 8
  store %struct.pnp_device_id* %1, %struct.pnp_device_id** %5, align 8
  %11 = load %struct.pnp_device_id*, %struct.pnp_device_id** %5, align 8
  %12 = getelementptr inbounds %struct.pnp_device_id, %struct.pnp_device_id* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = load i32, i32* @UNKNOWN_DEV, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %2
  %19 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %20 = call i32 @serial_pnp_guess_board(%struct.pnp_dev* %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %3, align 4
  br label %173

25:                                               ; preds = %18
  br label %26

26:                                               ; preds = %25, %2
  %27 = call i32 @memset(%struct.uart_8250_port* %6, i32 0, i32 56)
  %28 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %29 = call i64 @pnp_irq_valid(%struct.pnp_dev* %28, i32 0)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %33 = call i32 @pnp_irq(%struct.pnp_dev* %32, i32 0)
  %34 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %6, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 5
  store i32 %33, i32* %35, align 8
  br label %36

36:                                               ; preds = %31, %26
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @CIR_PORT, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %36
  %42 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %43 = call i64 @pnp_port_valid(%struct.pnp_dev* %42, i32 2)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %41
  %46 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %47 = call i8* @pnp_port_start(%struct.pnp_dev* %46, i32 2)
  %48 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %6, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 7
  store i8* %47, i8** %49, align 8
  %50 = load i8*, i8** @UPIO_PORT, align 8
  %51 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %6, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 4
  store i8* %50, i8** %52, align 8
  br label %85

53:                                               ; preds = %41, %36
  %54 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %55 = call i64 @pnp_port_valid(%struct.pnp_dev* %54, i32 0)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %53
  %58 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %59 = call i8* @pnp_port_start(%struct.pnp_dev* %58, i32 0)
  %60 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %6, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 7
  store i8* %59, i8** %61, align 8
  %62 = load i8*, i8** @UPIO_PORT, align 8
  %63 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %6, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 4
  store i8* %62, i8** %64, align 8
  br label %84

65:                                               ; preds = %53
  %66 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %67 = call i64 @pnp_mem_valid(%struct.pnp_dev* %66, i32 0)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %65
  %70 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %71 = call i64 @pnp_mem_start(%struct.pnp_dev* %70, i32 0)
  %72 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %6, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 6
  store i64 %71, i64* %73, align 8
  %74 = load i8*, i8** @UPIO_MEM, align 8
  %75 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %6, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 4
  store i8* %74, i8** %76, align 8
  %77 = load i32, i32* @UPF_IOREMAP, align 4
  %78 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %6, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  br label %83

80:                                               ; preds = %65
  %81 = load i32, i32* @ENODEV, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %3, align 4
  br label %173

83:                                               ; preds = %69
  br label %84

84:                                               ; preds = %83, %57
  br label %85

85:                                               ; preds = %84, %45
  %86 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %87 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %6, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 7
  %90 = load i8*, i8** %89, align 8
  %91 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %6, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 6
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %6, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 8
  %97 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %6, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 4
  %99 = load i8*, i8** %98, align 8
  %100 = call i32 @dev_dbg(i32* %87, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i8* %90, i64 %93, i32 %96, i8* %99)
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* @CIR_PORT, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %116

105:                                              ; preds = %85
  %106 = load i32, i32* @UPF_FIXED_PORT, align 4
  %107 = load i32, i32* @UPF_FIXED_TYPE, align 4
  %108 = or i32 %106, %107
  %109 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %6, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = or i32 %111, %108
  store i32 %112, i32* %110, align 8
  %113 = load i32, i32* @PORT_8250_CIR, align 4
  %114 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %6, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 3
  store i32 %113, i32* %115, align 8
  br label %116

116:                                              ; preds = %105, %85
  %117 = load i32, i32* @UPF_SKIP_TEST, align 4
  %118 = load i32, i32* @UPF_BOOT_AUTOCONF, align 4
  %119 = or i32 %117, %118
  %120 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %6, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = or i32 %122, %119
  store i32 %123, i32* %121, align 8
  %124 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %125 = call i32 @pnp_irq_flags(%struct.pnp_dev* %124, i32 0)
  %126 = load i32, i32* @IORESOURCE_IRQ_SHAREABLE, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %116
  %130 = load i32, i32* @UPF_SHARE_IRQ, align 4
  %131 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %6, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = or i32 %133, %130
  store i32 %134, i32* %132, align 8
  br label %135

135:                                              ; preds = %129, %116
  %136 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %6, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 1
  store i32 1843200, i32* %137, align 4
  %138 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %139 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %6, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 2
  store i32* %139, i32** %141, align 8
  %142 = call i32 @serial8250_register_8250_port(%struct.uart_8250_port* %6)
  store i32 %142, i32* %9, align 4
  %143 = load i32, i32* %9, align 4
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %150, label %145

145:                                              ; preds = %135
  %146 = load i32, i32* %10, align 4
  %147 = load i32, i32* @CIR_PORT, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %145, %135
  %151 = load i32, i32* @ENODEV, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %3, align 4
  br label %173

153:                                              ; preds = %145
  %154 = load i32, i32* %9, align 4
  %155 = call %struct.uart_8250_port* @serial8250_get_port(i32 %154)
  store %struct.uart_8250_port* %155, %struct.uart_8250_port** %7, align 8
  %156 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %157 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %156, i32 0, i32 0
  %158 = call i64 @uart_console(%struct.TYPE_2__* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %166

160:                                              ; preds = %153
  %161 = load i32, i32* @PNP_CONSOLE, align 4
  %162 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %163 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = or i32 %164, %161
  store i32 %165, i32* %163, align 4
  br label %166

166:                                              ; preds = %160, %153
  %167 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %168 = load i32, i32* %9, align 4
  %169 = sext i32 %168 to i64
  %170 = add nsw i64 %169, 1
  %171 = inttoptr i64 %170 to i8*
  %172 = call i32 @pnp_set_drvdata(%struct.pnp_dev* %167, i8* %171)
  store i32 0, i32* %3, align 4
  br label %173

173:                                              ; preds = %166, %150, %80, %23
  %174 = load i32, i32* %3, align 4
  ret i32 %174
}

declare dso_local i32 @serial_pnp_guess_board(%struct.pnp_dev*) #1

declare dso_local i32 @memset(%struct.uart_8250_port*, i32, i32) #1

declare dso_local i64 @pnp_irq_valid(%struct.pnp_dev*, i32) #1

declare dso_local i32 @pnp_irq(%struct.pnp_dev*, i32) #1

declare dso_local i64 @pnp_port_valid(%struct.pnp_dev*, i32) #1

declare dso_local i8* @pnp_port_start(%struct.pnp_dev*, i32) #1

declare dso_local i64 @pnp_mem_valid(%struct.pnp_dev*, i32) #1

declare dso_local i64 @pnp_mem_start(%struct.pnp_dev*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i8*, i64, i32, i8*) #1

declare dso_local i32 @pnp_irq_flags(%struct.pnp_dev*, i32) #1

declare dso_local i32 @serial8250_register_8250_port(%struct.uart_8250_port*) #1

declare dso_local %struct.uart_8250_port* @serial8250_get_port(i32) #1

declare dso_local i64 @uart_console(%struct.TYPE_2__*) #1

declare dso_local i32 @pnp_set_drvdata(%struct.pnp_dev*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
