; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_pmac_zilog.c___pmz_startup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_pmac_zilog.c___pmz_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_pmac_port = type { i32*, i32 }

@R9 = common dso_local global i64 0, align 8
@CHRA = common dso_local global i32 0, align 4
@CHRB = common dso_local global i32 0, align 4
@R1 = common dso_local global i64 0, align 8
@R0 = common dso_local global i64 0, align 8
@ERR_RES = common dso_local global i32 0, align 4
@RES_H_IUS = common dso_local global i32 0, align 4
@X16CLK = common dso_local global i32 0, align 4
@SB1 = common dso_local global i32 0, align 4
@R4 = common dso_local global i64 0, align 8
@Rx8 = common dso_local global i32 0, align 4
@R3 = common dso_local global i64 0, align 8
@Tx8 = common dso_local global i32 0, align 4
@RTS = common dso_local global i32 0, align 4
@R5 = common dso_local global i64 0, align 8
@DTR = common dso_local global i32 0, align 4
@R12 = common dso_local global i64 0, align 8
@R13 = common dso_local global i64 0, align 8
@BRENAB = common dso_local global i32 0, align 4
@R14 = common dso_local global i64 0, align 8
@BRKIE = common dso_local global i32 0, align 4
@R15 = common dso_local global i64 0, align 8
@NV = common dso_local global i32 0, align 4
@MIE = common dso_local global i32 0, align 4
@RxENABLE = common dso_local global i32 0, align 4
@TxENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_pmac_port*)* @__pmz_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__pmz_startup(%struct.uart_pmac_port* %0) #0 {
  %2 = alloca %struct.uart_pmac_port*, align 8
  %3 = alloca i32, align 4
  store %struct.uart_pmac_port* %0, %struct.uart_pmac_port** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %5 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %4, i32 0, i32 0
  %6 = call i32 @memset(i32** %5, i32 0, i32 8)
  %7 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %8 = call i32 @pmz_set_scc_power(%struct.uart_pmac_port* %7, i32 1)
  store i32 %8, i32* %3, align 4
  %9 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %10 = call i32 @pmz_fix_zero_bug_scc(%struct.uart_pmac_port* %9)
  %11 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %12 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i64, i64* @R9, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  store i32 0, i32* %15, align 4
  %16 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %17 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %18 = call i64 @ZS_IS_CHANNEL_A(%struct.uart_pmac_port* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* @CHRA, align 4
  br label %24

22:                                               ; preds = %1
  %23 = load i32, i32* @CHRB, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  %26 = call i32 @write_zsreg(%struct.uart_pmac_port* %16, i64 9, i32 %25)
  %27 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %28 = call i32 @zssync(%struct.uart_pmac_port* %27)
  %29 = call i32 @udelay(i32 10)
  %30 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %31 = call i32 @write_zsreg(%struct.uart_pmac_port* %30, i64 9, i32 0)
  %32 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %33 = call i32 @zssync(%struct.uart_pmac_port* %32)
  %34 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %35 = load i64, i64* @R1, align 8
  %36 = call i32 @write_zsreg(%struct.uart_pmac_port* %34, i64 %35, i32 0)
  %37 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %38 = load i64, i64* @R0, align 8
  %39 = load i32, i32* @ERR_RES, align 4
  %40 = call i32 @write_zsreg(%struct.uart_pmac_port* %37, i64 %38, i32 %39)
  %41 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %42 = load i64, i64* @R0, align 8
  %43 = load i32, i32* @ERR_RES, align 4
  %44 = call i32 @write_zsreg(%struct.uart_pmac_port* %41, i64 %42, i32 %43)
  %45 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %46 = load i64, i64* @R0, align 8
  %47 = load i32, i32* @RES_H_IUS, align 4
  %48 = call i32 @write_zsreg(%struct.uart_pmac_port* %45, i64 %46, i32 %47)
  %49 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %50 = load i64, i64* @R0, align 8
  %51 = load i32, i32* @RES_H_IUS, align 4
  %52 = call i32 @write_zsreg(%struct.uart_pmac_port* %49, i64 %50, i32 %51)
  %53 = load i32, i32* @X16CLK, align 4
  %54 = load i32, i32* @SB1, align 4
  %55 = or i32 %53, %54
  %56 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %57 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i64, i64* @R4, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  store i32 %55, i32* %60, align 4
  %61 = load i32, i32* @Rx8, align 4
  %62 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %63 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i64, i64* @R3, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  store i32 %61, i32* %66, align 4
  %67 = load i32, i32* @Tx8, align 4
  %68 = load i32, i32* @RTS, align 4
  %69 = or i32 %67, %68
  %70 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %71 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i64, i64* @R5, align 8
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  store i32 %69, i32* %74, align 4
  %75 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %76 = call i32 @ZS_IS_IRDA(%struct.uart_pmac_port* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %87, label %78

78:                                               ; preds = %24
  %79 = load i32, i32* @DTR, align 4
  %80 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %81 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load i64, i64* @R5, align 8
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, %79
  store i32 %86, i32* %84, align 4
  br label %87

87:                                               ; preds = %78, %24
  %88 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %89 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = load i64, i64* @R12, align 8
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  store i32 0, i32* %92, align 4
  %93 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %94 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = load i64, i64* @R13, align 8
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  store i32 0, i32* %97, align 4
  %98 = load i32, i32* @BRENAB, align 4
  %99 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %100 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = load i64, i64* @R14, align 8
  %103 = getelementptr inbounds i32, i32* %101, i64 %102
  store i32 %98, i32* %103, align 4
  %104 = load i32, i32* @BRKIE, align 4
  %105 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %106 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = load i64, i64* @R15, align 8
  %109 = getelementptr inbounds i32, i32* %107, i64 %108
  store i32 %104, i32* %109, align 4
  %110 = load i32, i32* @NV, align 4
  %111 = load i32, i32* @MIE, align 4
  %112 = or i32 %110, %111
  %113 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %114 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = load i64, i64* @R9, align 8
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = or i32 %118, %112
  store i32 %119, i32* %117, align 4
  %120 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %121 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %122 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = call i32 @pmz_load_zsregs(%struct.uart_pmac_port* %120, i32* %123)
  %125 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %126 = load i64, i64* @R3, align 8
  %127 = load i32, i32* @RxENABLE, align 4
  %128 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %129 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = load i64, i64* @R3, align 8
  %132 = getelementptr inbounds i32, i32* %130, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = or i32 %133, %127
  store i32 %134, i32* %132, align 4
  %135 = call i32 @write_zsreg(%struct.uart_pmac_port* %125, i64 %126, i32 %134)
  %136 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %137 = load i64, i64* @R5, align 8
  %138 = load i32, i32* @TxENABLE, align 4
  %139 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %140 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = load i64, i64* @R5, align 8
  %143 = getelementptr inbounds i32, i32* %141, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = or i32 %144, %138
  store i32 %145, i32* %143, align 4
  %146 = call i32 @write_zsreg(%struct.uart_pmac_port* %136, i64 %137, i32 %145)
  %147 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %148 = load i64, i64* @R0, align 8
  %149 = call i32 @read_zsreg(%struct.uart_pmac_port* %147, i64 %148)
  %150 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %151 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %150, i32 0, i32 1
  store i32 %149, i32* %151, align 8
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local i32 @memset(i32**, i32, i32) #1

declare dso_local i32 @pmz_set_scc_power(%struct.uart_pmac_port*, i32) #1

declare dso_local i32 @pmz_fix_zero_bug_scc(%struct.uart_pmac_port*) #1

declare dso_local i32 @write_zsreg(%struct.uart_pmac_port*, i64, i32) #1

declare dso_local i64 @ZS_IS_CHANNEL_A(%struct.uart_pmac_port*) #1

declare dso_local i32 @zssync(%struct.uart_pmac_port*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @ZS_IS_IRDA(%struct.uart_pmac_port*) #1

declare dso_local i32 @pmz_load_zsregs(%struct.uart_pmac_port*, i32*) #1

declare dso_local i32 @read_zsreg(%struct.uart_pmac_port*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
