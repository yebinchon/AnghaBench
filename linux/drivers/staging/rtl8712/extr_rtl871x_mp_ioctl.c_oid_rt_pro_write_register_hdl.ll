; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mp_ioctl.c_oid_rt_pro_write_register_hdl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mp_ioctl.c_oid_rt_pro_write_register_hdl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oid_par_priv = type { i64, i64, i64 }
%struct._adapter = type { i32 }
%struct.mp_rw_reg = type { i32, i32, i32 }

@RNDIS_STATUS_SUCCESS = common dso_local global i32 0, align 4
@SET_OID = common dso_local global i64 0, align 8
@RNDIS_STATUS_NOT_ACCEPTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @oid_rt_pro_write_register_hdl(%struct.oid_par_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.oid_par_priv*, align 8
  %4 = alloca %struct._adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mp_rw_reg*, align 8
  %7 = alloca i32, align 4
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
  br label %112

22:                                               ; preds = %1
  %23 = load %struct.oid_par_priv*, %struct.oid_par_priv** %3, align 8
  %24 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.mp_rw_reg*
  store %struct.mp_rw_reg* %26, %struct.mp_rw_reg** %6, align 8
  %27 = load %struct.mp_rw_reg*, %struct.mp_rw_reg** %6, align 8
  %28 = getelementptr inbounds %struct.mp_rw_reg, %struct.mp_rw_reg* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp sge i32 %29, 270862336
  br i1 %30, label %31, label %74

31:                                               ; preds = %22
  %32 = load %struct.mp_rw_reg*, %struct.mp_rw_reg** %6, align 8
  %33 = getelementptr inbounds %struct.mp_rw_reg, %struct.mp_rw_reg* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp sle i32 %34, 270864383
  br i1 %35, label %36, label %74

36:                                               ; preds = %31
  %37 = load %struct.mp_rw_reg*, %struct.mp_rw_reg** %6, align 8
  %38 = getelementptr inbounds %struct.mp_rw_reg, %struct.mp_rw_reg* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, 4095
  store i32 %40, i32* %7, align 4
  %41 = load %struct.mp_rw_reg*, %struct.mp_rw_reg** %6, align 8
  %42 = getelementptr inbounds %struct.mp_rw_reg, %struct.mp_rw_reg* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %8, align 4
  %44 = load %struct.mp_rw_reg*, %struct.mp_rw_reg** %6, align 8
  %45 = getelementptr inbounds %struct.mp_rw_reg, %struct.mp_rw_reg* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  switch i32 %46, label %69 [
    i32 1, label %47
    i32 2, label %58
  ]

47:                                               ; preds = %36
  %48 = load %struct._adapter*, %struct._adapter** %4, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @r8712_bb_reg_read(%struct._adapter* %48, i32 %49)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = and i32 %51, -256
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %8, align 4
  %54 = and i32 %53, 255
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %8, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %8, align 4
  br label %69

58:                                               ; preds = %36
  %59 = load %struct._adapter*, %struct._adapter** %4, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @r8712_bb_reg_read(%struct._adapter* %59, i32 %60)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = and i32 %62, -65536
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %8, align 4
  %65 = and i32 %64, 65535
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %8, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %8, align 4
  br label %69

69:                                               ; preds = %36, %58, %47
  %70 = load %struct._adapter*, %struct._adapter** %4, align 8
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @r8712_bb_reg_write(%struct._adapter* %70, i32 %71, i32 %72)
  br label %110

74:                                               ; preds = %31, %22
  %75 = load %struct.mp_rw_reg*, %struct.mp_rw_reg** %6, align 8
  %76 = getelementptr inbounds %struct.mp_rw_reg, %struct.mp_rw_reg* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  switch i32 %77, label %107 [
    i32 1, label %78
    i32 2, label %88
    i32 4, label %98
  ]

78:                                               ; preds = %74
  %79 = load %struct._adapter*, %struct._adapter** %4, align 8
  %80 = load %struct.mp_rw_reg*, %struct.mp_rw_reg** %6, align 8
  %81 = getelementptr inbounds %struct.mp_rw_reg, %struct.mp_rw_reg* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.mp_rw_reg*, %struct.mp_rw_reg** %6, align 8
  %84 = getelementptr inbounds %struct.mp_rw_reg, %struct.mp_rw_reg* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = trunc i32 %85 to i8
  %87 = call i32 @r8712_write8(%struct._adapter* %79, i32 %82, i8 zeroext %86)
  br label %109

88:                                               ; preds = %74
  %89 = load %struct._adapter*, %struct._adapter** %4, align 8
  %90 = load %struct.mp_rw_reg*, %struct.mp_rw_reg** %6, align 8
  %91 = getelementptr inbounds %struct.mp_rw_reg, %struct.mp_rw_reg* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.mp_rw_reg*, %struct.mp_rw_reg** %6, align 8
  %94 = getelementptr inbounds %struct.mp_rw_reg, %struct.mp_rw_reg* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = trunc i32 %95 to i16
  %97 = call i32 @r8712_write16(%struct._adapter* %89, i32 %92, i16 zeroext %96)
  br label %109

98:                                               ; preds = %74
  %99 = load %struct._adapter*, %struct._adapter** %4, align 8
  %100 = load %struct.mp_rw_reg*, %struct.mp_rw_reg** %6, align 8
  %101 = getelementptr inbounds %struct.mp_rw_reg, %struct.mp_rw_reg* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.mp_rw_reg*, %struct.mp_rw_reg** %6, align 8
  %104 = getelementptr inbounds %struct.mp_rw_reg, %struct.mp_rw_reg* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @r8712_write32(%struct._adapter* %99, i32 %102, i32 %105)
  br label %109

107:                                              ; preds = %74
  %108 = load i32, i32* @RNDIS_STATUS_NOT_ACCEPTED, align 4
  store i32 %108, i32* %5, align 4
  br label %109

109:                                              ; preds = %107, %98, %88, %78
  br label %110

110:                                              ; preds = %109, %69
  %111 = load i32, i32* %5, align 4
  store i32 %111, i32* %2, align 4
  br label %112

112:                                              ; preds = %110, %20
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local i32 @r8712_bb_reg_read(%struct._adapter*, i32) #1

declare dso_local i32 @r8712_bb_reg_write(%struct._adapter*, i32, i32) #1

declare dso_local i32 @r8712_write8(%struct._adapter*, i32, i8 zeroext) #1

declare dso_local i32 @r8712_write16(%struct._adapter*, i32, i16 zeroext) #1

declare dso_local i32 @r8712_write32(%struct._adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
