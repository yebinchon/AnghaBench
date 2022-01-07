; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_dz.c_dz_transmit_chars.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_dz.c_dz_transmit_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dz_mux = type { %struct.dz_port* }
%struct.dz_port = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i8, i32, %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.circ_buf }
%struct.circ_buf = type { i8*, i64 }

@DZ_CSR = common dso_local global i32 0, align 4
@DZ_TDR = common dso_local global i32 0, align 4
@DZ_XMIT_SIZE = common dso_local global i32 0, align 4
@DZ_WAKEUP_CHARS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dz_mux*)* @dz_transmit_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dz_transmit_chars(%struct.dz_mux* %0) #0 {
  %2 = alloca %struct.dz_mux*, align 8
  %3 = alloca %struct.dz_port*, align 8
  %4 = alloca %struct.circ_buf*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  store %struct.dz_mux* %0, %struct.dz_mux** %2, align 8
  %7 = load %struct.dz_mux*, %struct.dz_mux** %2, align 8
  %8 = getelementptr inbounds %struct.dz_mux, %struct.dz_mux* %7, i32 0, i32 0
  %9 = load %struct.dz_port*, %struct.dz_port** %8, align 8
  %10 = getelementptr inbounds %struct.dz_port, %struct.dz_port* %9, i64 0
  store %struct.dz_port* %10, %struct.dz_port** %3, align 8
  %11 = load %struct.dz_port*, %struct.dz_port** %3, align 8
  %12 = load i32, i32* @DZ_CSR, align 4
  %13 = call i32 @dz_in(%struct.dz_port* %11, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.dz_mux*, %struct.dz_mux** %2, align 8
  %15 = getelementptr inbounds %struct.dz_mux, %struct.dz_mux* %14, i32 0, i32 0
  %16 = load %struct.dz_port*, %struct.dz_port** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i64 @LINE(i32 %17)
  %19 = getelementptr inbounds %struct.dz_port, %struct.dz_port* %16, i64 %18
  store %struct.dz_port* %19, %struct.dz_port** %3, align 8
  %20 = load %struct.dz_port*, %struct.dz_port** %3, align 8
  %21 = getelementptr inbounds %struct.dz_port, %struct.dz_port* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 3
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  store %struct.circ_buf* %24, %struct.circ_buf** %4, align 8
  %25 = load %struct.dz_port*, %struct.dz_port** %3, align 8
  %26 = getelementptr inbounds %struct.dz_port, %struct.dz_port* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i8, i8* %27, align 8
  %29 = icmp ne i8 %28, 0
  br i1 %29, label %30, label %47

30:                                               ; preds = %1
  %31 = load %struct.dz_port*, %struct.dz_port** %3, align 8
  %32 = load i32, i32* @DZ_TDR, align 4
  %33 = load %struct.dz_port*, %struct.dz_port** %3, align 8
  %34 = getelementptr inbounds %struct.dz_port, %struct.dz_port* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i8, i8* %35, align 8
  %37 = call i32 @dz_out(%struct.dz_port* %31, i32 %32, i8 zeroext %36)
  %38 = load %struct.dz_port*, %struct.dz_port** %3, align 8
  %39 = getelementptr inbounds %struct.dz_port, %struct.dz_port* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 8
  %44 = load %struct.dz_port*, %struct.dz_port** %3, align 8
  %45 = getelementptr inbounds %struct.dz_port, %struct.dz_port* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  store i8 0, i8* %46, align 8
  br label %121

47:                                               ; preds = %1
  %48 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %49 = call i64 @uart_circ_empty(%struct.circ_buf* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %47
  %52 = load %struct.dz_port*, %struct.dz_port** %3, align 8
  %53 = getelementptr inbounds %struct.dz_port, %struct.dz_port* %52, i32 0, i32 0
  %54 = call i64 @uart_tx_stopped(%struct.TYPE_8__* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %51, %47
  %57 = load %struct.dz_port*, %struct.dz_port** %3, align 8
  %58 = getelementptr inbounds %struct.dz_port, %struct.dz_port* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = call i32 @spin_lock(i32* %59)
  %61 = load %struct.dz_port*, %struct.dz_port** %3, align 8
  %62 = getelementptr inbounds %struct.dz_port, %struct.dz_port* %61, i32 0, i32 0
  %63 = call i32 @dz_stop_tx(%struct.TYPE_8__* %62)
  %64 = load %struct.dz_port*, %struct.dz_port** %3, align 8
  %65 = getelementptr inbounds %struct.dz_port, %struct.dz_port* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  %67 = call i32 @spin_unlock(i32* %66)
  br label %121

68:                                               ; preds = %51
  %69 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %70 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %73 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds i8, i8* %71, i64 %74
  %76 = load i8, i8* %75, align 1
  store i8 %76, i8* %5, align 1
  %77 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %78 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = add i64 %79, 1
  %81 = load i32, i32* @DZ_XMIT_SIZE, align 4
  %82 = sub nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = and i64 %80, %83
  %85 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %86 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %85, i32 0, i32 1
  store i64 %84, i64* %86, align 8
  %87 = load %struct.dz_port*, %struct.dz_port** %3, align 8
  %88 = load i32, i32* @DZ_TDR, align 4
  %89 = load i8, i8* %5, align 1
  %90 = call i32 @dz_out(%struct.dz_port* %87, i32 %88, i8 zeroext %89)
  %91 = load %struct.dz_port*, %struct.dz_port** %3, align 8
  %92 = getelementptr inbounds %struct.dz_port, %struct.dz_port* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %94, align 8
  %97 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %98 = call i64 @uart_circ_chars_pending(%struct.circ_buf* %97)
  %99 = load i64, i64* @DZ_WAKEUP_CHARS, align 8
  %100 = icmp slt i64 %98, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %68
  %102 = load %struct.dz_port*, %struct.dz_port** %3, align 8
  %103 = getelementptr inbounds %struct.dz_port, %struct.dz_port* %102, i32 0, i32 0
  %104 = call i32 @uart_write_wakeup(%struct.TYPE_8__* %103)
  br label %105

105:                                              ; preds = %101, %68
  %106 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %107 = call i64 @uart_circ_empty(%struct.circ_buf* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %121

109:                                              ; preds = %105
  %110 = load %struct.dz_port*, %struct.dz_port** %3, align 8
  %111 = getelementptr inbounds %struct.dz_port, %struct.dz_port* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 1
  %113 = call i32 @spin_lock(i32* %112)
  %114 = load %struct.dz_port*, %struct.dz_port** %3, align 8
  %115 = getelementptr inbounds %struct.dz_port, %struct.dz_port* %114, i32 0, i32 0
  %116 = call i32 @dz_stop_tx(%struct.TYPE_8__* %115)
  %117 = load %struct.dz_port*, %struct.dz_port** %3, align 8
  %118 = getelementptr inbounds %struct.dz_port, %struct.dz_port* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 1
  %120 = call i32 @spin_unlock(i32* %119)
  br label %121

121:                                              ; preds = %30, %56, %109, %105
  ret void
}

declare dso_local i32 @dz_in(%struct.dz_port*, i32) #1

declare dso_local i64 @LINE(i32) #1

declare dso_local i32 @dz_out(%struct.dz_port*, i32, i8 zeroext) #1

declare dso_local i64 @uart_circ_empty(%struct.circ_buf*) #1

declare dso_local i64 @uart_tx_stopped(%struct.TYPE_8__*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @dz_stop_tx(%struct.TYPE_8__*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @uart_circ_chars_pending(%struct.circ_buf*) #1

declare dso_local i32 @uart_write_wakeup(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
