; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_ctcm_main.c_ctcm_shutdown_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_ctcm_main.c_ctcm_shutdown_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccwgroup_device = type { i32*, i32 }
%struct.ctcm_priv = type { %struct.TYPE_3__**, i64 }
%struct.TYPE_3__ = type { %struct.net_device* }
%struct.net_device = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@CTCM_READ = common dso_local global i64 0, align 8
@SETUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@IFF_RUNNING = common dso_local global i32 0, align 4
@CTCM_WRITE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccwgroup_device*)* @ctcm_shutdown_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctcm_shutdown_device(%struct.ccwgroup_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ccwgroup_device*, align 8
  %4 = alloca %struct.ctcm_priv*, align 8
  %5 = alloca %struct.net_device*, align 8
  store %struct.ccwgroup_device* %0, %struct.ccwgroup_device** %3, align 8
  %6 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %7 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %6, i32 0, i32 1
  %8 = call %struct.ctcm_priv* @dev_get_drvdata(i32* %7)
  store %struct.ctcm_priv* %8, %struct.ctcm_priv** %4, align 8
  %9 = load %struct.ctcm_priv*, %struct.ctcm_priv** %4, align 8
  %10 = icmp ne %struct.ctcm_priv* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENODEV, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %121

14:                                               ; preds = %1
  %15 = load %struct.ctcm_priv*, %struct.ctcm_priv** %4, align 8
  %16 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %16, align 8
  %18 = load i64, i64* @CTCM_READ, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %17, i64 %18
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = icmp ne %struct.TYPE_3__* %20, null
  br i1 %21, label %22, label %49

22:                                               ; preds = %14
  %23 = load %struct.ctcm_priv*, %struct.ctcm_priv** %4, align 8
  %24 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %24, align 8
  %26 = load i64, i64* @CTCM_READ, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %25, i64 %26
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load %struct.net_device*, %struct.net_device** %29, align 8
  store %struct.net_device* %30, %struct.net_device** %5, align 8
  %31 = load i32, i32* @SETUP, align 4
  %32 = load %struct.net_device*, %struct.net_device** %5, align 8
  %33 = call i32 @CTCM_DBF_DEV(i32 %31, %struct.net_device* %32, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.net_device*, %struct.net_device** %5, align 8
  %35 = call i32 @ctcm_close(%struct.net_device* %34)
  %36 = load i32, i32* @IFF_RUNNING, align 4
  %37 = xor i32 %36, -1
  %38 = load %struct.net_device*, %struct.net_device** %5, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, %37
  store i32 %41, i32* %39, align 4
  %42 = load %struct.ctcm_priv*, %struct.ctcm_priv** %4, align 8
  %43 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %43, align 8
  %45 = load i64, i64* @CTCM_READ, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %44, i64 %45
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = call i32 @channel_free(%struct.TYPE_3__* %47)
  br label %50

49:                                               ; preds = %14
  store %struct.net_device* null, %struct.net_device** %5, align 8
  br label %50

50:                                               ; preds = %49, %22
  %51 = load %struct.ctcm_priv*, %struct.ctcm_priv** %4, align 8
  %52 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %51, i32 0, i32 0
  %53 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %52, align 8
  %54 = load i64, i64* @CTCM_WRITE, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %53, i64 %54
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = icmp ne %struct.TYPE_3__* %56, null
  br i1 %57, label %58, label %66

58:                                               ; preds = %50
  %59 = load %struct.ctcm_priv*, %struct.ctcm_priv** %4, align 8
  %60 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %59, i32 0, i32 0
  %61 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %60, align 8
  %62 = load i64, i64* @CTCM_WRITE, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %61, i64 %62
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = call i32 @channel_free(%struct.TYPE_3__* %64)
  br label %66

66:                                               ; preds = %58, %50
  %67 = load %struct.net_device*, %struct.net_device** %5, align 8
  %68 = icmp ne %struct.net_device* %67, null
  br i1 %68, label %69, label %74

69:                                               ; preds = %66
  %70 = load %struct.net_device*, %struct.net_device** %5, align 8
  %71 = call i32 @unregister_netdev(%struct.net_device* %70)
  %72 = load %struct.net_device*, %struct.net_device** %5, align 8
  %73 = call i32 @ctcm_free_netdevice(%struct.net_device* %72)
  br label %74

74:                                               ; preds = %69, %66
  %75 = load %struct.ctcm_priv*, %struct.ctcm_priv** %4, align 8
  %76 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %74
  %80 = load %struct.ctcm_priv*, %struct.ctcm_priv** %4, align 8
  %81 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @kfree_fsm(i64 %82)
  br label %84

84:                                               ; preds = %79, %74
  %85 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %86 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @ccw_device_set_offline(i32 %89)
  %91 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %92 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @ccw_device_set_offline(i32 %95)
  %97 = load %struct.ctcm_priv*, %struct.ctcm_priv** %4, align 8
  %98 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %97, i32 0, i32 0
  %99 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %98, align 8
  %100 = load i64, i64* @CTCM_READ, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %99, i64 %100
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %101, align 8
  %103 = call i32 @channel_remove(%struct.TYPE_3__* %102)
  %104 = load %struct.ctcm_priv*, %struct.ctcm_priv** %4, align 8
  %105 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %104, i32 0, i32 0
  %106 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %105, align 8
  %107 = load i64, i64* @CTCM_WRITE, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %106, i64 %107
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %108, align 8
  %110 = call i32 @channel_remove(%struct.TYPE_3__* %109)
  %111 = load %struct.ctcm_priv*, %struct.ctcm_priv** %4, align 8
  %112 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %111, i32 0, i32 0
  %113 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %112, align 8
  %114 = load i64, i64* @CTCM_WRITE, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %113, i64 %114
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %115, align 8
  %116 = load %struct.ctcm_priv*, %struct.ctcm_priv** %4, align 8
  %117 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %116, i32 0, i32 0
  %118 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %117, align 8
  %119 = load i64, i64* @CTCM_READ, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %118, i64 %119
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %120, align 8
  store i32 0, i32* %2, align 4
  br label %121

121:                                              ; preds = %84, %11
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

declare dso_local %struct.ctcm_priv* @dev_get_drvdata(i32*) #1

declare dso_local i32 @CTCM_DBF_DEV(i32, %struct.net_device*, i8*) #1

declare dso_local i32 @ctcm_close(%struct.net_device*) #1

declare dso_local i32 @channel_free(%struct.TYPE_3__*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @ctcm_free_netdevice(%struct.net_device*) #1

declare dso_local i32 @kfree_fsm(i64) #1

declare dso_local i32 @ccw_device_set_offline(i32) #1

declare dso_local i32 @channel_remove(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
