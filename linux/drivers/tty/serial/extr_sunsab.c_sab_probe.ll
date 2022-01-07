; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sunsab.c_sab_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sunsab.c_sab_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_sunsab_port = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.platform_device = type { i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@sab_probe.inst = internal global i32 0, align 4
@sunsab_ports = common dso_local global %struct.uart_sunsab_port* null, align 8
@sunsab_reg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sab_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sab_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.uart_sunsab_port*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** @sunsab_ports, align 8
  %7 = load i32, i32* @sab_probe.inst, align 4
  %8 = mul nsw i32 %7, 2
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %6, i64 %9
  store %struct.uart_sunsab_port* %10, %struct.uart_sunsab_port** %4, align 8
  %11 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %4, align 8
  %12 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %11, i64 0
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = load i32, i32* @sab_probe.inst, align 4
  %15 = mul nsw i32 %14, 2
  %16 = add nsw i32 %15, 0
  %17 = call i32 @sunsab_init_one(%struct.uart_sunsab_port* %12, %struct.platform_device* %13, i32 0, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %104

21:                                               ; preds = %1
  %22 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %4, align 8
  %23 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %22, i64 1
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = load i32, i32* @sab_probe.inst, align 4
  %26 = mul nsw i32 %25, 2
  %27 = add nsw i32 %26, 1
  %28 = call i32 @sunsab_init_one(%struct.uart_sunsab_port* %23, %struct.platform_device* %24, i32 4, i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  br label %93

32:                                               ; preds = %21
  %33 = call i32 (...) @SUNSAB_CONSOLE()
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %4, align 8
  %39 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %38, i64 0
  %40 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @sunserial_console_match(i32 %33, i32 %37, i32* @sunsab_reg, i32 %42, i32 0)
  %44 = call i32 (...) @SUNSAB_CONSOLE()
  %45 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %46 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %4, align 8
  %50 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %49, i64 1
  %51 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @sunserial_console_match(i32 %44, i32 %48, i32* @sunsab_reg, i32 %53, i32 0)
  %55 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %4, align 8
  %56 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %55, i64 0
  %57 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %56, i32 0, i32 0
  %58 = call i32 @uart_add_one_port(i32* @sunsab_reg, %struct.TYPE_5__* %57)
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %32
  br label %82

62:                                               ; preds = %32
  %63 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %4, align 8
  %64 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %63, i64 1
  %65 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %64, i32 0, i32 0
  %66 = call i32 @uart_add_one_port(i32* @sunsab_reg, %struct.TYPE_5__* %65)
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %5, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  br label %77

70:                                               ; preds = %62
  %71 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %72 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %4, align 8
  %73 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %72, i64 0
  %74 = call i32 @platform_set_drvdata(%struct.platform_device* %71, %struct.uart_sunsab_port* %73)
  %75 = load i32, i32* @sab_probe.inst, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* @sab_probe.inst, align 4
  store i32 0, i32* %2, align 4
  br label %106

77:                                               ; preds = %69
  %78 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %4, align 8
  %79 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %78, i64 0
  %80 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %79, i32 0, i32 0
  %81 = call i32 @uart_remove_one_port(i32* @sunsab_reg, %struct.TYPE_5__* %80)
  br label %82

82:                                               ; preds = %77, %61
  %83 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %84 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  %87 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %4, align 8
  %88 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %87, i64 1
  %89 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @of_iounmap(i32* %86, i32 %91, i32 4)
  br label %93

93:                                               ; preds = %82, %31
  %94 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %95 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  %98 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %4, align 8
  %99 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %98, i64 0
  %100 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @of_iounmap(i32* %97, i32 %102, i32 4)
  br label %104

104:                                              ; preds = %93, %20
  %105 = load i32, i32* %5, align 4
  store i32 %105, i32* %2, align 4
  br label %106

106:                                              ; preds = %104, %70
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local i32 @sunsab_init_one(%struct.uart_sunsab_port*, %struct.platform_device*, i32, i32) #1

declare dso_local i32 @sunserial_console_match(i32, i32, i32*, i32, i32) #1

declare dso_local i32 @SUNSAB_CONSOLE(...) #1

declare dso_local i32 @uart_add_one_port(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.uart_sunsab_port*) #1

declare dso_local i32 @uart_remove_one_port(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @of_iounmap(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
