; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mp_ioctl.c_oid_rt_pro_efuse_map_hdl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mp_ioctl.c_oid_rt_pro_efuse_map_hdl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oid_par_priv = type { i64, i64, i64*, i64, i64 }
%struct._adapter = type { i32 }

@RNDIS_STATUS_SUCCESS = common dso_local global i32 0, align 4
@EFUSE_MAP_MAX_SIZE = common dso_local global i64 0, align 8
@RNDIS_STATUS_INVALID_LENGTH = common dso_local global i32 0, align 4
@QUERY_OID = common dso_local global i64 0, align 8
@RNDIS_STATUS_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @oid_rt_pro_efuse_map_hdl(%struct.oid_par_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.oid_par_priv*, align 8
  %4 = alloca %struct._adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.oid_par_priv* %0, %struct.oid_par_priv** %3, align 8
  %7 = load %struct.oid_par_priv*, %struct.oid_par_priv** %3, align 8
  %8 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %7, i32 0, i32 4
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct._adapter*
  store %struct._adapter* %10, %struct._adapter** %4, align 8
  %11 = load i32, i32* @RNDIS_STATUS_SUCCESS, align 4
  store i32 %11, i32* %5, align 4
  %12 = load %struct.oid_par_priv*, %struct.oid_par_priv** %3, align 8
  %13 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %12, i32 0, i32 2
  %14 = load i64*, i64** %13, align 8
  store i64 0, i64* %14, align 8
  %15 = load %struct.oid_par_priv*, %struct.oid_par_priv** %3, align 8
  %16 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @EFUSE_MAP_MAX_SIZE, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* @RNDIS_STATUS_INVALID_LENGTH, align 4
  store i32 %21, i32* %2, align 4
  br label %71

22:                                               ; preds = %1
  %23 = load %struct.oid_par_priv*, %struct.oid_par_priv** %3, align 8
  %24 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i32*
  store i32* %26, i32** %6, align 8
  %27 = load %struct.oid_par_priv*, %struct.oid_par_priv** %3, align 8
  %28 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @QUERY_OID, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %46

32:                                               ; preds = %22
  %33 = load %struct._adapter*, %struct._adapter** %4, align 8
  %34 = load i64, i64* @EFUSE_MAP_MAX_SIZE, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = call i64 @r8712_efuse_map_read(%struct._adapter* %33, i32 0, i64 %34, i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %32
  %39 = load i64, i64* @EFUSE_MAP_MAX_SIZE, align 8
  %40 = load %struct.oid_par_priv*, %struct.oid_par_priv** %3, align 8
  %41 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %40, i32 0, i32 2
  %42 = load i64*, i64** %41, align 8
  store i64 %39, i64* %42, align 8
  br label %45

43:                                               ; preds = %32
  %44 = load i32, i32* @RNDIS_STATUS_FAILURE, align 4
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %43, %38
  br label %69

46:                                               ; preds = %22
  %47 = load %struct._adapter*, %struct._adapter** %4, align 8
  %48 = call i64 @r8712_efuse_reg_init(%struct._adapter* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %66

50:                                               ; preds = %46
  %51 = load %struct._adapter*, %struct._adapter** %4, align 8
  %52 = load i64, i64* @EFUSE_MAP_MAX_SIZE, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = call i64 @r8712_efuse_map_write(%struct._adapter* %51, i32 0, i64 %52, i32* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %50
  %57 = load i64, i64* @EFUSE_MAP_MAX_SIZE, align 8
  %58 = load %struct.oid_par_priv*, %struct.oid_par_priv** %3, align 8
  %59 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %58, i32 0, i32 2
  %60 = load i64*, i64** %59, align 8
  store i64 %57, i64* %60, align 8
  br label %63

61:                                               ; preds = %50
  %62 = load i32, i32* @RNDIS_STATUS_FAILURE, align 4
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %61, %56
  %64 = load %struct._adapter*, %struct._adapter** %4, align 8
  %65 = call i32 @r8712_efuse_reg_uninit(%struct._adapter* %64)
  br label %68

66:                                               ; preds = %46
  %67 = load i32, i32* @RNDIS_STATUS_FAILURE, align 4
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %66, %63
  br label %69

69:                                               ; preds = %68, %45
  %70 = load i32, i32* %5, align 4
  store i32 %70, i32* %2, align 4
  br label %71

71:                                               ; preds = %69, %20
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i64 @r8712_efuse_map_read(%struct._adapter*, i32, i64, i32*) #1

declare dso_local i64 @r8712_efuse_reg_init(%struct._adapter*) #1

declare dso_local i64 @r8712_efuse_map_write(%struct._adapter*, i32, i64, i32*) #1

declare dso_local i32 @r8712_efuse_reg_uninit(%struct._adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
