; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_milbeaut_usio.c_mlb_usio_rx_chars.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_milbeaut_usio.c_mlb_usio_rx_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i64, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { %struct.tty_port }
%struct.tty_port = type { i32 }

@MLB_USIO_REG_SSR = common dso_local global i64 0, align 8
@MLB_USIO_SSR_RDRF = common dso_local global i32 0, align 4
@MLB_USIO_SSR_ORE = common dso_local global i32 0, align 4
@MLB_USIO_SSR_FRE = common dso_local global i32 0, align 4
@MLB_USIO_SSR_PE = common dso_local global i32 0, align 4
@MLB_USIO_REG_DR = common dso_local global i64 0, align 8
@TTY_NORMAL = common dso_local global i64 0, align 8
@MLB_USIO_SSR_BRK = common dso_local global i32 0, align 4
@TTY_BREAK = common dso_local global i64 0, align 8
@TTY_PARITY = common dso_local global i64 0, align 8
@TTY_FRAME = common dso_local global i64 0, align 8
@MLB_USIO_SSR_REC = common dso_local global i32 0, align 4
@MLB_USIO_REG_FBYTE = common dso_local global i64 0, align 8
@MLB_USIO_REG_FCR = common dso_local global i64 0, align 8
@MLB_USIO_FCR_FE2 = common dso_local global i32 0, align 4
@MLB_USIO_FCR_FRIIE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @mlb_usio_rx_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlb_usio_rx_chars(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.tty_port*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %8 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %9 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %8, i32 0, i32 3
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store %struct.tty_port* %11, %struct.tty_port** %3, align 8
  store i64 0, i64* %4, align 8
  store i8 0, i8* %5, align 1
  store i32 2, i32* %7, align 4
  br label %12

12:                                               ; preds = %123, %56, %55, %1
  %13 = load i32, i32* %7, align 4
  %14 = add nsw i32 %13, -1
  store i32 %14, i32* %7, align 4
  %15 = icmp ne i32 %13, 0
  br i1 %15, label %16, label %161

16:                                               ; preds = %12
  %17 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %18 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @MLB_USIO_REG_SSR, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @readb(i64 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @MLB_USIO_SSR_RDRF, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %16
  br label %161

28:                                               ; preds = %16
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @MLB_USIO_SSR_ORE, align 4
  %31 = load i32, i32* @MLB_USIO_SSR_FRE, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @MLB_USIO_SSR_PE, align 4
  %34 = or i32 %32, %33
  %35 = and i32 %29, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %63, label %37

37:                                               ; preds = %28
  %38 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %39 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @MLB_USIO_REG_DR, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @readw(i64 %42)
  %44 = trunc i32 %43 to i8
  store i8 %44, i8* %5, align 1
  %45 = load i64, i64* @TTY_NORMAL, align 8
  store i64 %45, i64* %4, align 8
  %46 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %47 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 8
  %51 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %52 = load i8, i8* %5, align 1
  %53 = call i64 @uart_handle_sysrq_char(%struct.uart_port* %51, i8 signext %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %37
  br label %12

56:                                               ; preds = %37
  %57 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @MLB_USIO_SSR_ORE, align 4
  %60 = load i8, i8* %5, align 1
  %61 = load i64, i64* %4, align 8
  %62 = call i32 @uart_insert_char(%struct.uart_port* %57, i32 %58, i32 %59, i8 signext %60, i64 %61)
  br label %12

63:                                               ; preds = %28
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @MLB_USIO_SSR_PE, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %63
  %69 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %70 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 4
  br label %74

74:                                               ; preds = %68, %63
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @MLB_USIO_SSR_ORE, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %74
  %80 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %81 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 8
  br label %85

85:                                               ; preds = %79, %74
  %86 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %87 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %6, align 4
  %90 = and i32 %89, %88
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* @MLB_USIO_SSR_BRK, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %85
  %96 = load i64, i64* @TTY_BREAK, align 8
  store i64 %96, i64* %4, align 8
  store i8 0, i8* %5, align 1
  br label %113

97:                                               ; preds = %85
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* @MLB_USIO_SSR_PE, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %97
  %103 = load i64, i64* @TTY_PARITY, align 8
  store i64 %103, i64* %4, align 8
  store i8 0, i8* %5, align 1
  br label %112

104:                                              ; preds = %97
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* @MLB_USIO_SSR_FRE, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %104
  %110 = load i64, i64* @TTY_FRAME, align 8
  store i64 %110, i64* %4, align 8
  store i8 0, i8* %5, align 1
  br label %111

111:                                              ; preds = %109, %104
  br label %112

112:                                              ; preds = %111, %102
  br label %113

113:                                              ; preds = %112, %95
  %114 = load i64, i64* %4, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %113
  %117 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %118 = load i32, i32* %6, align 4
  %119 = load i32, i32* @MLB_USIO_SSR_ORE, align 4
  %120 = load i8, i8* %5, align 1
  %121 = load i64, i64* %4, align 8
  %122 = call i32 @uart_insert_char(%struct.uart_port* %117, i32 %118, i32 %119, i8 signext %120, i64 %121)
  br label %123

123:                                              ; preds = %116, %113
  %124 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %125 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @MLB_USIO_REG_SSR, align 8
  %128 = add nsw i64 %126, %127
  %129 = call i32 @readb(i64 %128)
  %130 = load i32, i32* @MLB_USIO_SSR_REC, align 4
  %131 = or i32 %129, %130
  %132 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %133 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @MLB_USIO_REG_SSR, align 8
  %136 = add nsw i64 %134, %135
  %137 = call i32 @writeb(i32 %131, i64 %136)
  %138 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %139 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @MLB_USIO_REG_FBYTE, align 8
  %142 = add nsw i64 %140, %141
  %143 = call i32 @readw(i64 %142)
  %144 = ashr i32 %143, 8
  store i32 %144, i32* %7, align 4
  %145 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %146 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @MLB_USIO_REG_FCR, align 8
  %149 = add nsw i64 %147, %148
  %150 = call i32 @readw(i64 %149)
  %151 = load i32, i32* @MLB_USIO_FCR_FE2, align 4
  %152 = or i32 %150, %151
  %153 = load i32, i32* @MLB_USIO_FCR_FRIIE, align 4
  %154 = or i32 %152, %153
  %155 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %156 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @MLB_USIO_REG_FCR, align 8
  %159 = add nsw i64 %157, %158
  %160 = call i32 @writew(i32 %154, i64 %159)
  br label %12

161:                                              ; preds = %27, %12
  %162 = load %struct.tty_port*, %struct.tty_port** %3, align 8
  %163 = call i32 @tty_flip_buffer_push(%struct.tty_port* %162)
  ret void
}

declare dso_local i32 @readb(i64) #1

declare dso_local i32 @readw(i64) #1

declare dso_local i64 @uart_handle_sysrq_char(%struct.uart_port*, i8 signext) #1

declare dso_local i32 @uart_insert_char(%struct.uart_port*, i32, i32, i8 signext, i64) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @writew(i32, i64) #1

declare dso_local i32 @tty_flip_buffer_push(%struct.tty_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
