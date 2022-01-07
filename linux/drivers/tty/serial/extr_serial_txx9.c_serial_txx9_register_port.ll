; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_txx9.c_serial_txx9_register_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_txx9.c_serial_txx9_register_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_txx9_port = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i64, i64, i32, i32, i32, i32, i64 }
%struct.uart_port = type { i32, i64, i64, i32, i32, i32, i32, i64 }

@ENOSPC = common dso_local global i32 0, align 4
@serial_txx9_mutex = common dso_local global i32 0, align 4
@UART_NR = common dso_local global i32 0, align 4
@serial_txx9_ports = common dso_local global %struct.uart_txx9_port* null, align 8
@serial_txx9_reg = common dso_local global i32 0, align 4
@UPF_BOOT_AUTOCONF = common dso_local global i32 0, align 4
@UPF_FIXED_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @serial_txx9_register_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serial_txx9_register_port(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.uart_txx9_port*, align 8
  %5 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %6 = load i32, i32* @ENOSPC, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %5, align 4
  %8 = call i32 @mutex_lock(i32* @serial_txx9_mutex)
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %28, %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @UART_NR, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %31

13:                                               ; preds = %9
  %14 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** @serial_txx9_ports, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %14, i64 %16
  store %struct.uart_txx9_port* %17, %struct.uart_txx9_port** %4, align 8
  %18 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %4, align 8
  %19 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %18, i32 0, i32 0
  %20 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %21 = call i64 @uart_match_port(%struct.TYPE_4__* %19, %struct.uart_port* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %13
  %24 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %4, align 8
  %25 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %24, i32 0, i32 0
  %26 = call i32 @uart_remove_one_port(i32* @serial_txx9_reg, %struct.TYPE_4__* %25)
  br label %31

27:                                               ; preds = %13
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %3, align 4
  br label %9

31:                                               ; preds = %23, %9
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @UART_NR, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %62

35:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %58, %35
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @UART_NR, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %61

40:                                               ; preds = %36
  %41 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** @serial_txx9_ports, align 8
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %41, i64 %43
  store %struct.uart_txx9_port* %44, %struct.uart_txx9_port** %4, align 8
  %45 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %4, align 8
  %46 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 8
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %40
  %51 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %4, align 8
  %52 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %50
  br label %61

57:                                               ; preds = %50, %40
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %3, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %3, align 4
  br label %36

61:                                               ; preds = %56, %36
  br label %62

62:                                               ; preds = %61, %31
  %63 = load i32, i32* %3, align 4
  %64 = load i32, i32* @UART_NR, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %136

66:                                               ; preds = %62
  %67 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %68 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %67, i32 0, i32 7
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %4, align 8
  %71 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 8
  store i64 %69, i64* %72, align 8
  %73 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %74 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %73, i32 0, i32 6
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %4, align 8
  %77 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 7
  store i32 %75, i32* %78, align 4
  %79 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %80 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %4, align 8
  %83 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 6
  store i32 %81, i32* %84, align 8
  %85 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %86 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %4, align 8
  %89 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 5
  store i32 %87, i32* %90, align 4
  %91 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %92 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %4, align 8
  %95 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 4
  store i32 %93, i32* %96, align 8
  %97 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %98 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @UPF_BOOT_AUTOCONF, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* @UPF_FIXED_PORT, align 4
  %103 = or i32 %101, %102
  %104 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %4, align 8
  %105 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  store i32 %103, i32* %106, align 8
  %107 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %108 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %4, align 8
  %111 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 3
  store i64 %109, i64* %112, align 8
  %113 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %114 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %66
  %118 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %119 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %4, align 8
  %122 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 2
  store i64 %120, i64* %123, align 8
  br label %124

124:                                              ; preds = %117, %66
  %125 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %4, align 8
  %126 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %125, i32 0, i32 0
  %127 = call i32 @uart_add_one_port(i32* @serial_txx9_reg, %struct.TYPE_4__* %126)
  store i32 %127, i32* %5, align 4
  %128 = load i32, i32* %5, align 4
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %124
  %131 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %4, align 8
  %132 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  store i32 %134, i32* %5, align 4
  br label %135

135:                                              ; preds = %130, %124
  br label %136

136:                                              ; preds = %135, %62
  %137 = call i32 @mutex_unlock(i32* @serial_txx9_mutex)
  %138 = load i32, i32* %5, align 4
  ret i32 %138
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @uart_match_port(%struct.TYPE_4__*, %struct.uart_port*) #1

declare dso_local i32 @uart_remove_one_port(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @uart_add_one_port(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
