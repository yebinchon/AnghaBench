; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi.c_spi_stop_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi.c_spi_stop_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_controller = type { i32, i32, i32, i64, i32 }

@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"could not stop message queue\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_controller*)* @spi_stop_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_stop_queue(%struct.spi_controller* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_controller*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.spi_controller* %0, %struct.spi_controller** %3, align 8
  store i32 500, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.spi_controller*, %struct.spi_controller** %3, align 8
  %8 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %7, i32 0, i32 2
  %9 = load i64, i64* %4, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  br label %11

11:                                               ; preds = %27, %1
  %12 = load %struct.spi_controller*, %struct.spi_controller** %3, align 8
  %13 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %12, i32 0, i32 4
  %14 = call i32 @list_empty(i32* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = load %struct.spi_controller*, %struct.spi_controller** %3, align 8
  %18 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16, %11
  %22 = load i32, i32* %5, align 4
  %23 = add i32 %22, -1
  store i32 %23, i32* %5, align 4
  %24 = icmp ne i32 %22, 0
  br label %25

25:                                               ; preds = %21, %16
  %26 = phi i1 [ false, %16 ], [ %24, %21 ]
  br i1 %26, label %27, label %37

27:                                               ; preds = %25
  %28 = load %struct.spi_controller*, %struct.spi_controller** %3, align 8
  %29 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %28, i32 0, i32 2
  %30 = load i64, i64* %4, align 8
  %31 = call i32 @spin_unlock_irqrestore(i32* %29, i64 %30)
  %32 = call i32 @usleep_range(i32 10000, i32 11000)
  %33 = load %struct.spi_controller*, %struct.spi_controller** %3, align 8
  %34 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %33, i32 0, i32 2
  %35 = load i64, i64* %4, align 8
  %36 = call i32 @spin_lock_irqsave(i32* %34, i64 %35)
  br label %11

37:                                               ; preds = %25
  %38 = load %struct.spi_controller*, %struct.spi_controller** %3, align 8
  %39 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %38, i32 0, i32 4
  %40 = call i32 @list_empty(i32* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load %struct.spi_controller*, %struct.spi_controller** %3, align 8
  %44 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42, %37
  %48 = load i32, i32* @EBUSY, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %6, align 4
  br label %53

50:                                               ; preds = %42
  %51 = load %struct.spi_controller*, %struct.spi_controller** %3, align 8
  %52 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %51, i32 0, i32 0
  store i32 0, i32* %52, align 8
  br label %53

53:                                               ; preds = %50, %47
  %54 = load %struct.spi_controller*, %struct.spi_controller** %3, align 8
  %55 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %54, i32 0, i32 2
  %56 = load i64, i64* %4, align 8
  %57 = call i32 @spin_unlock_irqrestore(i32* %55, i64 %56)
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %53
  %61 = load %struct.spi_controller*, %struct.spi_controller** %3, align 8
  %62 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %61, i32 0, i32 1
  %63 = call i32 @dev_warn(i32* %62, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %64 = load i32, i32* %6, align 4
  store i32 %64, i32* %2, align 4
  br label %67

65:                                               ; preds = %53
  %66 = load i32, i32* %6, align 4
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %65, %60
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
