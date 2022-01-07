; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_mxser.c_mxser_set_baud.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_mxser.c_mxser_set_baud.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.mxser_port* }
%struct.mxser_port = type { i64, i32, i32, i8, i64, i64 }

@HZ = common dso_local global i32 0, align 4
@UART_MCR_DTR = common dso_local global i8 0, align 1
@UART_MCR = common dso_local global i64 0, align 8
@UART_LCR = common dso_local global i64 0, align 8
@UART_LCR_DLAB = common dso_local global i8 0, align 1
@UART_DLL = common dso_local global i64 0, align 8
@UART_DLM = common dso_local global i64 0, align 8
@BOTHER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, i64)* @mxser_set_baud to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxser_set_baud(%struct.tty_struct* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mxser_port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %12 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %11, i32 0, i32 0
  %13 = load %struct.mxser_port*, %struct.mxser_port** %12, align 8
  store %struct.mxser_port* %13, %struct.mxser_port** %6, align 8
  store i32 0, i32* %7, align 4
  %14 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %15 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %14, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %171

19:                                               ; preds = %2
  %20 = load i64, i64* %5, align 8
  %21 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %22 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sgt i64 %20, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 -1, i32* %3, align 4
  br label %171

26:                                               ; preds = %19
  %27 = load i64, i64* %5, align 8
  %28 = icmp eq i64 %27, 134
  br i1 %28, label %29, label %37

29:                                               ; preds = %26
  %30 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %31 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = mul nsw i32 2, %32
  %34 = sdiv i32 %33, 269
  store i32 %34, i32* %7, align 4
  %35 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %36 = call i32 @tty_encode_baud_rate(%struct.tty_struct* %35, i32 134, i32 134)
  br label %63

37:                                               ; preds = %26
  %38 = load i64, i64* %5, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %61

40:                                               ; preds = %37
  %41 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %42 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = load i64, i64* %5, align 8
  %46 = sdiv i64 %44, %45
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %40
  store i32 1, i32* %7, align 4
  br label %51

51:                                               ; preds = %50, %40
  %52 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %53 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = udiv i32 %54, %55
  store i32 %56, i32* %8, align 4
  %57 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @tty_encode_baud_rate(%struct.tty_struct* %57, i32 %58, i32 %59)
  br label %62

61:                                               ; preds = %37
  store i32 0, i32* %7, align 4
  br label %62

62:                                               ; preds = %61, %51
  br label %63

63:                                               ; preds = %62, %29
  %64 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %65 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %64, i32 0, i32 5
  %66 = load i64, i64* %65, align 8
  %67 = trunc i64 %66 to i32
  %68 = load i32, i32* @HZ, align 4
  %69 = mul nsw i32 %67, %68
  %70 = mul nsw i32 %69, 10
  %71 = load i32, i32* %7, align 4
  %72 = mul i32 %70, %71
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %10, align 4
  %74 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %75 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @do_div(i32 %73, i32 %76)
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* @HZ, align 4
  %80 = sdiv i32 %79, 50
  %81 = add nsw i32 %78, %80
  %82 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %83 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %104

86:                                               ; preds = %63
  %87 = load i8, i8* @UART_MCR_DTR, align 1
  %88 = zext i8 %87 to i32
  %89 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %90 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %89, i32 0, i32 3
  %91 = load i8, i8* %90, align 8
  %92 = zext i8 %91 to i32
  %93 = or i32 %92, %88
  %94 = trunc i32 %93 to i8
  store i8 %94, i8* %90, align 8
  %95 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %96 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %95, i32 0, i32 3
  %97 = load i8, i8* %96, align 8
  %98 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %99 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %98, i32 0, i32 4
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @UART_MCR, align 8
  %102 = add nsw i64 %100, %101
  %103 = call i32 @outb(i8 zeroext %97, i64 %102)
  br label %123

104:                                              ; preds = %63
  %105 = load i8, i8* @UART_MCR_DTR, align 1
  %106 = zext i8 %105 to i32
  %107 = xor i32 %106, -1
  %108 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %109 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %108, i32 0, i32 3
  %110 = load i8, i8* %109, align 8
  %111 = zext i8 %110 to i32
  %112 = and i32 %111, %107
  %113 = trunc i32 %112 to i8
  store i8 %113, i8* %109, align 8
  %114 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %115 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %114, i32 0, i32 3
  %116 = load i8, i8* %115, align 8
  %117 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %118 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %117, i32 0, i32 4
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @UART_MCR, align 8
  %121 = add nsw i64 %119, %120
  %122 = call i32 @outb(i8 zeroext %116, i64 %121)
  store i32 0, i32* %3, align 4
  br label %171

123:                                              ; preds = %86
  %124 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %125 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %124, i32 0, i32 4
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @UART_LCR, align 8
  %128 = add nsw i64 %126, %127
  %129 = call zeroext i8 @inb(i64 %128)
  store i8 %129, i8* %9, align 1
  %130 = load i8, i8* %9, align 1
  %131 = zext i8 %130 to i32
  %132 = load i8, i8* @UART_LCR_DLAB, align 1
  %133 = zext i8 %132 to i32
  %134 = or i32 %131, %133
  %135 = trunc i32 %134 to i8
  %136 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %137 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %136, i32 0, i32 4
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @UART_LCR, align 8
  %140 = add nsw i64 %138, %139
  %141 = call i32 @outb(i8 zeroext %135, i64 %140)
  %142 = load i32, i32* %7, align 4
  %143 = and i32 %142, 255
  %144 = trunc i32 %143 to i8
  %145 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %146 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %145, i32 0, i32 4
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @UART_DLL, align 8
  %149 = add nsw i64 %147, %148
  %150 = call i32 @outb(i8 zeroext %144, i64 %149)
  %151 = load i32, i32* %7, align 4
  %152 = lshr i32 %151, 8
  %153 = trunc i32 %152 to i8
  %154 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %155 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %154, i32 0, i32 4
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @UART_DLM, align 8
  %158 = add nsw i64 %156, %157
  %159 = call i32 @outb(i8 zeroext %153, i64 %158)
  %160 = load i8, i8* %9, align 1
  %161 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %162 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %161, i32 0, i32 4
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @UART_LCR, align 8
  %165 = add nsw i64 %163, %164
  %166 = call i32 @outb(i8 zeroext %160, i64 %165)
  %167 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %168 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %167, i32 0, i32 4
  %169 = load i64, i64* %168, align 8
  %170 = call i32 @mxser_set_must_enum_value(i64 %169, i32 0)
  store i32 0, i32* %3, align 4
  br label %171

171:                                              ; preds = %123, %104, %25, %18
  %172 = load i32, i32* %3, align 4
  ret i32 %172
}

declare dso_local i32 @tty_encode_baud_rate(%struct.tty_struct*, i32, i32) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @outb(i8 zeroext, i64) #1

declare dso_local zeroext i8 @inb(i64) #1

declare dso_local i32 @mxser_set_must_enum_value(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
