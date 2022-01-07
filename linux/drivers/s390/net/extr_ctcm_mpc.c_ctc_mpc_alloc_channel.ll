; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_ctcm_mpc.c_ctc_mpc_alloc_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_ctcm_mpc.c_ctc_mpc_alloc_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.ctcm_priv* }
%struct.ctcm_priv = type { i32, %struct.mpc_group* }
%struct.mpc_group = type { void (i32, i32)*, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32 }

@MPC_SETUP = common dso_local global i32 0, align 4
@CTC_DBF_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"%s(%s): state=%s\00", align 1
@CTCM_FUNTAIL = common dso_local global i32 0, align 4
@DEV_EVENT_START = common dso_local global i32 0, align 4
@MPCG_EVENT_INOP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ctc_mpc_alloc_channel(i32 %0, void (i32, i32)* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca void (i32, i32)*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.mpc_group*, align 8
  %8 = alloca %struct.ctcm_priv*, align 8
  store i32 %0, i32* %4, align 4
  store void (i32, i32)* %1, void (i32, i32)** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.net_device* @ctcmpc_get_dev(i32 %9)
  store %struct.net_device* %10, %struct.net_device** %6, align 8
  %11 = load %struct.net_device*, %struct.net_device** %6, align 8
  %12 = icmp eq %struct.net_device* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %114

14:                                               ; preds = %2
  %15 = load %struct.net_device*, %struct.net_device** %6, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 1
  %17 = load %struct.ctcm_priv*, %struct.ctcm_priv** %16, align 8
  store %struct.ctcm_priv* %17, %struct.ctcm_priv** %8, align 8
  %18 = load %struct.ctcm_priv*, %struct.ctcm_priv** %8, align 8
  %19 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %18, i32 0, i32 1
  %20 = load %struct.mpc_group*, %struct.mpc_group** %19, align 8
  store %struct.mpc_group* %20, %struct.mpc_group** %7, align 8
  %21 = load void (i32, i32)*, void (i32, i32)** %5, align 8
  %22 = load %struct.mpc_group*, %struct.mpc_group** %7, align 8
  %23 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %22, i32 0, i32 0
  store void (i32, i32)* %21, void (i32, i32)** %23, align 8
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.mpc_group*, %struct.mpc_group** %7, align 8
  %26 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 8
  %27 = load %struct.mpc_group*, %struct.mpc_group** %7, align 8
  %28 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %27, i32 0, i32 2
  store i32 1, i32* %28, align 4
  %29 = load i32, i32* @MPC_SETUP, align 4
  %30 = load i32, i32* @CTC_DBF_INFO, align 4
  %31 = load i32, i32* @CTCM_FUNTAIL, align 4
  %32 = load %struct.net_device*, %struct.net_device** %6, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.mpc_group*, %struct.mpc_group** %7, align 8
  %36 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %35, i32 0, i32 7
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @fsm_getstate_str(i32 %37)
  %39 = call i32 @CTCM_DBF_TEXT_(i32 %29, i32 %30, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %34, i32 %38)
  %40 = load %struct.mpc_group*, %struct.mpc_group** %7, align 8
  %41 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %40, i32 0, i32 7
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @fsm_getstate(i32 %42)
  switch i32 %43, label %113 [
    i32 131, label %44
    i32 129, label %47
    i32 128, label %54
    i32 130, label %78
  ]

44:                                               ; preds = %14
  %45 = load %struct.mpc_group*, %struct.mpc_group** %7, align 8
  %46 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %45, i32 0, i32 3
  store i32 1, i32* %46, align 8
  br label %113

47:                                               ; preds = %14
  %48 = load void (i32, i32)*, void (i32, i32)** %5, align 8
  %49 = icmp ne void (i32, i32)* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load %struct.mpc_group*, %struct.mpc_group** %7, align 8
  %52 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %51, i32 0, i32 4
  store i32 1, i32* %52, align 4
  br label %53

53:                                               ; preds = %50, %47
  br label %54

54:                                               ; preds = %14, %53
  %55 = load %struct.mpc_group*, %struct.mpc_group** %7, align 8
  %56 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %55, i32 0, i32 12
  %57 = call i32 @fsm_deltimer(i32* %56)
  %58 = load %struct.mpc_group*, %struct.mpc_group** %7, align 8
  %59 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %58, i32 0, i32 11
  store i32 0, i32* %59, align 8
  %60 = load %struct.mpc_group*, %struct.mpc_group** %7, align 8
  %61 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %60, i32 0, i32 10
  store i32 0, i32* %61, align 4
  %62 = load %struct.mpc_group*, %struct.mpc_group** %7, align 8
  %63 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %62, i32 0, i32 9
  store i32 0, i32* %63, align 8
  %64 = load %struct.mpc_group*, %struct.mpc_group** %7, align 8
  %65 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %64, i32 0, i32 8
  store i32* null, i32** %65, align 8
  %66 = load void (i32, i32)*, void (i32, i32)** %5, align 8
  %67 = icmp ne void (i32, i32)* %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %54
  %69 = load %struct.net_device*, %struct.net_device** %6, align 8
  %70 = call i32 @ctcm_open(%struct.net_device* %69)
  br label %71

71:                                               ; preds = %68, %54
  %72 = load %struct.ctcm_priv*, %struct.ctcm_priv** %8, align 8
  %73 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @DEV_EVENT_START, align 4
  %76 = load %struct.net_device*, %struct.net_device** %6, align 8
  %77 = call i32 @fsm_event(i32 %74, i32 %75, %struct.net_device* %76)
  br label %113

78:                                               ; preds = %14
  %79 = load %struct.mpc_group*, %struct.mpc_group** %7, align 8
  %80 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 8
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 8
  %83 = load %struct.mpc_group*, %struct.mpc_group** %7, align 8
  %84 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 8
  %86 = icmp slt i32 %85, 4
  br i1 %86, label %87, label %103

87:                                               ; preds = %78
  %88 = load %struct.mpc_group*, %struct.mpc_group** %7, align 8
  %89 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %88, i32 0, i32 0
  %90 = load void (i32, i32)*, void (i32, i32)** %89, align 8
  %91 = icmp ne void (i32, i32)* %90, null
  br i1 %91, label %92, label %102

92:                                               ; preds = %87
  %93 = load %struct.mpc_group*, %struct.mpc_group** %7, align 8
  %94 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %93, i32 0, i32 0
  %95 = load void (i32, i32)*, void (i32, i32)** %94, align 8
  %96 = load %struct.mpc_group*, %struct.mpc_group** %7, align 8
  %97 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.mpc_group*, %struct.mpc_group** %7, align 8
  %100 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %99, i32 0, i32 6
  %101 = load i32, i32* %100, align 4
  call void %95(i32 %98, i32 %101)
  br label %102

102:                                              ; preds = %92, %87
  br label %112

103:                                              ; preds = %78
  %104 = load %struct.mpc_group*, %struct.mpc_group** %7, align 8
  %105 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %104, i32 0, i32 7
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @MPCG_EVENT_INOP, align 4
  %108 = load %struct.net_device*, %struct.net_device** %6, align 8
  %109 = call i32 @fsm_event(i32 %106, i32 %107, %struct.net_device* %108)
  %110 = load %struct.mpc_group*, %struct.mpc_group** %7, align 8
  %111 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %110, i32 0, i32 5
  store i32 0, i32* %111, align 8
  br label %112

112:                                              ; preds = %103, %102
  br label %113

113:                                              ; preds = %14, %112, %71, %44
  store i32 0, i32* %3, align 4
  br label %114

114:                                              ; preds = %113, %13
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local %struct.net_device* @ctcmpc_get_dev(i32) #1

declare dso_local i32 @CTCM_DBF_TEXT_(i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @fsm_getstate_str(i32) #1

declare dso_local i32 @fsm_getstate(i32) #1

declare dso_local i32 @fsm_deltimer(i32*) #1

declare dso_local i32 @ctcm_open(%struct.net_device*) #1

declare dso_local i32 @fsm_event(i32, i32, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
