; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_ctcm_fsms.c_ctcm_chx_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_ctcm_fsms.c_ctcm_chx_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.channel = type { i32, i32, i32, i64, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, %struct.net_device* }
%struct.net_device = type { i32, %struct.ctcm_priv* }
%struct.ctcm_priv = type { i32 }

@SETUP = common dso_local global i32 0, align 4
@CTC_DBF_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"%s(%s): %s[%d]\0A\00", align 1
@CTCM_FUNTAIL = common dso_local global i32 0, align 4
@CTC_STATE_STOPPED = common dso_local global i32 0, align 4
@CTCM_READ = common dso_local global i64 0, align 8
@DEV_EVENT_RXDOWN = common dso_local global i32 0, align 4
@DEV_EVENT_TXDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, %struct.channel*)* @ctcm_chx_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ctcm_chx_cleanup(i32* %0, i32 %1, %struct.channel* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.channel*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.ctcm_priv*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.channel* %2, %struct.channel** %6, align 8
  %9 = load %struct.channel*, %struct.channel** %6, align 8
  %10 = getelementptr inbounds %struct.channel, %struct.channel* %9, i32 0, i32 13
  %11 = load %struct.net_device*, %struct.net_device** %10, align 8
  store %struct.net_device* %11, %struct.net_device** %7, align 8
  %12 = load %struct.net_device*, %struct.net_device** %7, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 1
  %14 = load %struct.ctcm_priv*, %struct.ctcm_priv** %13, align 8
  store %struct.ctcm_priv* %14, %struct.ctcm_priv** %8, align 8
  %15 = load i32, i32* @SETUP, align 4
  %16 = load i32, i32* @CTC_DBF_NOTICE, align 4
  %17 = load i32, i32* @CTCM_FUNTAIL, align 4
  %18 = load %struct.net_device*, %struct.net_device** %7, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.channel*, %struct.channel** %6, align 8
  %22 = getelementptr inbounds %struct.channel, %struct.channel* %21, i32 0, i32 12
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @CTCM_DBF_TEXT_(i32 %15, i32 %16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %20, i32 %23, i32 %24)
  %26 = load %struct.channel*, %struct.channel** %6, align 8
  %27 = getelementptr inbounds %struct.channel, %struct.channel* %26, i32 0, i32 11
  %28 = call i32 @fsm_deltimer(i32* %27)
  %29 = load %struct.channel*, %struct.channel** %6, align 8
  %30 = call i64 @IS_MPC(%struct.channel* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %3
  %33 = load %struct.channel*, %struct.channel** %6, align 8
  %34 = getelementptr inbounds %struct.channel, %struct.channel* %33, i32 0, i32 10
  %35 = call i32 @fsm_deltimer(i32* %34)
  br label %36

36:                                               ; preds = %32, %3
  %37 = load i32*, i32** %4, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @fsm_newstate(i32* %37, i32 %38)
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @CTC_STATE_STOPPED, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %60

43:                                               ; preds = %36
  %44 = load %struct.channel*, %struct.channel** %6, align 8
  %45 = getelementptr inbounds %struct.channel, %struct.channel* %44, i32 0, i32 8
  %46 = load i32*, i32** %45, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %60

48:                                               ; preds = %43
  %49 = load %struct.channel*, %struct.channel** %6, align 8
  %50 = getelementptr inbounds %struct.channel, %struct.channel* %49, i32 0, i32 9
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  %53 = call i32 @clear_normalized_cda(i32* %52)
  %54 = load %struct.channel*, %struct.channel** %6, align 8
  %55 = getelementptr inbounds %struct.channel, %struct.channel* %54, i32 0, i32 8
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @dev_kfree_skb_any(i32* %56)
  %58 = load %struct.channel*, %struct.channel** %6, align 8
  %59 = getelementptr inbounds %struct.channel, %struct.channel* %58, i32 0, i32 8
  store i32* null, i32** %59, align 8
  br label %60

60:                                               ; preds = %48, %43, %36
  %61 = load %struct.channel*, %struct.channel** %6, align 8
  %62 = getelementptr inbounds %struct.channel, %struct.channel* %61, i32 0, i32 0
  store i32 0, i32* %62, align 8
  %63 = load %struct.channel*, %struct.channel** %6, align 8
  %64 = getelementptr inbounds %struct.channel, %struct.channel* %63, i32 0, i32 1
  store i32 0, i32* %64, align 4
  %65 = load %struct.channel*, %struct.channel** %6, align 8
  %66 = getelementptr inbounds %struct.channel, %struct.channel* %65, i32 0, i32 7
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @CHANNEL_DIRECTION(i32 %67)
  %69 = load i64, i64* @CTCM_READ, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %81

71:                                               ; preds = %60
  %72 = load %struct.channel*, %struct.channel** %6, align 8
  %73 = getelementptr inbounds %struct.channel, %struct.channel* %72, i32 0, i32 6
  %74 = call i32 @skb_queue_purge(i32* %73)
  %75 = load %struct.ctcm_priv*, %struct.ctcm_priv** %8, align 8
  %76 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @DEV_EVENT_RXDOWN, align 4
  %79 = load %struct.net_device*, %struct.net_device** %7, align 8
  %80 = call i32 @fsm_event(i32 %77, i32 %78, %struct.net_device* %79)
  br label %110

81:                                               ; preds = %60
  %82 = load %struct.channel*, %struct.channel** %6, align 8
  %83 = getelementptr inbounds %struct.channel, %struct.channel* %82, i32 0, i32 6
  %84 = call i32 @ctcm_purge_skb_queue(i32* %83)
  %85 = load %struct.channel*, %struct.channel** %6, align 8
  %86 = call i64 @IS_MPC(%struct.channel* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %81
  %89 = load %struct.channel*, %struct.channel** %6, align 8
  %90 = getelementptr inbounds %struct.channel, %struct.channel* %89, i32 0, i32 5
  %91 = call i32 @ctcm_purge_skb_queue(i32* %90)
  br label %92

92:                                               ; preds = %88, %81
  %93 = load %struct.channel*, %struct.channel** %6, align 8
  %94 = getelementptr inbounds %struct.channel, %struct.channel* %93, i32 0, i32 2
  %95 = call i32 @spin_lock(i32* %94)
  %96 = load %struct.channel*, %struct.channel** %6, align 8
  %97 = getelementptr inbounds %struct.channel, %struct.channel* %96, i32 0, i32 4
  %98 = call i32 @ctcm_purge_skb_queue(i32* %97)
  %99 = load %struct.channel*, %struct.channel** %6, align 8
  %100 = getelementptr inbounds %struct.channel, %struct.channel* %99, i32 0, i32 3
  store i64 0, i64* %100, align 8
  %101 = load %struct.channel*, %struct.channel** %6, align 8
  %102 = getelementptr inbounds %struct.channel, %struct.channel* %101, i32 0, i32 2
  %103 = call i32 @spin_unlock(i32* %102)
  %104 = load %struct.ctcm_priv*, %struct.ctcm_priv** %8, align 8
  %105 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @DEV_EVENT_TXDOWN, align 4
  %108 = load %struct.net_device*, %struct.net_device** %7, align 8
  %109 = call i32 @fsm_event(i32 %106, i32 %107, %struct.net_device* %108)
  br label %110

110:                                              ; preds = %92, %71
  ret void
}

declare dso_local i32 @CTCM_DBF_TEXT_(i32, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @fsm_deltimer(i32*) #1

declare dso_local i64 @IS_MPC(%struct.channel*) #1

declare dso_local i32 @fsm_newstate(i32*, i32) #1

declare dso_local i32 @clear_normalized_cda(i32*) #1

declare dso_local i32 @dev_kfree_skb_any(i32*) #1

declare dso_local i64 @CHANNEL_DIRECTION(i32) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

declare dso_local i32 @fsm_event(i32, i32, %struct.net_device*) #1

declare dso_local i32 @ctcm_purge_skb_queue(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
