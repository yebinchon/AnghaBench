; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_acorn.c_serial_card_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_acorn.c_serial_card_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.expansion_card = type { i32, i32 }
%struct.ecard_id = type { %struct.serial_card_type* }
%struct.serial_card_type = type { i32, i64*, i32, i32 }
%struct.serial_card_info = type { i32, i32*, i64 }
%struct.uart_8250_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64, i64, i32*, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UPF_BOOT_AUTOCONF = common dso_local global i32 0, align 4
@UPF_SHARE_IRQ = common dso_local global i32 0, align 4
@UPIO_MEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.expansion_card*, %struct.ecard_id*)* @serial_card_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serial_card_probe(%struct.expansion_card* %0, %struct.ecard_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.expansion_card*, align 8
  %5 = alloca %struct.ecard_id*, align 8
  %6 = alloca %struct.serial_card_info*, align 8
  %7 = alloca %struct.serial_card_type*, align 8
  %8 = alloca %struct.uart_8250_port, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.expansion_card* %0, %struct.expansion_card** %4, align 8
  store %struct.ecard_id* %1, %struct.ecard_id** %5, align 8
  %11 = load %struct.ecard_id*, %struct.ecard_id** %5, align 8
  %12 = getelementptr inbounds %struct.ecard_id, %struct.ecard_id* %11, i32 0, i32 0
  %13 = load %struct.serial_card_type*, %struct.serial_card_type** %12, align 8
  store %struct.serial_card_type* %13, %struct.serial_card_type** %7, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.serial_card_info* @kzalloc(i32 24, i32 %14)
  store %struct.serial_card_info* %15, %struct.serial_card_info** %6, align 8
  %16 = load %struct.serial_card_info*, %struct.serial_card_info** %6, align 8
  %17 = icmp ne %struct.serial_card_info* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %119

21:                                               ; preds = %2
  %22 = load %struct.serial_card_type*, %struct.serial_card_type** %7, align 8
  %23 = getelementptr inbounds %struct.serial_card_type, %struct.serial_card_type* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.serial_card_info*, %struct.serial_card_info** %6, align 8
  %26 = getelementptr inbounds %struct.serial_card_info, %struct.serial_card_info* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.expansion_card*, %struct.expansion_card** %4, align 8
  %28 = load %struct.serial_card_type*, %struct.serial_card_type** %7, align 8
  %29 = getelementptr inbounds %struct.serial_card_type, %struct.serial_card_type* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @ecard_resource_start(%struct.expansion_card* %27, i32 %30)
  store i64 %31, i64* %9, align 8
  %32 = load %struct.expansion_card*, %struct.expansion_card** %4, align 8
  %33 = load %struct.serial_card_type*, %struct.serial_card_type** %7, align 8
  %34 = getelementptr inbounds %struct.serial_card_type, %struct.serial_card_type* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @ecardm_iomap(%struct.expansion_card* %32, i32 %35, i32 0, i32 0)
  %37 = load %struct.serial_card_info*, %struct.serial_card_info** %6, align 8
  %38 = getelementptr inbounds %struct.serial_card_info, %struct.serial_card_info* %37, i32 0, i32 2
  store i64 %36, i64* %38, align 8
  %39 = load %struct.serial_card_info*, %struct.serial_card_info** %6, align 8
  %40 = getelementptr inbounds %struct.serial_card_info, %struct.serial_card_info* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %21
  %44 = load %struct.serial_card_info*, %struct.serial_card_info** %6, align 8
  %45 = call i32 @kfree(%struct.serial_card_info* %44)
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %119

48:                                               ; preds = %21
  %49 = load %struct.expansion_card*, %struct.expansion_card** %4, align 8
  %50 = load %struct.serial_card_info*, %struct.serial_card_info** %6, align 8
  %51 = call i32 @ecard_set_drvdata(%struct.expansion_card* %49, %struct.serial_card_info* %50)
  %52 = call i32 @memset(%struct.uart_8250_port* %8, i32 0, i32 48)
  %53 = load %struct.expansion_card*, %struct.expansion_card** %4, align 8
  %54 = getelementptr inbounds %struct.expansion_card, %struct.expansion_card* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %8, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 7
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* @UPF_BOOT_AUTOCONF, align 4
  %59 = load i32, i32* @UPF_SHARE_IRQ, align 4
  %60 = or i32 %58, %59
  %61 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %8, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load %struct.serial_card_type*, %struct.serial_card_type** %7, align 8
  %64 = getelementptr inbounds %struct.serial_card_type, %struct.serial_card_type* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %8, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 6
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* @UPIO_MEM, align 4
  %69 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %8, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 5
  store i32 %68, i32* %70, align 8
  %71 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %8, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  store i32 2, i32* %72, align 4
  %73 = load %struct.expansion_card*, %struct.expansion_card** %4, align 8
  %74 = getelementptr inbounds %struct.expansion_card, %struct.expansion_card* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %8, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 4
  store i32* %74, i32** %76, align 8
  store i32 0, i32* %10, align 4
  br label %77

77:                                               ; preds = %115, %48
  %78 = load i32, i32* %10, align 4
  %79 = load %struct.serial_card_info*, %struct.serial_card_info** %6, align 8
  %80 = getelementptr inbounds %struct.serial_card_info, %struct.serial_card_info* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp ult i32 %78, %81
  br i1 %82, label %83, label %118

83:                                               ; preds = %77
  %84 = load %struct.serial_card_info*, %struct.serial_card_info** %6, align 8
  %85 = getelementptr inbounds %struct.serial_card_info, %struct.serial_card_info* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.serial_card_type*, %struct.serial_card_type** %7, align 8
  %88 = getelementptr inbounds %struct.serial_card_type, %struct.serial_card_type* %87, i32 0, i32 1
  %89 = load i64*, i64** %88, align 8
  %90 = load i32, i32* %10, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds i64, i64* %89, i64 %91
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %86, %93
  %95 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %8, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 3
  store i64 %94, i64* %96, align 8
  %97 = load i64, i64* %9, align 8
  %98 = load %struct.serial_card_type*, %struct.serial_card_type** %7, align 8
  %99 = getelementptr inbounds %struct.serial_card_type, %struct.serial_card_type* %98, i32 0, i32 1
  %100 = load i64*, i64** %99, align 8
  %101 = load i32, i32* %10, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds i64, i64* %100, i64 %102
  %104 = load i64, i64* %103, align 8
  %105 = add i64 %97, %104
  %106 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %8, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 2
  store i64 %105, i64* %107, align 8
  %108 = call i32 @serial8250_register_8250_port(%struct.uart_8250_port* %8)
  %109 = load %struct.serial_card_info*, %struct.serial_card_info** %6, align 8
  %110 = getelementptr inbounds %struct.serial_card_info, %struct.serial_card_info* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %10, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  store i32 %108, i32* %114, align 4
  br label %115

115:                                              ; preds = %83
  %116 = load i32, i32* %10, align 4
  %117 = add i32 %116, 1
  store i32 %117, i32* %10, align 4
  br label %77

118:                                              ; preds = %77
  store i32 0, i32* %3, align 4
  br label %119

119:                                              ; preds = %118, %43, %18
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local %struct.serial_card_info* @kzalloc(i32, i32) #1

declare dso_local i64 @ecard_resource_start(%struct.expansion_card*, i32) #1

declare dso_local i64 @ecardm_iomap(%struct.expansion_card*, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.serial_card_info*) #1

declare dso_local i32 @ecard_set_drvdata(%struct.expansion_card*, %struct.serial_card_info*) #1

declare dso_local i32 @memset(%struct.uart_8250_port*, i32, i32) #1

declare dso_local i32 @serial8250_register_8250_port(%struct.uart_8250_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
