; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_uartlite.c_ulite_assign.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_uartlite.c_ulite_assign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i64, i32, i32, i32, i32, i32, %struct.uartlite_data*, i32, %struct.device*, i32, i32*, i32*, i32, i32 }
%struct.uartlite_data = type { i32 }
%struct.device = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@ULITE_NR_UARTS = common dso_local global i32 0, align 4
@ulite_ports = common dso_local global %struct.uart_port* null, align 8
@.str = private unnamed_addr constant [16 x i8] c"%s%i too large\0A\00", align 1
@ULITE_NAME = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"cannot assign to %s%i; it is already in use\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@UPIO_MEM = common dso_local global i32 0, align 4
@ulite_ops = common dso_local global i32 0, align 4
@UPF_BOOT_AUTOCONF = common dso_local global i32 0, align 4
@PORT_UNKNOWN = common dso_local global i32 0, align 4
@ulite_uart_driver = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"uart_add_one_port() failed; err=%i\0A\00", align 1
@console_port = common dso_local global %struct.uart_port* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i64, i32, %struct.uartlite_data*)* @ulite_assign to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ulite_assign(%struct.device* %0, i32 %1, i64 %2, i32 %3, %struct.uartlite_data* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.uartlite_data*, align 8
  %12 = alloca %struct.uart_port*, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.uartlite_data* %4, %struct.uartlite_data** %11, align 8
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %35

16:                                               ; preds = %5
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %31, %16
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @ULITE_NR_UARTS, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %34

21:                                               ; preds = %17
  %22 = load %struct.uart_port*, %struct.uart_port** @ulite_ports, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %22, i64 %24
  %26 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  br label %34

30:                                               ; preds = %21
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %8, align 4
  br label %17

34:                                               ; preds = %29, %17
  br label %35

35:                                               ; preds = %34, %5
  %36 = load i32, i32* %8, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @ULITE_NR_UARTS, align 4
  %41 = icmp sge i32 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %38, %35
  %43 = load %struct.device*, %struct.device** %7, align 8
  %44 = load i32, i32* @ULITE_NAME, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %43, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %45)
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %6, align 4
  br label %132

49:                                               ; preds = %38
  %50 = load %struct.uart_port*, %struct.uart_port** @ulite_ports, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %50, i64 %52
  %54 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %73

57:                                               ; preds = %49
  %58 = load %struct.uart_port*, %struct.uart_port** @ulite_ports, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %58, i64 %60
  %62 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %9, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %57
  %67 = load %struct.device*, %struct.device** %7, align 8
  %68 = load i32, i32* @ULITE_NAME, align 4
  %69 = load i32, i32* %8, align 4
  %70 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %67, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %68, i32 %69)
  %71 = load i32, i32* @EBUSY, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %6, align 4
  br label %132

73:                                               ; preds = %57, %49
  %74 = load %struct.uart_port*, %struct.uart_port** @ulite_ports, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %74, i64 %76
  store %struct.uart_port* %77, %struct.uart_port** %12, align 8
  %78 = load %struct.uart_port*, %struct.uart_port** %12, align 8
  %79 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %78, i32 0, i32 13
  %80 = call i32 @spin_lock_init(i32* %79)
  %81 = load %struct.uart_port*, %struct.uart_port** %12, align 8
  %82 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %81, i32 0, i32 1
  store i32 16, i32* %82, align 8
  %83 = load %struct.uart_port*, %struct.uart_port** %12, align 8
  %84 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %83, i32 0, i32 2
  store i32 2, i32* %84, align 4
  %85 = load i32, i32* @UPIO_MEM, align 4
  %86 = load %struct.uart_port*, %struct.uart_port** %12, align 8
  %87 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %86, i32 0, i32 12
  store i32 %85, i32* %87, align 8
  %88 = load %struct.uart_port*, %struct.uart_port** %12, align 8
  %89 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %88, i32 0, i32 3
  store i32 1, i32* %89, align 8
  %90 = load i64, i64* %9, align 8
  %91 = load %struct.uart_port*, %struct.uart_port** %12, align 8
  %92 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %91, i32 0, i32 0
  store i64 %90, i64* %92, align 8
  %93 = load %struct.uart_port*, %struct.uart_port** %12, align 8
  %94 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %93, i32 0, i32 11
  store i32* null, i32** %94, align 8
  %95 = load %struct.uart_port*, %struct.uart_port** %12, align 8
  %96 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %95, i32 0, i32 10
  store i32* @ulite_ops, i32** %96, align 8
  %97 = load i32, i32* %10, align 4
  %98 = load %struct.uart_port*, %struct.uart_port** %12, align 8
  %99 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %98, i32 0, i32 4
  store i32 %97, i32* %99, align 4
  %100 = load i32, i32* @UPF_BOOT_AUTOCONF, align 4
  %101 = load %struct.uart_port*, %struct.uart_port** %12, align 8
  %102 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %101, i32 0, i32 9
  store i32 %100, i32* %102, align 8
  %103 = load %struct.device*, %struct.device** %7, align 8
  %104 = load %struct.uart_port*, %struct.uart_port** %12, align 8
  %105 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %104, i32 0, i32 8
  store %struct.device* %103, %struct.device** %105, align 8
  %106 = load i32, i32* @PORT_UNKNOWN, align 4
  %107 = load %struct.uart_port*, %struct.uart_port** %12, align 8
  %108 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %107, i32 0, i32 7
  store i32 %106, i32* %108, align 8
  %109 = load i32, i32* %8, align 4
  %110 = load %struct.uart_port*, %struct.uart_port** %12, align 8
  %111 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %110, i32 0, i32 5
  store i32 %109, i32* %111, align 8
  %112 = load %struct.uartlite_data*, %struct.uartlite_data** %11, align 8
  %113 = load %struct.uart_port*, %struct.uart_port** %12, align 8
  %114 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %113, i32 0, i32 6
  store %struct.uartlite_data* %112, %struct.uartlite_data** %114, align 8
  %115 = load %struct.device*, %struct.device** %7, align 8
  %116 = load %struct.uart_port*, %struct.uart_port** %12, align 8
  %117 = call i32 @dev_set_drvdata(%struct.device* %115, %struct.uart_port* %116)
  %118 = load %struct.uart_port*, %struct.uart_port** %12, align 8
  %119 = call i32 @uart_add_one_port(%struct.TYPE_5__* @ulite_uart_driver, %struct.uart_port* %118)
  store i32 %119, i32* %13, align 4
  %120 = load i32, i32* %13, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %131

122:                                              ; preds = %73
  %123 = load %struct.device*, %struct.device** %7, align 8
  %124 = load i32, i32* %13, align 4
  %125 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %123, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %124)
  %126 = load %struct.uart_port*, %struct.uart_port** %12, align 8
  %127 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %126, i32 0, i32 0
  store i64 0, i64* %127, align 8
  %128 = load %struct.device*, %struct.device** %7, align 8
  %129 = call i32 @dev_set_drvdata(%struct.device* %128, %struct.uart_port* null)
  %130 = load i32, i32* %13, align 4
  store i32 %130, i32* %6, align 4
  br label %132

131:                                              ; preds = %73
  store i32 0, i32* %6, align 4
  br label %132

132:                                              ; preds = %131, %122, %66, %42
  %133 = load i32, i32* %6, align 4
  ret i32 %133
}

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.uart_port*) #1

declare dso_local i32 @uart_add_one_port(%struct.TYPE_5__*, %struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
