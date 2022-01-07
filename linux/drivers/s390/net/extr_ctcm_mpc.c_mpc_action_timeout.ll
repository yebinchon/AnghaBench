; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_ctcm_mpc.c_mpc_action_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_ctcm_mpc.c_mpc_action_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.ctcm_priv* }
%struct.ctcm_priv = type { %struct.channel**, %struct.mpc_group* }
%struct.channel = type { i32 }
%struct.mpc_group = type { i32 }

@CTCM_WRITE = common dso_local global i64 0, align 8
@CTCM_READ = common dso_local global i64 0, align 8
@CH_XID0_PENDING = common dso_local global i32 0, align 4
@MPCG_EVENT_INOP = common dso_local global i32 0, align 4
@MPC_TRACE = common dso_local global i32 0, align 4
@CTC_DBF_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"%s: dev=%s exit\00", align 1
@CTCM_FUNTAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i8*)* @mpc_action_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpc_action_timeout(i32* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.ctcm_priv*, align 8
  %9 = alloca %struct.mpc_group*, align 8
  %10 = alloca %struct.channel*, align 8
  %11 = alloca %struct.channel*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.net_device*
  store %struct.net_device* %13, %struct.net_device** %7, align 8
  %14 = load %struct.net_device*, %struct.net_device** %7, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 1
  %16 = load %struct.ctcm_priv*, %struct.ctcm_priv** %15, align 8
  store %struct.ctcm_priv* %16, %struct.ctcm_priv** %8, align 8
  %17 = load %struct.ctcm_priv*, %struct.ctcm_priv** %8, align 8
  %18 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %17, i32 0, i32 1
  %19 = load %struct.mpc_group*, %struct.mpc_group** %18, align 8
  store %struct.mpc_group* %19, %struct.mpc_group** %9, align 8
  %20 = load %struct.ctcm_priv*, %struct.ctcm_priv** %8, align 8
  %21 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %20, i32 0, i32 0
  %22 = load %struct.channel**, %struct.channel*** %21, align 8
  %23 = load i64, i64* @CTCM_WRITE, align 8
  %24 = getelementptr inbounds %struct.channel*, %struct.channel** %22, i64 %23
  %25 = load %struct.channel*, %struct.channel** %24, align 8
  store %struct.channel* %25, %struct.channel** %10, align 8
  %26 = load %struct.ctcm_priv*, %struct.ctcm_priv** %8, align 8
  %27 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %26, i32 0, i32 0
  %28 = load %struct.channel**, %struct.channel*** %27, align 8
  %29 = load i64, i64* @CTCM_READ, align 8
  %30 = getelementptr inbounds %struct.channel*, %struct.channel** %28, i64 %29
  %31 = load %struct.channel*, %struct.channel** %30, align 8
  store %struct.channel* %31, %struct.channel** %11, align 8
  %32 = load %struct.mpc_group*, %struct.mpc_group** %9, align 8
  %33 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @fsm_getstate(i32 %34)
  switch i32 %35, label %52 [
    i32 128, label %36
  ]

36:                                               ; preds = %3
  %37 = load %struct.channel*, %struct.channel** %11, align 8
  %38 = getelementptr inbounds %struct.channel, %struct.channel* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @fsm_getstate(i32 %39)
  %41 = load i32, i32* @CH_XID0_PENDING, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %36
  %44 = load %struct.channel*, %struct.channel** %10, align 8
  %45 = getelementptr inbounds %struct.channel, %struct.channel* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @fsm_getstate(i32 %46)
  %48 = load i32, i32* @CH_XID0_PENDING, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  br label %59

51:                                               ; preds = %43, %36
  br label %52

52:                                               ; preds = %3, %51
  %53 = load %struct.mpc_group*, %struct.mpc_group** %9, align 8
  %54 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @MPCG_EVENT_INOP, align 4
  %57 = load %struct.net_device*, %struct.net_device** %7, align 8
  %58 = call i32 @fsm_event(i32 %55, i32 %56, %struct.net_device* %57)
  br label %59

59:                                               ; preds = %52, %50
  %60 = load i32, i32* @MPC_TRACE, align 4
  %61 = load i32, i32* @CTC_DBF_DEBUG, align 4
  %62 = load i32, i32* @CTCM_FUNTAIL, align 4
  %63 = load %struct.net_device*, %struct.net_device** %7, align 8
  %64 = getelementptr inbounds %struct.net_device, %struct.net_device* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @CTCM_DBF_TEXT_(i32 %60, i32 %61, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %62, i32 %65)
  ret void
}

declare dso_local i32 @fsm_getstate(i32) #1

declare dso_local i32 @fsm_event(i32, i32, %struct.net_device*) #1

declare dso_local i32 @CTCM_DBF_TEXT_(i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
