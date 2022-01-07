; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_ioctl_rtl.c_oid_rt_set_channelplan_hdl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_ioctl_rtl.c_oid_rt_set_channelplan_hdl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oid_par_priv = type { i64, i64, %struct._adapter* }
%struct._adapter = type { %struct.eeprom_priv }
%struct.eeprom_priv = type { i32 }

@SET_OID = common dso_local global i64 0, align 8
@RNDIS_STATUS_NOT_ACCEPTED = common dso_local global i32 0, align 4
@RNDIS_STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @oid_rt_set_channelplan_hdl(%struct.oid_par_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.oid_par_priv*, align 8
  %4 = alloca %struct._adapter*, align 8
  %5 = alloca %struct.eeprom_priv*, align 8
  store %struct.oid_par_priv* %0, %struct.oid_par_priv** %3, align 8
  %6 = load %struct.oid_par_priv*, %struct.oid_par_priv** %3, align 8
  %7 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %6, i32 0, i32 2
  %8 = load %struct._adapter*, %struct._adapter** %7, align 8
  store %struct._adapter* %8, %struct._adapter** %4, align 8
  %9 = load %struct._adapter*, %struct._adapter** %4, align 8
  %10 = getelementptr inbounds %struct._adapter, %struct._adapter* %9, i32 0, i32 0
  store %struct.eeprom_priv* %10, %struct.eeprom_priv** %5, align 8
  %11 = load %struct.oid_par_priv*, %struct.oid_par_priv** %3, align 8
  %12 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SET_OID, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @RNDIS_STATUS_NOT_ACCEPTED, align 4
  store i32 %17, i32* %2, align 4
  br label %27

18:                                               ; preds = %1
  %19 = load %struct.oid_par_priv*, %struct.oid_par_priv** %3, align 8
  %20 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i32*
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.eeprom_priv*, %struct.eeprom_priv** %5, align 8
  %25 = getelementptr inbounds %struct.eeprom_priv, %struct.eeprom_priv* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @RNDIS_STATUS_SUCCESS, align 4
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %18, %16
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
