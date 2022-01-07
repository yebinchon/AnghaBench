; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_hw.c__rtl8821ae_clear_pci_pme_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_hw.c__rtl8821ae_clear_pci_pme_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }
%struct.rtl_pci = type { i32 }

@COMP_INIT = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"PCI configuration 0x34 = 0x%2x\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"in pci configuration, cap_pointer%x = %x\0A\00", align 1
@DBG_DMESG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Clear PME status 0x%2x to 0x%2x\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"PME status(0x%2x) = 0x%2x\0A\00", align 1
@DBG_WARNING = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"Cannot find PME Capability\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @_rtl8821ae_clear_pci_pme_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl8821ae_clear_pci_pme_status(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_pci*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %11 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %10)
  store %struct.rtl_priv* %11, %struct.rtl_priv** %3, align 8
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %13 = call i32 @rtl_pcipriv(%struct.ieee80211_hw* %12)
  %14 = call %struct.rtl_pci* @rtl_pcidev(i32 %13)
  store %struct.rtl_pci* %14, %struct.rtl_pci** %4, align 8
  store i32 255, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %15 = load %struct.rtl_pci*, %struct.rtl_pci** %4, align 8
  %16 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @pci_read_config_byte(i32 %17, i32 52, i32* %6)
  %19 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %20 = load i32, i32* @COMP_INIT, align 4
  %21 = load i32, i32* @DBG_LOUD, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %19, i32 %20, i32 %21, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %53, %1
  %25 = load %struct.rtl_pci*, %struct.rtl_pci** %4, align 8
  %26 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @pci_read_config_word(i32 %27, i32 %28, i32* %5)
  %30 = load i32, i32* %5, align 4
  %31 = and i32 %30, 255
  store i32 %31, i32* %7, align 4
  %32 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %33 = load i32, i32* @COMP_INIT, align 4
  %34 = load i32, i32* @DBG_LOUD, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %32, i32 %33, i32 %34, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32 %36)
  %38 = load i32, i32* %7, align 4
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %41

40:                                               ; preds = %24
  br label %57

41:                                               ; preds = %24
  %42 = load i32, i32* %5, align 4
  %43 = ashr i32 %42, 8
  %44 = and i32 %43, 255
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %41
  %48 = load i32, i32* %6, align 4
  %49 = icmp eq i32 %48, 255
  br i1 %49, label %50, label %51

50:                                               ; preds = %47, %41
  store i32 255, i32* %7, align 4
  br label %57

51:                                               ; preds = %47
  br label %52

52:                                               ; preds = %51
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %9, align 4
  %56 = icmp slt i32 %54, 200
  br i1 %56, label %24, label %57

57:                                               ; preds = %53, %50, %40
  %58 = load i32, i32* %7, align 4
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %60, label %104

60:                                               ; preds = %57
  %61 = load %struct.rtl_pci*, %struct.rtl_pci** %4, align 8
  %62 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 5
  %66 = call i32 @pci_read_config_byte(i32 %63, i32 %65, i32* %8)
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @BIT(i32 7)
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %95

71:                                               ; preds = %60
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @BIT(i32 7)
  %74 = or i32 %72, %73
  store i32 %74, i32* %8, align 4
  %75 = load %struct.rtl_pci*, %struct.rtl_pci** %4, align 8
  %76 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, 5
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @pci_write_config_byte(i32 %77, i32 %79, i32 %80)
  %82 = load %struct.rtl_pci*, %struct.rtl_pci** %4, align 8
  %83 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %6, align 4
  %86 = add nsw i32 %85, 5
  %87 = call i32 @pci_read_config_byte(i32 %84, i32 %86, i32* %8)
  %88 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %89 = load i32, i32* @COMP_INIT, align 4
  %90 = load i32, i32* @DBG_DMESG, align 4
  %91 = load i32, i32* %6, align 4
  %92 = add nsw i32 %91, 5
  %93 = load i32, i32* %8, align 4
  %94 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %88, i32 %89, i32 %90, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %92, i32 %93)
  br label %103

95:                                               ; preds = %60
  %96 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %97 = load i32, i32* @COMP_INIT, align 4
  %98 = load i32, i32* @DBG_DMESG, align 4
  %99 = load i32, i32* %6, align 4
  %100 = add nsw i32 %99, 5
  %101 = load i32, i32* %8, align 4
  %102 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %96, i32 %97, i32 %98, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %100, i32 %101)
  br label %103

103:                                              ; preds = %95, %71
  br label %109

104:                                              ; preds = %57
  %105 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %106 = load i32, i32* @COMP_INIT, align 4
  %107 = load i32, i32* @DBG_WARNING, align 4
  %108 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %105, i32 %106, i32 %107, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %109

109:                                              ; preds = %104, %103
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_pci* @rtl_pcidev(i32) #1

declare dso_local i32 @rtl_pcipriv(%struct.ieee80211_hw*) #1

declare dso_local i32 @pci_read_config_byte(i32, i32, i32*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i32 @pci_read_config_word(i32, i32, i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @pci_write_config_byte(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
