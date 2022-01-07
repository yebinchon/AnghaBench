; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_netiucv.c_netiucv_init_netdevice.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_netiucv.c_netiucv_init_netdevice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.netiucv_priv = type { i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"iucv%d\00", align 1
@NET_NAME_UNKNOWN = common dso_local global i32 0, align 4
@netiucv_setup_netdevice = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"netiucvdev\00", align 1
@dev_state_names = common dso_local global i32 0, align 4
@dev_event_names = common dso_local global i32 0, align 4
@NR_DEV_STATES = common dso_local global i32 0, align 4
@NR_DEV_EVENTS = common dso_local global i32 0, align 4
@dev_fsm = common dso_local global i32 0, align 4
@DEV_FSM_LEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@setup = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"NULL from netiucv_new_connection\0A\00", align 1
@DEV_STATE_STOPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_device* (i8*, i8*)* @netiucv_init_netdevice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_device* @netiucv_init_netdevice(i8* %0, i8* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.netiucv_priv*, align 8
  %7 = alloca %struct.net_device*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i32, i32* @NET_NAME_UNKNOWN, align 4
  %9 = load i32, i32* @netiucv_setup_netdevice, align 4
  %10 = call %struct.net_device* @alloc_netdev(i32 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %9)
  store %struct.net_device* %10, %struct.net_device** %7, align 8
  %11 = load %struct.net_device*, %struct.net_device** %7, align 8
  %12 = icmp ne %struct.net_device* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store %struct.net_device* null, %struct.net_device** %3, align 8
  br label %71

14:                                               ; preds = %2
  %15 = call i32 (...) @rtnl_lock()
  %16 = load %struct.net_device*, %struct.net_device** %7, align 8
  %17 = load %struct.net_device*, %struct.net_device** %7, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @dev_alloc_name(%struct.net_device* %16, i32 %19)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  br label %67

23:                                               ; preds = %14
  %24 = load %struct.net_device*, %struct.net_device** %7, align 8
  %25 = call %struct.netiucv_priv* @netdev_priv(%struct.net_device* %24)
  store %struct.netiucv_priv* %25, %struct.netiucv_priv** %6, align 8
  %26 = load i32, i32* @dev_state_names, align 4
  %27 = load i32, i32* @dev_event_names, align 4
  %28 = load i32, i32* @NR_DEV_STATES, align 4
  %29 = load i32, i32* @NR_DEV_EVENTS, align 4
  %30 = load i32, i32* @dev_fsm, align 4
  %31 = load i32, i32* @DEV_FSM_LEN, align 4
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call i32 @init_fsm(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %26, i32 %27, i32 %28, i32 %29, i32 %30, i32 %31, i32 %32)
  %34 = load %struct.netiucv_priv*, %struct.netiucv_priv** %6, align 8
  %35 = getelementptr inbounds %struct.netiucv_priv, %struct.netiucv_priv* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.netiucv_priv*, %struct.netiucv_priv** %6, align 8
  %37 = getelementptr inbounds %struct.netiucv_priv, %struct.netiucv_priv* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %23
  br label %67

41:                                               ; preds = %23
  %42 = load %struct.net_device*, %struct.net_device** %7, align 8
  %43 = load i8*, i8** %4, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = call i32 @netiucv_new_connection(%struct.net_device* %42, i8* %43, i8* %44)
  %46 = load %struct.netiucv_priv*, %struct.netiucv_priv** %6, align 8
  %47 = getelementptr inbounds %struct.netiucv_priv, %struct.netiucv_priv* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.netiucv_priv*, %struct.netiucv_priv** %6, align 8
  %49 = getelementptr inbounds %struct.netiucv_priv, %struct.netiucv_priv* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %41
  %53 = load i32, i32* @setup, align 4
  %54 = call i32 @IUCV_DBF_TEXT(i32 %53, i32 2, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %62

55:                                               ; preds = %41
  %56 = load %struct.netiucv_priv*, %struct.netiucv_priv** %6, align 8
  %57 = getelementptr inbounds %struct.netiucv_priv, %struct.netiucv_priv* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @DEV_STATE_STOPPED, align 4
  %60 = call i32 @fsm_newstate(i32 %58, i32 %59)
  %61 = load %struct.net_device*, %struct.net_device** %7, align 8
  store %struct.net_device* %61, %struct.net_device** %3, align 8
  br label %71

62:                                               ; preds = %52
  %63 = load %struct.netiucv_priv*, %struct.netiucv_priv** %6, align 8
  %64 = getelementptr inbounds %struct.netiucv_priv, %struct.netiucv_priv* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @kfree_fsm(i32 %65)
  br label %67

67:                                               ; preds = %62, %40, %22
  %68 = call i32 (...) @rtnl_unlock()
  %69 = load %struct.net_device*, %struct.net_device** %7, align 8
  %70 = call i32 @free_netdev(%struct.net_device* %69)
  store %struct.net_device* null, %struct.net_device** %3, align 8
  br label %71

71:                                               ; preds = %67, %55, %13
  %72 = load %struct.net_device*, %struct.net_device** %3, align 8
  ret %struct.net_device* %72
}

declare dso_local %struct.net_device* @alloc_netdev(i32, i8*, i32, i32) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i64 @dev_alloc_name(%struct.net_device*, i32) #1

declare dso_local %struct.netiucv_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @init_fsm(i8*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @netiucv_new_connection(%struct.net_device*, i8*, i8*) #1

declare dso_local i32 @IUCV_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i32 @fsm_newstate(i32, i32) #1

declare dso_local i32 @kfree_fsm(i32) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
