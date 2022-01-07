; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_ucc_uart.c_qe_uart_initbd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_ucc_uart.c_qe_uart_initbd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_qe_port = type { i32, i32, i32, %struct.qe_bd*, i32, %struct.qe_bd*, i8*, %struct.qe_bd*, %struct.qe_bd* }
%struct.qe_bd = type { i32, i32, i32 }

@BD_SC_EMPTY = common dso_local global i32 0, align 4
@BD_SC_INTRPT = common dso_local global i32 0, align 4
@BD_SC_WRAP = common dso_local global i32 0, align 4
@BD_SC_P = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_qe_port*)* @qe_uart_initbd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qe_uart_initbd(%struct.uart_qe_port* %0) #0 {
  %2 = alloca %struct.uart_qe_port*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.qe_bd*, align 8
  store %struct.uart_qe_port* %0, %struct.uart_qe_port** %2, align 8
  %6 = load %struct.uart_qe_port*, %struct.uart_qe_port** %2, align 8
  %7 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %6, i32 0, i32 6
  %8 = load i8*, i8** %7, align 8
  store i8* %8, i8** %4, align 8
  %9 = load %struct.uart_qe_port*, %struct.uart_qe_port** %2, align 8
  %10 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %9, i32 0, i32 7
  %11 = load %struct.qe_bd*, %struct.qe_bd** %10, align 8
  store %struct.qe_bd* %11, %struct.qe_bd** %5, align 8
  %12 = load %struct.uart_qe_port*, %struct.uart_qe_port** %2, align 8
  %13 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %12, i32 0, i32 7
  %14 = load %struct.qe_bd*, %struct.qe_bd** %13, align 8
  %15 = load %struct.uart_qe_port*, %struct.uart_qe_port** %2, align 8
  %16 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %15, i32 0, i32 8
  store %struct.qe_bd* %14, %struct.qe_bd** %16, align 8
  store i32 0, i32* %3, align 4
  br label %17

17:                                               ; preds = %48, %1
  %18 = load i32, i32* %3, align 4
  %19 = load %struct.uart_qe_port*, %struct.uart_qe_port** %2, align 8
  %20 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sub nsw i32 %21, 1
  %23 = icmp slt i32 %18, %22
  br i1 %23, label %24, label %51

24:                                               ; preds = %17
  %25 = load %struct.qe_bd*, %struct.qe_bd** %5, align 8
  %26 = getelementptr inbounds %struct.qe_bd, %struct.qe_bd* %25, i32 0, i32 2
  %27 = load i32, i32* @BD_SC_EMPTY, align 4
  %28 = load i32, i32* @BD_SC_INTRPT, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @out_be16(i32* %26, i32 %29)
  %31 = load %struct.qe_bd*, %struct.qe_bd** %5, align 8
  %32 = getelementptr inbounds %struct.qe_bd, %struct.qe_bd* %31, i32 0, i32 1
  %33 = load i8*, i8** %4, align 8
  %34 = load %struct.uart_qe_port*, %struct.uart_qe_port** %2, align 8
  %35 = call i32 @cpu2qe_addr(i8* %33, %struct.uart_qe_port* %34)
  %36 = call i32 @out_be32(i32* %32, i32 %35)
  %37 = load %struct.qe_bd*, %struct.qe_bd** %5, align 8
  %38 = getelementptr inbounds %struct.qe_bd, %struct.qe_bd* %37, i32 0, i32 0
  %39 = call i32 @out_be16(i32* %38, i32 0)
  %40 = load %struct.uart_qe_port*, %struct.uart_qe_port** %2, align 8
  %41 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i8*, i8** %4, align 8
  %44 = sext i32 %42 to i64
  %45 = getelementptr i8, i8* %43, i64 %44
  store i8* %45, i8** %4, align 8
  %46 = load %struct.qe_bd*, %struct.qe_bd** %5, align 8
  %47 = getelementptr inbounds %struct.qe_bd, %struct.qe_bd* %46, i32 1
  store %struct.qe_bd* %47, %struct.qe_bd** %5, align 8
  br label %48

48:                                               ; preds = %24
  %49 = load i32, i32* %3, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %3, align 4
  br label %17

51:                                               ; preds = %17
  %52 = load %struct.qe_bd*, %struct.qe_bd** %5, align 8
  %53 = getelementptr inbounds %struct.qe_bd, %struct.qe_bd* %52, i32 0, i32 2
  %54 = load i32, i32* @BD_SC_WRAP, align 4
  %55 = load i32, i32* @BD_SC_EMPTY, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @BD_SC_INTRPT, align 4
  %58 = or i32 %56, %57
  %59 = call i32 @out_be16(i32* %53, i32 %58)
  %60 = load %struct.qe_bd*, %struct.qe_bd** %5, align 8
  %61 = getelementptr inbounds %struct.qe_bd, %struct.qe_bd* %60, i32 0, i32 1
  %62 = load i8*, i8** %4, align 8
  %63 = load %struct.uart_qe_port*, %struct.uart_qe_port** %2, align 8
  %64 = call i32 @cpu2qe_addr(i8* %62, %struct.uart_qe_port* %63)
  %65 = call i32 @out_be32(i32* %61, i32 %64)
  %66 = load %struct.qe_bd*, %struct.qe_bd** %5, align 8
  %67 = getelementptr inbounds %struct.qe_bd, %struct.qe_bd* %66, i32 0, i32 0
  %68 = call i32 @out_be16(i32* %67, i32 0)
  %69 = load %struct.uart_qe_port*, %struct.uart_qe_port** %2, align 8
  %70 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %69, i32 0, i32 6
  %71 = load i8*, i8** %70, align 8
  %72 = load %struct.uart_qe_port*, %struct.uart_qe_port** %2, align 8
  %73 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.uart_qe_port*, %struct.uart_qe_port** %2, align 8
  %76 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = mul nsw i32 %74, %77
  %79 = call i32 @L1_CACHE_ALIGN(i32 %78)
  %80 = sext i32 %79 to i64
  %81 = getelementptr i8, i8* %71, i64 %80
  store i8* %81, i8** %4, align 8
  %82 = load %struct.uart_qe_port*, %struct.uart_qe_port** %2, align 8
  %83 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %82, i32 0, i32 5
  %84 = load %struct.qe_bd*, %struct.qe_bd** %83, align 8
  %85 = load %struct.uart_qe_port*, %struct.uart_qe_port** %2, align 8
  %86 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %85, i32 0, i32 3
  store %struct.qe_bd* %84, %struct.qe_bd** %86, align 8
  %87 = load %struct.uart_qe_port*, %struct.uart_qe_port** %2, align 8
  %88 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %87, i32 0, i32 5
  %89 = load %struct.qe_bd*, %struct.qe_bd** %88, align 8
  store %struct.qe_bd* %89, %struct.qe_bd** %5, align 8
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %119, %51
  %91 = load i32, i32* %3, align 4
  %92 = load %struct.uart_qe_port*, %struct.uart_qe_port** %2, align 8
  %93 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = sub nsw i32 %94, 1
  %96 = icmp slt i32 %91, %95
  br i1 %96, label %97, label %122

97:                                               ; preds = %90
  %98 = load %struct.qe_bd*, %struct.qe_bd** %5, align 8
  %99 = getelementptr inbounds %struct.qe_bd, %struct.qe_bd* %98, i32 0, i32 2
  %100 = load i32, i32* @BD_SC_INTRPT, align 4
  %101 = call i32 @out_be16(i32* %99, i32 %100)
  %102 = load %struct.qe_bd*, %struct.qe_bd** %5, align 8
  %103 = getelementptr inbounds %struct.qe_bd, %struct.qe_bd* %102, i32 0, i32 1
  %104 = load i8*, i8** %4, align 8
  %105 = load %struct.uart_qe_port*, %struct.uart_qe_port** %2, align 8
  %106 = call i32 @cpu2qe_addr(i8* %104, %struct.uart_qe_port* %105)
  %107 = call i32 @out_be32(i32* %103, i32 %106)
  %108 = load %struct.qe_bd*, %struct.qe_bd** %5, align 8
  %109 = getelementptr inbounds %struct.qe_bd, %struct.qe_bd* %108, i32 0, i32 0
  %110 = call i32 @out_be16(i32* %109, i32 0)
  %111 = load %struct.uart_qe_port*, %struct.uart_qe_port** %2, align 8
  %112 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 8
  %114 = load i8*, i8** %4, align 8
  %115 = sext i32 %113 to i64
  %116 = getelementptr i8, i8* %114, i64 %115
  store i8* %116, i8** %4, align 8
  %117 = load %struct.qe_bd*, %struct.qe_bd** %5, align 8
  %118 = getelementptr inbounds %struct.qe_bd, %struct.qe_bd* %117, i32 1
  store %struct.qe_bd* %118, %struct.qe_bd** %5, align 8
  br label %119

119:                                              ; preds = %97
  %120 = load i32, i32* %3, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %3, align 4
  br label %90

122:                                              ; preds = %90
  %123 = load %struct.qe_bd*, %struct.qe_bd** %5, align 8
  %124 = getelementptr inbounds %struct.qe_bd, %struct.qe_bd* %123, i32 0, i32 2
  %125 = load i32, i32* @BD_SC_WRAP, align 4
  %126 = load i32, i32* @BD_SC_INTRPT, align 4
  %127 = or i32 %125, %126
  %128 = call i32 @out_be16(i32* %124, i32 %127)
  %129 = load %struct.qe_bd*, %struct.qe_bd** %5, align 8
  %130 = getelementptr inbounds %struct.qe_bd, %struct.qe_bd* %129, i32 0, i32 1
  %131 = load i8*, i8** %4, align 8
  %132 = load %struct.uart_qe_port*, %struct.uart_qe_port** %2, align 8
  %133 = call i32 @cpu2qe_addr(i8* %131, %struct.uart_qe_port* %132)
  %134 = call i32 @out_be32(i32* %130, i32 %133)
  %135 = load %struct.qe_bd*, %struct.qe_bd** %5, align 8
  %136 = getelementptr inbounds %struct.qe_bd, %struct.qe_bd* %135, i32 0, i32 0
  %137 = call i32 @out_be16(i32* %136, i32 0)
  ret void
}

declare dso_local i32 @out_be16(i32*, i32) #1

declare dso_local i32 @out_be32(i32*, i32) #1

declare dso_local i32 @cpu2qe_addr(i8*, %struct.uart_qe_port*) #1

declare dso_local i32 @L1_CACHE_ALIGN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
