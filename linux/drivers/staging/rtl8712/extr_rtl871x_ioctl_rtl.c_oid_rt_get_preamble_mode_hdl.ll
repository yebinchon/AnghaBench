; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_ioctl_rtl.c_oid_rt_get_preamble_mode_hdl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_ioctl_rtl.c_oid_rt_get_preamble_mode_hdl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oid_par_priv = type { i64, i32, i32*, i64, %struct._adapter* }
%struct._adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@QUERY_OID = common dso_local global i64 0, align 8
@RNDIS_STATUS_NOT_ACCEPTED = common dso_local global i32 0, align 4
@PREAMBLE_LONG = common dso_local global i64 0, align 8
@PREAMBLE_AUTO = common dso_local global i64 0, align 8
@PREAMBLE_SHORT = common dso_local global i64 0, align 8
@RNDIS_STATUS_INVALID_LENGTH = common dso_local global i32 0, align 4
@RNDIS_STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @oid_rt_get_preamble_mode_hdl(%struct.oid_par_priv* %0) #0 {
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
  %12 = load i64, i64* @QUERY_OID, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @RNDIS_STATUS_NOT_ACCEPTED, align 4
  store i32 %15, i32* %2, align 4
  br label %64

16:                                               ; preds = %1
  %17 = load %struct.oid_par_priv*, %struct.oid_par_priv** %3, align 8
  %18 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = icmp uge i64 %20, 4
  br i1 %21, label %22, label %60

22:                                               ; preds = %16
  %23 = load %struct._adapter*, %struct._adapter** %4, align 8
  %24 = getelementptr inbounds %struct._adapter, %struct._adapter* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @PREAMBLE_LONG, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  br label %48

30:                                               ; preds = %22
  %31 = load %struct._adapter*, %struct._adapter** %4, align 8
  %32 = getelementptr inbounds %struct._adapter, %struct._adapter* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @PREAMBLE_AUTO, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  store i32 1, i32* %5, align 4
  br label %47

38:                                               ; preds = %30
  %39 = load %struct._adapter*, %struct._adapter** %4, align 8
  %40 = getelementptr inbounds %struct._adapter, %struct._adapter* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @PREAMBLE_SHORT, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  store i32 2, i32* %5, align 4
  br label %46

46:                                               ; preds = %45, %38
  br label %47

47:                                               ; preds = %46, %37
  br label %48

48:                                               ; preds = %47, %29
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.oid_par_priv*, %struct.oid_par_priv** %3, align 8
  %51 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to i32*
  store i32 %49, i32* %53, align 4
  %54 = load %struct.oid_par_priv*, %struct.oid_par_priv** %3, align 8
  %55 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.oid_par_priv*, %struct.oid_par_priv** %3, align 8
  %58 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  store i32 %56, i32* %59, align 4
  br label %62

60:                                               ; preds = %16
  %61 = load i32, i32* @RNDIS_STATUS_INVALID_LENGTH, align 4
  store i32 %61, i32* %2, align 4
  br label %64

62:                                               ; preds = %48
  %63 = load i32, i32* @RNDIS_STATUS_SUCCESS, align 4
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %62, %60, %14
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
