; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_dma_port.c_dma_port_wait_for_completion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_dma_port.c_dma_port_wait_for_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_dma_port = type { i64, i32, %struct.tb_switch* }
%struct.tb_switch = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@MAIL_IN = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4
@MAIL_IN_OP_REQUEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tb_dma_port*, i32)* @dma_port_wait_for_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dma_port_wait_for_completion(%struct.tb_dma_port* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tb_dma_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.tb_switch*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.tb_dma_port* %0, %struct.tb_dma_port** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i64, i64* @jiffies, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i64 @msecs_to_jiffies(i32 %11)
  %13 = add i64 %10, %12
  store i64 %13, i64* %6, align 8
  %14 = load %struct.tb_dma_port*, %struct.tb_dma_port** %4, align 8
  %15 = getelementptr inbounds %struct.tb_dma_port, %struct.tb_dma_port* %14, i32 0, i32 2
  %16 = load %struct.tb_switch*, %struct.tb_switch** %15, align 8
  store %struct.tb_switch* %16, %struct.tb_switch** %7, align 8
  br label %17

17:                                               ; preds = %53, %2
  %18 = load %struct.tb_switch*, %struct.tb_switch** %7, align 8
  %19 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.tb_switch*, %struct.tb_switch** %7, align 8
  %24 = call i32 @tb_route(%struct.tb_switch* %23)
  %25 = load %struct.tb_dma_port*, %struct.tb_dma_port** %4, align 8
  %26 = getelementptr inbounds %struct.tb_dma_port, %struct.tb_dma_port* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.tb_dma_port*, %struct.tb_dma_port** %4, align 8
  %29 = getelementptr inbounds %struct.tb_dma_port, %struct.tb_dma_port* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @MAIL_IN, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @dma_port_read(i32 %22, i32* %9, i32 %24, i32 %27, i64 %32, i32 1, i32 50)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %17
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @ETIMEDOUT, align 4
  %39 = sub nsw i32 0, %38
  %40 = icmp ne i32 %37, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %3, align 4
  br label %61

43:                                               ; preds = %36
  br label %51

44:                                               ; preds = %17
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @MAIL_IN_OP_REQUEST, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %44
  store i32 0, i32* %3, align 4
  br label %61

50:                                               ; preds = %44
  br label %51

51:                                               ; preds = %50, %43
  %52 = call i32 @usleep_range(i32 50, i32 100)
  br label %53

53:                                               ; preds = %51
  %54 = load i64, i64* @jiffies, align 8
  %55 = load i64, i64* %6, align 8
  %56 = call i64 @time_before(i64 %54, i64 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %17, label %58

58:                                               ; preds = %53
  %59 = load i32, i32* @ETIMEDOUT, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %58, %49, %41
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @dma_port_read(i32, i32*, i32, i32, i64, i32, i32) #1

declare dso_local i32 @tb_route(%struct.tb_switch*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i64 @time_before(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
