; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_ctcm_mpc.c_ctcmpc_get_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_ctcm_mpc.c_ctcmpc_get_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.ctcm_priv* }
%struct.ctcm_priv = type { i32* }

@.str = private unnamed_addr constant [5 x i8] c"%s%i\00", align 1
@MPC_DEVICE_NAME = common dso_local global i8* null, align 8
@init_net = common dso_local global i32 0, align 4
@MPC_ERROR = common dso_local global i32 0, align 4
@CTC_DBF_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"%s: Device not found by name: %s\00", align 1
@CTCM_FUNTAIL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"%s(%s): dev->ml_priv is NULL\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"%s(%s): priv->mpcg is NULL\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_device* (i32)* @ctcmpc_get_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_device* @ctcmpc_get_dev(i32 %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [20 x i8], align 16
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ctcm_priv*, align 8
  store i32 %0, i32* %3, align 4
  %7 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0
  %8 = load i8*, i8** @MPC_DEVICE_NAME, align 8
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @sprintf(i8* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %8, i32 %9)
  %11 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0
  %12 = call %struct.net_device* @__dev_get_by_name(i32* @init_net, i8* %11)
  store %struct.net_device* %12, %struct.net_device** %5, align 8
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = icmp eq %struct.net_device* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load i32, i32* @MPC_ERROR, align 4
  %17 = load i32, i32* @CTC_DBF_ERROR, align 4
  %18 = load i32, i32* @CTCM_FUNTAIL, align 4
  %19 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0
  %20 = call i32 @CTCM_DBF_TEXT_(i32 %16, i32 %17, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %18, i8* %19)
  store %struct.net_device* null, %struct.net_device** %2, align 8
  br label %46

21:                                               ; preds = %1
  %22 = load %struct.net_device*, %struct.net_device** %5, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 0
  %24 = load %struct.ctcm_priv*, %struct.ctcm_priv** %23, align 8
  store %struct.ctcm_priv* %24, %struct.ctcm_priv** %6, align 8
  %25 = load %struct.ctcm_priv*, %struct.ctcm_priv** %6, align 8
  %26 = icmp eq %struct.ctcm_priv* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load i32, i32* @MPC_ERROR, align 4
  %29 = load i32, i32* @CTC_DBF_ERROR, align 4
  %30 = load i32, i32* @CTCM_FUNTAIL, align 4
  %31 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0
  %32 = call i32 @CTCM_DBF_TEXT_(i32 %28, i32 %29, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %30, i8* %31)
  store %struct.net_device* null, %struct.net_device** %2, align 8
  br label %46

33:                                               ; preds = %21
  %34 = load %struct.ctcm_priv*, %struct.ctcm_priv** %6, align 8
  %35 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load i32, i32* @MPC_ERROR, align 4
  %40 = load i32, i32* @CTC_DBF_ERROR, align 4
  %41 = load i32, i32* @CTCM_FUNTAIL, align 4
  %42 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0
  %43 = call i32 @CTCM_DBF_TEXT_(i32 %39, i32 %40, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %41, i8* %42)
  store %struct.net_device* null, %struct.net_device** %2, align 8
  br label %46

44:                                               ; preds = %33
  %45 = load %struct.net_device*, %struct.net_device** %5, align 8
  store %struct.net_device* %45, %struct.net_device** %2, align 8
  br label %46

46:                                               ; preds = %44, %38, %27, %15
  %47 = load %struct.net_device*, %struct.net_device** %2, align 8
  ret %struct.net_device* %47
}

declare dso_local i32 @sprintf(i8*, i8*, i8*, i32) #1

declare dso_local %struct.net_device* @__dev_get_by_name(i32*, i8*) #1

declare dso_local i32 @CTCM_DBF_TEXT_(i32, i32, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
