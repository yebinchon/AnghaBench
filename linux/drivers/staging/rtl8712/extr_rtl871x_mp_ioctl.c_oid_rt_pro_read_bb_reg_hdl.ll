; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mp_ioctl.c_oid_rt_pro_read_bb_reg_hdl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mp_ioctl.c_oid_rt_pro_read_bb_reg_hdl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oid_par_priv = type { i64, i32, i32*, i64, i64 }
%struct._adapter = type { i32 }
%struct.bb_reg_param = type { i32, i64 }

@QUERY_OID = common dso_local global i64 0, align 8
@RNDIS_STATUS_NOT_ACCEPTED = common dso_local global i32 0, align 4
@RNDIS_STATUS_INVALID_LENGTH = common dso_local global i32 0, align 4
@BB_REG_BASE_ADDR = common dso_local global i32 0, align 4
@RNDIS_STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @oid_rt_pro_read_bb_reg_hdl(%struct.oid_par_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.oid_par_priv*, align 8
  %4 = alloca %struct._adapter*, align 8
  %5 = alloca %struct.bb_reg_param*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.oid_par_priv* %0, %struct.oid_par_priv** %3, align 8
  %8 = load %struct.oid_par_priv*, %struct.oid_par_priv** %3, align 8
  %9 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %8, i32 0, i32 4
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct._adapter*
  store %struct._adapter* %11, %struct._adapter** %4, align 8
  %12 = load %struct.oid_par_priv*, %struct.oid_par_priv** %3, align 8
  %13 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @QUERY_OID, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @RNDIS_STATUS_NOT_ACCEPTED, align 4
  store i32 %18, i32* %2, align 4
  br label %58

19:                                               ; preds = %1
  %20 = load %struct.oid_par_priv*, %struct.oid_par_priv** %3, align 8
  %21 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = icmp ult i64 %23, 16
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* @RNDIS_STATUS_INVALID_LENGTH, align 4
  store i32 %26, i32* %2, align 4
  br label %58

27:                                               ; preds = %19
  %28 = load %struct.oid_par_priv*, %struct.oid_par_priv** %3, align 8
  %29 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.bb_reg_param*
  store %struct.bb_reg_param* %31, %struct.bb_reg_param** %5, align 8
  %32 = load %struct.bb_reg_param*, %struct.bb_reg_param** %5, align 8
  %33 = getelementptr inbounds %struct.bb_reg_param, %struct.bb_reg_param* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i32
  %36 = and i32 %35, 4095
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @BB_REG_BASE_ADDR, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %27
  %41 = load i32, i32* @BB_REG_BASE_ADDR, align 4
  %42 = load i32, i32* %6, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %40, %27
  %45 = load %struct._adapter*, %struct._adapter** %4, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @r8712_bb_reg_read(%struct._adapter* %45, i32 %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.bb_reg_param*, %struct.bb_reg_param** %5, align 8
  %50 = getelementptr inbounds %struct.bb_reg_param, %struct.bb_reg_param* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.oid_par_priv*, %struct.oid_par_priv** %3, align 8
  %52 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.oid_par_priv*, %struct.oid_par_priv** %3, align 8
  %55 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  store i32 %53, i32* %56, align 4
  %57 = load i32, i32* @RNDIS_STATUS_SUCCESS, align 4
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %44, %25, %17
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @r8712_bb_reg_read(%struct._adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
