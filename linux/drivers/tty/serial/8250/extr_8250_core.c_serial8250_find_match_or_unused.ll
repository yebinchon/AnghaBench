; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_core.c_serial8250_find_match_or_unused.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_core.c_serial8250_find_match_or_unused.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_8250_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }
%struct.uart_port = type { i32 }

@nr_uarts = common dso_local global i32 0, align 4
@serial8250_ports = common dso_local global %struct.uart_8250_port* null, align 8
@PORT_UNKNOWN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.uart_8250_port* (%struct.uart_port*)* @serial8250_find_match_or_unused to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.uart_8250_port* @serial8250_find_match_or_unused(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_8250_port*, align 8
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %24, %1
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @nr_uarts, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %27

9:                                                ; preds = %5
  %10 = load %struct.uart_8250_port*, %struct.uart_8250_port** @serial8250_ports, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %10, i64 %12
  %14 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %13, i32 0, i32 0
  %15 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %16 = call i64 @uart_match_port(%struct.TYPE_2__* %14, %struct.uart_port* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %9
  %19 = load %struct.uart_8250_port*, %struct.uart_8250_port** @serial8250_ports, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %19, i64 %21
  store %struct.uart_8250_port* %22, %struct.uart_8250_port** %2, align 8
  br label %116

23:                                               ; preds = %9
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %4, align 4
  br label %5

27:                                               ; preds = %5
  %28 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %29 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @nr_uarts, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %58

34:                                               ; preds = %27
  %35 = load %struct.uart_8250_port*, %struct.uart_8250_port** @serial8250_ports, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %35, i64 %37
  %39 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @PORT_UNKNOWN, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %58

44:                                               ; preds = %34
  %45 = load %struct.uart_8250_port*, %struct.uart_8250_port** @serial8250_ports, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %45, i64 %47
  %49 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %44
  %54 = load %struct.uart_8250_port*, %struct.uart_8250_port** @serial8250_ports, align 8
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %54, i64 %56
  store %struct.uart_8250_port* %57, %struct.uart_8250_port** %2, align 8
  br label %116

58:                                               ; preds = %44, %34, %27
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %88, %58
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @nr_uarts, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %91

63:                                               ; preds = %59
  %64 = load %struct.uart_8250_port*, %struct.uart_8250_port** @serial8250_ports, align 8
  %65 = load i32, i32* %4, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %64, i64 %66
  %68 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @PORT_UNKNOWN, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %87

73:                                               ; preds = %63
  %74 = load %struct.uart_8250_port*, %struct.uart_8250_port** @serial8250_ports, align 8
  %75 = load i32, i32* %4, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %74, i64 %76
  %78 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %73
  %83 = load %struct.uart_8250_port*, %struct.uart_8250_port** @serial8250_ports, align 8
  %84 = load i32, i32* %4, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %83, i64 %85
  store %struct.uart_8250_port* %86, %struct.uart_8250_port** %2, align 8
  br label %116

87:                                               ; preds = %73, %63
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %4, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %4, align 4
  br label %59

91:                                               ; preds = %59
  store i32 0, i32* %4, align 4
  br label %92

92:                                               ; preds = %112, %91
  %93 = load i32, i32* %4, align 4
  %94 = load i32, i32* @nr_uarts, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %115

96:                                               ; preds = %92
  %97 = load %struct.uart_8250_port*, %struct.uart_8250_port** @serial8250_ports, align 8
  %98 = load i32, i32* %4, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %97, i64 %99
  %101 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @PORT_UNKNOWN, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %111

106:                                              ; preds = %96
  %107 = load %struct.uart_8250_port*, %struct.uart_8250_port** @serial8250_ports, align 8
  %108 = load i32, i32* %4, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %107, i64 %109
  store %struct.uart_8250_port* %110, %struct.uart_8250_port** %2, align 8
  br label %116

111:                                              ; preds = %96
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %4, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %4, align 4
  br label %92

115:                                              ; preds = %92
  store %struct.uart_8250_port* null, %struct.uart_8250_port** %2, align 8
  br label %116

116:                                              ; preds = %115, %106, %82, %53, %18
  %117 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  ret %struct.uart_8250_port* %117
}

declare dso_local i64 @uart_match_port(%struct.TYPE_2__*, %struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
