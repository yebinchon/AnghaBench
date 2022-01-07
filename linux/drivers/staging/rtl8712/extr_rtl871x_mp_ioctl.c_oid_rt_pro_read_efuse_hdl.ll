; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mp_ioctl.c_oid_rt_pro_read_efuse_hdl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mp_ioctl.c_oid_rt_pro_read_efuse_hdl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oid_par_priv = type { i64, i32, i32*, i64, i64 }
%struct._adapter = type { i32 }
%struct.EFUSE_ACCESS_STRUCT = type { i32, i32, i32* }

@RNDIS_STATUS_SUCCESS = common dso_local global i32 0, align 4
@QUERY_OID = common dso_local global i64 0, align 8
@RNDIS_STATUS_NOT_ACCEPTED = common dso_local global i32 0, align 4
@RNDIS_STATUS_INVALID_LENGTH = common dso_local global i32 0, align 4
@EFUSE_MAX_SIZE = common dso_local global i32 0, align 4
@RNDIS_STATUS_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @oid_rt_pro_read_efuse_hdl(%struct.oid_par_priv* %0) #0 {
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
  %11 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %10, i32 0, i32 4
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
  %18 = load i64, i64* @QUERY_OID, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* @RNDIS_STATUS_NOT_ACCEPTED, align 4
  store i32 %21, i32* %2, align 4
  br label %80

22:                                               ; preds = %1
  %23 = load %struct.oid_par_priv*, %struct.oid_par_priv** %3, align 8
  %24 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = icmp ult i64 %26, 16
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* @RNDIS_STATUS_INVALID_LENGTH, align 4
  store i32 %29, i32* %2, align 4
  br label %80

30:                                               ; preds = %22
  %31 = load %struct.oid_par_priv*, %struct.oid_par_priv** %3, align 8
  %32 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to %struct.EFUSE_ACCESS_STRUCT*
  store %struct.EFUSE_ACCESS_STRUCT* %34, %struct.EFUSE_ACCESS_STRUCT** %6, align 8
  %35 = load %struct.EFUSE_ACCESS_STRUCT*, %struct.EFUSE_ACCESS_STRUCT** %6, align 8
  %36 = getelementptr inbounds %struct.EFUSE_ACCESS_STRUCT, %struct.EFUSE_ACCESS_STRUCT* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %8, align 4
  %38 = load %struct.EFUSE_ACCESS_STRUCT*, %struct.EFUSE_ACCESS_STRUCT** %6, align 8
  %39 = getelementptr inbounds %struct.EFUSE_ACCESS_STRUCT, %struct.EFUSE_ACCESS_STRUCT* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %9, align 4
  %41 = load %struct.EFUSE_ACCESS_STRUCT*, %struct.EFUSE_ACCESS_STRUCT** %6, align 8
  %42 = getelementptr inbounds %struct.EFUSE_ACCESS_STRUCT, %struct.EFUSE_ACCESS_STRUCT* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  store i32* %43, i32** %7, align 8
  %44 = load i32*, i32** %7, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @memset(i32* %44, i32 255, i32 %45)
  %47 = load i32, i32* %8, align 4
  %48 = icmp sgt i32 %47, 511
  br i1 %48, label %61, label %49

49:                                               ; preds = %30
  %50 = load i32, i32* %9, align 4
  %51 = icmp slt i32 %50, 1
  br i1 %51, label %61, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* %9, align 4
  %54 = icmp sgt i32 %53, 512
  br i1 %54, label %61, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %56, %57
  %59 = load i32, i32* @EFUSE_MAX_SIZE, align 4
  %60 = icmp sgt i32 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %55, %52, %49, %30
  %62 = load i32, i32* @RNDIS_STATUS_NOT_ACCEPTED, align 4
  store i32 %62, i32* %2, align 4
  br label %80

63:                                               ; preds = %55
  %64 = load %struct._adapter*, %struct._adapter** %4, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %9, align 4
  %67 = load i32*, i32** %7, align 8
  %68 = call i32 @r8712_efuse_access(%struct._adapter* %64, i32 1, i32 %65, i32 %66, i32* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %63
  %71 = load i32, i32* @RNDIS_STATUS_FAILURE, align 4
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %70, %63
  %73 = load %struct.oid_par_priv*, %struct.oid_par_priv** %3, align 8
  %74 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.oid_par_priv*, %struct.oid_par_priv** %3, align 8
  %77 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %76, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  store i32 %75, i32* %78, align 4
  %79 = load i32, i32* %5, align 4
  store i32 %79, i32* %2, align 4
  br label %80

80:                                               ; preds = %72, %61, %28, %20
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @r8712_efuse_access(%struct._adapter*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
