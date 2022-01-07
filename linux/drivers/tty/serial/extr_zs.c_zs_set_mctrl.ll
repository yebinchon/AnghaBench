; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_zs.c_zs_set_mctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_zs.c_zs_set_mctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.zs_port = type { i32*, %struct.zs_scc* }
%struct.zs_scc = type { i32, %struct.zs_port* }

@ZS_CHAN_A = common dso_local global i64 0, align 8
@TIOCM_DTR = common dso_local global i32 0, align 4
@DTR = common dso_local global i32 0, align 4
@TIOCM_RTS = common dso_local global i32 0, align 4
@RTS = common dso_local global i32 0, align 4
@R5 = common dso_local global i32 0, align 4
@TIOCM_LOOP = common dso_local global i32 0, align 4
@LOOPBAK = common dso_local global i32 0, align 4
@R14 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, i32)* @zs_set_mctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zs_set_mctrl(%struct.uart_port* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.zs_port*, align 8
  %6 = alloca %struct.zs_scc*, align 8
  %7 = alloca %struct.zs_port*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %11 = call %struct.zs_port* @to_zport(%struct.uart_port* %10)
  store %struct.zs_port* %11, %struct.zs_port** %5, align 8
  %12 = load %struct.zs_port*, %struct.zs_port** %5, align 8
  %13 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %12, i32 0, i32 1
  %14 = load %struct.zs_scc*, %struct.zs_scc** %13, align 8
  store %struct.zs_scc* %14, %struct.zs_scc** %6, align 8
  %15 = load %struct.zs_scc*, %struct.zs_scc** %6, align 8
  %16 = getelementptr inbounds %struct.zs_scc, %struct.zs_scc* %15, i32 0, i32 1
  %17 = load %struct.zs_port*, %struct.zs_port** %16, align 8
  %18 = load i64, i64* @ZS_CHAN_A, align 8
  %19 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %17, i64 %18
  store %struct.zs_port* %19, %struct.zs_port** %7, align 8
  %20 = load %struct.zs_scc*, %struct.zs_scc** %6, align 8
  %21 = getelementptr inbounds %struct.zs_scc, %struct.zs_scc* %20, i32 0, i32 0
  %22 = call i32 @spin_lock(i32* %21)
  %23 = load %struct.zs_port*, %struct.zs_port** %5, align 8
  %24 = load %struct.zs_port*, %struct.zs_port** %7, align 8
  %25 = icmp ne %struct.zs_port* %23, %24
  br i1 %25, label %26, label %79

26:                                               ; preds = %2
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @TIOCM_DTR, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %26
  %32 = load i32, i32* @DTR, align 4
  %33 = load %struct.zs_port*, %struct.zs_port** %7, align 8
  %34 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 5
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %32
  store i32 %38, i32* %36, align 4
  br label %48

39:                                               ; preds = %26
  %40 = load i32, i32* @DTR, align 4
  %41 = xor i32 %40, -1
  %42 = load %struct.zs_port*, %struct.zs_port** %7, align 8
  %43 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 5
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, %41
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %39, %31
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @TIOCM_RTS, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %48
  %54 = load i32, i32* @RTS, align 4
  %55 = load %struct.zs_port*, %struct.zs_port** %7, align 8
  %56 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 5
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %54
  store i32 %60, i32* %58, align 4
  br label %70

61:                                               ; preds = %48
  %62 = load i32, i32* @RTS, align 4
  %63 = xor i32 %62, -1
  %64 = load %struct.zs_port*, %struct.zs_port** %7, align 8
  %65 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 5
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, %63
  store i32 %69, i32* %67, align 4
  br label %70

70:                                               ; preds = %61, %53
  %71 = load %struct.zs_port*, %struct.zs_port** %7, align 8
  %72 = load i32, i32* @R5, align 4
  %73 = load %struct.zs_port*, %struct.zs_port** %7, align 8
  %74 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 5
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @write_zsreg(%struct.zs_port* %71, i32 %72, i32 %77)
  br label %79

79:                                               ; preds = %70, %2
  %80 = load %struct.zs_port*, %struct.zs_port** %5, align 8
  %81 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 14
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %8, align 4
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* %4, align 4
  %87 = load i32, i32* @TIOCM_LOOP, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %79
  %91 = load i32, i32* @LOOPBAK, align 4
  %92 = load i32, i32* %9, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %9, align 4
  br label %99

94:                                               ; preds = %79
  %95 = load i32, i32* @LOOPBAK, align 4
  %96 = xor i32 %95, -1
  %97 = load i32, i32* %9, align 4
  %98 = and i32 %97, %96
  store i32 %98, i32* %9, align 4
  br label %99

99:                                               ; preds = %94, %90
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* %8, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %117

103:                                              ; preds = %99
  %104 = load i32, i32* %9, align 4
  %105 = load %struct.zs_port*, %struct.zs_port** %5, align 8
  %106 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 14
  store i32 %104, i32* %108, align 4
  %109 = load %struct.zs_port*, %struct.zs_port** %5, align 8
  %110 = load i32, i32* @R14, align 4
  %111 = load %struct.zs_port*, %struct.zs_port** %5, align 8
  %112 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 14
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @write_zsreg(%struct.zs_port* %109, i32 %110, i32 %115)
  br label %117

117:                                              ; preds = %103, %99
  %118 = load %struct.zs_scc*, %struct.zs_scc** %6, align 8
  %119 = getelementptr inbounds %struct.zs_scc, %struct.zs_scc* %118, i32 0, i32 0
  %120 = call i32 @spin_unlock(i32* %119)
  ret void
}

declare dso_local %struct.zs_port* @to_zport(%struct.uart_port*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @write_zsreg(%struct.zs_port*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
