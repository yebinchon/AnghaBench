; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtcoutsrc.c_halbtc_set_bt_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtcoutsrc.c_halbtc_set_bt_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btc_coexist = type { i32 }

@BT_OP_WRITE_REG_VALUE = common dso_local global i32 0, align 4
@BT_OP_WRITE_REG_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i64, i64)* @halbtc_set_bt_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @halbtc_set_bt_reg(i8* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.btc_coexist*, align 8
  %10 = alloca [4 x i64], align 16
  %11 = alloca [4 x i64], align 16
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.btc_coexist*
  store %struct.btc_coexist* %13, %struct.btc_coexist** %9, align 8
  %14 = bitcast [4 x i64]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %14, i8 0, i64 32, i1 false)
  %15 = bitcast [4 x i64]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %15, i8 0, i64 32, i1 false)
  %16 = load i64, i64* %8, align 8
  %17 = trunc i64 %16 to i32
  %18 = call i32 @cpu_to_le16(i32 %17)
  %19 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 2
  %20 = bitcast i64* %19 to i32*
  store i32 %18, i32* %20, align 16
  %21 = load %struct.btc_coexist*, %struct.btc_coexist** %9, align 8
  %22 = load i32, i32* @BT_OP_WRITE_REG_VALUE, align 4
  %23 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 0
  %24 = call i32 @halbtc_send_bt_mp_operation(%struct.btc_coexist* %21, i32 %22, i64* %23, i32 4, i32 200)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %4
  br label %36

27:                                               ; preds = %4
  %28 = load i64, i64* %6, align 8
  %29 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 2
  store i64 %28, i64* %29, align 16
  %30 = load i64, i64* %7, align 8
  %31 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 3
  store i64 %30, i64* %31, align 8
  %32 = load %struct.btc_coexist*, %struct.btc_coexist** %9, align 8
  %33 = load i32, i32* @BT_OP_WRITE_REG_ADDR, align 4
  %34 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 0
  %35 = call i32 @halbtc_send_bt_mp_operation(%struct.btc_coexist* %32, i32 %33, i64* %34, i32 4, i32 200)
  br label %36

36:                                               ; preds = %27, %26
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cpu_to_le16(i32) #2

declare dso_local i32 @halbtc_send_bt_mp_operation(%struct.btc_coexist*, i32, i64*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
