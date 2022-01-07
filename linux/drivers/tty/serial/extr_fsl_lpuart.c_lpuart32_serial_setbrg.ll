; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_fsl_lpuart.c_lpuart32_serial_setbrg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_fsl_lpuart.c_lpuart32_serial_setbrg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpuart_port = type { %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [52 x i8] c"unacceptable baud rate difference of more than 3%%\0A\00", align 1
@UARTBAUD = common dso_local global i32 0, align 4
@UARTBAUD_BOTHEDGE = common dso_local global i32 0, align 4
@UARTBAUD_OSR_MASK = common dso_local global i32 0, align 4
@UARTBAUD_OSR_SHIFT = common dso_local global i32 0, align 4
@UARTBAUD_SBR_MASK = common dso_local global i32 0, align 4
@UARTBAUD_RDMAE = common dso_local global i32 0, align 4
@UARTBAUD_TDMAE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpuart_port*, i32)* @lpuart32_serial_setbrg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpuart32_serial_setbrg(%struct.lpuart_port* %0, i32 %1) #0 {
  %3 = alloca %struct.lpuart_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.lpuart_port* %0, %struct.lpuart_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.lpuart_port*, %struct.lpuart_port** %3, align 8
  %14 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %7, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  store i32 4, i32* %8, align 4
  br label %18

18:                                               ; preds = %68, %2
  %19 = load i32, i32* %8, align 4
  %20 = icmp sle i32 %19, 32
  br i1 %20, label %21, label %71

21:                                               ; preds = %18
  %22 = load i32, i32* %12, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %8, align 4
  %25 = mul i32 %23, %24
  %26 = udiv i32 %22, %25
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  store i32 1, i32* %9, align 4
  br label %30

30:                                               ; preds = %29, %21
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %9, align 4
  %34 = mul nsw i32 %32, %33
  %35 = sdiv i32 %31, %34
  %36 = load i32, i32* %4, align 4
  %37 = sub i32 %35, %36
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %9, align 4
  %41 = add nsw i32 %40, 1
  %42 = mul nsw i32 %39, %41
  %43 = sdiv i32 %38, %42
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* %11, align 4
  %47 = sub i32 %45, %46
  %48 = icmp ugt i32 %44, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %30
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* %11, align 4
  %52 = sub i32 %50, %51
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %49, %30
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp sle i32 %56, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %55
  %60 = load i32, i32* %10, align 4
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %9, align 4
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %59
  br label %71

66:                                               ; preds = %59
  br label %67

67:                                               ; preds = %66, %55
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %8, align 4
  br label %18

71:                                               ; preds = %65, %18
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %4, align 4
  %74 = udiv i32 %73, 100
  %75 = mul i32 %74, 3
  %76 = icmp ugt i32 %72, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %71
  %78 = load %struct.lpuart_port*, %struct.lpuart_port** %3, align 8
  %79 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @dev_warn(i32 %81, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  br label %83

83:                                               ; preds = %77, %71
  %84 = load %struct.lpuart_port*, %struct.lpuart_port** %3, align 8
  %85 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %84, i32 0, i32 0
  %86 = load i32, i32* @UARTBAUD, align 4
  %87 = call i32 @lpuart32_read(%struct.TYPE_3__* %85, i32 %86)
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %6, align 4
  %89 = icmp sgt i32 %88, 3
  br i1 %89, label %90, label %97

90:                                               ; preds = %83
  %91 = load i32, i32* %6, align 4
  %92 = icmp slt i32 %91, 8
  br i1 %92, label %93, label %97

93:                                               ; preds = %90
  %94 = load i32, i32* @UARTBAUD_BOTHEDGE, align 4
  %95 = load i32, i32* %11, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %11, align 4
  br label %97

97:                                               ; preds = %93, %90, %83
  %98 = load i32, i32* @UARTBAUD_OSR_MASK, align 4
  %99 = load i32, i32* @UARTBAUD_OSR_SHIFT, align 4
  %100 = shl i32 %98, %99
  %101 = xor i32 %100, -1
  %102 = load i32, i32* %11, align 4
  %103 = and i32 %102, %101
  store i32 %103, i32* %11, align 4
  %104 = load i32, i32* %6, align 4
  %105 = sub nsw i32 %104, 1
  %106 = load i32, i32* @UARTBAUD_OSR_MASK, align 4
  %107 = and i32 %105, %106
  %108 = load i32, i32* @UARTBAUD_OSR_SHIFT, align 4
  %109 = shl i32 %107, %108
  %110 = load i32, i32* %11, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %11, align 4
  %112 = load i32, i32* @UARTBAUD_SBR_MASK, align 4
  %113 = xor i32 %112, -1
  %114 = load i32, i32* %11, align 4
  %115 = and i32 %114, %113
  store i32 %115, i32* %11, align 4
  %116 = load i32, i32* %5, align 4
  %117 = load i32, i32* @UARTBAUD_SBR_MASK, align 4
  %118 = and i32 %116, %117
  %119 = load i32, i32* %11, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %11, align 4
  %121 = load %struct.lpuart_port*, %struct.lpuart_port** %3, align 8
  %122 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %130, label %125

125:                                              ; preds = %97
  %126 = load i32, i32* @UARTBAUD_RDMAE, align 4
  %127 = xor i32 %126, -1
  %128 = load i32, i32* %11, align 4
  %129 = and i32 %128, %127
  store i32 %129, i32* %11, align 4
  br label %130

130:                                              ; preds = %125, %97
  %131 = load %struct.lpuart_port*, %struct.lpuart_port** %3, align 8
  %132 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %140, label %135

135:                                              ; preds = %130
  %136 = load i32, i32* @UARTBAUD_TDMAE, align 4
  %137 = xor i32 %136, -1
  %138 = load i32, i32* %11, align 4
  %139 = and i32 %138, %137
  store i32 %139, i32* %11, align 4
  br label %140

140:                                              ; preds = %135, %130
  %141 = load %struct.lpuart_port*, %struct.lpuart_port** %3, align 8
  %142 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %141, i32 0, i32 0
  %143 = load i32, i32* %11, align 4
  %144 = load i32, i32* @UARTBAUD, align 4
  %145 = call i32 @lpuart32_write(%struct.TYPE_3__* %142, i32 %143, i32 %144)
  ret void
}

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @lpuart32_read(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @lpuart32_write(%struct.TYPE_3__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
