; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/mellanox/extr_mlxbf-tmfifo.c_mlxbf_tmfifo_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/mellanox/extr_mlxbf-tmfifo.c_mlxbf_tmfifo_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.virtio_net_config = type { i32, i32, i32 }
%struct.mlxbf_tmfifo = type { i32, i32, %struct.TYPE_2__*, i8*, i8*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i64, %struct.mlxbf_tmfifo* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mlxbf_tmfifo_work_handler = common dso_local global i32 0, align 4
@mlxbf_tmfifo_timer = common dso_local global i32 0, align 4
@MLXBF_TM_MAX_IRQ = common dso_local global i32 0, align 4
@mlxbf_tmfifo_irq_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"tmfifo\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"devm_request_irq failed\0A\00", align 1
@VIRTIO_ID_CONSOLE = common dso_local global i32 0, align 4
@ETH_DATA_LEN = common dso_local global i32 0, align 4
@VIRTIO_NET_S_LINK_UP = common dso_local global i32 0, align 4
@VIRTIO_ID_NET = common dso_local global i32 0, align 4
@MLXBF_TMFIFO_NET_FEATURES = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@MLXBF_TMFIFO_TIMER_INTERVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mlxbf_tmfifo_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxbf_tmfifo_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.virtio_net_config, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.mlxbf_tmfifo*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %5, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.mlxbf_tmfifo* @devm_kzalloc(%struct.device* %11, i32 48, i32 %12)
  store %struct.mlxbf_tmfifo* %13, %struct.mlxbf_tmfifo** %6, align 8
  %14 = load %struct.mlxbf_tmfifo*, %struct.mlxbf_tmfifo** %6, align 8
  %15 = icmp ne %struct.mlxbf_tmfifo* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %172

19:                                               ; preds = %1
  %20 = load %struct.mlxbf_tmfifo*, %struct.mlxbf_tmfifo** %6, align 8
  %21 = getelementptr inbounds %struct.mlxbf_tmfifo, %struct.mlxbf_tmfifo* %20, i32 0, i32 7
  %22 = call i32 @spin_lock_init(i32* %21)
  %23 = load %struct.mlxbf_tmfifo*, %struct.mlxbf_tmfifo** %6, align 8
  %24 = getelementptr inbounds %struct.mlxbf_tmfifo, %struct.mlxbf_tmfifo* %23, i32 0, i32 6
  %25 = load i32, i32* @mlxbf_tmfifo_work_handler, align 4
  %26 = call i32 @INIT_WORK(i32* %24, i32 %25)
  %27 = load %struct.mlxbf_tmfifo*, %struct.mlxbf_tmfifo** %6, align 8
  %28 = getelementptr inbounds %struct.mlxbf_tmfifo, %struct.mlxbf_tmfifo* %27, i32 0, i32 5
  %29 = call i32 @mutex_init(i32* %28)
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = call i8* @devm_platform_ioremap_resource(%struct.platform_device* %30, i32 0)
  %32 = load %struct.mlxbf_tmfifo*, %struct.mlxbf_tmfifo** %6, align 8
  %33 = getelementptr inbounds %struct.mlxbf_tmfifo, %struct.mlxbf_tmfifo* %32, i32 0, i32 4
  store i8* %31, i8** %33, align 8
  %34 = load %struct.mlxbf_tmfifo*, %struct.mlxbf_tmfifo** %6, align 8
  %35 = getelementptr inbounds %struct.mlxbf_tmfifo, %struct.mlxbf_tmfifo* %34, i32 0, i32 4
  %36 = load i8*, i8** %35, align 8
  %37 = call i64 @IS_ERR(i8* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %19
  %40 = load %struct.mlxbf_tmfifo*, %struct.mlxbf_tmfifo** %6, align 8
  %41 = getelementptr inbounds %struct.mlxbf_tmfifo, %struct.mlxbf_tmfifo* %40, i32 0, i32 4
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @PTR_ERR(i8* %42)
  store i32 %43, i32* %2, align 4
  br label %172

44:                                               ; preds = %19
  %45 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %46 = call i8* @devm_platform_ioremap_resource(%struct.platform_device* %45, i32 1)
  %47 = load %struct.mlxbf_tmfifo*, %struct.mlxbf_tmfifo** %6, align 8
  %48 = getelementptr inbounds %struct.mlxbf_tmfifo, %struct.mlxbf_tmfifo* %47, i32 0, i32 3
  store i8* %46, i8** %48, align 8
  %49 = load %struct.mlxbf_tmfifo*, %struct.mlxbf_tmfifo** %6, align 8
  %50 = getelementptr inbounds %struct.mlxbf_tmfifo, %struct.mlxbf_tmfifo* %49, i32 0, i32 3
  %51 = load i8*, i8** %50, align 8
  %52 = call i64 @IS_ERR(i8* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %44
  %55 = load %struct.mlxbf_tmfifo*, %struct.mlxbf_tmfifo** %6, align 8
  %56 = getelementptr inbounds %struct.mlxbf_tmfifo, %struct.mlxbf_tmfifo* %55, i32 0, i32 3
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @PTR_ERR(i8* %57)
  store i32 %58, i32* %2, align 4
  br label %172

59:                                               ; preds = %44
  %60 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %61 = load %struct.mlxbf_tmfifo*, %struct.mlxbf_tmfifo** %6, align 8
  %62 = call i32 @platform_set_drvdata(%struct.platform_device* %60, %struct.mlxbf_tmfifo* %61)
  %63 = load %struct.mlxbf_tmfifo*, %struct.mlxbf_tmfifo** %6, align 8
  %64 = getelementptr inbounds %struct.mlxbf_tmfifo, %struct.mlxbf_tmfifo* %63, i32 0, i32 1
  %65 = load i32, i32* @mlxbf_tmfifo_timer, align 4
  %66 = call i32 @timer_setup(i32* %64, i32 %65, i32 0)
  store i32 0, i32* %7, align 4
  br label %67

67:                                               ; preds = %129, %59
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @MLXBF_TM_MAX_IRQ, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %132

71:                                               ; preds = %67
  %72 = load i32, i32* %7, align 4
  %73 = load %struct.mlxbf_tmfifo*, %struct.mlxbf_tmfifo** %6, align 8
  %74 = getelementptr inbounds %struct.mlxbf_tmfifo, %struct.mlxbf_tmfifo* %73, i32 0, i32 2
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  store i32 %72, i32* %79, align 8
  %80 = load %struct.mlxbf_tmfifo*, %struct.mlxbf_tmfifo** %6, align 8
  %81 = load %struct.mlxbf_tmfifo*, %struct.mlxbf_tmfifo** %6, align 8
  %82 = getelementptr inbounds %struct.mlxbf_tmfifo, %struct.mlxbf_tmfifo* %81, i32 0, i32 2
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 2
  store %struct.mlxbf_tmfifo* %80, %struct.mlxbf_tmfifo** %87, align 8
  %88 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %89 = load i32, i32* %7, align 4
  %90 = call i64 @platform_get_irq(%struct.platform_device* %88, i32 %89)
  %91 = load %struct.mlxbf_tmfifo*, %struct.mlxbf_tmfifo** %6, align 8
  %92 = getelementptr inbounds %struct.mlxbf_tmfifo, %struct.mlxbf_tmfifo* %91, i32 0, i32 2
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 1
  store i64 %90, i64* %97, align 8
  %98 = load %struct.device*, %struct.device** %5, align 8
  %99 = load %struct.mlxbf_tmfifo*, %struct.mlxbf_tmfifo** %6, align 8
  %100 = getelementptr inbounds %struct.mlxbf_tmfifo, %struct.mlxbf_tmfifo* %99, i32 0, i32 2
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = load i32, i32* %7, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load i32, i32* @mlxbf_tmfifo_irq_handler, align 4
  %108 = load %struct.mlxbf_tmfifo*, %struct.mlxbf_tmfifo** %6, align 8
  %109 = getelementptr inbounds %struct.mlxbf_tmfifo, %struct.mlxbf_tmfifo* %108, i32 0, i32 2
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = load i32, i32* %7, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i64 %112
  %114 = call i32 @devm_request_irq(%struct.device* %98, i64 %106, i32 %107, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.TYPE_2__* %113)
  store i32 %114, i32* %8, align 4
  %115 = load i32, i32* %8, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %128

117:                                              ; preds = %71
  %118 = load %struct.device*, %struct.device** %5, align 8
  %119 = call i32 @dev_err(%struct.device* %118, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %120 = load %struct.mlxbf_tmfifo*, %struct.mlxbf_tmfifo** %6, align 8
  %121 = getelementptr inbounds %struct.mlxbf_tmfifo, %struct.mlxbf_tmfifo* %120, i32 0, i32 2
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** %121, align 8
  %123 = load i32, i32* %7, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 1
  store i64 0, i64* %126, align 8
  %127 = load i32, i32* %8, align 4
  store i32 %127, i32* %2, align 4
  br label %172

128:                                              ; preds = %71
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %7, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %7, align 4
  br label %67

132:                                              ; preds = %67
  %133 = load %struct.mlxbf_tmfifo*, %struct.mlxbf_tmfifo** %6, align 8
  %134 = call i32 @mlxbf_tmfifo_set_threshold(%struct.mlxbf_tmfifo* %133)
  %135 = load %struct.device*, %struct.device** %5, align 8
  %136 = load %struct.mlxbf_tmfifo*, %struct.mlxbf_tmfifo** %6, align 8
  %137 = load i32, i32* @VIRTIO_ID_CONSOLE, align 4
  %138 = call i32 @mlxbf_tmfifo_create_vdev(%struct.device* %135, %struct.mlxbf_tmfifo* %136, i32 %137, i32 0, %struct.virtio_net_config* null, i32 0)
  store i32 %138, i32* %8, align 4
  %139 = load i32, i32* %8, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %132
  br label %168

142:                                              ; preds = %132
  %143 = call i32 @memset(%struct.virtio_net_config* %4, i32 0, i32 12)
  %144 = load i32, i32* @ETH_DATA_LEN, align 4
  %145 = getelementptr inbounds %struct.virtio_net_config, %struct.virtio_net_config* %4, i32 0, i32 2
  store i32 %144, i32* %145, align 4
  %146 = load i32, i32* @VIRTIO_NET_S_LINK_UP, align 4
  %147 = getelementptr inbounds %struct.virtio_net_config, %struct.virtio_net_config* %4, i32 0, i32 1
  store i32 %146, i32* %147, align 4
  %148 = getelementptr inbounds %struct.virtio_net_config, %struct.virtio_net_config* %4, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @mlxbf_tmfifo_get_cfg_mac(i32 %149)
  %151 = load %struct.device*, %struct.device** %5, align 8
  %152 = load %struct.mlxbf_tmfifo*, %struct.mlxbf_tmfifo** %6, align 8
  %153 = load i32, i32* @VIRTIO_ID_NET, align 4
  %154 = load i32, i32* @MLXBF_TMFIFO_NET_FEATURES, align 4
  %155 = call i32 @mlxbf_tmfifo_create_vdev(%struct.device* %151, %struct.mlxbf_tmfifo* %152, i32 %153, i32 %154, %struct.virtio_net_config* %4, i32 12)
  store i32 %155, i32* %8, align 4
  %156 = load i32, i32* %8, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %142
  br label %168

159:                                              ; preds = %142
  %160 = load %struct.mlxbf_tmfifo*, %struct.mlxbf_tmfifo** %6, align 8
  %161 = getelementptr inbounds %struct.mlxbf_tmfifo, %struct.mlxbf_tmfifo* %160, i32 0, i32 1
  %162 = load i64, i64* @jiffies, align 8
  %163 = load i64, i64* @MLXBF_TMFIFO_TIMER_INTERVAL, align 8
  %164 = add nsw i64 %162, %163
  %165 = call i32 @mod_timer(i32* %161, i64 %164)
  %166 = load %struct.mlxbf_tmfifo*, %struct.mlxbf_tmfifo** %6, align 8
  %167 = getelementptr inbounds %struct.mlxbf_tmfifo, %struct.mlxbf_tmfifo* %166, i32 0, i32 0
  store i32 1, i32* %167, align 8
  store i32 0, i32* %2, align 4
  br label %172

168:                                              ; preds = %158, %141
  %169 = load %struct.mlxbf_tmfifo*, %struct.mlxbf_tmfifo** %6, align 8
  %170 = call i32 @mlxbf_tmfifo_cleanup(%struct.mlxbf_tmfifo* %169)
  %171 = load i32, i32* %8, align 4
  store i32 %171, i32* %2, align 4
  br label %172

172:                                              ; preds = %168, %159, %117, %54, %39, %16
  %173 = load i32, i32* %2, align 4
  ret i32 %173
}

declare dso_local %struct.mlxbf_tmfifo* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i8* @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mlxbf_tmfifo*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i64, i32, i32, i8*, %struct.TYPE_2__*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @mlxbf_tmfifo_set_threshold(%struct.mlxbf_tmfifo*) #1

declare dso_local i32 @mlxbf_tmfifo_create_vdev(%struct.device*, %struct.mlxbf_tmfifo*, i32, i32, %struct.virtio_net_config*, i32) #1

declare dso_local i32 @memset(%struct.virtio_net_config*, i32, i32) #1

declare dso_local i32 @mlxbf_tmfifo_get_cfg_mac(i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @mlxbf_tmfifo_cleanup(%struct.mlxbf_tmfifo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
