; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_q6v5_mss.c_q6v5proc_halt_axi_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_q6v5_mss.c_q6v5proc_halt_axi_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.q6v5 = type { i32 }
%struct.regmap = type { i32 }

@AXI_IDLE_REG = common dso_local global i64 0, align 8
@AXI_HALTREQ_REG = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@HALT_ACK_TIMEOUT_MS = common dso_local global i32 0, align 4
@AXI_HALTACK_REG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"port failed halt\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.q6v5*, %struct.regmap*, i64)* @q6v5proc_halt_axi_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @q6v5proc_halt_axi_port(%struct.q6v5* %0, %struct.regmap* %1, i64 %2) #0 {
  %4 = alloca %struct.q6v5*, align 8
  %5 = alloca %struct.regmap*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.q6v5* %0, %struct.q6v5** %4, align 8
  store %struct.regmap* %1, %struct.regmap** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.regmap*, %struct.regmap** %5, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* @AXI_IDLE_REG, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @regmap_read(%struct.regmap* %10, i64 %13, i32* %8)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  br label %72

21:                                               ; preds = %17, %3
  %22 = load %struct.regmap*, %struct.regmap** %5, align 8
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* @AXI_HALTREQ_REG, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @regmap_write(%struct.regmap* %22, i64 %25, i32 1)
  %27 = load i64, i64* @jiffies, align 8
  %28 = load i32, i32* @HALT_ACK_TIMEOUT_MS, align 4
  %29 = call i64 @msecs_to_jiffies(i32 %28)
  %30 = add i64 %27, %29
  store i64 %30, i64* %7, align 8
  br label %31

31:                                               ; preds = %48, %21
  %32 = load %struct.regmap*, %struct.regmap** %5, align 8
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* @AXI_HALTACK_REG, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @regmap_read(%struct.regmap* %32, i64 %35, i32* %8)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %31
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %39
  %43 = load i64, i64* @jiffies, align 8
  %44 = load i64, i64* %7, align 8
  %45 = call i64 @time_after(i64 %43, i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42, %39, %31
  br label %50

48:                                               ; preds = %42
  %49 = call i32 @msleep(i32 1)
  br label %31

50:                                               ; preds = %47
  %51 = load %struct.regmap*, %struct.regmap** %5, align 8
  %52 = load i64, i64* %6, align 8
  %53 = load i64, i64* @AXI_IDLE_REG, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @regmap_read(%struct.regmap* %51, i64 %54, i32* %8)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %50
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %58, %50
  %62 = load %struct.q6v5*, %struct.q6v5** %4, align 8
  %63 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @dev_err(i32 %64, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %66

66:                                               ; preds = %61, %58
  %67 = load %struct.regmap*, %struct.regmap** %5, align 8
  %68 = load i64, i64* %6, align 8
  %69 = load i64, i64* @AXI_HALTREQ_REG, align 8
  %70 = add nsw i64 %68, %69
  %71 = call i32 @regmap_write(%struct.regmap* %67, i64 %70, i32 0)
  br label %72

72:                                               ; preds = %66, %20
  ret void
}

declare dso_local i32 @regmap_read(%struct.regmap*, i64, i32*) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i64, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
