; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks7010_sdio.c_ks_wlan_hw_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks7010_sdio.c_ks_wlan_hw_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ks_wlan_private = type { i32, %struct.TYPE_4__, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64, %struct.rx_device_buffer* }
%struct.rx_device_buffer = type { i8*, i32* }
%struct.hostif_hdr = type { i32, i32 }

@RX_DEVICE_BUFF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"rx buffer overflow\0A\00", align 1
@DATA_WINDOW = common dso_local global i32 0, align 4
@READ_STATUS_REG = common dso_local global i32 0, align 4
@REG_STATUS_IDLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"write READ_STATUS_REG\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"IS_HIF_CONF true !!\0A\00", align 1
@DUMP_PREFIX_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ks_wlan_private*, i64)* @ks_wlan_hw_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ks_wlan_hw_rx(%struct.ks_wlan_private* %0, i64 %1) #0 {
  %3 = alloca %struct.ks_wlan_private*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rx_device_buffer*, align 8
  %7 = alloca %struct.hostif_hdr*, align 8
  %8 = alloca i8*, align 8
  store %struct.ks_wlan_private* %0, %struct.ks_wlan_private** %3, align 8
  store i64 %1, i64* %4, align 8
  store i8* null, i8** %8, align 8
  %9 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %10 = call i32 @rxq_count(%struct.ks_wlan_private* %9)
  %11 = load i32, i32* @RX_DEVICE_BUFF_SIZE, align 4
  %12 = sub nsw i32 %11, 1
  %13 = icmp sge i32 %10, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %16 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @netdev_err(i32 %17, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %113

19:                                               ; preds = %2
  %20 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %21 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load %struct.rx_device_buffer*, %struct.rx_device_buffer** %22, align 8
  %24 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %25 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.rx_device_buffer, %struct.rx_device_buffer* %23, i64 %27
  store %struct.rx_device_buffer* %28, %struct.rx_device_buffer** %6, align 8
  %29 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %30 = load i32, i32* @DATA_WINDOW, align 4
  %31 = load %struct.rx_device_buffer*, %struct.rx_device_buffer** %6, align 8
  %32 = getelementptr inbounds %struct.rx_device_buffer, %struct.rx_device_buffer* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i64, i64* %4, align 8
  %36 = call i32 @hif_align_size(i64 %35)
  %37 = call i32 @ks7010_sdio_read(%struct.ks_wlan_private* %29, i32 %30, i32* %34, i32 %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %19
  br label %113

41:                                               ; preds = %19
  %42 = load i64, i64* %4, align 8
  %43 = icmp ugt i64 %42, 2046
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = load i64, i64* %4, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %44, %41
  %48 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %49 = load i32, i32* @READ_STATUS_REG, align 4
  %50 = load i32, i32* @REG_STATUS_IDLE, align 4
  %51 = call i32 @ks7010_sdio_writeb(%struct.ks_wlan_private* %48, i32 %49, i32 %50)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %47
  %55 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %56 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @netdev_err(i32 %57, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %59

59:                                               ; preds = %54, %47
  br label %113

60:                                               ; preds = %44
  %61 = load %struct.rx_device_buffer*, %struct.rx_device_buffer** %6, align 8
  %62 = getelementptr inbounds %struct.rx_device_buffer, %struct.rx_device_buffer* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = bitcast i32* %64 to %struct.hostif_hdr*
  store %struct.hostif_hdr* %65, %struct.hostif_hdr** %7, align 8
  %66 = load %struct.hostif_hdr*, %struct.hostif_hdr** %7, align 8
  %67 = getelementptr inbounds %struct.hostif_hdr, %struct.hostif_hdr* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i8* @le16_to_cpu(i32 %68)
  %70 = getelementptr i8, i8* %69, i64 4
  %71 = load %struct.rx_device_buffer*, %struct.rx_device_buffer** %6, align 8
  %72 = getelementptr inbounds %struct.rx_device_buffer, %struct.rx_device_buffer* %71, i32 0, i32 0
  store i8* %70, i8** %72, align 8
  %73 = load %struct.hostif_hdr*, %struct.hostif_hdr** %7, align 8
  %74 = getelementptr inbounds %struct.hostif_hdr, %struct.hostif_hdr* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i8* @le16_to_cpu(i32 %75)
  store i8* %76, i8** %8, align 8
  %77 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %78 = call i32 @inc_rxqtail(%struct.ks_wlan_private* %77)
  %79 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %80 = load i32, i32* @READ_STATUS_REG, align 4
  %81 = load i32, i32* @REG_STATUS_IDLE, align 4
  %82 = call i32 @ks7010_sdio_writeb(%struct.ks_wlan_private* %79, i32 %80, i32 %81)
  store i32 %82, i32* %5, align 4
  %83 = load i32, i32* %5, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %60
  %86 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %87 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @netdev_err(i32 %88, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %90

90:                                               ; preds = %85, %60
  %91 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %92 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = call i64 @atomic_read(i32* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %109

96:                                               ; preds = %90
  %97 = load i8*, i8** %8, align 8
  %98 = call i64 @is_hif_conf(i8* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %109

100:                                              ; preds = %96
  %101 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %102 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @netdev_dbg(i32 %103, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %105 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %106 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = call i32 @atomic_dec(i32* %107)
  br label %109

109:                                              ; preds = %100, %96, %90
  %110 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %111 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %110, i32 0, i32 0
  %112 = call i32 @tasklet_schedule(i32* %111)
  br label %113

113:                                              ; preds = %109, %59, %40, %14
  ret void
}

declare dso_local i32 @rxq_count(%struct.ks_wlan_private*) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @ks7010_sdio_read(%struct.ks_wlan_private*, i32, i32*, i32) #1

declare dso_local i32 @hif_align_size(i64) #1

declare dso_local i32 @ks7010_sdio_writeb(%struct.ks_wlan_private*, i32, i32) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @inc_rxqtail(%struct.ks_wlan_private*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @is_hif_conf(i8*) #1

declare dso_local i32 @netdev_dbg(i32, i8*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
