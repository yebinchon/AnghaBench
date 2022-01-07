; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/gdm724x/extr_gdm_usb.c_gdm_usb_sdu_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/gdm724x/extr_gdm_usb.c_gdm_usb_sdu_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lte_udev = type { %struct.TYPE_2__, i32, i32, %struct.tx_cxt }
%struct.TYPE_2__ = type { i32 }
%struct.tx_cxt = type { i32, i32 }
%struct.usb_tx_sdu = type { i32, void (i8*)*, i32, i8*, i64 }
%struct.sdu = type { i8*, i8*, i8*, i8*, i32, i8* }

@.str = private unnamed_addr constant [27 x i8] c"sdu send - invalid device\0A\00", align 1
@TX_NO_DEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"sdu send - free list empty\0A\00", align 1
@TX_NO_SPC = common dso_local global i32 0, align 4
@LTE_TX_SDU = common dso_local global i32 0, align 4
@NIC_TYPE_ARP = common dso_local global i32 0, align 4
@SDU_PARAM_LEN = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@HCI_HEADER_SIZE = common dso_local global i32 0, align 4
@TX_NO_BUFFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i32, i32, void (i8*)*, i8*, i32, i32)* @gdm_usb_sdu_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gdm_usb_sdu_send(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, void (i8*)* %5, i8* %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca void (i8*)*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.lte_udev*, align 8
  %21 = alloca %struct.tx_cxt*, align 8
  %22 = alloca %struct.usb_tx_sdu*, align 8
  %23 = alloca %struct.sdu*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store i8* %0, i8** %11, align 8
  store i8* %1, i8** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store void (i8*)* %5, void (i8*)** %16, align 8
  store i8* %6, i8** %17, align 8
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  %27 = load i8*, i8** %11, align 8
  %28 = bitcast i8* %27 to %struct.lte_udev*
  store %struct.lte_udev* %28, %struct.lte_udev** %20, align 8
  %29 = load %struct.lte_udev*, %struct.lte_udev** %20, align 8
  %30 = getelementptr inbounds %struct.lte_udev, %struct.lte_udev* %29, i32 0, i32 3
  store %struct.tx_cxt* %30, %struct.tx_cxt** %21, align 8
  store %struct.sdu* null, %struct.sdu** %23, align 8
  store i32 0, i32* %25, align 4
  %31 = load %struct.lte_udev*, %struct.lte_udev** %20, align 8
  %32 = getelementptr inbounds %struct.lte_udev, %struct.lte_udev* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %9
  %36 = call i32 @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @TX_NO_DEV, align 4
  store i32 %37, i32* %10, align 4
  br label %159

38:                                               ; preds = %9
  %39 = load %struct.tx_cxt*, %struct.tx_cxt** %21, align 8
  %40 = getelementptr inbounds %struct.tx_cxt, %struct.tx_cxt* %39, i32 0, i32 0
  %41 = load i64, i64* %24, align 8
  %42 = call i32 @spin_lock_irqsave(i32* %40, i64 %41)
  %43 = load %struct.tx_cxt*, %struct.tx_cxt** %21, align 8
  %44 = call %struct.usb_tx_sdu* @get_tx_sdu_struct(%struct.tx_cxt* %43, i32* %25)
  store %struct.usb_tx_sdu* %44, %struct.usb_tx_sdu** %22, align 8
  %45 = load %struct.tx_cxt*, %struct.tx_cxt** %21, align 8
  %46 = getelementptr inbounds %struct.tx_cxt, %struct.tx_cxt* %45, i32 0, i32 0
  %47 = load i64, i64* %24, align 8
  %48 = call i32 @spin_unlock_irqrestore(i32* %46, i64 %47)
  %49 = load %struct.usb_tx_sdu*, %struct.usb_tx_sdu** %22, align 8
  %50 = icmp ne %struct.usb_tx_sdu* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %38
  %52 = call i32 @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i32, i32* @TX_NO_SPC, align 4
  store i32 %53, i32* %10, align 4
  br label %159

54:                                               ; preds = %38
  %55 = load %struct.usb_tx_sdu*, %struct.usb_tx_sdu** %22, align 8
  %56 = getelementptr inbounds %struct.usb_tx_sdu, %struct.usb_tx_sdu* %55, i32 0, i32 4
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to %struct.sdu*
  store %struct.sdu* %58, %struct.sdu** %23, align 8
  %59 = load %struct.lte_udev*, %struct.lte_udev** %20, align 8
  %60 = getelementptr inbounds %struct.lte_udev, %struct.lte_udev* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @LTE_TX_SDU, align 4
  %63 = call i8* @gdm_cpu_to_dev16(i32 %61, i32 %62)
  %64 = load %struct.sdu*, %struct.sdu** %23, align 8
  %65 = getelementptr inbounds %struct.sdu, %struct.sdu* %64, i32 0, i32 5
  store i8* %63, i8** %65, align 8
  %66 = load i32, i32* %19, align 4
  %67 = load i32, i32* @NIC_TYPE_ARP, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %79

69:                                               ; preds = %54
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* @SDU_PARAM_LEN, align 4
  %72 = add nsw i32 %70, %71
  store i32 %72, i32* %26, align 4
  %73 = load %struct.sdu*, %struct.sdu** %23, align 8
  %74 = getelementptr inbounds %struct.sdu, %struct.sdu* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = load i8*, i8** %12, align 8
  %77 = load i32, i32* %13, align 4
  %78 = call i32 @memcpy(i32 %75, i8* %76, i32 %77)
  br label %97

79:                                               ; preds = %54
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* @ETH_HLEN, align 4
  %82 = sub nsw i32 %80, %81
  store i32 %82, i32* %26, align 4
  %83 = load i32, i32* @SDU_PARAM_LEN, align 4
  %84 = load i32, i32* %26, align 4
  %85 = add nsw i32 %84, %83
  store i32 %85, i32* %26, align 4
  %86 = load %struct.sdu*, %struct.sdu** %23, align 8
  %87 = getelementptr inbounds %struct.sdu, %struct.sdu* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 8
  %89 = load i8*, i8** %12, align 8
  %90 = load i32, i32* @ETH_HLEN, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr i8, i8* %89, i64 %91
  %93 = load i32, i32* %13, align 4
  %94 = load i32, i32* @ETH_HLEN, align 4
  %95 = sub nsw i32 %93, %94
  %96 = call i32 @memcpy(i32 %88, i8* %92, i32 %95)
  br label %97

97:                                               ; preds = %79, %69
  %98 = load %struct.lte_udev*, %struct.lte_udev** %20, align 8
  %99 = getelementptr inbounds %struct.lte_udev, %struct.lte_udev* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %26, align 4
  %102 = call i8* @gdm_cpu_to_dev16(i32 %100, i32 %101)
  %103 = load %struct.sdu*, %struct.sdu** %23, align 8
  %104 = getelementptr inbounds %struct.sdu, %struct.sdu* %103, i32 0, i32 3
  store i8* %102, i8** %104, align 8
  %105 = load %struct.lte_udev*, %struct.lte_udev** %20, align 8
  %106 = getelementptr inbounds %struct.lte_udev, %struct.lte_udev* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %14, align 4
  %109 = call i8* @gdm_cpu_to_dev32(i32 %107, i32 %108)
  %110 = load %struct.sdu*, %struct.sdu** %23, align 8
  %111 = getelementptr inbounds %struct.sdu, %struct.sdu* %110, i32 0, i32 2
  store i8* %109, i8** %111, align 8
  %112 = load %struct.lte_udev*, %struct.lte_udev** %20, align 8
  %113 = getelementptr inbounds %struct.lte_udev, %struct.lte_udev* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %15, align 4
  %116 = call i8* @gdm_cpu_to_dev32(i32 %114, i32 %115)
  %117 = load %struct.sdu*, %struct.sdu** %23, align 8
  %118 = getelementptr inbounds %struct.sdu, %struct.sdu* %117, i32 0, i32 1
  store i8* %116, i8** %118, align 8
  %119 = load %struct.lte_udev*, %struct.lte_udev** %20, align 8
  %120 = getelementptr inbounds %struct.lte_udev, %struct.lte_udev* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %19, align 4
  %123 = call i8* @gdm_cpu_to_dev32(i32 %121, i32 %122)
  %124 = load %struct.sdu*, %struct.sdu** %23, align 8
  %125 = getelementptr inbounds %struct.sdu, %struct.sdu* %124, i32 0, i32 0
  store i8* %123, i8** %125, align 8
  %126 = load i32, i32* %26, align 4
  %127 = load i32, i32* @HCI_HEADER_SIZE, align 4
  %128 = add nsw i32 %126, %127
  %129 = load %struct.usb_tx_sdu*, %struct.usb_tx_sdu** %22, align 8
  %130 = getelementptr inbounds %struct.usb_tx_sdu, %struct.usb_tx_sdu* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 8
  %131 = load void (i8*)*, void (i8*)** %16, align 8
  %132 = load %struct.usb_tx_sdu*, %struct.usb_tx_sdu** %22, align 8
  %133 = getelementptr inbounds %struct.usb_tx_sdu, %struct.usb_tx_sdu* %132, i32 0, i32 1
  store void (i8*)* %131, void (i8*)** %133, align 8
  %134 = load i8*, i8** %17, align 8
  %135 = load %struct.usb_tx_sdu*, %struct.usb_tx_sdu** %22, align 8
  %136 = getelementptr inbounds %struct.usb_tx_sdu, %struct.usb_tx_sdu* %135, i32 0, i32 3
  store i8* %134, i8** %136, align 8
  %137 = load %struct.tx_cxt*, %struct.tx_cxt** %21, align 8
  %138 = getelementptr inbounds %struct.tx_cxt, %struct.tx_cxt* %137, i32 0, i32 0
  %139 = load i64, i64* %24, align 8
  %140 = call i32 @spin_lock_irqsave(i32* %138, i64 %139)
  %141 = load %struct.usb_tx_sdu*, %struct.usb_tx_sdu** %22, align 8
  %142 = getelementptr inbounds %struct.usb_tx_sdu, %struct.usb_tx_sdu* %141, i32 0, i32 2
  %143 = load %struct.tx_cxt*, %struct.tx_cxt** %21, align 8
  %144 = getelementptr inbounds %struct.tx_cxt, %struct.tx_cxt* %143, i32 0, i32 1
  %145 = call i32 @list_add_tail(i32* %142, i32* %144)
  %146 = load %struct.lte_udev*, %struct.lte_udev** %20, align 8
  %147 = getelementptr inbounds %struct.lte_udev, %struct.lte_udev* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 0
  %149 = call i32 @schedule_work(i32* %148)
  %150 = load %struct.tx_cxt*, %struct.tx_cxt** %21, align 8
  %151 = getelementptr inbounds %struct.tx_cxt, %struct.tx_cxt* %150, i32 0, i32 0
  %152 = load i64, i64* %24, align 8
  %153 = call i32 @spin_unlock_irqrestore(i32* %151, i64 %152)
  %154 = load i32, i32* %25, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %97
  %157 = load i32, i32* @TX_NO_BUFFER, align 4
  store i32 %157, i32* %10, align 4
  br label %159

158:                                              ; preds = %97
  store i32 0, i32* %10, align 4
  br label %159

159:                                              ; preds = %158, %156, %51, %35
  %160 = load i32, i32* %10, align 4
  ret i32 %160
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.usb_tx_sdu* @get_tx_sdu_struct(%struct.tx_cxt*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i8* @gdm_cpu_to_dev16(i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i8* @gdm_cpu_to_dev32(i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
