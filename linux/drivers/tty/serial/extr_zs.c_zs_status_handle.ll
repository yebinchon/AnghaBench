; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_zs.c_zs_status_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_zs.c_zs_status_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zs_port = type { i32*, i32, i32, i32, %struct.zs_scc*, %struct.uart_port }
%struct.zs_scc = type { i32 }
%struct.uart_port = type { %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@R0 = common dso_local global i32 0, align 4
@BRKIE = common dso_local global i32 0, align 4
@BRK_ABRT = common dso_local global i32 0, align 4
@Rx_SYS = common dso_local global i32 0, align 4
@Rx_BRK = common dso_local global i32 0, align 4
@TIOCM_CTS = common dso_local global i32 0, align 4
@TIOCM_CAR = common dso_local global i32 0, align 4
@TIOCM_RNG = common dso_local global i32 0, align 4
@TIOCM_DSR = common dso_local global i32 0, align 4
@RES_EXT_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zs_port*, %struct.zs_port*)* @zs_status_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zs_status_handle(%struct.zs_port* %0, %struct.zs_port* %1) #0 {
  %3 = alloca %struct.zs_port*, align 8
  %4 = alloca %struct.zs_port*, align 8
  %5 = alloca %struct.uart_port*, align 8
  %6 = alloca %struct.zs_scc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.zs_port* %0, %struct.zs_port** %3, align 8
  store %struct.zs_port* %1, %struct.zs_port** %4, align 8
  %10 = load %struct.zs_port*, %struct.zs_port** %3, align 8
  %11 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %10, i32 0, i32 5
  store %struct.uart_port* %11, %struct.uart_port** %5, align 8
  %12 = load %struct.zs_port*, %struct.zs_port** %3, align 8
  %13 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %12, i32 0, i32 4
  %14 = load %struct.zs_scc*, %struct.zs_scc** %13, align 8
  store %struct.zs_scc* %14, %struct.zs_scc** %6, align 8
  %15 = load %struct.zs_scc*, %struct.zs_scc** %6, align 8
  %16 = getelementptr inbounds %struct.zs_scc, %struct.zs_scc* %15, i32 0, i32 0
  %17 = call i32 @spin_lock(i32* %16)
  %18 = load %struct.zs_port*, %struct.zs_port** %3, align 8
  %19 = load i32, i32* @R0, align 4
  %20 = call i32 @read_zsreg(%struct.zs_port* %18, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load %struct.zs_port*, %struct.zs_port** %3, align 8
  %22 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 15
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @BRKIE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %63

29:                                               ; preds = %2
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @BRK_ABRT, align 4
  %32 = and i32 %30, %31
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %59

35:                                               ; preds = %29
  %36 = load %struct.zs_port*, %struct.zs_port** %3, align 8
  %37 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %59, label %40

40:                                               ; preds = %35
  %41 = load %struct.zs_scc*, %struct.zs_scc** %6, align 8
  %42 = getelementptr inbounds %struct.zs_scc, %struct.zs_scc* %41, i32 0, i32 0
  %43 = call i32 @spin_unlock(i32* %42)
  %44 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %45 = call i64 @uart_handle_break(%struct.uart_port* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %40
  %48 = load i32, i32* @Rx_SYS, align 4
  %49 = load %struct.zs_port*, %struct.zs_port** %3, align 8
  %50 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 8
  br label %55

51:                                               ; preds = %40
  %52 = load i32, i32* @Rx_BRK, align 4
  %53 = load %struct.zs_port*, %struct.zs_port** %3, align 8
  %54 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 8
  br label %55

55:                                               ; preds = %51, %47
  %56 = load %struct.zs_scc*, %struct.zs_scc** %6, align 8
  %57 = getelementptr inbounds %struct.zs_scc, %struct.zs_scc* %56, i32 0, i32 0
  %58 = call i32 @spin_lock(i32* %57)
  br label %59

59:                                               ; preds = %55, %35, %29
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.zs_port*, %struct.zs_port** %3, align 8
  %62 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 8
  br label %63

63:                                               ; preds = %59, %2
  %64 = load %struct.zs_port*, %struct.zs_port** %3, align 8
  %65 = load %struct.zs_port*, %struct.zs_port** %4, align 8
  %66 = icmp ne %struct.zs_port* %64, %65
  br i1 %66, label %67, label %134

67:                                               ; preds = %63
  %68 = load %struct.zs_port*, %struct.zs_port** %3, align 8
  %69 = call i32 @zs_raw_xor_mctrl(%struct.zs_port* %68)
  store i32 %69, i32* %7, align 4
  %70 = load %struct.zs_scc*, %struct.zs_scc** %6, align 8
  %71 = getelementptr inbounds %struct.zs_scc, %struct.zs_scc* %70, i32 0, i32 0
  %72 = call i32 @spin_unlock(i32* %71)
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @TIOCM_CTS, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %67
  %78 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %79 = load %struct.zs_port*, %struct.zs_port** %3, align 8
  %80 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @TIOCM_CTS, align 4
  %83 = and i32 %81, %82
  %84 = call i32 @uart_handle_cts_change(%struct.uart_port* %78, i32 %83)
  br label %85

85:                                               ; preds = %77, %67
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @TIOCM_CAR, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %85
  %91 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %92 = load %struct.zs_port*, %struct.zs_port** %3, align 8
  %93 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @TIOCM_CAR, align 4
  %96 = and i32 %94, %95
  %97 = call i32 @uart_handle_dcd_change(%struct.uart_port* %91, i32 %96)
  br label %98

98:                                               ; preds = %90, %85
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* @TIOCM_RNG, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %98
  %104 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %105 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %106, align 4
  br label %109

109:                                              ; preds = %103, %98
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* @TIOCM_DSR, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %109
  %115 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %116 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %117, align 8
  br label %120

120:                                              ; preds = %114, %109
  %121 = load i32, i32* %7, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %130

123:                                              ; preds = %120
  %124 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %125 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %124, i32 0, i32 0
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  %129 = call i32 @wake_up_interruptible(i32* %128)
  br label %130

130:                                              ; preds = %123, %120
  %131 = load %struct.zs_scc*, %struct.zs_scc** %6, align 8
  %132 = getelementptr inbounds %struct.zs_scc, %struct.zs_scc* %131, i32 0, i32 0
  %133 = call i32 @spin_lock(i32* %132)
  br label %134

134:                                              ; preds = %130, %63
  %135 = load %struct.zs_port*, %struct.zs_port** %3, align 8
  %136 = load i32, i32* @R0, align 4
  %137 = load i32, i32* @RES_EXT_INT, align 4
  %138 = call i32 @write_zsreg(%struct.zs_port* %135, i32 %136, i32 %137)
  %139 = load %struct.zs_scc*, %struct.zs_scc** %6, align 8
  %140 = getelementptr inbounds %struct.zs_scc, %struct.zs_scc* %139, i32 0, i32 0
  %141 = call i32 @spin_unlock(i32* %140)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @read_zsreg(%struct.zs_port*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @uart_handle_break(%struct.uart_port*) #1

declare dso_local i32 @zs_raw_xor_mctrl(%struct.zs_port*) #1

declare dso_local i32 @uart_handle_cts_change(%struct.uart_port*, i32) #1

declare dso_local i32 @uart_handle_dcd_change(%struct.uart_port*, i32) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @write_zsreg(%struct.zs_port*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
