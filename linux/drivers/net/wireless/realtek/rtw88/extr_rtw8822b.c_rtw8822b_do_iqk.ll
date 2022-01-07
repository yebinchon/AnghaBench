; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822b.c_rtw8822b_do_iqk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822b.c_rtw8822b_do_iqk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i32 }
%struct.rtw_iqk_para = type { i32, i32 }

@rtw8822b_do_iqk.do_iqk_cnt = internal global i32 0, align 4
@RF_PATH_A = common dso_local global i32 0, align 4
@RF_DTXLOK = common dso_local global i32 0, align 4
@RFREG_MASK = common dso_local global i32 0, align 4
@REG_IQKFAILMSK = common dso_local global i32 0, align 4
@RTW_DBG_PHY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"iqk counter=%d reload=%d do_iqk_cnt=%d n_iqk_fail(mask)=0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*)* @rtw8822b_do_iqk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw8822b_do_iqk(%struct.rtw_dev* %0) #0 {
  %2 = alloca %struct.rtw_dev*, align 8
  %3 = alloca %struct.rtw_iqk_para, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %2, align 8
  %8 = bitcast %struct.rtw_iqk_para* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 8, i1 false)
  %9 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %10 = call i32 @rtw_fw_do_iqk(%struct.rtw_dev* %9, %struct.rtw_iqk_para* %3)
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %25, %1
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 300
  br i1 %13, label %14, label %28

14:                                               ; preds = %11
  %15 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %16 = load i32, i32* @RF_PATH_A, align 4
  %17 = load i32, i32* @RF_DTXLOK, align 4
  %18 = load i32, i32* @RFREG_MASK, align 4
  %19 = call i32 @rtw_read_rf(%struct.rtw_dev* %15, i32 %16, i32 %17, i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp eq i32 %20, 703710
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  br label %28

23:                                               ; preds = %14
  %24 = call i32 @msleep(i32 20)
  br label %25

25:                                               ; preds = %23
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %6, align 4
  br label %11

28:                                               ; preds = %22, %11
  %29 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %30 = load i32, i32* @RF_PATH_A, align 4
  %31 = load i32, i32* @RF_DTXLOK, align 4
  %32 = load i32, i32* @RFREG_MASK, align 4
  %33 = call i32 @rtw_write_rf(%struct.rtw_dev* %29, i32 %30, i32 %31, i32 %32, i32 0)
  %34 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %35 = load i32, i32* @REG_IQKFAILMSK, align 4
  %36 = call i32 @BIT(i32 16)
  %37 = call i32 @rtw_read32_mask(%struct.rtw_dev* %34, i32 %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %7, align 4
  %42 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %43 = load i32, i32* @REG_IQKFAILMSK, align 4
  %44 = call i32 @GENMASK(i32 7, i32 0)
  %45 = call i32 @rtw_read32_mask(%struct.rtw_dev* %42, i32 %43, i32 %44)
  store i32 %45, i32* %5, align 4
  %46 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %47 = load i32, i32* @RTW_DBG_PHY, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @rtw8822b_do_iqk.do_iqk_cnt, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* @rtw8822b_do_iqk.do_iqk_cnt, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @rtw_dbg(%struct.rtw_dev* %46, i32 %47, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %49, i32 %51, i32 %52)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @rtw_fw_do_iqk(%struct.rtw_dev*, %struct.rtw_iqk_para*) #2

declare dso_local i32 @rtw_read_rf(%struct.rtw_dev*, i32, i32, i32) #2

declare dso_local i32 @msleep(i32) #2

declare dso_local i32 @rtw_write_rf(%struct.rtw_dev*, i32, i32, i32, i32) #2

declare dso_local i32 @rtw_read32_mask(%struct.rtw_dev*, i32, i32) #2

declare dso_local i32 @BIT(i32) #2

declare dso_local i32 @GENMASK(i32, i32) #2

declare dso_local i32 @rtw_dbg(%struct.rtw_dev*, i32, i8*, i32, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
