; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_core.c_serial8250_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_core.c_serial8250_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.plat_serial8250_port = type { i64, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.uart_8250_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32 }

@share_irqs = common dso_local global i64 0, align 8
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"unable to register port at index %d (IO%lx MEM%llx IRQ%d): %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @serial8250_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serial8250_probe(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.plat_serial8250_port*, align 8
  %4 = alloca %struct.uart_8250_port, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = call %struct.plat_serial8250_port* @dev_get_platdata(i32* %9)
  store %struct.plat_serial8250_port* %10, %struct.plat_serial8250_port** %3, align 8
  store i32 0, i32* %7, align 4
  %11 = call i32 @memset(%struct.uart_8250_port* %4, i32 0, i32 104)
  %12 = load i64, i64* @share_irqs, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @IRQF_SHARED, align 4
  store i32 %15, i32* %7, align 4
  br label %16

16:                                               ; preds = %14, %1
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %156, %16
  %18 = load %struct.plat_serial8250_port*, %struct.plat_serial8250_port** %3, align 8
  %19 = icmp ne %struct.plat_serial8250_port* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load %struct.plat_serial8250_port*, %struct.plat_serial8250_port** %3, align 8
  %22 = getelementptr inbounds %struct.plat_serial8250_port, %struct.plat_serial8250_port* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br label %25

25:                                               ; preds = %20, %17
  %26 = phi i1 [ false, %17 ], [ %24, %20 ]
  br i1 %26, label %27, label %161

27:                                               ; preds = %25
  %28 = load %struct.plat_serial8250_port*, %struct.plat_serial8250_port** %3, align 8
  %29 = getelementptr inbounds %struct.plat_serial8250_port, %struct.plat_serial8250_port* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %4, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 20
  store i32 %30, i32* %32, align 4
  %33 = load %struct.plat_serial8250_port*, %struct.plat_serial8250_port** %3, align 8
  %34 = getelementptr inbounds %struct.plat_serial8250_port, %struct.plat_serial8250_port* %33, i32 0, i32 19
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %4, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 19
  store i32 %35, i32* %37, align 8
  %38 = load %struct.plat_serial8250_port*, %struct.plat_serial8250_port** %3, align 8
  %39 = getelementptr inbounds %struct.plat_serial8250_port, %struct.plat_serial8250_port* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %4, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 18
  store i32 %40, i32* %42, align 4
  %43 = load %struct.plat_serial8250_port*, %struct.plat_serial8250_port** %3, align 8
  %44 = getelementptr inbounds %struct.plat_serial8250_port, %struct.plat_serial8250_port* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %4, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.plat_serial8250_port*, %struct.plat_serial8250_port** %3, align 8
  %49 = getelementptr inbounds %struct.plat_serial8250_port, %struct.plat_serial8250_port* %48, i32 0, i32 18
  %50 = load i32, i32* %49, align 8
  %51 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %4, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 17
  store i32 %50, i32* %52, align 8
  %53 = load %struct.plat_serial8250_port*, %struct.plat_serial8250_port** %3, align 8
  %54 = getelementptr inbounds %struct.plat_serial8250_port, %struct.plat_serial8250_port* %53, i32 0, i32 17
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %4, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 16
  store i32 %55, i32* %57, align 4
  %58 = load %struct.plat_serial8250_port*, %struct.plat_serial8250_port** %3, align 8
  %59 = getelementptr inbounds %struct.plat_serial8250_port, %struct.plat_serial8250_port* %58, i32 0, i32 16
  %60 = load i32, i32* %59, align 8
  %61 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %4, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 15
  store i32 %60, i32* %62, align 8
  %63 = load %struct.plat_serial8250_port*, %struct.plat_serial8250_port** %3, align 8
  %64 = getelementptr inbounds %struct.plat_serial8250_port, %struct.plat_serial8250_port* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %4, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  store i64 %65, i64* %67, align 8
  %68 = load %struct.plat_serial8250_port*, %struct.plat_serial8250_port** %3, align 8
  %69 = getelementptr inbounds %struct.plat_serial8250_port, %struct.plat_serial8250_port* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %4, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 14
  store i64 %70, i64* %72, align 8
  %73 = load %struct.plat_serial8250_port*, %struct.plat_serial8250_port** %3, align 8
  %74 = getelementptr inbounds %struct.plat_serial8250_port, %struct.plat_serial8250_port* %73, i32 0, i32 15
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %4, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 13
  store i32 %75, i32* %77, align 8
  %78 = load %struct.plat_serial8250_port*, %struct.plat_serial8250_port** %3, align 8
  %79 = getelementptr inbounds %struct.plat_serial8250_port, %struct.plat_serial8250_port* %78, i32 0, i32 14
  %80 = load i32, i32* %79, align 8
  %81 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %4, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 12
  store i32 %80, i32* %82, align 4
  %83 = load %struct.plat_serial8250_port*, %struct.plat_serial8250_port** %3, align 8
  %84 = getelementptr inbounds %struct.plat_serial8250_port, %struct.plat_serial8250_port* %83, i32 0, i32 13
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %4, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 11
  store i32 %85, i32* %87, align 8
  %88 = load %struct.plat_serial8250_port*, %struct.plat_serial8250_port** %3, align 8
  %89 = getelementptr inbounds %struct.plat_serial8250_port, %struct.plat_serial8250_port* %88, i32 0, i32 12
  %90 = load i32, i32* %89, align 8
  %91 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %4, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 10
  store i32 %90, i32* %92, align 4
  %93 = load %struct.plat_serial8250_port*, %struct.plat_serial8250_port** %3, align 8
  %94 = getelementptr inbounds %struct.plat_serial8250_port, %struct.plat_serial8250_port* %93, i32 0, i32 11
  %95 = load i32, i32* %94, align 4
  %96 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %4, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 9
  store i32 %95, i32* %97, align 8
  %98 = load %struct.plat_serial8250_port*, %struct.plat_serial8250_port** %3, align 8
  %99 = getelementptr inbounds %struct.plat_serial8250_port, %struct.plat_serial8250_port* %98, i32 0, i32 10
  %100 = load i32, i32* %99, align 8
  %101 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %4, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 8
  store i32 %100, i32* %102, align 4
  %103 = load %struct.plat_serial8250_port*, %struct.plat_serial8250_port** %3, align 8
  %104 = getelementptr inbounds %struct.plat_serial8250_port, %struct.plat_serial8250_port* %103, i32 0, i32 9
  %105 = load i32, i32* %104, align 4
  %106 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %4, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 7
  store i32 %105, i32* %107, align 8
  %108 = load %struct.plat_serial8250_port*, %struct.plat_serial8250_port** %3, align 8
  %109 = getelementptr inbounds %struct.plat_serial8250_port, %struct.plat_serial8250_port* %108, i32 0, i32 8
  %110 = load i32, i32* %109, align 8
  %111 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %4, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 6
  store i32 %110, i32* %112, align 4
  %113 = load %struct.plat_serial8250_port*, %struct.plat_serial8250_port** %3, align 8
  %114 = getelementptr inbounds %struct.plat_serial8250_port, %struct.plat_serial8250_port* %113, i32 0, i32 7
  %115 = load i32, i32* %114, align 4
  %116 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %4, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 5
  store i32 %115, i32* %117, align 8
  %118 = load %struct.plat_serial8250_port*, %struct.plat_serial8250_port** %3, align 8
  %119 = getelementptr inbounds %struct.plat_serial8250_port, %struct.plat_serial8250_port* %118, i32 0, i32 6
  %120 = load i32, i32* %119, align 8
  %121 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %4, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 4
  store i32 %120, i32* %122, align 4
  %123 = load %struct.plat_serial8250_port*, %struct.plat_serial8250_port** %3, align 8
  %124 = getelementptr inbounds %struct.plat_serial8250_port, %struct.plat_serial8250_port* %123, i32 0, i32 5
  %125 = load i32, i32* %124, align 4
  %126 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %4, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 3
  store i32 %125, i32* %127, align 8
  %128 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %129 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %4, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 2
  store i32* %129, i32** %131, align 8
  %132 = load i32, i32* %7, align 4
  %133 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %4, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = or i32 %135, %132
  store i32 %136, i32* %134, align 8
  %137 = call i32 @serial8250_register_8250_port(%struct.uart_8250_port* %4)
  store i32 %137, i32* %5, align 4
  %138 = load i32, i32* %5, align 4
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %155

140:                                              ; preds = %27
  %141 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %142 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %141, i32 0, i32 0
  %143 = load i32, i32* %6, align 4
  %144 = load %struct.plat_serial8250_port*, %struct.plat_serial8250_port** %3, align 8
  %145 = getelementptr inbounds %struct.plat_serial8250_port, %struct.plat_serial8250_port* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.plat_serial8250_port*, %struct.plat_serial8250_port** %3, align 8
  %148 = getelementptr inbounds %struct.plat_serial8250_port, %struct.plat_serial8250_port* %147, i32 0, i32 3
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.plat_serial8250_port*, %struct.plat_serial8250_port** %3, align 8
  %151 = getelementptr inbounds %struct.plat_serial8250_port, %struct.plat_serial8250_port* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* %5, align 4
  %154 = call i32 @dev_err(i32* %142, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %143, i32 %146, i64 %149, i32 %152, i32 %153)
  br label %155

155:                                              ; preds = %140, %27
  br label %156

156:                                              ; preds = %155
  %157 = load %struct.plat_serial8250_port*, %struct.plat_serial8250_port** %3, align 8
  %158 = getelementptr inbounds %struct.plat_serial8250_port, %struct.plat_serial8250_port* %157, i32 1
  store %struct.plat_serial8250_port* %158, %struct.plat_serial8250_port** %3, align 8
  %159 = load i32, i32* %6, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %6, align 4
  br label %17

161:                                              ; preds = %25
  ret i32 0
}

declare dso_local %struct.plat_serial8250_port* @dev_get_platdata(i32*) #1

declare dso_local i32 @memset(%struct.uart_8250_port*, i32, i32) #1

declare dso_local i32 @serial8250_register_8250_port(%struct.uart_8250_port*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
