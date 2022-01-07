; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_pmac_zilog.c_pmz_load_zsregs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_pmac_zilog.c_pmz_load_zsregs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_pmac_port = type { i32 }

@R1 = common dso_local global i64 0, align 8
@ALL_SNT = common dso_local global i8 0, align 1
@RxINT_MASK = common dso_local global i32 0, align 4
@TxINT_ENAB = common dso_local global i32 0, align 4
@EXT_INT_ENAB = common dso_local global i32 0, align 4
@R4 = common dso_local global i64 0, align 8
@R10 = common dso_local global i64 0, align 8
@R3 = common dso_local global i64 0, align 8
@RxENABLE = common dso_local global i32 0, align 4
@R5 = common dso_local global i64 0, align 8
@TxENABLE = common dso_local global i32 0, align 4
@R15 = common dso_local global i64 0, align 8
@EN85C30 = common dso_local global i32 0, align 4
@R7 = common dso_local global i64 0, align 8
@R7P = common dso_local global i64 0, align 8
@R6 = common dso_local global i64 0, align 8
@R14 = common dso_local global i64 0, align 8
@BRENAB = common dso_local global i32 0, align 4
@R11 = common dso_local global i64 0, align 8
@R12 = common dso_local global i64 0, align 8
@R13 = common dso_local global i64 0, align 8
@R0 = common dso_local global i64 0, align 8
@RES_EXT_INT = common dso_local global i32 0, align 4
@R9 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_pmac_port*, i32*)* @pmz_load_zsregs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmz_load_zsregs(%struct.uart_pmac_port* %0, i32* %1) #0 {
  %3 = alloca %struct.uart_pmac_port*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  store %struct.uart_pmac_port* %0, %struct.uart_pmac_port** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %23, %2
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 1000
  br i1 %9, label %10, label %26

10:                                               ; preds = %7
  %11 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %12 = load i64, i64* @R1, align 8
  %13 = call zeroext i8 @read_zsreg(%struct.uart_pmac_port* %11, i64 %12)
  store i8 %13, i8* %6, align 1
  %14 = load i8, i8* %6, align 1
  %15 = zext i8 %14 to i32
  %16 = load i8, i8* @ALL_SNT, align 1
  %17 = zext i8 %16 to i32
  %18 = and i32 %15, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %10
  br label %26

21:                                               ; preds = %10
  %22 = call i32 @udelay(i32 100)
  br label %23

23:                                               ; preds = %21
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %5, align 4
  br label %7

26:                                               ; preds = %20, %7
  %27 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %28 = call i32 @ZS_CLEARERR(%struct.uart_pmac_port* %27)
  %29 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %30 = call i32 @zssync(%struct.uart_pmac_port* %29)
  %31 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %32 = call i32 @ZS_CLEARFIFO(%struct.uart_pmac_port* %31)
  %33 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %34 = call i32 @zssync(%struct.uart_pmac_port* %33)
  %35 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %36 = call i32 @ZS_CLEARERR(%struct.uart_pmac_port* %35)
  %37 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %38 = load i64, i64* @R1, align 8
  %39 = load i32*, i32** %4, align 8
  %40 = load i64, i64* @R1, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @RxINT_MASK, align 4
  %44 = load i32, i32* @TxINT_ENAB, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @EXT_INT_ENAB, align 4
  %47 = or i32 %45, %46
  %48 = xor i32 %47, -1
  %49 = and i32 %42, %48
  %50 = call i32 @write_zsreg(%struct.uart_pmac_port* %37, i64 %38, i32 %49)
  %51 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %52 = load i64, i64* @R4, align 8
  %53 = load i32*, i32** %4, align 8
  %54 = load i64, i64* @R4, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @write_zsreg(%struct.uart_pmac_port* %51, i64 %52, i32 %56)
  %58 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %59 = load i64, i64* @R10, align 8
  %60 = load i32*, i32** %4, align 8
  %61 = load i64, i64* @R10, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @write_zsreg(%struct.uart_pmac_port* %58, i64 %59, i32 %63)
  %65 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %66 = load i64, i64* @R3, align 8
  %67 = load i32*, i32** %4, align 8
  %68 = load i64, i64* @R3, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @RxENABLE, align 4
  %72 = xor i32 %71, -1
  %73 = and i32 %70, %72
  %74 = call i32 @write_zsreg(%struct.uart_pmac_port* %65, i64 %66, i32 %73)
  %75 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %76 = load i64, i64* @R5, align 8
  %77 = load i32*, i32** %4, align 8
  %78 = load i64, i64* @R5, align 8
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @TxENABLE, align 4
  %82 = xor i32 %81, -1
  %83 = and i32 %80, %82
  %84 = call i32 @write_zsreg(%struct.uart_pmac_port* %75, i64 %76, i32 %83)
  %85 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %86 = load i64, i64* @R15, align 8
  %87 = load i32*, i32** %4, align 8
  %88 = load i64, i64* @R15, align 8
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @EN85C30, align 4
  %92 = or i32 %90, %91
  %93 = call i32 @write_zsreg(%struct.uart_pmac_port* %85, i64 %86, i32 %92)
  %94 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %95 = load i64, i64* @R7, align 8
  %96 = load i32*, i32** %4, align 8
  %97 = load i64, i64* @R7P, align 8
  %98 = getelementptr inbounds i32, i32* %96, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @write_zsreg(%struct.uart_pmac_port* %94, i64 %95, i32 %99)
  %101 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %102 = load i64, i64* @R15, align 8
  %103 = load i32*, i32** %4, align 8
  %104 = load i64, i64* @R15, align 8
  %105 = getelementptr inbounds i32, i32* %103, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @EN85C30, align 4
  %108 = xor i32 %107, -1
  %109 = and i32 %106, %108
  %110 = call i32 @write_zsreg(%struct.uart_pmac_port* %101, i64 %102, i32 %109)
  %111 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %112 = load i64, i64* @R6, align 8
  %113 = load i32*, i32** %4, align 8
  %114 = load i64, i64* @R6, align 8
  %115 = getelementptr inbounds i32, i32* %113, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @write_zsreg(%struct.uart_pmac_port* %111, i64 %112, i32 %116)
  %118 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %119 = load i64, i64* @R7, align 8
  %120 = load i32*, i32** %4, align 8
  %121 = load i64, i64* @R7, align 8
  %122 = getelementptr inbounds i32, i32* %120, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @write_zsreg(%struct.uart_pmac_port* %118, i64 %119, i32 %123)
  %125 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %126 = load i64, i64* @R14, align 8
  %127 = load i32*, i32** %4, align 8
  %128 = load i64, i64* @R14, align 8
  %129 = getelementptr inbounds i32, i32* %127, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @BRENAB, align 4
  %132 = xor i32 %131, -1
  %133 = and i32 %130, %132
  %134 = call i32 @write_zsreg(%struct.uart_pmac_port* %125, i64 %126, i32 %133)
  %135 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %136 = load i64, i64* @R11, align 8
  %137 = load i32*, i32** %4, align 8
  %138 = load i64, i64* @R11, align 8
  %139 = getelementptr inbounds i32, i32* %137, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @write_zsreg(%struct.uart_pmac_port* %135, i64 %136, i32 %140)
  %142 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %143 = load i64, i64* @R12, align 8
  %144 = load i32*, i32** %4, align 8
  %145 = load i64, i64* @R12, align 8
  %146 = getelementptr inbounds i32, i32* %144, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @write_zsreg(%struct.uart_pmac_port* %142, i64 %143, i32 %147)
  %149 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %150 = load i64, i64* @R13, align 8
  %151 = load i32*, i32** %4, align 8
  %152 = load i64, i64* @R13, align 8
  %153 = getelementptr inbounds i32, i32* %151, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @write_zsreg(%struct.uart_pmac_port* %149, i64 %150, i32 %154)
  %156 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %157 = load i64, i64* @R14, align 8
  %158 = load i32*, i32** %4, align 8
  %159 = load i64, i64* @R14, align 8
  %160 = getelementptr inbounds i32, i32* %158, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @write_zsreg(%struct.uart_pmac_port* %156, i64 %157, i32 %161)
  %163 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %164 = load i64, i64* @R0, align 8
  %165 = load i32, i32* @RES_EXT_INT, align 4
  %166 = call i32 @write_zsreg(%struct.uart_pmac_port* %163, i64 %164, i32 %165)
  %167 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %168 = load i64, i64* @R0, align 8
  %169 = load i32, i32* @RES_EXT_INT, align 4
  %170 = call i32 @write_zsreg(%struct.uart_pmac_port* %167, i64 %168, i32 %169)
  %171 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %172 = load i64, i64* @R3, align 8
  %173 = load i32*, i32** %4, align 8
  %174 = load i64, i64* @R3, align 8
  %175 = getelementptr inbounds i32, i32* %173, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @write_zsreg(%struct.uart_pmac_port* %171, i64 %172, i32 %176)
  %178 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %179 = load i64, i64* @R5, align 8
  %180 = load i32*, i32** %4, align 8
  %181 = load i64, i64* @R5, align 8
  %182 = getelementptr inbounds i32, i32* %180, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @write_zsreg(%struct.uart_pmac_port* %178, i64 %179, i32 %183)
  %185 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %186 = load i64, i64* @R1, align 8
  %187 = load i32*, i32** %4, align 8
  %188 = load i64, i64* @R1, align 8
  %189 = getelementptr inbounds i32, i32* %187, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @write_zsreg(%struct.uart_pmac_port* %185, i64 %186, i32 %190)
  %192 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %193 = load i64, i64* @R9, align 8
  %194 = load i32*, i32** %4, align 8
  %195 = load i64, i64* @R9, align 8
  %196 = getelementptr inbounds i32, i32* %194, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @write_zsreg(%struct.uart_pmac_port* %192, i64 %193, i32 %197)
  ret void
}

declare dso_local zeroext i8 @read_zsreg(%struct.uart_pmac_port*, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @ZS_CLEARERR(%struct.uart_pmac_port*) #1

declare dso_local i32 @zssync(%struct.uart_pmac_port*) #1

declare dso_local i32 @ZS_CLEARFIFO(%struct.uart_pmac_port*) #1

declare dso_local i32 @write_zsreg(%struct.uart_pmac_port*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
