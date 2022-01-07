; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme_ext.c_setauth_hdl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme_ext.c_setauth_hdl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.mlme_ext_priv }
%struct.mlme_ext_priv = type { %struct.mlme_ext_info }
%struct.mlme_ext_info = type { i32 }
%struct.setauth_parm = type { i32 }

@H2C_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setauth_hdl(%struct.adapter* %0, i8* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.setauth_parm*, align 8
  %6 = alloca %struct.mlme_ext_priv*, align 8
  %7 = alloca %struct.mlme_ext_info*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.setauth_parm*
  store %struct.setauth_parm* %9, %struct.setauth_parm** %5, align 8
  %10 = load %struct.adapter*, %struct.adapter** %3, align 8
  %11 = getelementptr inbounds %struct.adapter, %struct.adapter* %10, i32 0, i32 0
  store %struct.mlme_ext_priv* %11, %struct.mlme_ext_priv** %6, align 8
  %12 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %6, align 8
  %13 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %12, i32 0, i32 0
  store %struct.mlme_ext_info* %13, %struct.mlme_ext_info** %7, align 8
  %14 = load %struct.setauth_parm*, %struct.setauth_parm** %5, align 8
  %15 = getelementptr inbounds %struct.setauth_parm, %struct.setauth_parm* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp slt i32 %16, 4
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load %struct.setauth_parm*, %struct.setauth_parm** %5, align 8
  %20 = getelementptr inbounds %struct.setauth_parm, %struct.setauth_parm* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %7, align 8
  %23 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  br label %24

24:                                               ; preds = %18, %2
  %25 = load i32, i32* @H2C_SUCCESS, align 4
  ret i32 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
