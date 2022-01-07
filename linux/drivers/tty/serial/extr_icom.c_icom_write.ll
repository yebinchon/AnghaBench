; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_icom.c_icom_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_icom.c_icom_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__*, i64, i32*, %struct.TYPE_11__*, i32* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i32 }
%struct.uart_port = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32* }

@ICOM_PORT = common dso_local global %struct.TYPE_13__* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"WRITE\00", align 1
@SA_FLAGS_READY_TO_XMIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"WRITE_FULL\00", align 1
@XMIT_BUFF_SZ = common dso_local global i64 0, align 8
@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@CMD_XMIT_RCV_ENABLE = common dso_local global i8 0, align 1
@START_XMIT = common dso_local global i8 0, align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"WRITE_START\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @icom_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icom_write(%struct.uart_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8, align 1
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  %8 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %9 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %8, i32 0, i32 0
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %7, align 4
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** @ICOM_PORT, align 8
  %15 = call i32 @trace(%struct.TYPE_13__* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 0)
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** @ICOM_PORT, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 3
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i64 0
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @cpu_to_le16(i64 %23)
  %25 = load i32, i32* @SA_FLAGS_READY_TO_XMIT, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %1
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** @ICOM_PORT, align 8
  %30 = call i32 @trace(%struct.TYPE_13__* %29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i64 0)
  store i32 0, i32* %2, align 4
  br label %148

31:                                               ; preds = %1
  store i64 0, i64* %4, align 8
  br label %32

32:                                               ; preds = %47, %31
  %33 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %34 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %33, i32 0, i32 0
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %32
  %42 = load i64, i64* %4, align 8
  %43 = load i64, i64* @XMIT_BUFF_SZ, align 8
  %44 = icmp ule i64 %42, %43
  br label %45

45:                                               ; preds = %41, %32
  %46 = phi i1 [ false, %32 ], [ %44, %41 ]
  br i1 %46, label %47, label %70

47:                                               ; preds = %45
  %48 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %49 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %48, i32 0, i32 0
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** @ICOM_PORT, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 4
  %60 = load i32*, i32** %59, align 8
  %61 = load i64, i64* %4, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %4, align 8
  %63 = getelementptr inbounds i32, i32* %60, i64 %61
  store i32 %57, i32* %63, align 4
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* @UART_XMIT_SIZE, align 4
  %67 = sub nsw i32 %66, 1
  %68 = load i32, i32* %7, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* %7, align 4
  br label %32

70:                                               ; preds = %45
  %71 = load i64, i64* %4, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %145

73:                                               ; preds = %70
  %74 = load i32, i32* @SA_FLAGS_READY_TO_XMIT, align 4
  %75 = sext i32 %74 to i64
  %76 = call i32 @cpu_to_le16(i64 %75)
  %77 = sext i32 %76 to i64
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** @ICOM_PORT, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 3
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i64 0
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  store i64 %77, i64* %84, align 8
  %85 = load i64, i64* %4, align 8
  %86 = call i32 @cpu_to_le16(i64 %85)
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** @ICOM_PORT, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 3
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i64 0
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 1
  store i32 %86, i32* %93, align 8
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** @ICOM_PORT, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 3
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i64 0
  %100 = ptrtoint %struct.TYPE_10__* %99 to i64
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** @ICOM_PORT, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 3
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %102, align 8
  %104 = ptrtoint %struct.TYPE_11__* %103 to i64
  %105 = sub i64 %100, %104
  store i64 %105, i64* %6, align 8
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** @ICOM_PORT, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* %6, align 8
  %110 = add i64 %108, %109
  %111 = call i32 @cpu_to_le32(i64 %110)
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** @ICOM_PORT, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 2
  %114 = load i32*, i32** %113, align 8
  store i32 %111, i32* %114, align 4
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** @ICOM_PORT, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 1
  %119 = call zeroext i8 @readb(i32* %118)
  store i8 %119, i8* %5, align 1
  %120 = load i8, i8* %5, align 1
  %121 = zext i8 %120 to i32
  %122 = load i8, i8* @CMD_XMIT_RCV_ENABLE, align 1
  %123 = zext i8 %122 to i32
  %124 = or i32 %121, %123
  %125 = trunc i32 %124 to i8
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** @ICOM_PORT, align 8
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 1
  %130 = call i32 @writeb(i8 zeroext %125, i32* %129)
  %131 = load i8, i8* @START_XMIT, align 1
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** @ICOM_PORT, align 8
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 0
  %136 = call i32 @writeb(i8 zeroext %131, i32* %135)
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** @ICOM_PORT, align 8
  %138 = load i64, i64* %4, align 8
  %139 = call i32 @trace(%struct.TYPE_13__* %137, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 %138)
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** @ICOM_PORT, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 0
  %144 = call zeroext i8 @readb(i32* %143)
  br label %145

145:                                              ; preds = %73, %70
  %146 = load i64, i64* %4, align 8
  %147 = trunc i64 %146 to i32
  store i32 %147, i32* %2, align 4
  br label %148

148:                                              ; preds = %145, %28
  %149 = load i32, i32* %2, align 4
  ret i32 %149
}

declare dso_local i32 @trace(%struct.TYPE_13__*, i8*, i64) #1

declare dso_local i32 @cpu_to_le16(i64) #1

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local zeroext i8 @readb(i32*) #1

declare dso_local i32 @writeb(i8 zeroext, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
