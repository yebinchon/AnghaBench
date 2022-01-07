; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_fwtty_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_fwtty_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwtty_port = type { i32, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32, i64 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i64, i32 }

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@UART_LSR_BI = common dso_local global i32 0, align 4
@UART_LSR_OE = common dso_local global i32 0, align 4
@TTY_OVERRUN = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@TTY_NORMAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"flip buffer overrun\0A\00", align 1
@HIGH_WATERMARK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fwtty_port*, i8*, i64)* @fwtty_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fwtty_rx(%struct.fwtty_port* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.fwtty_port*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.fwtty_port* %0, %struct.fwtty_port** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load i64, i64* %6, align 8
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %13 = load %struct.fwtty_port*, %struct.fwtty_port** %4, align 8
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @fwtty_dbg(%struct.fwtty_port* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.fwtty_port*, %struct.fwtty_port** %4, align 8
  %17 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %16, i32 0, i32 4
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @fwtty_profile_data(i32 %19, i32 %20)
  %22 = load %struct.fwtty_port*, %struct.fwtty_port** %4, align 8
  %23 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %22, i32 0, i32 7
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %129

27:                                               ; preds = %3
  %28 = load %struct.fwtty_port*, %struct.fwtty_port** %4, align 8
  %29 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = ashr i32 %30, 24
  %32 = load i32, i32* @UART_LSR_BI, align 4
  %33 = xor i32 %32, -1
  %34 = and i32 %31, %33
  store i32 %34, i32* %9, align 4
  %35 = load %struct.fwtty_port*, %struct.fwtty_port** %4, align 8
  %36 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %27
  %40 = load i32, i32* @UART_LSR_OE, align 4
  %41 = load i32, i32* %9, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %39, %27
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @UART_LSR_OE, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load %struct.fwtty_port*, %struct.fwtty_port** %4, align 8
  %50 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %49, i32 0, i32 5
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 8
  br label %54

54:                                               ; preds = %48, %43
  %55 = load %struct.fwtty_port*, %struct.fwtty_port** %4, align 8
  %56 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %9, align 4
  %59 = and i32 %58, %57
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.fwtty_port*, %struct.fwtty_port** %4, align 8
  %62 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = xor i32 %63, -1
  %65 = and i32 %60, %64
  %66 = load i32, i32* @UART_LSR_OE, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %54
  %70 = load %struct.fwtty_port*, %struct.fwtty_port** %4, align 8
  %71 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %70, i32 0, i32 6
  %72 = load i32, i32* @TTY_OVERRUN, align 4
  %73 = call i32 @tty_insert_flip_char(i32* %71, i32 0, i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %69
  %76 = load i32, i32* @EIO, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %10, align 4
  br label %129

78:                                               ; preds = %69
  br label %79

79:                                               ; preds = %78, %54
  %80 = load %struct.fwtty_port*, %struct.fwtty_port** %4, align 8
  %81 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %80, i32 0, i32 1
  store i32 0, i32* %81, align 4
  %82 = load i32, i32* %9, align 4
  %83 = load %struct.fwtty_port*, %struct.fwtty_port** %4, align 8
  %84 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = and i32 %82, %85
  %87 = load i32, i32* @UART_LSR_OE, align 4
  %88 = xor i32 %87, -1
  %89 = and i32 %86, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %79
  store i32 0, i32* %8, align 4
  br label %129

92:                                               ; preds = %79
  %93 = load %struct.fwtty_port*, %struct.fwtty_port** %4, align 8
  %94 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %93, i32 0, i32 6
  %95 = load i8*, i8** %5, align 8
  %96 = load i32, i32* @TTY_NORMAL, align 4
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @tty_insert_flip_string_fixed_flag(i32* %94, i8* %95, i32 %96, i32 %97)
  store i32 %98, i32* %7, align 4
  %99 = load i32, i32* %7, align 4
  %100 = icmp sgt i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %92
  %102 = load %struct.fwtty_port*, %struct.fwtty_port** %4, align 8
  %103 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %102, i32 0, i32 6
  %104 = call i32 @tty_flip_buffer_push(i32* %103)
  br label %105

105:                                              ; preds = %101, %92
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* %8, align 4
  %108 = sub nsw i32 %107, %106
  store i32 %108, i32* %8, align 4
  %109 = load i32, i32* %8, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %105
  %112 = load %struct.fwtty_port*, %struct.fwtty_port** %4, align 8
  %113 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %112, i32 0, i32 1
  store i32 1, i32* %113, align 4
  %114 = load i32, i32* @EIO, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %10, align 4
  %116 = load %struct.fwtty_port*, %struct.fwtty_port** %4, align 8
  %117 = call i32 @fwtty_err_ratelimited(%struct.fwtty_port* %116, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %128

118:                                              ; preds = %105
  %119 = load %struct.fwtty_port*, %struct.fwtty_port** %4, align 8
  %120 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %119, i32 0, i32 6
  %121 = call i64 @tty_buffer_space_avail(i32* %120)
  %122 = load i64, i64* @HIGH_WATERMARK, align 8
  %123 = icmp slt i64 %121, %122
  br i1 %123, label %124, label %127

124:                                              ; preds = %118
  %125 = load %struct.fwtty_port*, %struct.fwtty_port** %4, align 8
  %126 = call i32 @fwtty_throttle_port(%struct.fwtty_port* %125)
  br label %127

127:                                              ; preds = %124, %118
  br label %128

128:                                              ; preds = %127, %111
  br label %129

129:                                              ; preds = %128, %91, %75, %26
  %130 = load i64, i64* %6, align 8
  %131 = load %struct.fwtty_port*, %struct.fwtty_port** %4, align 8
  %132 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %131, i32 0, i32 5
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = add i64 %134, %130
  store i64 %135, i64* %133, align 8
  %136 = load i32, i32* %8, align 4
  %137 = load %struct.fwtty_port*, %struct.fwtty_port** %4, align 8
  %138 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %137, i32 0, i32 4
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = add nsw i32 %140, %136
  store i32 %141, i32* %139, align 8
  %142 = load i32, i32* %10, align 4
  ret i32 %142
}

declare dso_local i32 @fwtty_dbg(%struct.fwtty_port*, i8*, i32) #1

declare dso_local i32 @fwtty_profile_data(i32, i32) #1

declare dso_local i32 @tty_insert_flip_char(i32*, i32, i32) #1

declare dso_local i32 @tty_insert_flip_string_fixed_flag(i32*, i8*, i32, i32) #1

declare dso_local i32 @tty_flip_buffer_push(i32*) #1

declare dso_local i32 @fwtty_err_ratelimited(%struct.fwtty_port*, i8*) #1

declare dso_local i64 @tty_buffer_space_avail(i32*) #1

declare dso_local i32 @fwtty_throttle_port(%struct.fwtty_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
