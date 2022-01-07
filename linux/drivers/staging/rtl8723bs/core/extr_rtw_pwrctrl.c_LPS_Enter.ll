; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_pwrctrl.c_LPS_Enter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_pwrctrl.c_LPS_Enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.dvobj_priv = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.pwrctrl_priv = type { i32, i64, i32, i32, i64 }

@WIFI_ASOC_STATE = common dso_local global i32 0, align 4
@IFACE_PORT0 = common dso_local global i64 0, align 8
@PS_MODE_ACTIVE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"WIFI-%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @LPS_Enter(%struct.adapter* %0, i8* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dvobj_priv*, align 8
  %6 = alloca %struct.pwrctrl_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [32 x i8], align 16
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.adapter*, %struct.adapter** %3, align 8
  %10 = call %struct.dvobj_priv* @adapter_to_dvobj(%struct.adapter* %9)
  store %struct.dvobj_priv* %10, %struct.dvobj_priv** %5, align 8
  %11 = load %struct.dvobj_priv*, %struct.dvobj_priv** %5, align 8
  %12 = call %struct.pwrctrl_priv* @dvobj_to_pwrctl(%struct.dvobj_priv* %11)
  store %struct.pwrctrl_priv* %12, %struct.pwrctrl_priv** %6, align 8
  store i32 0, i32* %7, align 4
  %13 = bitcast [32 x i8]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %13, i8 0, i64 32, i1 false)
  %14 = load %struct.adapter*, %struct.adapter** %3, align 8
  %15 = call i64 @hal_btcoex_IsBtControlLps(%struct.adapter* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %85

18:                                               ; preds = %2
  %19 = load %struct.dvobj_priv*, %struct.dvobj_priv** %5, align 8
  %20 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* @WIFI_ASOC_STATE, align 4
  %24 = call i64 @check_fwstate(i32* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %18
  %27 = load i32, i32* %7, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %7, align 4
  br label %29

29:                                               ; preds = %26, %18
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 1
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  br label %85

33:                                               ; preds = %29
  %34 = load %struct.adapter*, %struct.adapter** %3, align 8
  %35 = call i64 @get_iface_type(%struct.adapter* %34)
  %36 = load i64, i64* @IFACE_PORT0, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %85

39:                                               ; preds = %33
  %40 = load %struct.dvobj_priv*, %struct.dvobj_priv** %5, align 8
  %41 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = call i32 @PS_RDY_CHECK(%struct.TYPE_4__* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %39
  br label %85

46:                                               ; preds = %39
  %47 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %6, align 8
  %48 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %47, i32 0, i32 4
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %85

51:                                               ; preds = %46
  %52 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %6, align 8
  %53 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp sge i32 %54, 2
  br i1 %55, label %56, label %79

56:                                               ; preds = %51
  %57 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %6, align 8
  %58 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @PS_MODE_ACTIVE, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %78

62:                                               ; preds = %56
  %63 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %64 = load i8*, i8** %4, align 8
  %65 = call i32 @sprintf(i8* %63, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %64)
  %66 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %6, align 8
  %67 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %66, i32 0, i32 2
  store i32 1, i32* %67, align 8
  %68 = load %struct.adapter*, %struct.adapter** %3, align 8
  %69 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %6, align 8
  %70 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.adapter*, %struct.adapter** %3, align 8
  %73 = getelementptr inbounds %struct.adapter, %struct.adapter* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %77 = call i32 @rtw_set_ps_mode(%struct.adapter* %68, i32 %71, i32 %75, i32 0, i8* %76)
  br label %78

78:                                               ; preds = %62, %56
  br label %84

79:                                               ; preds = %51
  %80 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %6, align 8
  %81 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 8
  br label %84

84:                                               ; preds = %79, %78
  br label %85

85:                                               ; preds = %17, %32, %38, %45, %84, %46
  ret void
}

declare dso_local %struct.dvobj_priv* @adapter_to_dvobj(%struct.adapter*) #1

declare dso_local %struct.pwrctrl_priv* @dvobj_to_pwrctl(%struct.dvobj_priv*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @hal_btcoex_IsBtControlLps(%struct.adapter*) #1

declare dso_local i64 @check_fwstate(i32*, i32) #1

declare dso_local i64 @get_iface_type(%struct.adapter*) #1

declare dso_local i32 @PS_RDY_CHECK(%struct.TYPE_4__*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i32 @rtw_set_ps_mode(%struct.adapter*, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
