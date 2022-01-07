; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks7010_sdio.c_ks7010_sdio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks7010_sdio.c_ks7010_sdio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdio_func = type { i32, i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sdio_device_id = type { i32 }
%struct.ks_wlan_private = type { i32, i32, i32, i32 }
%struct.net_device = type { i32 }
%struct.ks_sdio_card = type { %struct.sdio_func*, %struct.ks_wlan_private* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@KS7010_IO_BLOCK_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"multi_block=%d sdio_set_block_size()=%d %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"class = 0x%X, vendor = 0x%X, device = 0x%X\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Unable to alloc new net device\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"wlan%d\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Couldn't get name!\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"firmware load failed !! ret = %d\0A\00", align 1
@DEVICE_STATE_BOOT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [3 x i8] c"wq\00", align 1
@WQ_MEM_RECLAIM = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [28 x i8] c"create_workqueue failed !!\0A\00", align 1
@ks7010_rw_function = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdio_func*, %struct.sdio_device_id*)* @ks7010_sdio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ks7010_sdio_probe(%struct.sdio_func* %0, %struct.sdio_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sdio_func*, align 8
  %5 = alloca %struct.sdio_device_id*, align 8
  %6 = alloca %struct.ks_wlan_private*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.ks_sdio_card*, align 8
  %9 = alloca i32, align 4
  store %struct.sdio_func* %0, %struct.sdio_func** %4, align 8
  store %struct.sdio_device_id* %1, %struct.sdio_device_id** %5, align 8
  store %struct.ks_wlan_private* null, %struct.ks_wlan_private** %6, align 8
  store %struct.net_device* null, %struct.net_device** %7, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.ks_sdio_card* @kzalloc(i32 16, i32 %10)
  store %struct.ks_sdio_card* %11, %struct.ks_sdio_card** %8, align 8
  %12 = load %struct.ks_sdio_card*, %struct.ks_sdio_card** %8, align 8
  %13 = icmp ne %struct.ks_sdio_card* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %177

17:                                               ; preds = %2
  %18 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %19 = load %struct.ks_sdio_card*, %struct.ks_sdio_card** %8, align 8
  %20 = getelementptr inbounds %struct.ks_sdio_card, %struct.ks_sdio_card* %19, i32 0, i32 0
  store %struct.sdio_func* %18, %struct.sdio_func** %20, align 8
  %21 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %22 = call i32 @sdio_claim_host(%struct.sdio_func* %21)
  %23 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %24 = load i32, i32* @KS7010_IO_BLOCK_SIZE, align 4
  %25 = call i32 @sdio_set_block_size(%struct.sdio_func* %23, i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %17
  br label %168

29:                                               ; preds = %17
  %30 = load %struct.ks_sdio_card*, %struct.ks_sdio_card** %8, align 8
  %31 = getelementptr inbounds %struct.ks_sdio_card, %struct.ks_sdio_card* %30, i32 0, i32 0
  %32 = load %struct.sdio_func*, %struct.sdio_func** %31, align 8
  %33 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %32, i32 0, i32 1
  %34 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %35 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %34, i32 0, i32 5
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %41 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @dev_dbg(i32* %33, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %42, i32 %43)
  %45 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %46 = call i32 @sdio_enable_func(%struct.sdio_func* %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %29
  br label %168

50:                                               ; preds = %29
  %51 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %52 = call i32 @ks7010_sdio_setup_irqs(%struct.sdio_func* %51)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %165

56:                                               ; preds = %50
  %57 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %58 = call i32 @sdio_release_host(%struct.sdio_func* %57)
  %59 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %60 = load %struct.ks_sdio_card*, %struct.ks_sdio_card** %8, align 8
  %61 = call i32 @sdio_set_drvdata(%struct.sdio_func* %59, %struct.ks_sdio_card* %60)
  %62 = load %struct.ks_sdio_card*, %struct.ks_sdio_card** %8, align 8
  %63 = getelementptr inbounds %struct.ks_sdio_card, %struct.ks_sdio_card* %62, i32 0, i32 0
  %64 = load %struct.sdio_func*, %struct.sdio_func** %63, align 8
  %65 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %64, i32 0, i32 1
  %66 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %67 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %70 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %73 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @dev_dbg(i32* %65, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %68, i32 %71, i32 %74)
  %76 = call %struct.net_device* @alloc_etherdev(i32 16)
  store %struct.net_device* %76, %struct.net_device** %7, align 8
  %77 = load %struct.net_device*, %struct.net_device** %7, align 8
  %78 = icmp ne %struct.net_device* %77, null
  br i1 %78, label %85, label %79

79:                                               ; preds = %56
  %80 = load %struct.ks_sdio_card*, %struct.ks_sdio_card** %8, align 8
  %81 = getelementptr inbounds %struct.ks_sdio_card, %struct.ks_sdio_card* %80, i32 0, i32 0
  %82 = load %struct.sdio_func*, %struct.sdio_func** %81, align 8
  %83 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %82, i32 0, i32 1
  %84 = call i32 @dev_err(i32* %83, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %160

85:                                               ; preds = %56
  %86 = load %struct.net_device*, %struct.net_device** %7, align 8
  %87 = call i32 @dev_alloc_name(%struct.net_device* %86, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %9, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %85
  %91 = load %struct.ks_sdio_card*, %struct.ks_sdio_card** %8, align 8
  %92 = getelementptr inbounds %struct.ks_sdio_card, %struct.ks_sdio_card* %91, i32 0, i32 0
  %93 = load %struct.sdio_func*, %struct.sdio_func** %92, align 8
  %94 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %93, i32 0, i32 1
  %95 = call i32 @dev_err(i32* %94, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  br label %157

96:                                               ; preds = %85
  %97 = load %struct.net_device*, %struct.net_device** %7, align 8
  %98 = call %struct.ks_wlan_private* @netdev_priv(%struct.net_device* %97)
  store %struct.ks_wlan_private* %98, %struct.ks_wlan_private** %6, align 8
  %99 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %6, align 8
  %100 = load %struct.ks_sdio_card*, %struct.ks_sdio_card** %8, align 8
  %101 = getelementptr inbounds %struct.ks_sdio_card, %struct.ks_sdio_card* %100, i32 0, i32 1
  store %struct.ks_wlan_private* %99, %struct.ks_wlan_private** %101, align 8
  %102 = load %struct.net_device*, %struct.net_device** %7, align 8
  %103 = load %struct.ks_sdio_card*, %struct.ks_sdio_card** %8, align 8
  %104 = getelementptr inbounds %struct.ks_sdio_card, %struct.ks_sdio_card* %103, i32 0, i32 0
  %105 = load %struct.sdio_func*, %struct.sdio_func** %104, align 8
  %106 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %105, i32 0, i32 1
  %107 = call i32 @SET_NETDEV_DEV(%struct.net_device* %102, i32* %106)
  %108 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %6, align 8
  %109 = load %struct.ks_sdio_card*, %struct.ks_sdio_card** %8, align 8
  %110 = load %struct.net_device*, %struct.net_device** %7, align 8
  %111 = call i32 @ks7010_private_init(%struct.ks_wlan_private* %108, %struct.ks_sdio_card* %109, %struct.net_device* %110)
  %112 = load %struct.ks_sdio_card*, %struct.ks_sdio_card** %8, align 8
  %113 = call i32 @ks7010_upload_firmware(%struct.ks_sdio_card* %112)
  store i32 %113, i32* %9, align 4
  %114 = load i32, i32* %9, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %96
  %117 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %6, align 8
  %118 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %9, align 4
  %121 = call i32 (i32, i8*, ...) @netdev_err(i32 %119, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %120)
  br label %157

122:                                              ; preds = %96
  %123 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %124 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %6, align 8
  %125 = call i32 @ks7010_sdio_init_irqs(%struct.sdio_func* %123, %struct.ks_wlan_private* %124)
  %126 = load i32, i32* @DEVICE_STATE_BOOT, align 4
  %127 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %6, align 8
  %128 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %127, i32 0, i32 3
  store i32 %126, i32* %128, align 4
  %129 = load i32, i32* @WQ_MEM_RECLAIM, align 4
  %130 = call i32 @alloc_workqueue(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %129, i32 1)
  %131 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %6, align 8
  %132 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %131, i32 0, i32 2
  store i32 %130, i32* %132, align 4
  %133 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %6, align 8
  %134 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %142, label %137

137:                                              ; preds = %122
  %138 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %6, align 8
  %139 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i32 (i32, i8*, ...) @netdev_err(i32 %140, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  br label %157

142:                                              ; preds = %122
  %143 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %6, align 8
  %144 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %143, i32 0, i32 1
  %145 = load i32, i32* @ks7010_rw_function, align 4
  %146 = call i32 @INIT_DELAYED_WORK(i32* %144, i32 %145)
  %147 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %6, align 8
  %148 = call i32 @ks7010_card_init(%struct.ks_wlan_private* %147)
  %149 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %6, align 8
  %150 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @register_netdev(i32 %151)
  store i32 %152, i32* %9, align 4
  %153 = load i32, i32* %9, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %142
  br label %157

156:                                              ; preds = %142
  store i32 0, i32* %3, align 4
  br label %177

157:                                              ; preds = %155, %137, %116, %90
  %158 = load %struct.net_device*, %struct.net_device** %7, align 8
  %159 = call i32 @free_netdev(%struct.net_device* %158)
  br label %160

160:                                              ; preds = %157, %79
  %161 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %162 = call i32 @sdio_claim_host(%struct.sdio_func* %161)
  %163 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %164 = call i32 @sdio_release_irq(%struct.sdio_func* %163)
  br label %165

165:                                              ; preds = %160, %55
  %166 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %167 = call i32 @sdio_disable_func(%struct.sdio_func* %166)
  br label %168

168:                                              ; preds = %165, %49, %28
  %169 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %170 = call i32 @sdio_release_host(%struct.sdio_func* %169)
  %171 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %172 = call i32 @sdio_set_drvdata(%struct.sdio_func* %171, %struct.ks_sdio_card* null)
  %173 = load %struct.ks_sdio_card*, %struct.ks_sdio_card** %8, align 8
  %174 = call i32 @kfree(%struct.ks_sdio_card* %173)
  %175 = load i32, i32* @ENODEV, align 4
  %176 = sub nsw i32 0, %175
  store i32 %176, i32* %3, align 4
  br label %177

177:                                              ; preds = %168, %156, %14
  %178 = load i32, i32* %3, align 4
  ret i32 %178
}

declare dso_local %struct.ks_sdio_card* @kzalloc(i32, i32) #1

declare dso_local i32 @sdio_claim_host(%struct.sdio_func*) #1

declare dso_local i32 @sdio_set_block_size(%struct.sdio_func*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @sdio_enable_func(%struct.sdio_func*) #1

declare dso_local i32 @ks7010_sdio_setup_irqs(%struct.sdio_func*) #1

declare dso_local i32 @sdio_release_host(%struct.sdio_func*) #1

declare dso_local i32 @sdio_set_drvdata(%struct.sdio_func*, %struct.ks_sdio_card*) #1

declare dso_local %struct.net_device* @alloc_etherdev(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @dev_alloc_name(%struct.net_device*, i8*) #1

declare dso_local %struct.ks_wlan_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32*) #1

declare dso_local i32 @ks7010_private_init(%struct.ks_wlan_private*, %struct.ks_sdio_card*, %struct.net_device*) #1

declare dso_local i32 @ks7010_upload_firmware(%struct.ks_sdio_card*) #1

declare dso_local i32 @netdev_err(i32, i8*, ...) #1

declare dso_local i32 @ks7010_sdio_init_irqs(%struct.sdio_func*, %struct.ks_wlan_private*) #1

declare dso_local i32 @alloc_workqueue(i8*, i32, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @ks7010_card_init(%struct.ks_wlan_private*) #1

declare dso_local i32 @register_netdev(i32) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @sdio_release_irq(%struct.sdio_func*) #1

declare dso_local i32 @sdio_disable_func(%struct.sdio_func*) #1

declare dso_local i32 @kfree(%struct.ks_sdio_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
