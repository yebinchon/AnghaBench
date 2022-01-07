; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_n_gsm.c_gsm_create_network.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_n_gsm.c_gsm_create_network.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsm_dlci = type { i32, i32, %struct.net_device*, i32, i32, %struct.TYPE_2__* }
%struct.net_device = type { i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.gsm_netconfig = type { i64, i32, i8* }
%struct.gsm_mux_net = type { i32, %struct.gsm_dlci* }

@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"create network interface\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"gsm%d\00", align 1
@NET_NAME_UNKNOWN = common dso_local global i32 0, align 4
@gsm_mux_net_init = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"alloc_netdev failed\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@IFNAMSIZ = common dso_local global i32 0, align 4
@gsm_mux_rx_netchar = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"register netdev\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"network register fail %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gsm_dlci*, %struct.gsm_netconfig*)* @gsm_create_network to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gsm_create_network(%struct.gsm_dlci* %0, %struct.gsm_netconfig* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gsm_dlci*, align 8
  %5 = alloca %struct.gsm_netconfig*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.gsm_mux_net*, align 8
  store %struct.gsm_dlci* %0, %struct.gsm_dlci** %4, align 8
  store %struct.gsm_netconfig* %1, %struct.gsm_netconfig** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load i32, i32* @CAP_NET_ADMIN, align 4
  %11 = call i32 @capable(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @EPERM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %140

16:                                               ; preds = %2
  %17 = load %struct.gsm_dlci*, %struct.gsm_dlci** %4, align 8
  %18 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp sgt i32 %19, 2
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i32, i32* @EBUSY, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %140

24:                                               ; preds = %16
  %25 = load %struct.gsm_netconfig*, %struct.gsm_netconfig** %5, align 8
  %26 = getelementptr inbounds %struct.gsm_netconfig, %struct.gsm_netconfig* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* @ETH_P_IP, align 4
  %29 = call i64 @htons(i32 %28)
  %30 = icmp ne i64 %27, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load i32, i32* @EPROTONOSUPPORT, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %140

34:                                               ; preds = %24
  %35 = load %struct.gsm_netconfig*, %struct.gsm_netconfig** %5, align 8
  %36 = getelementptr inbounds %struct.gsm_netconfig, %struct.gsm_netconfig* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 3
  br i1 %38, label %39, label %47

39:                                               ; preds = %34
  %40 = load %struct.gsm_netconfig*, %struct.gsm_netconfig** %5, align 8
  %41 = getelementptr inbounds %struct.gsm_netconfig, %struct.gsm_netconfig* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 4
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32, i32* @EPROTONOSUPPORT, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %140

47:                                               ; preds = %39, %34
  %48 = call i32 @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  %49 = load %struct.gsm_netconfig*, %struct.gsm_netconfig** %5, align 8
  %50 = getelementptr inbounds %struct.gsm_netconfig, %struct.gsm_netconfig* %49, i32 0, i32 2
  %51 = load i8*, i8** %50, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 0
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %47
  %57 = load %struct.gsm_netconfig*, %struct.gsm_netconfig** %5, align 8
  %58 = getelementptr inbounds %struct.gsm_netconfig, %struct.gsm_netconfig* %57, i32 0, i32 2
  %59 = load i8*, i8** %58, align 8
  store i8* %59, i8** %6, align 8
  br label %60

60:                                               ; preds = %56, %47
  %61 = load i8*, i8** %6, align 8
  %62 = load i32, i32* @NET_NAME_UNKNOWN, align 4
  %63 = load i32, i32* @gsm_mux_net_init, align 4
  %64 = call %struct.net_device* @alloc_netdev(i32 16, i8* %61, i32 %62, i32 %63)
  store %struct.net_device* %64, %struct.net_device** %8, align 8
  %65 = load %struct.net_device*, %struct.net_device** %8, align 8
  %66 = icmp ne %struct.net_device* %65, null
  br i1 %66, label %71, label %67

67:                                               ; preds = %60
  %68 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %140

71:                                               ; preds = %60
  %72 = load %struct.gsm_dlci*, %struct.gsm_dlci** %4, align 8
  %73 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %72, i32 0, i32 5
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.net_device*, %struct.net_device** %8, align 8
  %78 = getelementptr inbounds %struct.net_device, %struct.net_device* %77, i32 0, i32 4
  store i32 %76, i32* %78, align 4
  %79 = load %struct.net_device*, %struct.net_device** %8, align 8
  %80 = getelementptr inbounds %struct.net_device, %struct.net_device* %79, i32 0, i32 0
  store i32 8, i32* %80, align 4
  %81 = load %struct.gsm_dlci*, %struct.gsm_dlci** %4, align 8
  %82 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %81, i32 0, i32 5
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.net_device*, %struct.net_device** %8, align 8
  %87 = getelementptr inbounds %struct.net_device, %struct.net_device* %86, i32 0, i32 3
  store i32 %85, i32* %87, align 4
  %88 = load %struct.net_device*, %struct.net_device** %8, align 8
  %89 = call %struct.gsm_mux_net* @netdev_priv(%struct.net_device* %88)
  store %struct.gsm_mux_net* %89, %struct.gsm_mux_net** %9, align 8
  %90 = load %struct.gsm_dlci*, %struct.gsm_dlci** %4, align 8
  %91 = load %struct.gsm_mux_net*, %struct.gsm_mux_net** %9, align 8
  %92 = getelementptr inbounds %struct.gsm_mux_net, %struct.gsm_mux_net* %91, i32 0, i32 1
  store %struct.gsm_dlci* %90, %struct.gsm_dlci** %92, align 8
  %93 = load %struct.gsm_mux_net*, %struct.gsm_mux_net** %9, align 8
  %94 = getelementptr inbounds %struct.gsm_mux_net, %struct.gsm_mux_net* %93, i32 0, i32 0
  %95 = call i32 @kref_init(i32* %94)
  %96 = load %struct.gsm_netconfig*, %struct.gsm_netconfig** %5, align 8
  %97 = getelementptr inbounds %struct.gsm_netconfig, %struct.gsm_netconfig* %96, i32 0, i32 2
  %98 = load i8*, i8** %97, align 8
  %99 = load %struct.net_device*, %struct.net_device** %8, align 8
  %100 = getelementptr inbounds %struct.net_device, %struct.net_device* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @IFNAMSIZ, align 4
  %103 = call i32 @strncpy(i8* %98, i32 %101, i32 %102)
  %104 = load %struct.gsm_dlci*, %struct.gsm_dlci** %4, align 8
  %105 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.gsm_dlci*, %struct.gsm_dlci** %4, align 8
  %108 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 4
  %109 = load %struct.gsm_dlci*, %struct.gsm_dlci** %4, align 8
  %110 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.gsm_dlci*, %struct.gsm_dlci** %4, align 8
  %113 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %112, i32 0, i32 4
  store i32 %111, i32* %113, align 4
  %114 = load %struct.gsm_netconfig*, %struct.gsm_netconfig** %5, align 8
  %115 = getelementptr inbounds %struct.gsm_netconfig, %struct.gsm_netconfig* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.gsm_dlci*, %struct.gsm_dlci** %4, align 8
  %118 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 8
  %119 = load i32, i32* @gsm_mux_rx_netchar, align 4
  %120 = load %struct.gsm_dlci*, %struct.gsm_dlci** %4, align 8
  %121 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %120, i32 0, i32 3
  store i32 %119, i32* %121, align 8
  %122 = load %struct.net_device*, %struct.net_device** %8, align 8
  %123 = load %struct.gsm_dlci*, %struct.gsm_dlci** %4, align 8
  %124 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %123, i32 0, i32 2
  store %struct.net_device* %122, %struct.net_device** %124, align 8
  %125 = call i32 @pr_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %126 = load %struct.net_device*, %struct.net_device** %8, align 8
  %127 = call i32 @register_netdev(%struct.net_device* %126)
  store i32 %127, i32* %7, align 4
  %128 = load i32, i32* %7, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %71
  %131 = load i32, i32* %7, align 4
  %132 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %131)
  %133 = load %struct.gsm_dlci*, %struct.gsm_dlci** %4, align 8
  %134 = call i32 @dlci_net_free(%struct.gsm_dlci* %133)
  %135 = load i32, i32* %7, align 4
  store i32 %135, i32* %3, align 4
  br label %140

136:                                              ; preds = %71
  %137 = load %struct.net_device*, %struct.net_device** %8, align 8
  %138 = getelementptr inbounds %struct.net_device, %struct.net_device* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  store i32 %139, i32* %3, align 4
  br label %140

140:                                              ; preds = %136, %130, %67, %44, %31, %21, %13
  %141 = load i32, i32* %3, align 4
  ret i32 %141
}

declare dso_local i32 @capable(i32) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local %struct.net_device* @alloc_netdev(i32, i8*, i32, i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local %struct.gsm_mux_net* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @strncpy(i8*, i32, i32) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @dlci_net_free(%struct.gsm_dlci*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
