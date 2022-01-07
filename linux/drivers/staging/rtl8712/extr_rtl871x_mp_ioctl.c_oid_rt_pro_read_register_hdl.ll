; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mp_ioctl.c_oid_rt_pro_read_register_hdl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mp_ioctl.c_oid_rt_pro_read_register_hdl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oid_par_priv = type { i64, i32, i32*, i64, i64 }
%struct._adapter = type { i32 }
%struct.mp_rw_reg = type { i32, i32, i32 }

@RNDIS_STATUS_SUCCESS = common dso_local global i32 0, align 4
@QUERY_OID = common dso_local global i64 0, align 8
@RNDIS_STATUS_NOT_ACCEPTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @oid_rt_pro_read_register_hdl(%struct.oid_par_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.oid_par_priv*, align 8
  %4 = alloca %struct._adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mp_rw_reg*, align 8
  %7 = alloca i32, align 4
  store %struct.oid_par_priv* %0, %struct.oid_par_priv** %3, align 8
  %8 = load %struct.oid_par_priv*, %struct.oid_par_priv** %3, align 8
  %9 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %8, i32 0, i32 4
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct._adapter*
  store %struct._adapter* %11, %struct._adapter** %4, align 8
  %12 = load i32, i32* @RNDIS_STATUS_SUCCESS, align 4
  store i32 %12, i32* %5, align 4
  %13 = load %struct.oid_par_priv*, %struct.oid_par_priv** %3, align 8
  %14 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @QUERY_OID, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* @RNDIS_STATUS_NOT_ACCEPTED, align 4
  store i32 %19, i32* %2, align 4
  br label %83

20:                                               ; preds = %1
  %21 = load %struct.oid_par_priv*, %struct.oid_par_priv** %3, align 8
  %22 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.mp_rw_reg*
  store %struct.mp_rw_reg* %24, %struct.mp_rw_reg** %6, align 8
  %25 = load %struct.mp_rw_reg*, %struct.mp_rw_reg** %6, align 8
  %26 = getelementptr inbounds %struct.mp_rw_reg, %struct.mp_rw_reg* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp sge i32 %27, 270862336
  br i1 %28, label %29, label %44

29:                                               ; preds = %20
  %30 = load %struct.mp_rw_reg*, %struct.mp_rw_reg** %6, align 8
  %31 = getelementptr inbounds %struct.mp_rw_reg, %struct.mp_rw_reg* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp sle i32 %32, 270864383
  br i1 %33, label %34, label %44

34:                                               ; preds = %29
  %35 = load %struct.mp_rw_reg*, %struct.mp_rw_reg** %6, align 8
  %36 = getelementptr inbounds %struct.mp_rw_reg, %struct.mp_rw_reg* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, 4095
  store i32 %38, i32* %7, align 4
  %39 = load %struct._adapter*, %struct._adapter** %4, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @r8712_bb_reg_read(%struct._adapter* %39, i32 %40)
  %42 = load %struct.mp_rw_reg*, %struct.mp_rw_reg** %6, align 8
  %43 = getelementptr inbounds %struct.mp_rw_reg, %struct.mp_rw_reg* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  br label %75

44:                                               ; preds = %29, %20
  %45 = load %struct.mp_rw_reg*, %struct.mp_rw_reg** %6, align 8
  %46 = getelementptr inbounds %struct.mp_rw_reg, %struct.mp_rw_reg* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  switch i32 %47, label %72 [
    i32 1, label %48
    i32 2, label %56
    i32 4, label %64
  ]

48:                                               ; preds = %44
  %49 = load %struct._adapter*, %struct._adapter** %4, align 8
  %50 = load %struct.mp_rw_reg*, %struct.mp_rw_reg** %6, align 8
  %51 = getelementptr inbounds %struct.mp_rw_reg, %struct.mp_rw_reg* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @r8712_read8(%struct._adapter* %49, i32 %52)
  %54 = load %struct.mp_rw_reg*, %struct.mp_rw_reg** %6, align 8
  %55 = getelementptr inbounds %struct.mp_rw_reg, %struct.mp_rw_reg* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 4
  br label %74

56:                                               ; preds = %44
  %57 = load %struct._adapter*, %struct._adapter** %4, align 8
  %58 = load %struct.mp_rw_reg*, %struct.mp_rw_reg** %6, align 8
  %59 = getelementptr inbounds %struct.mp_rw_reg, %struct.mp_rw_reg* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @r8712_read16(%struct._adapter* %57, i32 %60)
  %62 = load %struct.mp_rw_reg*, %struct.mp_rw_reg** %6, align 8
  %63 = getelementptr inbounds %struct.mp_rw_reg, %struct.mp_rw_reg* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 4
  br label %74

64:                                               ; preds = %44
  %65 = load %struct._adapter*, %struct._adapter** %4, align 8
  %66 = load %struct.mp_rw_reg*, %struct.mp_rw_reg** %6, align 8
  %67 = getelementptr inbounds %struct.mp_rw_reg, %struct.mp_rw_reg* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @r8712_read32(%struct._adapter* %65, i32 %68)
  %70 = load %struct.mp_rw_reg*, %struct.mp_rw_reg** %6, align 8
  %71 = getelementptr inbounds %struct.mp_rw_reg, %struct.mp_rw_reg* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 4
  br label %74

72:                                               ; preds = %44
  %73 = load i32, i32* @RNDIS_STATUS_NOT_ACCEPTED, align 4
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %72, %64, %56, %48
  br label %75

75:                                               ; preds = %74, %34
  %76 = load %struct.oid_par_priv*, %struct.oid_par_priv** %3, align 8
  %77 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.oid_par_priv*, %struct.oid_par_priv** %3, align 8
  %80 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  store i32 %78, i32* %81, align 4
  %82 = load i32, i32* %5, align 4
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %75, %18
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i32 @r8712_bb_reg_read(%struct._adapter*, i32) #1

declare dso_local i32 @r8712_read8(%struct._adapter*, i32) #1

declare dso_local i32 @r8712_read16(%struct._adapter*, i32) #1

declare dso_local i32 @r8712_read32(%struct._adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
