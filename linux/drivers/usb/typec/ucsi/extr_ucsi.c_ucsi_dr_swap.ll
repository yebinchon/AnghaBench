; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/ucsi/extr_ucsi.c_ucsi_dr_swap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/ucsi/extr_ucsi.c_ucsi_dr_swap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.typec_capability = type { i32 }
%struct.ucsi_connector = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.ucsi_control = type { i32 }

@ENOTCONN = common dso_local global i32 0, align 4
@UCSI_CONSTAT_PARTNER_TYPE_DFP = common dso_local global i64 0, align 8
@TYPEC_DEVICE = common dso_local global i32 0, align 4
@UCSI_CONSTAT_PARTNER_TYPE_UFP = common dso_local global i64 0, align 8
@TYPEC_HOST = common dso_local global i32 0, align 4
@UCSI_SWAP_TIMEOUT_MS = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.typec_capability*, i32)* @ucsi_dr_swap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucsi_dr_swap(%struct.typec_capability* %0, i32 %1) #0 {
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
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOTCONN, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %7, align 4
  br label %65

20:                                               ; preds = %2
  %21 = load %struct.ucsi_connector*, %struct.ucsi_connector** %5, align 8
  %22 = getelementptr inbounds %struct.ucsi_connector, %struct.ucsi_connector* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @UCSI_CONSTAT_PARTNER_TYPE_DFP, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %20
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @TYPEC_DEVICE, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %42, label %31

31:                                               ; preds = %27, %20
  %32 = load %struct.ucsi_connector*, %struct.ucsi_connector** %5, align 8
  %33 = getelementptr inbounds %struct.ucsi_connector, %struct.ucsi_connector* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @UCSI_CONSTAT_PARTNER_TYPE_UFP, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %31
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @TYPEC_HOST, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38, %27
  br label %65

43:                                               ; preds = %38, %31
  %44 = load %struct.ucsi_connector*, %struct.ucsi_connector** %5, align 8
  %45 = load i32, i32* %4, align 4
  %46 = getelementptr inbounds %struct.ucsi_control, %struct.ucsi_control* %6, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @UCSI_CMD_SET_UOR(i32 %47, %struct.ucsi_connector* %44, i32 %45)
  %49 = load %struct.ucsi_connector*, %struct.ucsi_connector** %5, align 8
  %50 = call i32 @ucsi_role_cmd(%struct.ucsi_connector* %49, %struct.ucsi_control* %6)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  br label %65

54:                                               ; preds = %43
  %55 = load %struct.ucsi_connector*, %struct.ucsi_connector** %5, align 8
  %56 = getelementptr inbounds %struct.ucsi_connector, %struct.ucsi_connector* %55, i32 0, i32 1
  %57 = load i32, i32* @UCSI_SWAP_TIMEOUT_MS, align 4
  %58 = call i32 @msecs_to_jiffies(i32 %57)
  %59 = call i32 @wait_for_completion_timeout(i32* %56, i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %54
  %62 = load i32, i32* @ETIMEDOUT, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %61, %54
  br label %65

65:                                               ; preds = %64, %53, %42, %17
  %66 = load %struct.ucsi_connector*, %struct.ucsi_connector** %5, align 8
  %67 = getelementptr inbounds %struct.ucsi_connector, %struct.ucsi_connector* %66, i32 0, i32 0
  %68 = call i32 @mutex_unlock(i32* %67)
  %69 = load i32, i32* %7, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %65
  %72 = load i32, i32* %7, align 4
  br label %74

73:                                               ; preds = %65
  br label %74

74:                                               ; preds = %73, %71
  %75 = phi i32 [ %72, %71 ], [ 0, %73 ]
  ret i32 %75
}

declare dso_local %struct.ucsi_connector* @to_ucsi_connector(%struct.typec_capability*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @UCSI_CMD_SET_UOR(i32, %struct.ucsi_connector*, i32) #1

declare dso_local i32 @ucsi_role_cmd(%struct.ucsi_connector*, %struct.ucsi_control*) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
