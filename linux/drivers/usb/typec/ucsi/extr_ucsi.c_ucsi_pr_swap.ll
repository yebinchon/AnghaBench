; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/ucsi/extr_ucsi.c_ucsi_pr_swap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/ucsi/extr_ucsi.c_ucsi_pr_swap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.typec_capability = type { i32 }
%struct.ucsi_connector = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i64 }
%struct.ucsi_control = type { i32 }

@ENOTCONN = common dso_local global i32 0, align 4
@UCSI_SWAP_TIMEOUT_MS = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@UCSI_CONSTAT_PWR_OPMODE_PD = common dso_local global i64 0, align 8
@EPROTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.typec_capability*, i32)* @ucsi_pr_swap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucsi_pr_swap(%struct.typec_capability* %0, i32 %1) #0 {
  %3 = alloca %struct.typec_capability*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ucsi_connector*, align 8
  %6 = alloca %struct.ucsi_control, align 4
  %7 = alloca i32, align 4
  store %struct.typec_capability* %0, %struct.typec_capability** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.typec_capability*, %struct.typec_capability** %3, align 8
  %9 = call %struct.ucsi_connector* @to_ucsi_connector(%struct.typec_capability* %8)
  store %struct.ucsi_connector* %9, %struct.ucsi_connector** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.ucsi_connector*, %struct.ucsi_connector** %5, align 8
  %11 = getelementptr inbounds %struct.ucsi_connector, %struct.ucsi_connector* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.ucsi_connector*, %struct.ucsi_connector** %5, align 8
  %14 = getelementptr inbounds %struct.ucsi_connector, %struct.ucsi_connector* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOTCONN, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %7, align 4
  br label %62

20:                                               ; preds = %2
  %21 = load %struct.ucsi_connector*, %struct.ucsi_connector** %5, align 8
  %22 = getelementptr inbounds %struct.ucsi_connector, %struct.ucsi_connector* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %62

28:                                               ; preds = %20
  %29 = load %struct.ucsi_connector*, %struct.ucsi_connector** %5, align 8
  %30 = load i32, i32* %4, align 4
  %31 = getelementptr inbounds %struct.ucsi_control, %struct.ucsi_control* %6, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @UCSI_CMD_SET_PDR(i32 %32, %struct.ucsi_connector* %29, i32 %30)
  %34 = load %struct.ucsi_connector*, %struct.ucsi_connector** %5, align 8
  %35 = call i32 @ucsi_role_cmd(%struct.ucsi_connector* %34, %struct.ucsi_control* %6)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  br label %62

39:                                               ; preds = %28
  %40 = load %struct.ucsi_connector*, %struct.ucsi_connector** %5, align 8
  %41 = getelementptr inbounds %struct.ucsi_connector, %struct.ucsi_connector* %40, i32 0, i32 2
  %42 = load i32, i32* @UCSI_SWAP_TIMEOUT_MS, align 4
  %43 = call i32 @msecs_to_jiffies(i32 %42)
  %44 = call i32 @wait_for_completion_timeout(i32* %41, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %39
  %47 = load i32, i32* @ETIMEDOUT, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %7, align 4
  br label %62

49:                                               ; preds = %39
  %50 = load %struct.ucsi_connector*, %struct.ucsi_connector** %5, align 8
  %51 = getelementptr inbounds %struct.ucsi_connector, %struct.ucsi_connector* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @UCSI_CONSTAT_PWR_OPMODE_PD, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %49
  %57 = load %struct.ucsi_connector*, %struct.ucsi_connector** %5, align 8
  %58 = call i32 @ucsi_reset_connector(%struct.ucsi_connector* %57, i32 1)
  %59 = load i32, i32* @EPROTO, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %7, align 4
  br label %61

61:                                               ; preds = %56, %49
  br label %62

62:                                               ; preds = %61, %46, %38, %27, %17
  %63 = load %struct.ucsi_connector*, %struct.ucsi_connector** %5, align 8
  %64 = getelementptr inbounds %struct.ucsi_connector, %struct.ucsi_connector* %63, i32 0, i32 0
  %65 = call i32 @mutex_unlock(i32* %64)
  %66 = load i32, i32* %7, align 4
  ret i32 %66
}

declare dso_local %struct.ucsi_connector* @to_ucsi_connector(%struct.typec_capability*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @UCSI_CMD_SET_PDR(i32, %struct.ucsi_connector*, i32) #1

declare dso_local i32 @ucsi_role_cmd(%struct.ucsi_connector*, %struct.ucsi_control*) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @ucsi_reset_connector(%struct.ucsi_connector*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
