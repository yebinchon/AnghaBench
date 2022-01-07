; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mp_ioctl.c_oid_rt_wireless_mode_hdl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mp_ioctl.c_oid_rt_wireless_mode_hdl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oid_par_priv = type { i64, i32, i32*, i64, i64 }
%struct._adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@RNDIS_STATUS_SUCCESS = common dso_local global i32 0, align 4
@SET_OID = common dso_local global i64 0, align 8
@RNDIS_STATUS_INVALID_LENGTH = common dso_local global i32 0, align 4
@QUERY_OID = common dso_local global i64 0, align 8
@RNDIS_STATUS_NOT_ACCEPTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @oid_rt_wireless_mode_hdl(%struct.oid_par_priv* %0) #0 {
  %2 = alloca %struct.oid_par_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct._adapter*, align 8
  store %struct.oid_par_priv* %0, %struct.oid_par_priv** %2, align 8
  %5 = load i32, i32* @RNDIS_STATUS_SUCCESS, align 4
  store i32 %5, i32* %3, align 4
  %6 = load %struct.oid_par_priv*, %struct.oid_par_priv** %2, align 8
  %7 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %6, i32 0, i32 4
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct._adapter*
  store %struct._adapter* %9, %struct._adapter** %4, align 8
  %10 = load %struct.oid_par_priv*, %struct.oid_par_priv** %2, align 8
  %11 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @SET_OID, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %33

15:                                               ; preds = %1
  %16 = load %struct.oid_par_priv*, %struct.oid_par_priv** %2, align 8
  %17 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = icmp uge i64 %19, 4
  br i1 %20, label %21, label %30

21:                                               ; preds = %15
  %22 = load %struct.oid_par_priv*, %struct.oid_par_priv** %2, align 8
  %23 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i32*
  %26 = load i32, i32* %25, align 4
  %27 = load %struct._adapter*, %struct._adapter** %4, align 8
  %28 = getelementptr inbounds %struct._adapter, %struct._adapter* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 4
  br label %32

30:                                               ; preds = %15
  %31 = load i32, i32* @RNDIS_STATUS_INVALID_LENGTH, align 4
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %30, %21
  br label %66

33:                                               ; preds = %1
  %34 = load %struct.oid_par_priv*, %struct.oid_par_priv** %2, align 8
  %35 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @QUERY_OID, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %63

39:                                               ; preds = %33
  %40 = load %struct.oid_par_priv*, %struct.oid_par_priv** %2, align 8
  %41 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = icmp uge i64 %43, 4
  br i1 %44, label %45, label %60

45:                                               ; preds = %39
  %46 = load %struct._adapter*, %struct._adapter** %4, align 8
  %47 = getelementptr inbounds %struct._adapter, %struct._adapter* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.oid_par_priv*, %struct.oid_par_priv** %2, align 8
  %51 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to i32*
  store i32 %49, i32* %53, align 4
  %54 = load %struct.oid_par_priv*, %struct.oid_par_priv** %2, align 8
  %55 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.oid_par_priv*, %struct.oid_par_priv** %2, align 8
  %58 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  store i32 %56, i32* %59, align 4
  br label %62

60:                                               ; preds = %39
  %61 = load i32, i32* @RNDIS_STATUS_INVALID_LENGTH, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %60, %45
  br label %65

63:                                               ; preds = %33
  %64 = load i32, i32* @RNDIS_STATUS_NOT_ACCEPTED, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %63, %62
  br label %66

66:                                               ; preds = %65, %32
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
