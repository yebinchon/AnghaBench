; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/most/net/extr_net.c_comp_probe_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/most/net/extr_net.c_comp_probe_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.most_interface = type { i32 }
%struct.most_channel_config = type { i64, i64 }
%struct.net_dev_context = type { %struct.net_device*, %struct.net_dev_channel, %struct.net_dev_channel, i32, %struct.most_interface* }
%struct.net_device = type { i32 }
%struct.net_dev_channel = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@MOST_CH_ASYNC = common dso_local global i64 0, align 8
@probe_disc_mt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"meth%d\00", align 1
@NET_NAME_UNKNOWN = common dso_local global i32 0, align 4
@most_nd_setup = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@list_lock = common dso_local global i32 0, align 4
@net_devices = common dso_local global i32 0, align 4
@MOST_CH_TX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"direction is allocated\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"register_netdev() failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.most_interface*, i32, %struct.most_channel_config*, i8*, i8*)* @comp_probe_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @comp_probe_channel(%struct.most_interface* %0, i32 %1, %struct.most_channel_config* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.most_interface*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.most_channel_config*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.net_dev_context*, align 8
  %13 = alloca %struct.net_dev_channel*, align 8
  %14 = alloca %struct.net_device*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.most_interface* %0, %struct.most_interface** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.most_channel_config* %2, %struct.most_channel_config** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 0, i32* %16, align 4
  %17 = load %struct.most_interface*, %struct.most_interface** %7, align 8
  %18 = icmp ne %struct.most_interface* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %6, align 4
  br label %117

22:                                               ; preds = %5
  %23 = load %struct.most_channel_config*, %struct.most_channel_config** %9, align 8
  %24 = getelementptr inbounds %struct.most_channel_config, %struct.most_channel_config* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @MOST_CH_ASYNC, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  br label %117

31:                                               ; preds = %22
  %32 = call i32 @mutex_lock(i32* @probe_disc_mt)
  %33 = load %struct.most_interface*, %struct.most_interface** %7, align 8
  %34 = call %struct.net_dev_context* @get_net_dev(%struct.most_interface* %33)
  store %struct.net_dev_context* %34, %struct.net_dev_context** %12, align 8
  %35 = load %struct.net_dev_context*, %struct.net_dev_context** %12, align 8
  %36 = icmp ne %struct.net_dev_context* %35, null
  br i1 %36, label %75, label %37

37:                                               ; preds = %31
  %38 = load i32, i32* @NET_NAME_UNKNOWN, align 4
  %39 = load i32, i32* @most_nd_setup, align 4
  %40 = call %struct.net_device* @alloc_netdev(i32 40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %39)
  store %struct.net_device* %40, %struct.net_device** %14, align 8
  %41 = load %struct.net_device*, %struct.net_device** %14, align 8
  %42 = icmp ne %struct.net_device* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %37
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %16, align 4
  br label %114

46:                                               ; preds = %37
  %47 = load %struct.net_device*, %struct.net_device** %14, align 8
  %48 = call %struct.net_dev_context* @netdev_priv(%struct.net_device* %47)
  store %struct.net_dev_context* %48, %struct.net_dev_context** %12, align 8
  %49 = load %struct.most_interface*, %struct.most_interface** %7, align 8
  %50 = load %struct.net_dev_context*, %struct.net_dev_context** %12, align 8
  %51 = getelementptr inbounds %struct.net_dev_context, %struct.net_dev_context* %50, i32 0, i32 4
  store %struct.most_interface* %49, %struct.most_interface** %51, align 8
  %52 = load %struct.net_device*, %struct.net_device** %14, align 8
  %53 = load %struct.net_dev_context*, %struct.net_dev_context** %12, align 8
  %54 = getelementptr inbounds %struct.net_dev_context, %struct.net_dev_context* %53, i32 0, i32 0
  store %struct.net_device* %52, %struct.net_device** %54, align 8
  %55 = load i64, i64* %15, align 8
  %56 = call i32 @spin_lock_irqsave(i32* @list_lock, i64 %55)
  %57 = load %struct.net_dev_context*, %struct.net_dev_context** %12, align 8
  %58 = getelementptr inbounds %struct.net_dev_context, %struct.net_dev_context* %57, i32 0, i32 3
  %59 = call i32 @list_add(i32* %58, i32* @net_devices)
  %60 = load i64, i64* %15, align 8
  %61 = call i32 @spin_unlock_irqrestore(i32* @list_lock, i64 %60)
  %62 = load %struct.most_channel_config*, %struct.most_channel_config** %9, align 8
  %63 = getelementptr inbounds %struct.most_channel_config, %struct.most_channel_config* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @MOST_CH_TX, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %46
  %68 = load %struct.net_dev_context*, %struct.net_dev_context** %12, align 8
  %69 = getelementptr inbounds %struct.net_dev_context, %struct.net_dev_context* %68, i32 0, i32 2
  br label %73

70:                                               ; preds = %46
  %71 = load %struct.net_dev_context*, %struct.net_dev_context** %12, align 8
  %72 = getelementptr inbounds %struct.net_dev_context, %struct.net_dev_context* %71, i32 0, i32 1
  br label %73

73:                                               ; preds = %70, %67
  %74 = phi %struct.net_dev_channel* [ %69, %67 ], [ %72, %70 ]
  store %struct.net_dev_channel* %74, %struct.net_dev_channel** %13, align 8
  br label %108

75:                                               ; preds = %31
  %76 = load %struct.most_channel_config*, %struct.most_channel_config** %9, align 8
  %77 = getelementptr inbounds %struct.most_channel_config, %struct.most_channel_config* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @MOST_CH_TX, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %75
  %82 = load %struct.net_dev_context*, %struct.net_dev_context** %12, align 8
  %83 = getelementptr inbounds %struct.net_dev_context, %struct.net_dev_context* %82, i32 0, i32 2
  br label %87

84:                                               ; preds = %75
  %85 = load %struct.net_dev_context*, %struct.net_dev_context** %12, align 8
  %86 = getelementptr inbounds %struct.net_dev_context, %struct.net_dev_context* %85, i32 0, i32 1
  br label %87

87:                                               ; preds = %84, %81
  %88 = phi %struct.net_dev_channel* [ %83, %81 ], [ %86, %84 ]
  store %struct.net_dev_channel* %88, %struct.net_dev_channel** %13, align 8
  %89 = load %struct.net_dev_channel*, %struct.net_dev_channel** %13, align 8
  %90 = getelementptr inbounds %struct.net_dev_channel, %struct.net_dev_channel* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %87
  %94 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %16, align 4
  br label %114

97:                                               ; preds = %87
  %98 = load %struct.net_dev_context*, %struct.net_dev_context** %12, align 8
  %99 = getelementptr inbounds %struct.net_dev_context, %struct.net_dev_context* %98, i32 0, i32 0
  %100 = load %struct.net_device*, %struct.net_device** %99, align 8
  %101 = call i64 @register_netdev(%struct.net_device* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %97
  %104 = call i32 @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %16, align 4
  br label %114

107:                                              ; preds = %97
  br label %108

108:                                              ; preds = %107, %73
  %109 = load i32, i32* %8, align 4
  %110 = load %struct.net_dev_channel*, %struct.net_dev_channel** %13, align 8
  %111 = getelementptr inbounds %struct.net_dev_channel, %struct.net_dev_channel* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  %112 = load %struct.net_dev_channel*, %struct.net_dev_channel** %13, align 8
  %113 = getelementptr inbounds %struct.net_dev_channel, %struct.net_dev_channel* %112, i32 0, i32 0
  store i32 1, i32* %113, align 4
  br label %114

114:                                              ; preds = %108, %103, %93, %43
  %115 = call i32 @mutex_unlock(i32* @probe_disc_mt)
  %116 = load i32, i32* %16, align 4
  store i32 %116, i32* %6, align 4
  br label %117

117:                                              ; preds = %114, %28, %19
  %118 = load i32, i32* %6, align 4
  ret i32 %118
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.net_dev_context* @get_net_dev(%struct.most_interface*) #1

declare dso_local %struct.net_device* @alloc_netdev(i32, i8*, i32, i32) #1

declare dso_local %struct.net_dev_context* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i64 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
