; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mp_ioctl.c_oid_rt_pro_write_efuse_hdl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mp_ioctl.c_oid_rt_pro_write_efuse_hdl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oid_par_priv = type { i64, i64, i64 }
%struct._adapter = type { i32 }
%struct.EFUSE_ACCESS_STRUCT = type { i32, i32, i32* }

@RNDIS_STATUS_SUCCESS = common dso_local global i32 0, align 4
@SET_OID = common dso_local global i64 0, align 8
@RNDIS_STATUS_NOT_ACCEPTED = common dso_local global i32 0, align 4
@RNDIS_STATUS_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @oid_rt_pro_write_efuse_hdl(%struct.oid_par_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.oid_par_priv*, align 8
  %4 = alloca %struct._adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.EFUSE_ACCESS_STRUCT*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.oid_par_priv* %0, %struct.oid_par_priv** %3, align 8
  %10 = load %struct.oid_par_priv*, %struct.oid_par_priv** %3, align 8
  %11 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct._adapter*
  store %struct._adapter* %13, %struct._adapter** %4, align 8
  %14 = load i32, i32* @RNDIS_STATUS_SUCCESS, align 4
  store i32 %14, i32* %5, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %15 = load %struct.oid_par_priv*, %struct.oid_par_priv** %3, align 8
  %16 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @SET_OID, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* @RNDIS_STATUS_NOT_ACCEPTED, align 4
  store i32 %21, i32* %2, align 4
  br label %64

22:                                               ; preds = %1
  %23 = load %struct.oid_par_priv*, %struct.oid_par_priv** %3, align 8
  %24 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.EFUSE_ACCESS_STRUCT*
  store %struct.EFUSE_ACCESS_STRUCT* %26, %struct.EFUSE_ACCESS_STRUCT** %6, align 8
  %27 = load %struct.EFUSE_ACCESS_STRUCT*, %struct.EFUSE_ACCESS_STRUCT** %6, align 8
  %28 = getelementptr inbounds %struct.EFUSE_ACCESS_STRUCT, %struct.EFUSE_ACCESS_STRUCT* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %8, align 4
  %30 = load %struct.EFUSE_ACCESS_STRUCT*, %struct.EFUSE_ACCESS_STRUCT** %6, align 8
  %31 = getelementptr inbounds %struct.EFUSE_ACCESS_STRUCT, %struct.EFUSE_ACCESS_STRUCT* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %9, align 4
  %33 = load %struct.EFUSE_ACCESS_STRUCT*, %struct.EFUSE_ACCESS_STRUCT** %6, align 8
  %34 = getelementptr inbounds %struct.EFUSE_ACCESS_STRUCT, %struct.EFUSE_ACCESS_STRUCT* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  store i32* %35, i32** %7, align 8
  %36 = load i32, i32* %8, align 4
  %37 = icmp sgt i32 %36, 511
  br i1 %37, label %51, label %38

38:                                               ; preds = %22
  %39 = load i32, i32* %9, align 4
  %40 = icmp slt i32 %39, 1
  br i1 %40, label %51, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* %9, align 4
  %43 = icmp sgt i32 %42, 512
  br i1 %43, label %51, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %9, align 4
  %47 = add nsw i32 %45, %46
  %48 = load %struct._adapter*, %struct._adapter** %4, align 8
  %49 = call i32 @r8712_efuse_get_max_size(%struct._adapter* %48)
  %50 = icmp sgt i32 %47, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %44, %41, %38, %22
  %52 = load i32, i32* @RNDIS_STATUS_NOT_ACCEPTED, align 4
  store i32 %52, i32* %2, align 4
  br label %64

53:                                               ; preds = %44
  %54 = load %struct._adapter*, %struct._adapter** %4, align 8
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %9, align 4
  %57 = load i32*, i32** %7, align 8
  %58 = call i32 @r8712_efuse_access(%struct._adapter* %54, i32 0, i32 %55, i32 %56, i32* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %53
  %61 = load i32, i32* @RNDIS_STATUS_FAILURE, align 4
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %60, %53
  %63 = load i32, i32* %5, align 4
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %62, %51, %20
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @r8712_efuse_get_max_size(%struct._adapter*) #1

declare dso_local i32 @r8712_efuse_access(%struct._adapter*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
