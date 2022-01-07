; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_apr.c_apr_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_apr.c_apr_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpmsg_device = type { i32 }
%struct.apr = type { i32, i32, i32, i32, i32 }
%struct.apr_rx_buf = type { i32, i32, i32 }

@APR_HDR_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"APR: Improper apr pkt received:%p %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpmsg_device*, i8*, i32, i8*, i32)* @apr_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apr_callback(%struct.rpmsg_device* %0, i8* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.rpmsg_device*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.apr*, align 8
  %13 = alloca %struct.apr_rx_buf*, align 8
  %14 = alloca i64, align 8
  store %struct.rpmsg_device* %0, %struct.rpmsg_device** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load %struct.rpmsg_device*, %struct.rpmsg_device** %7, align 8
  %16 = getelementptr inbounds %struct.rpmsg_device, %struct.rpmsg_device* %15, i32 0, i32 0
  %17 = call %struct.apr* @dev_get_drvdata(i32* %16)
  store %struct.apr* %17, %struct.apr** %12, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @APR_HDR_SIZE, align 4
  %20 = icmp sle i32 %18, %19
  br i1 %20, label %21, label %30

21:                                               ; preds = %5
  %22 = load %struct.apr*, %struct.apr** %12, align 8
  %23 = getelementptr inbounds %struct.apr, %struct.apr* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = load i8*, i8** %8, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @dev_err(i32 %24, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %25, i32 %26)
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %71

30:                                               ; preds = %5
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = add i64 12, %32
  %34 = trunc i64 %33 to i32
  %35 = load i32, i32* @GFP_ATOMIC, align 4
  %36 = call %struct.apr_rx_buf* @kzalloc(i32 %34, i32 %35)
  store %struct.apr_rx_buf* %36, %struct.apr_rx_buf** %13, align 8
  %37 = load %struct.apr_rx_buf*, %struct.apr_rx_buf** %13, align 8
  %38 = icmp ne %struct.apr_rx_buf* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %30
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %6, align 4
  br label %71

42:                                               ; preds = %30
  %43 = load i32, i32* %9, align 4
  %44 = load %struct.apr_rx_buf*, %struct.apr_rx_buf** %13, align 8
  %45 = getelementptr inbounds %struct.apr_rx_buf, %struct.apr_rx_buf* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load %struct.apr_rx_buf*, %struct.apr_rx_buf** %13, align 8
  %47 = getelementptr inbounds %struct.apr_rx_buf, %struct.apr_rx_buf* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load i8*, i8** %8, align 8
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @memcpy(i32 %48, i8* %49, i32 %50)
  %52 = load %struct.apr*, %struct.apr** %12, align 8
  %53 = getelementptr inbounds %struct.apr, %struct.apr* %52, i32 0, i32 2
  %54 = load i64, i64* %14, align 8
  %55 = call i32 @spin_lock_irqsave(i32* %53, i64 %54)
  %56 = load %struct.apr_rx_buf*, %struct.apr_rx_buf** %13, align 8
  %57 = getelementptr inbounds %struct.apr_rx_buf, %struct.apr_rx_buf* %56, i32 0, i32 1
  %58 = load %struct.apr*, %struct.apr** %12, align 8
  %59 = getelementptr inbounds %struct.apr, %struct.apr* %58, i32 0, i32 3
  %60 = call i32 @list_add_tail(i32* %57, i32* %59)
  %61 = load %struct.apr*, %struct.apr** %12, align 8
  %62 = getelementptr inbounds %struct.apr, %struct.apr* %61, i32 0, i32 2
  %63 = load i64, i64* %14, align 8
  %64 = call i32 @spin_unlock_irqrestore(i32* %62, i64 %63)
  %65 = load %struct.apr*, %struct.apr** %12, align 8
  %66 = getelementptr inbounds %struct.apr, %struct.apr* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.apr*, %struct.apr** %12, align 8
  %69 = getelementptr inbounds %struct.apr, %struct.apr* %68, i32 0, i32 0
  %70 = call i32 @queue_work(i32 %67, i32* %69)
  store i32 0, i32* %6, align 4
  br label %71

71:                                               ; preds = %42, %39, %21
  %72 = load i32, i32* %6, align 4
  ret i32 %72
}

declare dso_local %struct.apr* @dev_get_drvdata(i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i8*, i32) #1

declare dso_local %struct.apr_rx_buf* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
