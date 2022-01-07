; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtcoutsrc.c_halbtc_send_wifi_port_id_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtcoutsrc.c_halbtc_send_wifi_port_id_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btc_coexist = type { %struct.rtl_priv* }
%struct.rtl_priv = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (i32, i32, i32, i32*)* }

@H2C_BT_PORT_ID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @halbtc_send_wifi_port_id_cmd(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.btc_coexist*, align 8
  %4 = alloca %struct.rtl_priv*, align 8
  %5 = alloca [1 x i32], align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.btc_coexist*
  store %struct.btc_coexist* %7, %struct.btc_coexist** %3, align 8
  %8 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %9 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %8, i32 0, i32 0
  %10 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  store %struct.rtl_priv* %10, %struct.rtl_priv** %4, align 8
  %11 = bitcast [1 x i32]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 4, i1 false)
  %12 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %13 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %12, i32 0, i32 1
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32 (i32, i32, i32, i32*)*, i32 (i32, i32, i32, i32*)** %17, align 8
  %19 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %20 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @H2C_BT_PORT_ID, align 4
  %24 = getelementptr inbounds [1 x i32], [1 x i32]* %5, i64 0, i64 0
  %25 = call i32 %18(i32 %22, i32 %23, i32 1, i32* %24)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
