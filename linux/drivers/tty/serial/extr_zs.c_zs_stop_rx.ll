; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_zs.c_zs_stop_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_zs.c_zs_stop_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.zs_port = type { i32*, %struct.zs_scc* }
%struct.zs_scc = type { i32, %struct.zs_port* }

@ZS_CHAN_A = common dso_local global i64 0, align 8
@BRKIE = common dso_local global i32 0, align 4
@RxINT_MASK = common dso_local global i32 0, align 4
@TxINT_ENAB = common dso_local global i32 0, align 4
@RxINT_DISAB = common dso_local global i32 0, align 4
@DCDIE = common dso_local global i32 0, align 4
@SYNCIE = common dso_local global i32 0, align 4
@R15 = common dso_local global i32 0, align 4
@EXT_INT_ENAB = common dso_local global i32 0, align 4
@R1 = common dso_local global i32 0, align 4
@CTSIE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @zs_stop_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zs_stop_rx(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.zs_port*, align 8
  %4 = alloca %struct.zs_scc*, align 8
  %5 = alloca %struct.zs_port*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %6 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %7 = call %struct.zs_port* @to_zport(%struct.uart_port* %6)
  store %struct.zs_port* %7, %struct.zs_port** %3, align 8
  %8 = load %struct.zs_port*, %struct.zs_port** %3, align 8
  %9 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %8, i32 0, i32 1
  %10 = load %struct.zs_scc*, %struct.zs_scc** %9, align 8
  store %struct.zs_scc* %10, %struct.zs_scc** %4, align 8
  %11 = load %struct.zs_scc*, %struct.zs_scc** %4, align 8
  %12 = getelementptr inbounds %struct.zs_scc, %struct.zs_scc* %11, i32 0, i32 1
  %13 = load %struct.zs_port*, %struct.zs_port** %12, align 8
  %14 = load i64, i64* @ZS_CHAN_A, align 8
  %15 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %13, i64 %14
  store %struct.zs_port* %15, %struct.zs_port** %5, align 8
  %16 = load %struct.zs_scc*, %struct.zs_scc** %4, align 8
  %17 = getelementptr inbounds %struct.zs_scc, %struct.zs_scc* %16, i32 0, i32 0
  %18 = call i32 @spin_lock(i32* %17)
  %19 = load i32, i32* @BRKIE, align 4
  %20 = xor i32 %19, -1
  %21 = load %struct.zs_port*, %struct.zs_port** %3, align 8
  %22 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 15
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, %20
  store i32 %26, i32* %24, align 4
  %27 = load i32, i32* @RxINT_MASK, align 4
  %28 = load i32, i32* @TxINT_ENAB, align 4
  %29 = or i32 %27, %28
  %30 = xor i32 %29, -1
  %31 = load %struct.zs_port*, %struct.zs_port** %3, align 8
  %32 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, %30
  store i32 %36, i32* %34, align 4
  %37 = load i32, i32* @RxINT_DISAB, align 4
  %38 = load %struct.zs_port*, %struct.zs_port** %3, align 8
  %39 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %37
  store i32 %43, i32* %41, align 4
  %44 = load %struct.zs_port*, %struct.zs_port** %3, align 8
  %45 = load %struct.zs_port*, %struct.zs_port** %5, align 8
  %46 = icmp ne %struct.zs_port* %44, %45
  br i1 %46, label %47, label %110

47:                                               ; preds = %1
  %48 = load i32, i32* @DCDIE, align 4
  %49 = load i32, i32* @SYNCIE, align 4
  %50 = or i32 %48, %49
  %51 = xor i32 %50, -1
  %52 = load %struct.zs_port*, %struct.zs_port** %5, align 8
  %53 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 15
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, %51
  store i32 %57, i32* %55, align 4
  %58 = load %struct.zs_port*, %struct.zs_port** %5, align 8
  %59 = load i32, i32* @R15, align 4
  %60 = load %struct.zs_port*, %struct.zs_port** %5, align 8
  %61 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 15
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @write_zsreg(%struct.zs_port* %58, i32 %59, i32 %64)
  %66 = load %struct.zs_port*, %struct.zs_port** %5, align 8
  %67 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 15
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @BRKIE, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %91, label %74

74:                                               ; preds = %47
  %75 = load i32, i32* @EXT_INT_ENAB, align 4
  %76 = xor i32 %75, -1
  %77 = load %struct.zs_port*, %struct.zs_port** %5, align 8
  %78 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 1
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, %76
  store i32 %82, i32* %80, align 4
  %83 = load %struct.zs_port*, %struct.zs_port** %5, align 8
  %84 = load i32, i32* @R1, align 4
  %85 = load %struct.zs_port*, %struct.zs_port** %5, align 8
  %86 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @write_zsreg(%struct.zs_port* %83, i32 %84, i32 %89)
  br label %91

91:                                               ; preds = %74, %47
  %92 = load i32, i32* @DCDIE, align 4
  %93 = load i32, i32* @CTSIE, align 4
  %94 = or i32 %92, %93
  %95 = xor i32 %94, -1
  %96 = load %struct.zs_port*, %struct.zs_port** %3, align 8
  %97 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 15
  %100 = load i32, i32* %99, align 4
  %101 = and i32 %100, %95
  store i32 %101, i32* %99, align 4
  %102 = load i32, i32* @EXT_INT_ENAB, align 4
  %103 = xor i32 %102, -1
  %104 = load %struct.zs_port*, %struct.zs_port** %3, align 8
  %105 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 1
  %108 = load i32, i32* %107, align 4
  %109 = and i32 %108, %103
  store i32 %109, i32* %107, align 4
  br label %131

110:                                              ; preds = %1
  %111 = load %struct.zs_port*, %struct.zs_port** %3, align 8
  %112 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 15
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @DCDIE, align 4
  %117 = load i32, i32* @SYNCIE, align 4
  %118 = or i32 %116, %117
  %119 = and i32 %115, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %130, label %121

121:                                              ; preds = %110
  %122 = load i32, i32* @EXT_INT_ENAB, align 4
  %123 = xor i32 %122, -1
  %124 = load %struct.zs_port*, %struct.zs_port** %3, align 8
  %125 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 1
  %128 = load i32, i32* %127, align 4
  %129 = and i32 %128, %123
  store i32 %129, i32* %127, align 4
  br label %130

130:                                              ; preds = %121, %110
  br label %131

131:                                              ; preds = %130, %91
  %132 = load %struct.zs_port*, %struct.zs_port** %3, align 8
  %133 = load i32, i32* @R15, align 4
  %134 = load %struct.zs_port*, %struct.zs_port** %3, align 8
  %135 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 15
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @write_zsreg(%struct.zs_port* %132, i32 %133, i32 %138)
  %140 = load %struct.zs_port*, %struct.zs_port** %3, align 8
  %141 = load i32, i32* @R1, align 4
  %142 = load %struct.zs_port*, %struct.zs_port** %3, align 8
  %143 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %142, i32 0, i32 0
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 1
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @write_zsreg(%struct.zs_port* %140, i32 %141, i32 %146)
  %148 = load %struct.zs_scc*, %struct.zs_scc** %4, align 8
  %149 = getelementptr inbounds %struct.zs_scc, %struct.zs_scc* %148, i32 0, i32 0
  %150 = call i32 @spin_unlock(i32* %149)
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
