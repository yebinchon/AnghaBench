; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_q6v5_adsp.c_qcom_adsp_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_q6v5_adsp.c_qcom_adsp_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_adsp = type { i32, i32, i64, i32, i32, i32, i32, i64 }

@RET_CFG_REG = common dso_local global i64 0, align 8
@LPASS_PWR_ON_REG = common dso_local global i64 0, align 8
@LPASS_MASTER_IDLE_REG = common dso_local global i64 0, align 8
@LPASS_HALTREQ_REG = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@ACK_TIMEOUT = common dso_local global i32 0, align 4
@LPASS_HALTACK_REG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"port failed halt\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qcom_adsp*)* @qcom_adsp_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_adsp_shutdown(%struct.qcom_adsp* %0) #0 {
  %2 = alloca %struct.qcom_adsp*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.qcom_adsp* %0, %struct.qcom_adsp** %2, align 8
  %6 = load %struct.qcom_adsp*, %struct.qcom_adsp** %2, align 8
  %7 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %6, i32 0, i32 7
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @RET_CFG_REG, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @readl(i64 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = or i32 %12, 1
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.qcom_adsp*, %struct.qcom_adsp** %2, align 8
  %16 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %15, i32 0, i32 7
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @RET_CFG_REG, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @writel(i32 %14, i64 %19)
  %21 = load %struct.qcom_adsp*, %struct.qcom_adsp** %2, align 8
  %22 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.qcom_adsp*, %struct.qcom_adsp** %2, align 8
  %25 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @clk_bulk_disable_unprepare(i32 %23, i32 %26)
  %28 = load %struct.qcom_adsp*, %struct.qcom_adsp** %2, align 8
  %29 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.qcom_adsp*, %struct.qcom_adsp** %2, align 8
  %32 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @LPASS_PWR_ON_REG, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @regmap_read(i32 %30, i64 %35, i32* %4)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %1
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %39, %1
  br label %117

43:                                               ; preds = %39
  %44 = load %struct.qcom_adsp*, %struct.qcom_adsp** %2, align 8
  %45 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.qcom_adsp*, %struct.qcom_adsp** %2, align 8
  %48 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @LPASS_MASTER_IDLE_REG, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @regmap_read(i32 %46, i64 %51, i32* %4)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %43
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55, %43
  br label %117

59:                                               ; preds = %55
  %60 = load %struct.qcom_adsp*, %struct.qcom_adsp** %2, align 8
  %61 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.qcom_adsp*, %struct.qcom_adsp** %2, align 8
  %64 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @LPASS_HALTREQ_REG, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i32 @regmap_write(i32 %62, i64 %67, i32 1)
  %69 = load i64, i64* @jiffies, align 8
  %70 = load i32, i32* @ACK_TIMEOUT, align 4
  %71 = call i64 @msecs_to_jiffies(i32 %70)
  %72 = add i64 %69, %71
  store i64 %72, i64* %3, align 8
  br label %73

73:                                               ; preds = %94, %59
  %74 = load %struct.qcom_adsp*, %struct.qcom_adsp** %2, align 8
  %75 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.qcom_adsp*, %struct.qcom_adsp** %2, align 8
  %78 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @LPASS_HALTACK_REG, align 8
  %81 = add nsw i64 %79, %80
  %82 = call i32 @regmap_read(i32 %76, i64 %81, i32* %4)
  store i32 %82, i32* %5, align 4
  %83 = load i32, i32* %5, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %93, label %85

85:                                               ; preds = %73
  %86 = load i32, i32* %4, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %93, label %88

88:                                               ; preds = %85
  %89 = load i64, i64* @jiffies, align 8
  %90 = load i64, i64* %3, align 8
  %91 = call i64 @time_after(i64 %89, i64 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %88, %85, %73
  br label %96

94:                                               ; preds = %88
  %95 = call i32 @usleep_range(i32 1000, i32 1100)
  br label %73

96:                                               ; preds = %93
  %97 = load %struct.qcom_adsp*, %struct.qcom_adsp** %2, align 8
  %98 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.qcom_adsp*, %struct.qcom_adsp** %2, align 8
  %101 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @LPASS_MASTER_IDLE_REG, align 8
  %104 = add nsw i64 %102, %103
  %105 = call i32 @regmap_read(i32 %99, i64 %104, i32* %4)
  store i32 %105, i32* %5, align 4
  %106 = load i32, i32* %5, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %96
  %109 = load i32, i32* %4, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %116, label %111

111:                                              ; preds = %108, %96
  %112 = load %struct.qcom_adsp*, %struct.qcom_adsp** %2, align 8
  %113 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @dev_err(i32 %114, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %116

116:                                              ; preds = %111, %108
  br label %117

117:                                              ; preds = %116, %58, %42
  %118 = load %struct.qcom_adsp*, %struct.qcom_adsp** %2, align 8
  %119 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @reset_control_assert(i32 %120)
  %122 = load %struct.qcom_adsp*, %struct.qcom_adsp** %2, align 8
  %123 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @reset_control_assert(i32 %124)
  %126 = call i32 @usleep_range(i32 200, i32 300)
  %127 = load %struct.qcom_adsp*, %struct.qcom_adsp** %2, align 8
  %128 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.qcom_adsp*, %struct.qcom_adsp** %2, align 8
  %131 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @LPASS_HALTREQ_REG, align 8
  %134 = add nsw i64 %132, %133
  %135 = call i32 @regmap_write(i32 %129, i64 %134, i32 0)
  %136 = load %struct.qcom_adsp*, %struct.qcom_adsp** %2, align 8
  %137 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @reset_control_deassert(i32 %138)
  %140 = load %struct.qcom_adsp*, %struct.qcom_adsp** %2, align 8
  %141 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @reset_control_deassert(i32 %142)
  %144 = call i32 @usleep_range(i32 200, i32 300)
  ret i32 0
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @clk_bulk_disable_unprepare(i32, i32) #1

declare dso_local i32 @regmap_read(i32, i64, i32*) #1

declare dso_local i32 @regmap_write(i32, i64, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @reset_control_assert(i32) #1

declare dso_local i32 @reset_control_deassert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
