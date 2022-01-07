; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/gdm724x/extr_gdm_usb.c_init_usb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/gdm724x/extr_gdm_usb.c_init_usb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lte_udev = type { i32, i32, i32, i32*, i32, i64, i64, %struct.rx_cxt, %struct.tx_cxt }
%struct.rx_cxt = type { i64, i32, i32, i32, i32, i32, i32 }
%struct.tx_cxt = type { i64, i32, i32, i32, i32 }
%struct.usb_tx_sdu = type { i32 }
%struct.usb_rx = type { i32 }

@PM_NORMAL = common dso_local global i32 0, align 4
@MAX_NUM_SDU_BUF = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MAX_RX_SUBMIT_COUNT = common dso_local global i32 0, align 4
@do_tx = common dso_local global i32 0, align 4
@do_rx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lte_udev*)* @init_usb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_usb(%struct.lte_udev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lte_udev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.tx_cxt*, align 8
  %7 = alloca %struct.rx_cxt*, align 8
  %8 = alloca %struct.usb_tx_sdu*, align 8
  %9 = alloca %struct.usb_rx*, align 8
  store %struct.lte_udev* %0, %struct.lte_udev** %3, align 8
  store i32 0, i32* %4, align 4
  %10 = load %struct.lte_udev*, %struct.lte_udev** %3, align 8
  %11 = getelementptr inbounds %struct.lte_udev, %struct.lte_udev* %10, i32 0, i32 8
  store %struct.tx_cxt* %11, %struct.tx_cxt** %6, align 8
  %12 = load %struct.lte_udev*, %struct.lte_udev** %3, align 8
  %13 = getelementptr inbounds %struct.lte_udev, %struct.lte_udev* %12, i32 0, i32 7
  store %struct.rx_cxt* %13, %struct.rx_cxt** %7, align 8
  store %struct.usb_tx_sdu* null, %struct.usb_tx_sdu** %8, align 8
  store %struct.usb_rx* null, %struct.usb_rx** %9, align 8
  %14 = load %struct.lte_udev*, %struct.lte_udev** %3, align 8
  %15 = getelementptr inbounds %struct.lte_udev, %struct.lte_udev* %14, i32 0, i32 0
  store i32 1, i32* %15, align 8
  %16 = load %struct.lte_udev*, %struct.lte_udev** %3, align 8
  %17 = getelementptr inbounds %struct.lte_udev, %struct.lte_udev* %16, i32 0, i32 6
  store i64 0, i64* %17, align 8
  %18 = load %struct.lte_udev*, %struct.lte_udev** %3, align 8
  %19 = getelementptr inbounds %struct.lte_udev, %struct.lte_udev* %18, i32 0, i32 5
  store i64 0, i64* %19, align 8
  %20 = load i32, i32* @PM_NORMAL, align 4
  %21 = load %struct.lte_udev*, %struct.lte_udev** %3, align 8
  %22 = getelementptr inbounds %struct.lte_udev, %struct.lte_udev* %21, i32 0, i32 4
  store i32 %20, i32* %22, align 8
  %23 = load %struct.tx_cxt*, %struct.tx_cxt** %6, align 8
  %24 = getelementptr inbounds %struct.tx_cxt, %struct.tx_cxt* %23, i32 0, i32 4
  %25 = call i32 @INIT_LIST_HEAD(i32* %24)
  %26 = load %struct.tx_cxt*, %struct.tx_cxt** %6, align 8
  %27 = getelementptr inbounds %struct.tx_cxt, %struct.tx_cxt* %26, i32 0, i32 3
  %28 = call i32 @INIT_LIST_HEAD(i32* %27)
  %29 = load %struct.tx_cxt*, %struct.tx_cxt** %6, align 8
  %30 = getelementptr inbounds %struct.tx_cxt, %struct.tx_cxt* %29, i32 0, i32 1
  %31 = call i32 @INIT_LIST_HEAD(i32* %30)
  %32 = load %struct.rx_cxt*, %struct.rx_cxt** %7, align 8
  %33 = getelementptr inbounds %struct.rx_cxt, %struct.rx_cxt* %32, i32 0, i32 6
  %34 = call i32 @INIT_LIST_HEAD(i32* %33)
  %35 = load %struct.rx_cxt*, %struct.rx_cxt** %7, align 8
  %36 = getelementptr inbounds %struct.rx_cxt, %struct.rx_cxt* %35, i32 0, i32 1
  %37 = call i32 @INIT_LIST_HEAD(i32* %36)
  %38 = load %struct.rx_cxt*, %struct.rx_cxt** %7, align 8
  %39 = getelementptr inbounds %struct.rx_cxt, %struct.rx_cxt* %38, i32 0, i32 5
  %40 = call i32 @INIT_LIST_HEAD(i32* %39)
  %41 = load %struct.tx_cxt*, %struct.tx_cxt** %6, align 8
  %42 = getelementptr inbounds %struct.tx_cxt, %struct.tx_cxt* %41, i32 0, i32 2
  %43 = call i32 @spin_lock_init(i32* %42)
  %44 = load %struct.rx_cxt*, %struct.rx_cxt** %7, align 8
  %45 = getelementptr inbounds %struct.rx_cxt, %struct.rx_cxt* %44, i32 0, i32 4
  %46 = call i32 @spin_lock_init(i32* %45)
  %47 = load %struct.rx_cxt*, %struct.rx_cxt** %7, align 8
  %48 = getelementptr inbounds %struct.rx_cxt, %struct.rx_cxt* %47, i32 0, i32 3
  %49 = call i32 @spin_lock_init(i32* %48)
  %50 = load %struct.rx_cxt*, %struct.rx_cxt** %7, align 8
  %51 = getelementptr inbounds %struct.rx_cxt, %struct.rx_cxt* %50, i32 0, i32 2
  %52 = call i32 @spin_lock_init(i32* %51)
  %53 = load %struct.tx_cxt*, %struct.tx_cxt** %6, align 8
  %54 = getelementptr inbounds %struct.tx_cxt, %struct.tx_cxt* %53, i32 0, i32 0
  store i64 0, i64* %54, align 8
  %55 = load %struct.rx_cxt*, %struct.rx_cxt** %7, align 8
  %56 = getelementptr inbounds %struct.rx_cxt, %struct.rx_cxt* %55, i32 0, i32 0
  store i64 0, i64* %56, align 8
  %57 = load %struct.lte_udev*, %struct.lte_udev** %3, align 8
  %58 = getelementptr inbounds %struct.lte_udev, %struct.lte_udev* %57, i32 0, i32 3
  store i32* null, i32** %58, align 8
  store i32 0, i32* %5, align 4
  br label %59

59:                                               ; preds = %80, %1
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @MAX_NUM_SDU_BUF, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %83

63:                                               ; preds = %59
  %64 = call %struct.usb_tx_sdu* (...) @alloc_tx_sdu_struct()
  store %struct.usb_tx_sdu* %64, %struct.usb_tx_sdu** %8, align 8
  %65 = load %struct.usb_tx_sdu*, %struct.usb_tx_sdu** %8, align 8
  %66 = icmp ne %struct.usb_tx_sdu* %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %63
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %4, align 4
  br label %118

70:                                               ; preds = %63
  %71 = load %struct.usb_tx_sdu*, %struct.usb_tx_sdu** %8, align 8
  %72 = getelementptr inbounds %struct.usb_tx_sdu, %struct.usb_tx_sdu* %71, i32 0, i32 0
  %73 = load %struct.tx_cxt*, %struct.tx_cxt** %6, align 8
  %74 = getelementptr inbounds %struct.tx_cxt, %struct.tx_cxt* %73, i32 0, i32 1
  %75 = call i32 @list_add(i32* %72, i32* %74)
  %76 = load %struct.tx_cxt*, %struct.tx_cxt** %6, align 8
  %77 = getelementptr inbounds %struct.tx_cxt, %struct.tx_cxt* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %78, 1
  store i64 %79, i64* %77, align 8
  br label %80

80:                                               ; preds = %70
  %81 = load i32, i32* %5, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %5, align 4
  br label %59

83:                                               ; preds = %59
  store i32 0, i32* %5, align 4
  br label %84

84:                                               ; preds = %106, %83
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* @MAX_RX_SUBMIT_COUNT, align 4
  %87 = mul nsw i32 %86, 2
  %88 = icmp slt i32 %85, %87
  br i1 %88, label %89, label %109

89:                                               ; preds = %84
  %90 = call %struct.usb_rx* (...) @alloc_rx_struct()
  store %struct.usb_rx* %90, %struct.usb_rx** %9, align 8
  %91 = load %struct.usb_rx*, %struct.usb_rx** %9, align 8
  %92 = icmp ne %struct.usb_rx* %91, null
  br i1 %92, label %96, label %93

93:                                               ; preds = %89
  %94 = load i32, i32* @ENOMEM, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %4, align 4
  br label %118

96:                                               ; preds = %89
  %97 = load %struct.usb_rx*, %struct.usb_rx** %9, align 8
  %98 = getelementptr inbounds %struct.usb_rx, %struct.usb_rx* %97, i32 0, i32 0
  %99 = load %struct.rx_cxt*, %struct.rx_cxt** %7, align 8
  %100 = getelementptr inbounds %struct.rx_cxt, %struct.rx_cxt* %99, i32 0, i32 1
  %101 = call i32 @list_add(i32* %98, i32* %100)
  %102 = load %struct.rx_cxt*, %struct.rx_cxt** %7, align 8
  %103 = getelementptr inbounds %struct.rx_cxt, %struct.rx_cxt* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = add nsw i64 %104, 1
  store i64 %105, i64* %103, align 8
  br label %106

106:                                              ; preds = %96
  %107 = load i32, i32* %5, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %5, align 4
  br label %84

109:                                              ; preds = %84
  %110 = load %struct.lte_udev*, %struct.lte_udev** %3, align 8
  %111 = getelementptr inbounds %struct.lte_udev, %struct.lte_udev* %110, i32 0, i32 2
  %112 = load i32, i32* @do_tx, align 4
  %113 = call i32 @INIT_DELAYED_WORK(i32* %111, i32 %112)
  %114 = load %struct.lte_udev*, %struct.lte_udev** %3, align 8
  %115 = getelementptr inbounds %struct.lte_udev, %struct.lte_udev* %114, i32 0, i32 1
  %116 = load i32, i32* @do_rx, align 4
  %117 = call i32 @INIT_DELAYED_WORK(i32* %115, i32 %116)
  store i32 0, i32* %2, align 4
  br label %122

118:                                              ; preds = %93, %67
  %119 = load %struct.lte_udev*, %struct.lte_udev** %3, align 8
  %120 = call i32 @release_usb(%struct.lte_udev* %119)
  %121 = load i32, i32* %4, align 4
  store i32 %121, i32* %2, align 4
  br label %122

122:                                              ; preds = %118, %109
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local %struct.usb_tx_sdu* @alloc_tx_sdu_struct(...) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local %struct.usb_rx* @alloc_rx_struct(...) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @release_usb(%struct.lte_udev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
