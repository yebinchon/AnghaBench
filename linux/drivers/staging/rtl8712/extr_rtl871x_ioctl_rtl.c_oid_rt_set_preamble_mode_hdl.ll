; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_ioctl_rtl.c_oid_rt_set_preamble_mode_hdl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_ioctl_rtl.c_oid_rt_set_preamble_mode_hdl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oid_par_priv = type { i64, i32, i32*, i64, %struct._adapter* }
%struct._adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SET_OID = common dso_local global i64 0, align 8
@RNDIS_STATUS_NOT_ACCEPTED = common dso_local global i32 0, align 4
@PREAMBLE_LONG = common dso_local global i32 0, align 4
@PREAMBLE_AUTO = common dso_local global i32 0, align 4
@PREAMBLE_SHORT = common dso_local global i32 0, align 4
@RNDIS_STATUS_INVALID_LENGTH = common dso_local global i32 0, align 4
@RNDIS_STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @oid_rt_set_preamble_mode_hdl(%struct.oid_par_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.oid_par_priv*, align 8
  %4 = alloca %struct._adapter*, align 8
  %5 = alloca i32, align 4
  store %struct.oid_par_priv* %0, %struct.oid_par_priv** %3, align 8
  %6 = load %struct.oid_par_priv*, %struct.oid_par_priv** %3, align 8
  %7 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %6, i32 0, i32 4
  %8 = load %struct._adapter*, %struct._adapter** %7, align 8
  store %struct._adapter* %8, %struct._adapter** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.oid_par_priv*, %struct.oid_par_priv** %3, align 8
  %10 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @SET_OID, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @RNDIS_STATUS_NOT_ACCEPTED, align 4
  store i32 %15, i32* %2, align 4
  br label %69

16:                                               ; preds = %1
  %17 = load %struct.oid_par_priv*, %struct.oid_par_priv** %3, align 8
  %18 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = icmp uge i64 %20, 4
  br i1 %21, label %22, label %65

22:                                               ; preds = %16
  %23 = load %struct.oid_par_priv*, %struct.oid_par_priv** %3, align 8
  %24 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i32*
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %22
  %31 = load i32, i32* @PREAMBLE_LONG, align 4
  %32 = load %struct._adapter*, %struct._adapter** %4, align 8
  %33 = getelementptr inbounds %struct._adapter, %struct._adapter* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 4
  br label %53

35:                                               ; preds = %22
  %36 = load i32, i32* %5, align 4
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load i32, i32* @PREAMBLE_AUTO, align 4
  %40 = load %struct._adapter*, %struct._adapter** %4, align 8
  %41 = getelementptr inbounds %struct._adapter, %struct._adapter* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 4
  br label %52

43:                                               ; preds = %35
  %44 = load i32, i32* %5, align 4
  %45 = icmp eq i32 %44, 2
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load i32, i32* @PREAMBLE_SHORT, align 4
  %48 = load %struct._adapter*, %struct._adapter** %4, align 8
  %49 = getelementptr inbounds %struct._adapter, %struct._adapter* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 4
  br label %51

51:                                               ; preds = %46, %43
  br label %52

52:                                               ; preds = %51, %38
  br label %53

53:                                               ; preds = %52, %30
  %54 = load i32, i32* %5, align 4
  %55 = load %struct.oid_par_priv*, %struct.oid_par_priv** %3, align 8
  %56 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to i32*
  store i32 %54, i32* %58, align 4
  %59 = load %struct.oid_par_priv*, %struct.oid_par_priv** %3, align 8
  %60 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.oid_par_priv*, %struct.oid_par_priv** %3, align 8
  %63 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  store i32 %61, i32* %64, align 4
  br label %67

65:                                               ; preds = %16
  %66 = load i32, i32* @RNDIS_STATUS_INVALID_LENGTH, align 4
  store i32 %66, i32* %2, align 4
  br label %69

67:                                               ; preds = %53
  %68 = load i32, i32* @RNDIS_STATUS_SUCCESS, align 4
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %67, %65, %14
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
