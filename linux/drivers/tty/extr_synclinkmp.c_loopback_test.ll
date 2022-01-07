; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_synclinkmp.c_loopback_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_synclinkmp.c_loopback_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_13__, %struct.TYPE_12__, i32, i32, i32 }
%struct.TYPE_13__ = type { %struct.tty_struct* }
%struct.tty_struct = type { i32 }
%struct.TYPE_12__ = type { i32 }

@DiagStatus_DmaFailure = common dso_local global i32 0, align 4
@TESTFRAMESIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*)* @loopback_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @loopback_test(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca [20 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.tty_struct*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  store i32 20, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  %13 = load %struct.tty_struct*, %struct.tty_struct** %12, align 8
  store %struct.tty_struct* %13, %struct.tty_struct** %8, align 8
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %9, align 4
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  store i32 3686400, i32* %20, align 8
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  store %struct.tty_struct* null, %struct.tty_struct** %23, align 8
  %24 = load i32, i32* @DiagStatus_DmaFailure, align 4
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 6
  store i32 %24, i32* %26, align 4
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %36, %1
  %28 = load i32, i32* %4, align 4
  %29 = icmp slt i32 %28, 20
  br i1 %29, label %30, label %39

30:                                               ; preds = %27
  %31 = load i32, i32* %4, align 4
  %32 = trunc i32 %31 to i8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 %34
  store i8 %32, i8* %35, align 1
  br label %36

36:                                               ; preds = %30
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %4, align 4
  br label %27

39:                                               ; preds = %27
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @memset(i32 %42, i32 0, i32 20)
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 4
  %46 = load i64, i64* %7, align 8
  %47 = call i32 @spin_lock_irqsave(i32* %45, i64 %46)
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %49 = call i32 @hdlc_mode(%struct.TYPE_14__* %48)
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %51 = call i32 @enable_loopback(%struct.TYPE_14__* %50, i32 1)
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %53 = call i32 @rx_start(%struct.TYPE_14__* %52)
  %54 = load i32, i32* %4, align 4
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %58 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @tx_load_dma_buffer(%struct.TYPE_14__* %57, i8* %58, i32 %59)
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %62 = call i32 @tx_start(%struct.TYPE_14__* %61)
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 4
  %65 = load i64, i64* %7, align 8
  %66 = call i32 @spin_unlock_irqrestore(i32* %64, i64 %65)
  store i64 100, i64* %3, align 8
  br label %67

67:                                               ; preds = %77, %39
  %68 = load i64, i64* %3, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %67
  %71 = call i32 @msleep_interruptible(i32 10)
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %73 = call i64 @rx_get_frame(%struct.TYPE_14__* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  store i32 1, i32* %6, align 4
  br label %80

76:                                               ; preds = %70
  br label %77

77:                                               ; preds = %76
  %78 = load i64, i64* %3, align 8
  %79 = add i64 %78, -1
  store i64 %79, i64* %3, align 8
  br label %67

80:                                               ; preds = %75, %67
  %81 = load i32, i32* %6, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %98

83:                                               ; preds = %80
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %4, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %97, label %89

89:                                               ; preds = %83
  %90 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* %4, align 4
  %95 = call i64 @memcmp(i8* %90, i32 %93, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %89, %83
  store i32 0, i32* %6, align 4
  br label %98

98:                                               ; preds = %97, %89, %80
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 4
  %101 = load i64, i64* %7, align 8
  %102 = call i32 @spin_lock_irqsave(i32* %100, i64 %101)
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %104 = call i32 @reset_adapter(%struct.TYPE_14__* %103)
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 4
  %107 = load i64, i64* %7, align 8
  %108 = call i32 @spin_unlock_irqrestore(i32* %106, i64 %107)
  %109 = load i32, i32* %9, align 4
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 3
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 0
  store i32 %109, i32* %112, align 8
  %113 = load %struct.tty_struct*, %struct.tty_struct** %8, align 8
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 0
  store %struct.tty_struct* %113, %struct.tty_struct** %116, align 8
  %117 = load i32, i32* %6, align 4
  ret i32 %117
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @hdlc_mode(%struct.TYPE_14__*) #1

declare dso_local i32 @enable_loopback(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @rx_start(%struct.TYPE_14__*) #1

declare dso_local i32 @tx_load_dma_buffer(%struct.TYPE_14__*, i8*, i32) #1

declare dso_local i32 @tx_start(%struct.TYPE_14__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @msleep_interruptible(i32) #1

declare dso_local i64 @rx_get_frame(%struct.TYPE_14__*) #1

declare dso_local i64 @memcmp(i8*, i32, i32) #1

declare dso_local i32 @reset_adapter(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
