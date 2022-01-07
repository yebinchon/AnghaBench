; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_fintek.c_probe_setup_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_fintek.c_probe_setup_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fintek_8250 = type { i32, i32, i32 }
%struct.uart_8250_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.irq_data = type { i32 }

@probe_setup_port.addr = internal constant [2 x i32] [i32 78, i32 46], align 4
@probe_setup_port.keys = internal constant [4 x i32] [i32 119, i32 160, i32 135, i32 103], align 16
@LDN = common dso_local global i32 0, align 4
@IO_ADDR1 = common dso_local global i32 0, align 4
@IO_ADDR2 = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fintek_8250*, %struct.uart_8250_port*)* @probe_setup_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @probe_setup_port(%struct.fintek_8250* %0, %struct.uart_8250_port* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fintek_8250*, align 8
  %5 = alloca %struct.uart_8250_port*, align 8
  %6 = alloca %struct.irq_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.fintek_8250* %0, %struct.fintek_8250** %4, align 8
  store %struct.uart_8250_port* %1, %struct.uart_8250_port** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %129, %2
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([2 x i32], [2 x i32]* @probe_setup_port.addr, i64 0, i64 0))
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %132

18:                                               ; preds = %14
  store i32 0, i32* %9, align 4
  br label %19

19:                                               ; preds = %125, %18
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([4 x i32], [4 x i32]* @probe_setup_port.keys, i64 0, i64 0))
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %128

23:                                               ; preds = %19
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* @probe_setup_port.addr, i64 0, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.fintek_8250*, %struct.fintek_8250** %4, align 8
  %29 = getelementptr inbounds %struct.fintek_8250, %struct.fintek_8250* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [4 x i32], [4 x i32]* @probe_setup_port.keys, i64 0, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.fintek_8250*, %struct.fintek_8250** %4, align 8
  %35 = getelementptr inbounds %struct.fintek_8250, %struct.fintek_8250* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [2 x i32], [2 x i32]* @probe_setup_port.addr, i64 0, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [4 x i32], [4 x i32]* @probe_setup_port.keys, i64 0, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @fintek_8250_enter_key(i32 %39, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %23
  br label %125

47:                                               ; preds = %23
  %48 = load %struct.fintek_8250*, %struct.fintek_8250** %4, align 8
  %49 = call i64 @fintek_8250_check_id(%struct.fintek_8250* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  %52 = load %struct.fintek_8250*, %struct.fintek_8250** %4, align 8
  %53 = call i64 @fintek_8250_get_ldn_range(%struct.fintek_8250* %52, i32* %11, i32* %12)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %51, %47
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [2 x i32], [2 x i32]* @probe_setup_port.addr, i64 0, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @fintek_8250_exit_key(i32 %59)
  br label %125

61:                                               ; preds = %51
  %62 = load i32, i32* %11, align 4
  store i32 %62, i32* %10, align 4
  br label %63

63:                                               ; preds = %116, %61
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %12, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %119

67:                                               ; preds = %63
  %68 = load %struct.fintek_8250*, %struct.fintek_8250** %4, align 8
  %69 = load i32, i32* @LDN, align 4
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @sio_write_reg(%struct.fintek_8250* %68, i32 %69, i32 %70)
  %72 = load %struct.fintek_8250*, %struct.fintek_8250** %4, align 8
  %73 = load i32, i32* @IO_ADDR1, align 4
  %74 = call i32 @sio_read_reg(%struct.fintek_8250* %72, i32 %73)
  store i32 %74, i32* %13, align 4
  %75 = load %struct.fintek_8250*, %struct.fintek_8250** %4, align 8
  %76 = load i32, i32* @IO_ADDR2, align 4
  %77 = call i32 @sio_read_reg(%struct.fintek_8250* %75, i32 %76)
  %78 = shl i32 %77, 8
  %79 = load i32, i32* %13, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %13, align 4
  %81 = load i32, i32* %13, align 4
  %82 = load %struct.uart_8250_port*, %struct.uart_8250_port** %5, align 8
  %83 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %81, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %67
  br label %116

88:                                               ; preds = %67
  %89 = load i32, i32* %10, align 4
  %90 = load %struct.fintek_8250*, %struct.fintek_8250** %4, align 8
  %91 = getelementptr inbounds %struct.fintek_8250, %struct.fintek_8250* %90, i32 0, i32 2
  store i32 %89, i32* %91, align 4
  %92 = load %struct.uart_8250_port*, %struct.uart_8250_port** %5, align 8
  %93 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call %struct.irq_data* @irq_get_irq_data(i32 %95)
  store %struct.irq_data* %96, %struct.irq_data** %6, align 8
  %97 = load %struct.irq_data*, %struct.irq_data** %6, align 8
  %98 = icmp ne %struct.irq_data* %97, null
  br i1 %98, label %99, label %102

99:                                               ; preds = %88
  %100 = load %struct.irq_data*, %struct.irq_data** %6, align 8
  %101 = call i32 @irqd_is_level_type(%struct.irq_data* %100)
  store i32 %101, i32* %7, align 4
  br label %102

102:                                              ; preds = %99, %88
  %103 = load %struct.fintek_8250*, %struct.fintek_8250** %4, align 8
  %104 = load i32, i32* %7, align 4
  %105 = call i32 @fintek_8250_set_irq_mode(%struct.fintek_8250* %103, i32 %104)
  %106 = load %struct.fintek_8250*, %struct.fintek_8250** %4, align 8
  %107 = call i32 @fintek_8250_set_max_fifo(%struct.fintek_8250* %106)
  %108 = load %struct.uart_8250_port*, %struct.uart_8250_port** %5, align 8
  %109 = load %struct.fintek_8250*, %struct.fintek_8250** %4, align 8
  %110 = call i32 @fintek_8250_goto_highspeed(%struct.uart_8250_port* %108, %struct.fintek_8250* %109)
  %111 = load i32, i32* %8, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [2 x i32], [2 x i32]* @probe_setup_port.addr, i64 0, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @fintek_8250_exit_key(i32 %114)
  store i32 0, i32* %3, align 4
  br label %135

116:                                              ; preds = %87
  %117 = load i32, i32* %10, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %10, align 4
  br label %63

119:                                              ; preds = %63
  %120 = load i32, i32* %8, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [2 x i32], [2 x i32]* @probe_setup_port.addr, i64 0, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @fintek_8250_exit_key(i32 %123)
  br label %125

125:                                              ; preds = %119, %55, %46
  %126 = load i32, i32* %9, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %9, align 4
  br label %19

128:                                              ; preds = %19
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %8, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %8, align 4
  br label %14

132:                                              ; preds = %14
  %133 = load i32, i32* @ENODEV, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %3, align 4
  br label %135

135:                                              ; preds = %132, %102
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i64 @fintek_8250_enter_key(i32, i32) #1

declare dso_local i64 @fintek_8250_check_id(%struct.fintek_8250*) #1

declare dso_local i64 @fintek_8250_get_ldn_range(%struct.fintek_8250*, i32*, i32*) #1

declare dso_local i32 @fintek_8250_exit_key(i32) #1

declare dso_local i32 @sio_write_reg(%struct.fintek_8250*, i32, i32) #1

declare dso_local i32 @sio_read_reg(%struct.fintek_8250*, i32) #1

declare dso_local %struct.irq_data* @irq_get_irq_data(i32) #1

declare dso_local i32 @irqd_is_level_type(%struct.irq_data*) #1

declare dso_local i32 @fintek_8250_set_irq_mode(%struct.fintek_8250*, i32) #1

declare dso_local i32 @fintek_8250_set_max_fifo(%struct.fintek_8250*) #1

declare dso_local i32 @fintek_8250_goto_highspeed(%struct.uart_8250_port*, %struct.fintek_8250*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
