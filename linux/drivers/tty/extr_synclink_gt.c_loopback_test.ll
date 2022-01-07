; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_synclink_gt.c_loopback_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_synclink_gt.c_loopback_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slgt_info = type { i32, i32, %struct.TYPE_5__, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_5__ = type { %struct.tty_struct* }
%struct.tty_struct = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@MGSL_MODE_ASYNC = common dso_local global i32 0, align 4
@DiagStatus_DmaFailure = common dso_local global i32 0, align 4
@TESTFRAMESIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.slgt_info*)* @loopback_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @loopback_test(%struct.slgt_info* %0) #0 {
  %2 = alloca %struct.slgt_info*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca [20 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.tty_struct*, align 8
  %9 = alloca %struct.TYPE_6__, align 4
  store %struct.slgt_info* %0, %struct.slgt_info** %2, align 8
  store i32 20, i32* %4, align 4
  %10 = load i32, i32* @ENODEV, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %6, align 4
  %12 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %13 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.tty_struct*, %struct.tty_struct** %14, align 8
  store %struct.tty_struct* %15, %struct.tty_struct** %8, align 8
  %16 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %17 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %16, i32 0, i32 3
  %18 = call i32 @memcpy(%struct.TYPE_6__* %9, %struct.TYPE_6__* %17, i32 12)
  %19 = load i32, i32* @MGSL_MODE_ASYNC, align 4
  %20 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %21 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 2
  store i32 %19, i32* %22, align 8
  %23 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %24 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  store i32 921600, i32* %25, align 8
  %26 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %27 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  store i32 1, i32* %28, align 4
  %29 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %30 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  store %struct.tty_struct* null, %struct.tty_struct** %31, align 8
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %41, %1
  %33 = load i32, i32* %4, align 4
  %34 = icmp slt i32 %33, 20
  br i1 %34, label %35, label %44

35:                                               ; preds = %32
  %36 = load i32, i32* %4, align 4
  %37 = trunc i32 %36 to i8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 %39
  store i8 %37, i8* %40, align 1
  br label %41

41:                                               ; preds = %35
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %4, align 4
  br label %32

44:                                               ; preds = %32
  %45 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %46 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %45, i32 0, i32 0
  store i32 0, i32* %46, align 8
  %47 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %48 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @memset(i32 %49, i32 0, i32 20)
  %51 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %52 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %51, i32 0, i32 4
  %53 = load i64, i64* %7, align 8
  %54 = call i32 @spin_lock_irqsave(i32* %52, i64 %53)
  %55 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %56 = call i32 @async_mode(%struct.slgt_info* %55)
  %57 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %58 = call i32 @rx_start(%struct.slgt_info* %57)
  %59 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %60 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @tx_load(%struct.slgt_info* %59, i8* %60, i32 %61)
  %63 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %64 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %63, i32 0, i32 4
  %65 = load i64, i64* %7, align 8
  %66 = call i32 @spin_unlock_irqrestore(i32* %64, i64 %65)
  store i64 100, i64* %3, align 8
  br label %67

67:                                               ; preds = %77, %44
  %68 = load i64, i64* %3, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %67
  %71 = call i32 @msleep_interruptible(i32 10)
  %72 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %73 = call i64 @loopback_test_rx(%struct.slgt_info* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  store i32 0, i32* %6, align 4
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
  br i1 %82, label %100, label %83

83:                                               ; preds = %80
  %84 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %85 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %4, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %97, label %89

89:                                               ; preds = %83
  %90 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %91 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %92 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* %4, align 4
  %95 = call i64 @memcmp(i8* %90, i32 %93, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %89, %83
  %98 = load i32, i32* @ENODEV, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %6, align 4
  br label %100

100:                                              ; preds = %97, %89, %80
  %101 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %102 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %101, i32 0, i32 4
  %103 = load i64, i64* %7, align 8
  %104 = call i32 @spin_lock_irqsave(i32* %102, i64 %103)
  %105 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %106 = call i32 @reset_adapter(%struct.slgt_info* %105)
  %107 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %108 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %107, i32 0, i32 4
  %109 = load i64, i64* %7, align 8
  %110 = call i32 @spin_unlock_irqrestore(i32* %108, i64 %109)
  %111 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %112 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %111, i32 0, i32 3
  %113 = call i32 @memcpy(%struct.TYPE_6__* %112, %struct.TYPE_6__* %9, i32 12)
  %114 = load %struct.tty_struct*, %struct.tty_struct** %8, align 8
  %115 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %116 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  store %struct.tty_struct* %114, %struct.tty_struct** %117, align 8
  %118 = load i32, i32* %6, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %100
  %121 = load i32, i32* @DiagStatus_DmaFailure, align 4
  br label %123

122:                                              ; preds = %100
  br label %123

123:                                              ; preds = %122, %120
  %124 = phi i32 [ %121, %120 ], [ 0, %122 ]
  %125 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %126 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %125, i32 0, i32 1
  store i32 %124, i32* %126, align 4
  %127 = load i32, i32* %6, align 4
  ret i32 %127
}

declare dso_local i32 @memcpy(%struct.TYPE_6__*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @async_mode(%struct.slgt_info*) #1

declare dso_local i32 @rx_start(%struct.slgt_info*) #1

declare dso_local i32 @tx_load(%struct.slgt_info*, i8*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @msleep_interruptible(i32) #1

declare dso_local i64 @loopback_test_rx(%struct.slgt_info*) #1

declare dso_local i64 @memcmp(i8*, i32, i32) #1

declare dso_local i32 @reset_adapter(%struct.slgt_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
