; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_ctcm_mpc.c_mpc_action_discontact.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_ctcm_mpc.c_mpc_action_discontact.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpcg_info = type { %struct.channel* }
%struct.channel = type { i32, %struct.net_device* }
%struct.net_device = type { i32, %struct.ctcm_priv* }
%struct.ctcm_priv = type { %struct.mpc_group* }
%struct.mpc_group = type { i32, i32 }

@MPC_TRACE = common dso_local global i32 0, align 4
@CTC_DBF_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"%s: %s: %s\0A\00", align 1
@CTCM_FUNTAIL = common dso_local global i32 0, align 4
@MPCG_EVENT_INOP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mpc_action_discontact(i32* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mpcg_info*, align 8
  %8 = alloca %struct.channel*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.ctcm_priv*, align 8
  %11 = alloca %struct.mpc_group*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.mpcg_info*
  store %struct.mpcg_info* %13, %struct.mpcg_info** %7, align 8
  %14 = load %struct.mpcg_info*, %struct.mpcg_info** %7, align 8
  %15 = getelementptr inbounds %struct.mpcg_info, %struct.mpcg_info* %14, i32 0, i32 0
  %16 = load %struct.channel*, %struct.channel** %15, align 8
  store %struct.channel* %16, %struct.channel** %8, align 8
  %17 = load %struct.channel*, %struct.channel** %8, align 8
  %18 = icmp ne %struct.channel* %17, null
  br i1 %18, label %19, label %55

19:                                               ; preds = %3
  %20 = load %struct.channel*, %struct.channel** %8, align 8
  %21 = getelementptr inbounds %struct.channel, %struct.channel* %20, i32 0, i32 1
  %22 = load %struct.net_device*, %struct.net_device** %21, align 8
  store %struct.net_device* %22, %struct.net_device** %9, align 8
  %23 = load %struct.net_device*, %struct.net_device** %9, align 8
  %24 = icmp ne %struct.net_device* %23, null
  br i1 %24, label %25, label %54

25:                                               ; preds = %19
  %26 = load %struct.net_device*, %struct.net_device** %9, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 1
  %28 = load %struct.ctcm_priv*, %struct.ctcm_priv** %27, align 8
  store %struct.ctcm_priv* %28, %struct.ctcm_priv** %10, align 8
  %29 = load %struct.ctcm_priv*, %struct.ctcm_priv** %10, align 8
  %30 = icmp ne %struct.ctcm_priv* %29, null
  br i1 %30, label %31, label %53

31:                                               ; preds = %25
  %32 = load i32, i32* @MPC_TRACE, align 4
  %33 = load i32, i32* @CTC_DBF_NOTICE, align 4
  %34 = load i32, i32* @CTCM_FUNTAIL, align 4
  %35 = load %struct.net_device*, %struct.net_device** %9, align 8
  %36 = getelementptr inbounds %struct.net_device, %struct.net_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.channel*, %struct.channel** %8, align 8
  %39 = getelementptr inbounds %struct.channel, %struct.channel* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @CTCM_DBF_TEXT_(i32 %32, i32 %33, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %37, i32 %40)
  %42 = load %struct.ctcm_priv*, %struct.ctcm_priv** %10, align 8
  %43 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %42, i32 0, i32 0
  %44 = load %struct.mpc_group*, %struct.mpc_group** %43, align 8
  store %struct.mpc_group* %44, %struct.mpc_group** %11, align 8
  %45 = load %struct.mpc_group*, %struct.mpc_group** %11, align 8
  %46 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %45, i32 0, i32 0
  store i32 1, i32* %46, align 4
  %47 = load %struct.mpc_group*, %struct.mpc_group** %11, align 8
  %48 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @MPCG_EVENT_INOP, align 4
  %51 = load %struct.net_device*, %struct.net_device** %9, align 8
  %52 = call i32 @fsm_event(i32 %49, i32 %50, %struct.net_device* %51)
  br label %53

53:                                               ; preds = %31, %25
  br label %54

54:                                               ; preds = %53, %19
  br label %55

55:                                               ; preds = %54, %3
  ret void
}

declare dso_local i32 @CTCM_DBF_TEXT_(i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @fsm_event(i32, i32, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
