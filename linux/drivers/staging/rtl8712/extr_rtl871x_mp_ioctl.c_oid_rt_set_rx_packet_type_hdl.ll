; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mp_ioctl.c_oid_rt_set_rx_packet_type_hdl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mp_ioctl.c_oid_rt_set_rx_packet_type_hdl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oid_par_priv = type { i64, i32, i64, i64 }
%struct._adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SET_OID = common dso_local global i64 0, align 8
@RNDIS_STATUS_NOT_ACCEPTED = common dso_local global i32 0, align 4
@RNDIS_STATUS_INVALID_LENGTH = common dso_local global i32 0, align 4
@RCR = common dso_local global i32 0, align 4
@RCR_CBSSID = common dso_local global i32 0, align 4
@RCR_AB = common dso_local global i32 0, align 4
@RCR_AM = common dso_local global i32 0, align 4
@RCR_APM = common dso_local global i32 0, align 4
@RCR_AAP = common dso_local global i32 0, align 4
@RCR_ACRC32 = common dso_local global i32 0, align 4
@RNDIS_STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @oid_rt_set_rx_packet_type_hdl(%struct.oid_par_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.oid_par_priv*, align 8
  %4 = alloca %struct._adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.oid_par_priv* %0, %struct.oid_par_priv** %3, align 8
  %7 = load %struct.oid_par_priv*, %struct.oid_par_priv** %3, align 8
  %8 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct._adapter*
  store %struct._adapter* %10, %struct._adapter** %4, align 8
  %11 = load %struct.oid_par_priv*, %struct.oid_par_priv** %3, align 8
  %12 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SET_OID, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @RNDIS_STATUS_NOT_ACCEPTED, align 4
  store i32 %17, i32* %2, align 4
  br label %108

18:                                               ; preds = %1
  %19 = load %struct.oid_par_priv*, %struct.oid_par_priv** %3, align 8
  %20 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = icmp ult i64 %22, 4
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* @RNDIS_STATUS_INVALID_LENGTH, align 4
  store i32 %25, i32* %2, align 4
  br label %108

26:                                               ; preds = %18
  %27 = load %struct.oid_par_priv*, %struct.oid_par_priv** %3, align 8
  %28 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i32*
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %5, align 4
  %32 = load %struct._adapter*, %struct._adapter** %4, align 8
  %33 = load i32, i32* @RCR, align 4
  %34 = call i32 @r8712_read32(%struct._adapter* %32, i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* @RCR_CBSSID, align 4
  %36 = load i32, i32* @RCR_AB, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @RCR_AM, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @RCR_APM, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @RCR_AAP, align 4
  %43 = or i32 %41, %42
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %6, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %5, align 4
  switch i32 %47, label %78 [
    i32 130, label %48
    i32 129, label %60
    i32 128, label %72
  ]

48:                                               ; preds = %26
  %49 = load i32, i32* @RCR_AB, align 4
  %50 = load i32, i32* @RCR_AM, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @RCR_APM, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @RCR_AAP, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @RCR_ACRC32, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* %6, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %6, align 4
  br label %91

60:                                               ; preds = %26
  %61 = load i32, i32* @RCR_AB, align 4
  %62 = load i32, i32* @RCR_AM, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @RCR_APM, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @RCR_AAP, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @RCR_ACRC32, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* %6, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %6, align 4
  br label %91

72:                                               ; preds = %26
  %73 = load i32, i32* @RCR_APM, align 4
  %74 = load i32, i32* @RCR_ACRC32, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* %6, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %6, align 4
  br label %91

78:                                               ; preds = %26
  %79 = load i32, i32* @RCR_AAP, align 4
  %80 = load i32, i32* @RCR_APM, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @RCR_AM, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @RCR_AB, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @RCR_ACRC32, align 4
  %87 = or i32 %85, %86
  %88 = xor i32 %87, -1
  %89 = load i32, i32* %6, align 4
  %90 = and i32 %89, %88
  store i32 %90, i32* %6, align 4
  br label %91

91:                                               ; preds = %78, %72, %60, %48
  %92 = load i32, i32* %5, align 4
  %93 = icmp eq i32 %92, 129
  br i1 %93, label %94, label %98

94:                                               ; preds = %91
  %95 = load %struct._adapter*, %struct._adapter** %4, align 8
  %96 = getelementptr inbounds %struct._adapter, %struct._adapter* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  store i32 1, i32* %97, align 4
  br label %102

98:                                               ; preds = %91
  %99 = load %struct._adapter*, %struct._adapter** %4, align 8
  %100 = getelementptr inbounds %struct._adapter, %struct._adapter* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  store i32 0, i32* %101, align 4
  br label %102

102:                                              ; preds = %98, %94
  %103 = load %struct._adapter*, %struct._adapter** %4, align 8
  %104 = load i32, i32* @RCR, align 4
  %105 = load i32, i32* %6, align 4
  %106 = call i32 @r8712_write32(%struct._adapter* %103, i32 %104, i32 %105)
  %107 = load i32, i32* @RNDIS_STATUS_SUCCESS, align 4
  store i32 %107, i32* %2, align 4
  br label %108

108:                                              ; preds = %102, %24, %16
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local i32 @r8712_read32(%struct._adapter*, i32) #1

declare dso_local i32 @r8712_write32(%struct._adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
