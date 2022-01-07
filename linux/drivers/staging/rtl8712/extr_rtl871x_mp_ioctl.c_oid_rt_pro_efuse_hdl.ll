; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mp_ioctl.c_oid_rt_pro_efuse_hdl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mp_ioctl.c_oid_rt_pro_efuse_hdl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oid_par_priv = type { i64 }

@RNDIS_STATUS_SUCCESS = common dso_local global i32 0, align 4
@QUERY_OID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @oid_rt_pro_efuse_hdl(%struct.oid_par_priv* %0) #0 {
  %2 = alloca %struct.oid_par_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.oid_par_priv* %0, %struct.oid_par_priv** %2, align 8
  %4 = load i32, i32* @RNDIS_STATUS_SUCCESS, align 4
  store i32 %4, i32* %3, align 4
  %5 = load %struct.oid_par_priv*, %struct.oid_par_priv** %2, align 8
  %6 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @QUERY_OID, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.oid_par_priv*, %struct.oid_par_priv** %2, align 8
  %12 = call i32 @oid_rt_pro_read_efuse_hdl(%struct.oid_par_priv* %11)
  store i32 %12, i32* %3, align 4
  br label %16

13:                                               ; preds = %1
  %14 = load %struct.oid_par_priv*, %struct.oid_par_priv** %2, align 8
  %15 = call i32 @oid_rt_pro_write_efuse_hdl(%struct.oid_par_priv* %14)
  store i32 %15, i32* %3, align 4
  br label %16

16:                                               ; preds = %13, %10
  %17 = load i32, i32* %3, align 4
  ret i32 %17
}

declare dso_local i32 @oid_rt_pro_read_efuse_hdl(%struct.oid_par_priv*) #1

declare dso_local i32 @oid_rt_pro_write_efuse_hdl(%struct.oid_par_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
