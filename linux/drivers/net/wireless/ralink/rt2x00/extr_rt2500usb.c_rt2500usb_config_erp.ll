; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2500usb.c_rt2500usb_config_erp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2500usb.c_rt2500usb_config_erp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }
%struct.rt2x00lib_erp = type { i32, i32, i32, i32, i32, i32 }

@BSS_CHANGED_ERP_PREAMBLE = common dso_local global i32 0, align 4
@TXRX_CSR10 = common dso_local global i32 0, align 4
@TXRX_CSR10_AUTORESPOND_PREAMBLE = common dso_local global i32 0, align 4
@BSS_CHANGED_BASIC_RATES = common dso_local global i32 0, align 4
@TXRX_CSR11 = common dso_local global i32 0, align 4
@BSS_CHANGED_BEACON_INT = common dso_local global i32 0, align 4
@TXRX_CSR18 = common dso_local global i32 0, align 4
@TXRX_CSR18_INTERVAL = common dso_local global i32 0, align 4
@BSS_CHANGED_ERP_SLOT = common dso_local global i32 0, align 4
@MAC_CSR10 = common dso_local global i32 0, align 4
@MAC_CSR11 = common dso_local global i32 0, align 4
@MAC_CSR12 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*, %struct.rt2x00lib_erp*, i32)* @rt2500usb_config_erp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2500usb_config_erp(%struct.rt2x00_dev* %0, %struct.rt2x00lib_erp* %1, i32 %2) #0 {
  %4 = alloca %struct.rt2x00_dev*, align 8
  %5 = alloca %struct.rt2x00lib_erp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %4, align 8
  store %struct.rt2x00lib_erp* %1, %struct.rt2x00lib_erp** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @BSS_CHANGED_ERP_PREAMBLE, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %29

12:                                               ; preds = %3
  %13 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %14 = load i32, i32* @TXRX_CSR10, align 4
  %15 = call i32 @rt2500usb_register_read(%struct.rt2x00_dev* %13, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* @TXRX_CSR10_AUTORESPOND_PREAMBLE, align 4
  %17 = load %struct.rt2x00lib_erp*, %struct.rt2x00lib_erp** %5, align 8
  %18 = getelementptr inbounds %struct.rt2x00lib_erp, %struct.rt2x00lib_erp* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @rt2x00_set_field16(i32* %7, i32 %16, i32 %23)
  %25 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %26 = load i32, i32* @TXRX_CSR10, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @rt2500usb_register_write(%struct.rt2x00_dev* %25, i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %12, %3
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @BSS_CHANGED_BASIC_RATES, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %36 = load i32, i32* @TXRX_CSR11, align 4
  %37 = load %struct.rt2x00lib_erp*, %struct.rt2x00lib_erp** %5, align 8
  %38 = getelementptr inbounds %struct.rt2x00lib_erp, %struct.rt2x00lib_erp* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @rt2500usb_register_write(%struct.rt2x00_dev* %35, i32 %36, i32 %39)
  br label %41

41:                                               ; preds = %34, %29
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @BSS_CHANGED_BEACON_INT, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %60

46:                                               ; preds = %41
  %47 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %48 = load i32, i32* @TXRX_CSR18, align 4
  %49 = call i32 @rt2500usb_register_read(%struct.rt2x00_dev* %47, i32 %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* @TXRX_CSR18_INTERVAL, align 4
  %51 = load %struct.rt2x00lib_erp*, %struct.rt2x00lib_erp** %5, align 8
  %52 = getelementptr inbounds %struct.rt2x00lib_erp, %struct.rt2x00lib_erp* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = mul nsw i32 %53, 4
  %55 = call i32 @rt2x00_set_field16(i32* %7, i32 %50, i32 %54)
  %56 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %57 = load i32, i32* @TXRX_CSR18, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @rt2500usb_register_write(%struct.rt2x00_dev* %56, i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %46, %41
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @BSS_CHANGED_ERP_SLOT, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %84

65:                                               ; preds = %60
  %66 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %67 = load i32, i32* @MAC_CSR10, align 4
  %68 = load %struct.rt2x00lib_erp*, %struct.rt2x00lib_erp** %5, align 8
  %69 = getelementptr inbounds %struct.rt2x00lib_erp, %struct.rt2x00lib_erp* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @rt2500usb_register_write(%struct.rt2x00_dev* %66, i32 %67, i32 %70)
  %72 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %73 = load i32, i32* @MAC_CSR11, align 4
  %74 = load %struct.rt2x00lib_erp*, %struct.rt2x00lib_erp** %5, align 8
  %75 = getelementptr inbounds %struct.rt2x00lib_erp, %struct.rt2x00lib_erp* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @rt2500usb_register_write(%struct.rt2x00_dev* %72, i32 %73, i32 %76)
  %78 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %79 = load i32, i32* @MAC_CSR12, align 4
  %80 = load %struct.rt2x00lib_erp*, %struct.rt2x00lib_erp** %5, align 8
  %81 = getelementptr inbounds %struct.rt2x00lib_erp, %struct.rt2x00lib_erp* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @rt2500usb_register_write(%struct.rt2x00_dev* %78, i32 %79, i32 %82)
  br label %84

84:                                               ; preds = %65, %60
  ret void
}

declare dso_local i32 @rt2500usb_register_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00_set_field16(i32*, i32, i32) #1

declare dso_local i32 @rt2500usb_register_write(%struct.rt2x00_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
