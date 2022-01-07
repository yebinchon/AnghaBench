; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_recv_linux.c_r8712_handle_tkip_mic_err.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_recv_linux.c_r8712_handle_tkip_mic_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { i32, %struct.mlme_priv }
%struct.mlme_priv = type { i32* }
%union.iwreq_data = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.iw_michaelmicfailure = type { %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32 }

@IW_MICFAILURE_GROUP = common dso_local global i32 0, align 4
@IW_MICFAILURE_PAIRWISE = common dso_local global i32 0, align 4
@ARPHRD_ETHER = common dso_local global i32 0, align 4
@IWEVMICHAELMICFAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r8712_handle_tkip_mic_err(%struct._adapter* %0, i64 %1) #0 {
  %3 = alloca %struct._adapter*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %union.iwreq_data, align 4
  %6 = alloca %struct.iw_michaelmicfailure, align 4
  %7 = alloca %struct.mlme_priv*, align 8
  store %struct._adapter* %0, %struct._adapter** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct._adapter*, %struct._adapter** %3, align 8
  %9 = getelementptr inbounds %struct._adapter, %struct._adapter* %8, i32 0, i32 1
  store %struct.mlme_priv* %9, %struct.mlme_priv** %7, align 8
  %10 = bitcast %struct.iw_michaelmicfailure* %6 to %union.iwreq_data*
  %11 = call i32 @memset(%union.iwreq_data* %10, i32 0, i32 16)
  %12 = load i64, i64* %4, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load i32, i32* @IW_MICFAILURE_GROUP, align 4
  %16 = getelementptr inbounds %struct.iw_michaelmicfailure, %struct.iw_michaelmicfailure* %6, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, %15
  store i32 %18, i32* %16, align 4
  br label %24

19:                                               ; preds = %2
  %20 = load i32, i32* @IW_MICFAILURE_PAIRWISE, align 4
  %21 = getelementptr inbounds %struct.iw_michaelmicfailure, %struct.iw_michaelmicfailure* %6, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %20
  store i32 %23, i32* %21, align 4
  br label %24

24:                                               ; preds = %19, %14
  %25 = load i32, i32* @ARPHRD_ETHER, align 4
  %26 = getelementptr inbounds %struct.iw_michaelmicfailure, %struct.iw_michaelmicfailure* %6, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = getelementptr inbounds %struct.iw_michaelmicfailure, %struct.iw_michaelmicfailure* %6, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.mlme_priv*, %struct.mlme_priv** %7, align 8
  %32 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = call i32 @ether_addr_copy(i32 %30, i32* %34)
  %36 = call i32 @memset(%union.iwreq_data* %5, i32 0, i32 8)
  %37 = bitcast %union.iwreq_data* %5 to %struct.TYPE_4__*
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  store i32 16, i32* %38, align 4
  %39 = load %struct._adapter*, %struct._adapter** %3, align 8
  %40 = getelementptr inbounds %struct._adapter, %struct._adapter* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @IWEVMICHAELMICFAILURE, align 4
  %43 = bitcast %struct.iw_michaelmicfailure* %6 to i8*
  %44 = call i32 @wireless_send_event(i32 %41, i32 %42, %union.iwreq_data* %5, i8* %43)
  ret void
}

declare dso_local i32 @memset(%union.iwreq_data*, i32, i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32*) #1

declare dso_local i32 @wireless_send_event(i32, i32, %union.iwreq_data*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
