; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sh-sci.c_scif_set_rtrg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sh-sci.c_scif_set_rtrg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32 }
%struct.TYPE_2__ = type { i64 }

@HSRTRGR = common dso_local global i32 0, align 4
@SCFCR_RTRG0 = common dso_local global i32 0, align 4
@SCFCR_RTRG1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"unknown FIFO configuration\00", align 1
@SCFCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*, i32)* @scif_set_rtrg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scif_set_rtrg(%struct.uart_port* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp slt i32 %7, 1
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 1, i32* %5, align 4
  br label %10

10:                                               ; preds = %9, %2
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %13 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp sge i32 %11, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %18 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %5, align 4
  br label %20

20:                                               ; preds = %16, %10
  %21 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %22 = load i32, i32* @HSRTRGR, align 4
  %23 = call %struct.TYPE_2__* @sci_getreg(%struct.uart_port* %21, i32 %22)
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %20
  %28 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %29 = load i32, i32* @HSRTRGR, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @serial_port_out(%struct.uart_port* %28, i32 %29, i32 %30)
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %3, align 4
  br label %96

33:                                               ; preds = %20
  %34 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %35 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %79 [
    i32 130, label %37
    i32 129, label %58
    i32 128, label %58
  ]

37:                                               ; preds = %33
  %38 = load i32, i32* %5, align 4
  %39 = icmp slt i32 %38, 4
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 0, i32* %6, align 4
  store i32 1, i32* %5, align 4
  br label %57

41:                                               ; preds = %37
  %42 = load i32, i32* %5, align 4
  %43 = icmp slt i32 %42, 8
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i32, i32* @SCFCR_RTRG0, align 4
  store i32 %45, i32* %6, align 4
  store i32 4, i32* %5, align 4
  br label %56

46:                                               ; preds = %41
  %47 = load i32, i32* %5, align 4
  %48 = icmp slt i32 %47, 14
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = load i32, i32* @SCFCR_RTRG1, align 4
  store i32 %50, i32* %6, align 4
  store i32 8, i32* %5, align 4
  br label %55

51:                                               ; preds = %46
  %52 = load i32, i32* @SCFCR_RTRG0, align 4
  %53 = load i32, i32* @SCFCR_RTRG1, align 4
  %54 = or i32 %52, %53
  store i32 %54, i32* %6, align 4
  store i32 14, i32* %5, align 4
  br label %55

55:                                               ; preds = %51, %49
  br label %56

56:                                               ; preds = %55, %44
  br label %57

57:                                               ; preds = %56, %40
  br label %81

58:                                               ; preds = %33, %33
  %59 = load i32, i32* %5, align 4
  %60 = icmp slt i32 %59, 16
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  store i32 0, i32* %6, align 4
  store i32 1, i32* %5, align 4
  br label %78

62:                                               ; preds = %58
  %63 = load i32, i32* %5, align 4
  %64 = icmp slt i32 %63, 32
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = load i32, i32* @SCFCR_RTRG0, align 4
  store i32 %66, i32* %6, align 4
  store i32 16, i32* %5, align 4
  br label %77

67:                                               ; preds = %62
  %68 = load i32, i32* %5, align 4
  %69 = icmp slt i32 %68, 48
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = load i32, i32* @SCFCR_RTRG1, align 4
  store i32 %71, i32* %6, align 4
  store i32 32, i32* %5, align 4
  br label %76

72:                                               ; preds = %67
  %73 = load i32, i32* @SCFCR_RTRG0, align 4
  %74 = load i32, i32* @SCFCR_RTRG1, align 4
  %75 = or i32 %73, %74
  store i32 %75, i32* %6, align 4
  store i32 48, i32* %5, align 4
  br label %76

76:                                               ; preds = %72, %70
  br label %77

77:                                               ; preds = %76, %65
  br label %78

78:                                               ; preds = %77, %61
  br label %81

79:                                               ; preds = %33
  %80 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %96

81:                                               ; preds = %78, %57
  %82 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %83 = load i32, i32* @SCFCR, align 4
  %84 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %85 = load i32, i32* @SCFCR, align 4
  %86 = call i32 @serial_port_in(%struct.uart_port* %84, i32 %85)
  %87 = load i32, i32* @SCFCR_RTRG1, align 4
  %88 = load i32, i32* @SCFCR_RTRG0, align 4
  %89 = or i32 %87, %88
  %90 = xor i32 %89, -1
  %91 = and i32 %86, %90
  %92 = load i32, i32* %6, align 4
  %93 = or i32 %91, %92
  %94 = call i32 @serial_port_out(%struct.uart_port* %82, i32 %83, i32 %93)
  %95 = load i32, i32* %5, align 4
  store i32 %95, i32* %3, align 4
  br label %96

96:                                               ; preds = %81, %79, %27
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local %struct.TYPE_2__* @sci_getreg(%struct.uart_port*, i32) #1

declare dso_local i32 @serial_port_out(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @serial_port_in(%struct.uart_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
