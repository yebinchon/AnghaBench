; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mp_ioctl.c_oid_rt_pro_start_test_hdl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mp_ioctl.c_oid_rt_pro_start_test_hdl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oid_par_priv = type { i64, i64, i64 }
%struct._adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@RNDIS_STATUS_SUCCESS = common dso_local global i32 0, align 4
@SET_OID = common dso_local global i64 0, align 8
@RNDIS_STATUS_NOT_ACCEPTED = common dso_local global i32 0, align 4
@MSR = common dso_local global i64 0, align 8
@RCR = common dso_local global i64 0, align 8
@RXFLTMAP0 = common dso_local global i32 0, align 4
@EE_9346CR = common dso_local global i32 0, align 4
@_9356SEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @oid_rt_pro_start_test_hdl(%struct.oid_par_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.oid_par_priv*, align 8
  %4 = alloca %struct._adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.oid_par_priv* %0, %struct.oid_par_priv** %3, align 8
  %8 = load %struct.oid_par_priv*, %struct.oid_par_priv** %3, align 8
  %9 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct._adapter*
  store %struct._adapter* %11, %struct._adapter** %4, align 8
  %12 = load i32, i32* @RNDIS_STATUS_SUCCESS, align 4
  store i32 %12, i32* %5, align 4
  %13 = load %struct.oid_par_priv*, %struct.oid_par_priv** %3, align 8
  %14 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SET_OID, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* @RNDIS_STATUS_NOT_ACCEPTED, align 4
  store i32 %19, i32* %2, align 4
  br label %65

20:                                               ; preds = %1
  %21 = load %struct.oid_par_priv*, %struct.oid_par_priv** %3, align 8
  %22 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i32*
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load %struct._adapter*, %struct._adapter** %4, align 8
  %28 = getelementptr inbounds %struct._adapter, %struct._adapter* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 4
  %30 = load %struct._adapter*, %struct._adapter** %4, align 8
  %31 = call i64 @mp_start_test(%struct._adapter* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %20
  %34 = load i32, i32* @RNDIS_STATUS_NOT_ACCEPTED, align 4
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %33, %20
  %36 = load %struct._adapter*, %struct._adapter** %4, align 8
  %37 = load i64, i64* @MSR, align 8
  %38 = call i32 @r8712_write8(%struct._adapter* %36, i64 %37, i32 1)
  %39 = load %struct._adapter*, %struct._adapter** %4, align 8
  %40 = load i64, i64* @RCR, align 8
  %41 = call i32 @r8712_write8(%struct._adapter* %39, i64 %40, i32 0)
  %42 = load %struct._adapter*, %struct._adapter** %4, align 8
  %43 = load i64, i64* @RCR, align 8
  %44 = add nsw i64 %43, 2
  %45 = call i32 @r8712_write8(%struct._adapter* %42, i64 %44, i32 87)
  %46 = load %struct._adapter*, %struct._adapter** %4, align 8
  %47 = load i32, i32* @RXFLTMAP0, align 4
  %48 = call i32 @r8712_write16(%struct._adapter* %46, i32 %47, i32 0)
  %49 = load %struct._adapter*, %struct._adapter** %4, align 8
  %50 = load i32, i32* @EE_9346CR, align 4
  %51 = call i32 @r8712_read8(%struct._adapter* %49, i32 %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @_9356SEL, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %35
  %57 = load %struct._adapter*, %struct._adapter** %4, align 8
  %58 = call i32 @r8712_efuse_reg_init(%struct._adapter* %57)
  %59 = load %struct._adapter*, %struct._adapter** %4, align 8
  %60 = call i32 @r8712_efuse_change_max_size(%struct._adapter* %59)
  %61 = load %struct._adapter*, %struct._adapter** %4, align 8
  %62 = call i32 @r8712_efuse_reg_uninit(%struct._adapter* %61)
  br label %63

63:                                               ; preds = %56, %35
  %64 = load i32, i32* %5, align 4
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %63, %18
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i64 @mp_start_test(%struct._adapter*) #1

declare dso_local i32 @r8712_write8(%struct._adapter*, i64, i32) #1

declare dso_local i32 @r8712_write16(%struct._adapter*, i32, i32) #1

declare dso_local i32 @r8712_read8(%struct._adapter*, i32) #1

declare dso_local i32 @r8712_efuse_reg_init(%struct._adapter*) #1

declare dso_local i32 @r8712_efuse_change_max_size(%struct._adapter*) #1

declare dso_local i32 @r8712_efuse_reg_uninit(%struct._adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
