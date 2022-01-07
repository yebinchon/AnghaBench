; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_milbeaut_usio.c_mlb_usio_startup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_milbeaut_usio.c_mlb_usio_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i8* }

@mlb_usio_irq = common dso_local global i32** null, align 8
@RX = common dso_local global i64 0, align 8
@mlb_usio_rx_irq = common dso_local global i32 0, align 4
@TX = common dso_local global i64 0, align 8
@mlb_usio_tx_irq = common dso_local global i32 0, align 4
@MLB_USIO_REG_ESCR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"auto-flow-control\00", align 1
@MLB_USIO_ESCR_FLWEN = common dso_local global i8 0, align 1
@MLB_USIO_REG_SCR = common dso_local global i64 0, align 8
@MLB_USIO_SCR_UPCL = common dso_local global i8 0, align 1
@MLB_USIO_SSR_REC = common dso_local global i8 0, align 1
@MLB_USIO_REG_SSR = common dso_local global i64 0, align 8
@MLB_USIO_REG_FCR = common dso_local global i64 0, align 8
@MLB_USIO_FCR_FCL1 = common dso_local global i32 0, align 4
@MLB_USIO_FCR_FCL2 = common dso_local global i32 0, align 4
@MLB_USIO_FCR_FE1 = common dso_local global i32 0, align 4
@MLB_USIO_FCR_FE2 = common dso_local global i32 0, align 4
@MLB_USIO_FCR_FRIIE = common dso_local global i32 0, align 4
@MLB_USIO_REG_FBYTE = common dso_local global i64 0, align 8
@MLB_USIO_SCR_TXE = common dso_local global i8 0, align 1
@MLB_USIO_SCR_RIE = common dso_local global i8 0, align 1
@MLB_USIO_SCR_TBIE = common dso_local global i8 0, align 1
@MLB_USIO_SCR_RXE = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @mlb_usio_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlb_usio_startup(%struct.uart_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  %9 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %10 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %9, i32 0, i32 3
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = call %struct.TYPE_3__* @to_platform_device(%struct.TYPE_4__* %11)
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %4, align 8
  %15 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %16 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %7, align 4
  %18 = load i32**, i32*** @mlb_usio_irq, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32*, i32** %18, i64 %20
  %22 = load i32*, i32** %21, align 8
  %23 = load i64, i64* @RX, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @mlb_usio_rx_irq, align 4
  %27 = load i8*, i8** %4, align 8
  %28 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %29 = call i32 @request_irq(i32 %25, i32 %26, i32 0, i8* %27, %struct.uart_port* %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %1
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %2, align 4
  br label %175

34:                                               ; preds = %1
  %35 = load i32**, i32*** @mlb_usio_irq, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32*, i32** %35, i64 %37
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* @TX, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @mlb_usio_tx_irq, align 4
  %44 = load i8*, i8** %4, align 8
  %45 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %46 = call i32 @request_irq(i32 %42, i32 %43, i32 0, i8* %44, %struct.uart_port* %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %34
  %50 = load i32**, i32*** @mlb_usio_irq, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32*, i32** %50, i64 %52
  %54 = load i32*, i32** %53, align 8
  %55 = load i64, i64* @RX, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %59 = call i32 @free_irq(i32 %57, %struct.uart_port* %58)
  %60 = load i32, i32* %6, align 4
  store i32 %60, i32* %2, align 4
  br label %175

61:                                               ; preds = %34
  %62 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %63 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @MLB_USIO_REG_ESCR, align 8
  %66 = add nsw i64 %64, %65
  %67 = call zeroext i8 @readb(i64 %66)
  store i8 %67, i8* %8, align 1
  %68 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %69 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %68, i32 0, i32 3
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @of_property_read_bool(i32 %72, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %61
  %76 = load i8, i8* @MLB_USIO_ESCR_FLWEN, align 1
  %77 = zext i8 %76 to i32
  %78 = load i8, i8* %8, align 1
  %79 = zext i8 %78 to i32
  %80 = or i32 %79, %77
  %81 = trunc i32 %80 to i8
  store i8 %81, i8* %8, align 1
  br label %82

82:                                               ; preds = %75, %61
  %83 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %84 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %83, i32 0, i32 1
  %85 = load i64, i64* %5, align 8
  %86 = call i32 @spin_lock_irqsave(i32* %84, i64 %85)
  %87 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %88 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @MLB_USIO_REG_SCR, align 8
  %91 = add nsw i64 %89, %90
  %92 = call i32 @writeb(i8 zeroext 0, i64 %91)
  %93 = load i8, i8* %8, align 1
  %94 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %95 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @MLB_USIO_REG_ESCR, align 8
  %98 = add nsw i64 %96, %97
  %99 = call i32 @writeb(i8 zeroext %93, i64 %98)
  %100 = load i8, i8* @MLB_USIO_SCR_UPCL, align 1
  %101 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %102 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @MLB_USIO_REG_SCR, align 8
  %105 = add nsw i64 %103, %104
  %106 = call i32 @writeb(i8 zeroext %100, i64 %105)
  %107 = load i8, i8* @MLB_USIO_SSR_REC, align 1
  %108 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %109 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @MLB_USIO_REG_SSR, align 8
  %112 = add nsw i64 %110, %111
  %113 = call i32 @writeb(i8 zeroext %107, i64 %112)
  %114 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %115 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @MLB_USIO_REG_FCR, align 8
  %118 = add nsw i64 %116, %117
  %119 = call i32 @writew(i32 0, i64 %118)
  %120 = load i32, i32* @MLB_USIO_FCR_FCL1, align 4
  %121 = load i32, i32* @MLB_USIO_FCR_FCL2, align 4
  %122 = or i32 %120, %121
  %123 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %124 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @MLB_USIO_REG_FCR, align 8
  %127 = add nsw i64 %125, %126
  %128 = call i32 @writew(i32 %122, i64 %127)
  %129 = load i32, i32* @MLB_USIO_FCR_FE1, align 4
  %130 = load i32, i32* @MLB_USIO_FCR_FE2, align 4
  %131 = or i32 %129, %130
  %132 = load i32, i32* @MLB_USIO_FCR_FRIIE, align 4
  %133 = or i32 %131, %132
  %134 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %135 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @MLB_USIO_REG_FCR, align 8
  %138 = add nsw i64 %136, %137
  %139 = call i32 @writew(i32 %133, i64 %138)
  %140 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %141 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @MLB_USIO_REG_FBYTE, align 8
  %144 = add nsw i64 %142, %143
  %145 = call i32 @writew(i32 0, i64 %144)
  %146 = call i32 @BIT(i32 12)
  %147 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %148 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %147, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @MLB_USIO_REG_FBYTE, align 8
  %151 = add nsw i64 %149, %150
  %152 = call i32 @writew(i32 %146, i64 %151)
  %153 = load i8, i8* @MLB_USIO_SCR_TXE, align 1
  %154 = zext i8 %153 to i32
  %155 = load i8, i8* @MLB_USIO_SCR_RIE, align 1
  %156 = zext i8 %155 to i32
  %157 = or i32 %154, %156
  %158 = load i8, i8* @MLB_USIO_SCR_TBIE, align 1
  %159 = zext i8 %158 to i32
  %160 = or i32 %157, %159
  %161 = load i8, i8* @MLB_USIO_SCR_RXE, align 1
  %162 = zext i8 %161 to i32
  %163 = or i32 %160, %162
  %164 = trunc i32 %163 to i8
  %165 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %166 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %165, i32 0, i32 2
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @MLB_USIO_REG_SCR, align 8
  %169 = add nsw i64 %167, %168
  %170 = call i32 @writeb(i8 zeroext %164, i64 %169)
  %171 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %172 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %171, i32 0, i32 1
  %173 = load i64, i64* %5, align 8
  %174 = call i32 @spin_unlock_irqrestore(i32* %172, i64 %173)
  store i32 0, i32* %2, align 4
  br label %175

175:                                              ; preds = %82, %49, %32
  %176 = load i32, i32* %2, align 4
  ret i32 %176
}

declare dso_local %struct.TYPE_3__* @to_platform_device(%struct.TYPE_4__*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.uart_port*) #1

declare dso_local i32 @free_irq(i32, %struct.uart_port*) #1

declare dso_local zeroext i8 @readb(i64) #1

declare dso_local i64 @of_property_read_bool(i32, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @writeb(i8 zeroext, i64) #1

declare dso_local i32 @writew(i32, i64) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
