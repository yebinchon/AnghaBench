; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_vcc.c_vcc_tx_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_vcc.c_vcc_tx_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vcc_port = type { i32, i64, %struct.tty_struct*, %struct.TYPE_6__, %struct.vio_vcc, i64, %struct.TYPE_4__ }
%struct.tty_struct = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.vio_vcc = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.timer_list = type { i32 }

@tx_timer = common dso_local global i32 0, align 4
@VCC_BUFF_LEN = common dso_local global i32 0, align 4
@VIO_TYPE_DATA = common dso_local global i32 0, align 4
@VIO_TAG_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"VCC: ldc_write()=%d\0A\00", align 1
@port = common dso_local global %struct.vcc_port* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @vcc_tx_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vcc_tx_timer(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.vcc_port*, align 8
  %4 = alloca %struct.vio_vcc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.tty_struct*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %9 = load %struct.vcc_port*, %struct.vcc_port** %3, align 8
  %10 = ptrtoint %struct.vcc_port* %9 to i32
  %11 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %12 = load i32, i32* @tx_timer, align 4
  %13 = call %struct.vcc_port* @from_timer(i32 %10, %struct.timer_list* %11, i32 %12)
  store %struct.vcc_port* %13, %struct.vcc_port** %3, align 8
  store i32 0, i32* %6, align 4
  %14 = load %struct.vcc_port*, %struct.vcc_port** %3, align 8
  %15 = getelementptr inbounds %struct.vcc_port, %struct.vcc_port* %14, i32 0, i32 0
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.vcc_port*, %struct.vcc_port** %3, align 8
  %19 = getelementptr inbounds %struct.vcc_port, %struct.vcc_port* %18, i32 0, i32 6
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store i64 0, i64* %20, align 8
  %21 = load %struct.vcc_port*, %struct.vcc_port** %3, align 8
  %22 = getelementptr inbounds %struct.vcc_port, %struct.vcc_port* %21, i32 0, i32 2
  %23 = load %struct.tty_struct*, %struct.tty_struct** %22, align 8
  %24 = icmp ne %struct.tty_struct* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %1
  %26 = load %struct.vcc_port*, %struct.vcc_port** %3, align 8
  %27 = getelementptr inbounds %struct.vcc_port, %struct.vcc_port* %26, i32 0, i32 5
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25, %1
  br label %91

31:                                               ; preds = %25
  %32 = load i32, i32* @VCC_BUFF_LEN, align 4
  %33 = load %struct.vcc_port*, %struct.vcc_port** %3, align 8
  %34 = getelementptr inbounds %struct.vcc_port, %struct.vcc_port* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @min(i32 %32, i64 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %31
  br label %91

40:                                               ; preds = %31
  %41 = load %struct.vcc_port*, %struct.vcc_port** %3, align 8
  %42 = getelementptr inbounds %struct.vcc_port, %struct.vcc_port* %41, i32 0, i32 4
  store %struct.vio_vcc* %42, %struct.vio_vcc** %4, align 8
  %43 = load i32, i32* @VIO_TYPE_DATA, align 4
  %44 = load %struct.vio_vcc*, %struct.vio_vcc** %4, align 8
  %45 = getelementptr inbounds %struct.vio_vcc, %struct.vio_vcc* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  store i32 %43, i32* %46, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.vio_vcc*, %struct.vio_vcc** %4, align 8
  %49 = getelementptr inbounds %struct.vio_vcc, %struct.vio_vcc* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 4
  %51 = load %struct.vcc_port*, %struct.vcc_port** %3, align 8
  %52 = getelementptr inbounds %struct.vcc_port, %struct.vcc_port* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @vccdbgl(i32 %54)
  %56 = load %struct.vcc_port*, %struct.vcc_port** %3, align 8
  %57 = getelementptr inbounds %struct.vcc_port, %struct.vcc_port* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.vio_vcc*, %struct.vio_vcc** %4, align 8
  %61 = load i64, i64* @VIO_TAG_SIZE, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %61, %63
  %65 = call i32 @ldc_write(i32 %59, %struct.vio_vcc* %60, i64 %64)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = call i32 @WARN_ON(i32 %69)
  %71 = load i32, i32* %7, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %40
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @vccdbg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %74)
  %76 = load %struct.vcc_port*, %struct.vcc_port** %3, align 8
  %77 = call i32 @vcc_kick_tx(%struct.vcc_port* %76)
  br label %90

78:                                               ; preds = %40
  %79 = load %struct.vcc_port*, %struct.vcc_port** %3, align 8
  %80 = getelementptr inbounds %struct.vcc_port, %struct.vcc_port* %79, i32 0, i32 2
  %81 = load %struct.tty_struct*, %struct.tty_struct** %80, align 8
  store %struct.tty_struct* %81, %struct.tty_struct** %8, align 8
  %82 = load %struct.vcc_port*, %struct.vcc_port** %3, align 8
  %83 = getelementptr inbounds %struct.vcc_port, %struct.vcc_port* %82, i32 0, i32 1
  store i64 0, i64* %83, align 8
  %84 = load %struct.tty_struct*, %struct.tty_struct** %8, align 8
  %85 = icmp ne %struct.tty_struct* %84, null
  br i1 %85, label %86, label %89

86:                                               ; preds = %78
  %87 = load %struct.tty_struct*, %struct.tty_struct** %8, align 8
  %88 = call i32 @tty_wakeup(%struct.tty_struct* %87)
  br label %89

89:                                               ; preds = %86, %78
  br label %90

90:                                               ; preds = %89, %73
  br label %91

91:                                               ; preds = %90, %39, %30
  %92 = load %struct.vcc_port*, %struct.vcc_port** %3, align 8
  %93 = getelementptr inbounds %struct.vcc_port, %struct.vcc_port* %92, i32 0, i32 0
  %94 = load i64, i64* %5, align 8
  %95 = call i32 @spin_unlock_irqrestore(i32* %93, i64 %94)
  %96 = load %struct.vcc_port*, %struct.vcc_port** %3, align 8
  %97 = call i32 @vcc_put(%struct.vcc_port* %96, i32 0)
  ret void
}

declare dso_local %struct.vcc_port* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @min(i32, i64) #1

declare dso_local i32 @vccdbgl(i32) #1

declare dso_local i32 @ldc_write(i32, %struct.vio_vcc*, i64) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @vccdbg(i8*, i32) #1

declare dso_local i32 @vcc_kick_tx(%struct.vcc_port*) #1

declare dso_local i32 @tty_wakeup(%struct.tty_struct*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @vcc_put(%struct.vcc_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
