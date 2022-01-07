; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_icom.c_xmit_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_icom.c_xmit_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icom_port = type { %struct.TYPE_12__, %struct.TYPE_9__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__*, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_10__ = type { i16 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i64 }

@INT_XMIT_COMPLETED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"XMIT_COMPLETE\00", align 1
@SA_FLAGS_READY_TO_XMIT = common dso_local global i32 0, align 4
@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"XMIT_DISABLED\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.icom_port*)* @xmit_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xmit_interrupt(i32 %0, %struct.icom_port* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.icom_port*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.icom_port* %1, %struct.icom_port** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @INT_XMIT_COMPLETED, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %94

11:                                               ; preds = %2
  %12 = load %struct.icom_port*, %struct.icom_port** %4, align 8
  %13 = call i32 @trace(%struct.icom_port* %12, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 0)
  %14 = load i32, i32* @SA_FLAGS_READY_TO_XMIT, align 4
  %15 = xor i32 %14, -1
  %16 = call i64 @cpu_to_le16(i32 %15)
  %17 = load %struct.icom_port*, %struct.icom_port** %4, align 8
  %18 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %17, i32 0, i32 1
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i64 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = and i64 %24, %16
  store i64 %25, i64* %23, align 8
  %26 = load %struct.icom_port*, %struct.icom_port** %4, align 8
  %27 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %26, i32 0, i32 1
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i64 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @cpu_to_le16(i32 %33)
  %35 = trunc i64 %34 to i16
  store i16 %35, i16* %5, align 2
  %36 = load i16, i16* %5, align 2
  %37 = zext i16 %36 to i32
  %38 = load %struct.icom_port*, %struct.icom_port** %4, align 8
  %39 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i16, i16* %41, align 8
  %43 = zext i16 %42 to i32
  %44 = add nsw i32 %43, %37
  %45 = trunc i32 %44 to i16
  store i16 %45, i16* %41, align 8
  store i32 0, i32* %6, align 4
  br label %46

46:                                               ; preds = %81, %11
  %47 = load i32, i32* %6, align 4
  %48 = load i16, i16* %5, align 2
  %49 = zext i16 %48 to i32
  %50 = icmp slt i32 %47, %49
  br i1 %50, label %51, label %60

51:                                               ; preds = %46
  %52 = load %struct.icom_port*, %struct.icom_port** %4, align 8
  %53 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = call i32 @uart_circ_empty(%struct.TYPE_13__* %56)
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  br label %60

60:                                               ; preds = %51, %46
  %61 = phi i1 [ false, %46 ], [ %59, %51 ]
  br i1 %61, label %62, label %84

62:                                               ; preds = %60
  %63 = load %struct.icom_port*, %struct.icom_port** %4, align 8
  %64 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 4
  %71 = load i32, i32* @UART_XMIT_SIZE, align 4
  %72 = sub nsw i32 %71, 1
  %73 = load %struct.icom_port*, %struct.icom_port** %4, align 8
  %74 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, %72
  store i32 %80, i32* %78, align 4
  br label %81

81:                                               ; preds = %62
  %82 = load i32, i32* %6, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %6, align 4
  br label %46

84:                                               ; preds = %60
  %85 = load %struct.icom_port*, %struct.icom_port** %4, align 8
  %86 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %85, i32 0, i32 0
  %87 = call i32 @icom_write(%struct.TYPE_12__* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %84
  %90 = load %struct.icom_port*, %struct.icom_port** %4, align 8
  %91 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %90, i32 0, i32 0
  %92 = call i32 @uart_write_wakeup(%struct.TYPE_12__* %91)
  br label %93

93:                                               ; preds = %89, %84
  br label %97

94:                                               ; preds = %2
  %95 = load %struct.icom_port*, %struct.icom_port** %4, align 8
  %96 = call i32 @trace(%struct.icom_port* %95, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 0)
  br label %97

97:                                               ; preds = %94, %93
  ret void
}

declare dso_local i32 @trace(%struct.icom_port*, i8*, i32) #1

declare dso_local i64 @cpu_to_le16(i32) #1

declare dso_local i32 @uart_circ_empty(%struct.TYPE_13__*) #1

declare dso_local i32 @icom_write(%struct.TYPE_12__*) #1

declare dso_local i32 @uart_write_wakeup(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
