; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_ctcm_main.c_ctcm_free_netdevice.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_ctcm_main.c_ctcm_free_netdevice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.ctcm_priv*, i32 }
%struct.ctcm_priv = type { %struct.mpc_group*, i32*, %struct.mpc_group* }
%struct.mpc_group = type { i32, i32, i32, i32* }

@SETUP = common dso_local global i32 0, align 4
@CTC_DBF_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s(%s)\00", align 1
@CTCM_FUNTAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @ctcm_free_netdevice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ctcm_free_netdevice(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ctcm_priv*, align 8
  %4 = alloca %struct.mpc_group*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load i32, i32* @SETUP, align 4
  %6 = load i32, i32* @CTC_DBF_INFO, align 4
  %7 = load i32, i32* @CTCM_FUNTAIL, align 4
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @CTCM_DBF_TEXT_(i32 %5, i32 %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %7, i32 %10)
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load %struct.ctcm_priv*, %struct.ctcm_priv** %13, align 8
  store %struct.ctcm_priv* %14, %struct.ctcm_priv** %3, align 8
  %15 = load %struct.ctcm_priv*, %struct.ctcm_priv** %3, align 8
  %16 = icmp ne %struct.ctcm_priv* %15, null
  br i1 %16, label %17, label %68

17:                                               ; preds = %1
  %18 = load %struct.ctcm_priv*, %struct.ctcm_priv** %3, align 8
  %19 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %18, i32 0, i32 2
  %20 = load %struct.mpc_group*, %struct.mpc_group** %19, align 8
  store %struct.mpc_group* %20, %struct.mpc_group** %4, align 8
  %21 = load %struct.mpc_group*, %struct.mpc_group** %4, align 8
  %22 = icmp ne %struct.mpc_group* %21, null
  br i1 %22, label %23, label %49

23:                                               ; preds = %17
  %24 = load %struct.mpc_group*, %struct.mpc_group** %4, align 8
  %25 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %24, i32 0, i32 3
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load %struct.mpc_group*, %struct.mpc_group** %4, align 8
  %30 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %29, i32 0, i32 3
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @kfree_fsm(i32* %31)
  br label %33

33:                                               ; preds = %28, %23
  %34 = load %struct.mpc_group*, %struct.mpc_group** %4, align 8
  %35 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @dev_kfree_skb(i32 %36)
  %38 = load %struct.mpc_group*, %struct.mpc_group** %4, align 8
  %39 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @dev_kfree_skb(i32 %40)
  %42 = load %struct.mpc_group*, %struct.mpc_group** %4, align 8
  %43 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %42, i32 0, i32 0
  %44 = call i32 @tasklet_kill(i32* %43)
  %45 = load %struct.mpc_group*, %struct.mpc_group** %4, align 8
  %46 = call i32 @kfree(%struct.mpc_group* %45)
  %47 = load %struct.ctcm_priv*, %struct.ctcm_priv** %3, align 8
  %48 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %47, i32 0, i32 2
  store %struct.mpc_group* null, %struct.mpc_group** %48, align 8
  br label %49

49:                                               ; preds = %33, %17
  %50 = load %struct.ctcm_priv*, %struct.ctcm_priv** %3, align 8
  %51 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %61

54:                                               ; preds = %49
  %55 = load %struct.ctcm_priv*, %struct.ctcm_priv** %3, align 8
  %56 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = call i32 @kfree_fsm(i32* %57)
  %59 = load %struct.ctcm_priv*, %struct.ctcm_priv** %3, align 8
  %60 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %59, i32 0, i32 1
  store i32* null, i32** %60, align 8
  br label %61

61:                                               ; preds = %54, %49
  %62 = load %struct.ctcm_priv*, %struct.ctcm_priv** %3, align 8
  %63 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %62, i32 0, i32 0
  %64 = load %struct.mpc_group*, %struct.mpc_group** %63, align 8
  %65 = call i32 @kfree(%struct.mpc_group* %64)
  %66 = load %struct.ctcm_priv*, %struct.ctcm_priv** %3, align 8
  %67 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %66, i32 0, i32 0
  store %struct.mpc_group* null, %struct.mpc_group** %67, align 8
  br label %68

68:                                               ; preds = %61, %1
  ret void
}

declare dso_local i32 @CTCM_DBF_TEXT_(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @kfree_fsm(i32*) #1

declare dso_local i32 @dev_kfree_skb(i32) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @kfree(%struct.mpc_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
