; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_do_iqk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_do_iqk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i32 }
%struct.rtw_iqk_para = type { i32, i32 }

@REG_RPT_CIP = common dso_local global i32 0, align 4
@REG_IQKSTAT = common dso_local global i32 0, align 4
@RTW_DBG_RFK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"iqk counter=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*)* @rtw8822c_do_iqk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw8822c_do_iqk(%struct.rtw_dev* %0) #0 {
  %2 = alloca %struct.rtw_dev*, align 8
  %3 = alloca %struct.rtw_iqk_para, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %2, align 8
  %6 = bitcast %struct.rtw_iqk_para* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %6, i8 0, i64 8, i1 false)
  %7 = getelementptr inbounds %struct.rtw_iqk_para, %struct.rtw_iqk_para* %3, i32 0, i32 0
  store i32 1, i32* %7, align 4
  %8 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %9 = call i32 @rtw_fw_do_iqk(%struct.rtw_dev* %8, %struct.rtw_iqk_para* %3)
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %22, %1
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 300
  br i1 %12, label %13, label %25

13:                                               ; preds = %10
  %14 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %15 = load i32, i32* @REG_RPT_CIP, align 4
  %16 = call i32 @rtw_read8(%struct.rtw_dev* %14, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp eq i32 %17, 170
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %25

20:                                               ; preds = %13
  %21 = call i32 @msleep(i32 20)
  br label %22

22:                                               ; preds = %20
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %5, align 4
  br label %10

25:                                               ; preds = %19, %10
  %26 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %27 = load i32, i32* @REG_IQKSTAT, align 4
  %28 = call i32 @rtw_write8(%struct.rtw_dev* %26, i32 %27, i32 0)
  %29 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %30 = load i32, i32* @RTW_DBG_RFK, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @rtw_dbg(%struct.rtw_dev* %29, i32 %30, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %31)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @rtw_fw_do_iqk(%struct.rtw_dev*, %struct.rtw_iqk_para*) #2

declare dso_local i32 @rtw_read8(%struct.rtw_dev*, i32) #2

declare dso_local i32 @msleep(i32) #2

declare dso_local i32 @rtw_write8(%struct.rtw_dev*, i32, i32) #2

declare dso_local i32 @rtw_dbg(%struct.rtw_dev*, i32, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
