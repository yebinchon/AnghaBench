; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_qcom_aoss.c_qmp_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_qcom_aoss.c_qmp_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qmp = type { i64, i32, i64, i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"ucore did not ack channel\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qmp*, i8*, i64)* @qmp_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qmp_send(%struct.qmp* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qmp*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.qmp* %0, %struct.qmp** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i64, i64* %7, align 8
  %11 = add i64 %10, 4
  %12 = load %struct.qmp*, %struct.qmp** %5, align 8
  %13 = getelementptr inbounds %struct.qmp, %struct.qmp* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ugt i64 %11, %14
  %16 = zext i1 %15 to i32
  %17 = sext i32 %16 to i64
  %18 = call i64 @WARN_ON(i64 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %88

23:                                               ; preds = %3
  %24 = load i64, i64* %7, align 8
  %25 = urem i64 %24, 4
  %26 = call i64 @WARN_ON(i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %88

31:                                               ; preds = %23
  %32 = load %struct.qmp*, %struct.qmp** %5, align 8
  %33 = getelementptr inbounds %struct.qmp, %struct.qmp* %32, i32 0, i32 1
  %34 = call i32 @mutex_lock(i32* %33)
  %35 = load %struct.qmp*, %struct.qmp** %5, align 8
  %36 = getelementptr inbounds %struct.qmp, %struct.qmp* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.qmp*, %struct.qmp** %5, align 8
  %39 = getelementptr inbounds %struct.qmp, %struct.qmp* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %37, %40
  %42 = add i64 %41, 4
  %43 = load i8*, i8** %6, align 8
  %44 = load i64, i64* %7, align 8
  %45 = udiv i64 %44, 4
  %46 = call i32 @__iowrite32_copy(i64 %42, i8* %43, i64 %45)
  %47 = load i64, i64* %7, align 8
  %48 = load %struct.qmp*, %struct.qmp** %5, align 8
  %49 = getelementptr inbounds %struct.qmp, %struct.qmp* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.qmp*, %struct.qmp** %5, align 8
  %52 = getelementptr inbounds %struct.qmp, %struct.qmp* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %50, %53
  %55 = call i32 @writel(i64 %47, i64 %54)
  %56 = load %struct.qmp*, %struct.qmp** %5, align 8
  %57 = call i32 @qmp_kick(%struct.qmp* %56)
  %58 = load %struct.qmp*, %struct.qmp** %5, align 8
  %59 = getelementptr inbounds %struct.qmp, %struct.qmp* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.qmp*, %struct.qmp** %5, align 8
  %62 = call i32 @qmp_message_empty(%struct.qmp* %61)
  %63 = load i32, i32* @HZ, align 4
  %64 = call i64 @wait_event_interruptible_timeout(i32 %60, i32 %62, i32 %63)
  store i64 %64, i64* %8, align 8
  %65 = load i64, i64* %8, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %82, label %67

67:                                               ; preds = %31
  %68 = load %struct.qmp*, %struct.qmp** %5, align 8
  %69 = getelementptr inbounds %struct.qmp, %struct.qmp* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @dev_err(i32 %70, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %72 = load i32, i32* @ETIMEDOUT, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %9, align 4
  %74 = load %struct.qmp*, %struct.qmp** %5, align 8
  %75 = getelementptr inbounds %struct.qmp, %struct.qmp* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.qmp*, %struct.qmp** %5, align 8
  %78 = getelementptr inbounds %struct.qmp, %struct.qmp* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %76, %79
  %81 = call i32 @writel(i64 0, i64 %80)
  br label %83

82:                                               ; preds = %31
  store i32 0, i32* %9, align 4
  br label %83

83:                                               ; preds = %82, %67
  %84 = load %struct.qmp*, %struct.qmp** %5, align 8
  %85 = getelementptr inbounds %struct.qmp, %struct.qmp* %84, i32 0, i32 1
  %86 = call i32 @mutex_unlock(i32* %85)
  %87 = load i32, i32* %9, align 4
  store i32 %87, i32* %4, align 4
  br label %88

88:                                               ; preds = %83, %28, %20
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local i64 @WARN_ON(i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__iowrite32_copy(i64, i8*, i64) #1

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i32 @qmp_kick(%struct.qmp*) #1

declare dso_local i64 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local i32 @qmp_message_empty(%struct.qmp*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
