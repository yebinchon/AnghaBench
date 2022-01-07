; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_ioctl_rtl.c_oid_rt_pro_rf_read_registry_hdl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_ioctl_rtl.c_oid_rt_pro_rf_read_registry_hdl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oid_par_priv = type { i64, i32, i64, %struct._adapter* }
%struct._adapter = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64, i32, i32 }

@RNDIS_STATUS_SUCCESS = common dso_local global i32 0, align 4
@SET_OID = common dso_local global i64 0, align 8
@RNDIS_STATUS_NOT_ACCEPTED = common dso_local global i32 0, align 4
@MPT_READ_RF = common dso_local global i32 0, align 4
@RNDIS_STATUS_INVALID_LENGTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @oid_rt_pro_rf_read_registry_hdl(%struct.oid_par_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.oid_par_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct._adapter*, align 8
  store %struct.oid_par_priv* %0, %struct.oid_par_priv** %3, align 8
  %6 = load i32, i32* @RNDIS_STATUS_SUCCESS, align 4
  store i32 %6, i32* %4, align 4
  %7 = load %struct.oid_par_priv*, %struct.oid_par_priv** %3, align 8
  %8 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %7, i32 0, i32 3
  %9 = load %struct._adapter*, %struct._adapter** %8, align 8
  store %struct._adapter* %9, %struct._adapter** %5, align 8
  %10 = load %struct.oid_par_priv*, %struct.oid_par_priv** %3, align 8
  %11 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @SET_OID, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @RNDIS_STATUS_NOT_ACCEPTED, align 4
  store i32 %16, i32* %2, align 4
  br label %78

17:                                               ; preds = %1
  %18 = load %struct.oid_par_priv*, %struct.oid_par_priv** %3, align 8
  %19 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = icmp eq i64 %21, 24
  br i1 %22, label %23, label %74

23:                                               ; preds = %17
  %24 = load %struct._adapter*, %struct._adapter** %5, align 8
  %25 = getelementptr inbounds %struct._adapter, %struct._adapter* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* @RNDIS_STATUS_NOT_ACCEPTED, align 4
  store i32 %30, i32* %4, align 4
  br label %73

31:                                               ; preds = %23
  %32 = load %struct._adapter*, %struct._adapter** %5, align 8
  %33 = getelementptr inbounds %struct._adapter, %struct._adapter* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i32 1, i32* %34, align 8
  %35 = load %struct._adapter*, %struct._adapter** %5, align 8
  %36 = getelementptr inbounds %struct._adapter, %struct._adapter* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  store i32 0, i32* %38, align 8
  %39 = load i32, i32* @MPT_READ_RF, align 4
  %40 = load %struct._adapter*, %struct._adapter** %5, align 8
  %41 = getelementptr inbounds %struct._adapter, %struct._adapter* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 3
  store i32 %39, i32* %43, align 4
  %44 = load %struct.oid_par_priv*, %struct.oid_par_priv** %3, align 8
  %45 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to i64*
  %48 = load i64, i64* %47, align 8
  %49 = load %struct._adapter*, %struct._adapter** %5, align 8
  %50 = getelementptr inbounds %struct._adapter, %struct._adapter* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  store i64 %48, i64* %52, align 8
  %53 = load %struct._adapter*, %struct._adapter** %5, align 8
  %54 = getelementptr inbounds %struct._adapter, %struct._adapter* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 2
  store i32 -858993460, i32* %56, align 8
  %57 = load %struct._adapter*, %struct._adapter** %5, align 8
  %58 = load %struct.oid_par_priv*, %struct.oid_par_priv** %3, align 8
  %59 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = inttoptr i64 %60 to i8*
  %62 = load i8, i8* %61, align 1
  %63 = load %struct._adapter*, %struct._adapter** %5, align 8
  %64 = getelementptr inbounds %struct._adapter, %struct._adapter* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 2
  %67 = bitcast i32* %66 to i8*
  %68 = call i64 @r8712_getrfreg_cmd(%struct._adapter* %57, i8 zeroext %62, i8* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %31
  %71 = load i32, i32* @RNDIS_STATUS_NOT_ACCEPTED, align 4
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %70, %31
  br label %73

73:                                               ; preds = %72, %29
  br label %76

74:                                               ; preds = %17
  %75 = load i32, i32* @RNDIS_STATUS_INVALID_LENGTH, align 4
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %74, %73
  %77 = load i32, i32* %4, align 4
  store i32 %77, i32* %2, align 4
  br label %78

78:                                               ; preds = %76, %15
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i64 @r8712_getrfreg_cmd(%struct._adapter*, i8 zeroext, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
