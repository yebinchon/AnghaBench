; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mp_ioctl.c_oid_rt_get_thermal_meter_hdl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mp_ioctl.c_oid_rt_get_thermal_meter_hdl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oid_par_priv = type { i64, i32, i32*, i64, i64 }
%struct._adapter = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i64, i32 }

@QUERY_OID = common dso_local global i64 0, align 8
@RNDIS_STATUS_NOT_ACCEPTED = common dso_local global i32 0, align 4
@RNDIS_STATUS_INVALID_LENGTH = common dso_local global i32 0, align 4
@MPT_GET_THERMAL_METER = common dso_local global i32 0, align 4
@RNDIS_STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @oid_rt_get_thermal_meter_hdl(%struct.oid_par_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.oid_par_priv*, align 8
  %4 = alloca %struct._adapter*, align 8
  store %struct.oid_par_priv* %0, %struct.oid_par_priv** %3, align 8
  %5 = load %struct.oid_par_priv*, %struct.oid_par_priv** %3, align 8
  %6 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %5, i32 0, i32 4
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct._adapter*
  store %struct._adapter* %8, %struct._adapter** %4, align 8
  %9 = load %struct.oid_par_priv*, %struct.oid_par_priv** %3, align 8
  %10 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @QUERY_OID, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @RNDIS_STATUS_NOT_ACCEPTED, align 4
  store i32 %15, i32* %2, align 4
  br label %79

16:                                               ; preds = %1
  %17 = load %struct._adapter*, %struct._adapter** %4, align 8
  %18 = getelementptr inbounds %struct._adapter, %struct._adapter* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i32, i32* @RNDIS_STATUS_NOT_ACCEPTED, align 4
  store i32 %23, i32* %2, align 4
  br label %79

24:                                               ; preds = %16
  %25 = load %struct.oid_par_priv*, %struct.oid_par_priv** %3, align 8
  %26 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = icmp ult i64 %28, 4
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* @RNDIS_STATUS_INVALID_LENGTH, align 4
  store i32 %31, i32* %2, align 4
  br label %79

32:                                               ; preds = %24
  %33 = load %struct._adapter*, %struct._adapter** %4, align 8
  %34 = getelementptr inbounds %struct._adapter, %struct._adapter* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  %36 = load %struct._adapter*, %struct._adapter** %4, align 8
  %37 = getelementptr inbounds %struct._adapter, %struct._adapter* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store i32 0, i32* %39, align 8
  %40 = load i32, i32* @MPT_GET_THERMAL_METER, align 4
  %41 = load %struct._adapter*, %struct._adapter** %4, align 8
  %42 = getelementptr inbounds %struct._adapter, %struct._adapter* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 3
  store i32 %40, i32* %44, align 8
  %45 = load %struct._adapter*, %struct._adapter** %4, align 8
  %46 = getelementptr inbounds %struct._adapter, %struct._adapter* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  store i64 0, i64* %48, align 8
  %49 = load %struct._adapter*, %struct._adapter** %4, align 8
  %50 = getelementptr inbounds %struct._adapter, %struct._adapter* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  store i32 -1, i32* %52, align 4
  %53 = load %struct._adapter*, %struct._adapter** %4, align 8
  %54 = load %struct._adapter*, %struct._adapter** %4, align 8
  %55 = getelementptr inbounds %struct._adapter, %struct._adapter* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = call i32 @r8712_GetThermalMeter(%struct._adapter* %53, i32* %57)
  %59 = load %struct._adapter*, %struct._adapter** %4, align 8
  %60 = getelementptr inbounds %struct._adapter, %struct._adapter* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  store i32 1, i32* %62, align 8
  %63 = load %struct._adapter*, %struct._adapter** %4, align 8
  %64 = getelementptr inbounds %struct._adapter, %struct._adapter* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  store i32 0, i32* %65, align 8
  %66 = load %struct._adapter*, %struct._adapter** %4, align 8
  %67 = getelementptr inbounds %struct._adapter, %struct._adapter* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.oid_par_priv*, %struct.oid_par_priv** %3, align 8
  %72 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = inttoptr i64 %73 to i32*
  store i32 %70, i32* %74, align 4
  %75 = load %struct.oid_par_priv*, %struct.oid_par_priv** %3, align 8
  %76 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  store i32 4, i32* %77, align 4
  %78 = load i32, i32* @RNDIS_STATUS_SUCCESS, align 4
  store i32 %78, i32* %2, align 4
  br label %79

79:                                               ; preds = %32, %30, %22, %14
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i32 @r8712_GetThermalMeter(%struct._adapter*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
