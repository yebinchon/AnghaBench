; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_ps.c_rtw_leave_ips.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_ps.c_rtw_leave_ips.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"failed to leave ips state\0A\00", align 1
@rtw_restore_port_cfg_iter = common dso_local global i32 0, align 4
@COEX_IPS_LEAVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtw_leave_ips(%struct.rtw_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtw_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %3, align 8
  %5 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %6 = call i32 @rtw_ips_pwr_up(%struct.rtw_dev* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %11 = call i32 @rtw_err(%struct.rtw_dev* %10, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %2, align 4
  br label %21

13:                                               ; preds = %1
  %14 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %15 = load i32, i32* @rtw_restore_port_cfg_iter, align 4
  %16 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %17 = call i32 @rtw_iterate_vifs_atomic(%struct.rtw_dev* %14, i32 %15, %struct.rtw_dev* %16)
  %18 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %19 = load i32, i32* @COEX_IPS_LEAVE, align 4
  %20 = call i32 @rtw_coex_ips_notify(%struct.rtw_dev* %18, i32 %19)
  store i32 0, i32* %2, align 4
  br label %21

21:                                               ; preds = %13, %9
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i32 @rtw_ips_pwr_up(%struct.rtw_dev*) #1

declare dso_local i32 @rtw_err(%struct.rtw_dev*, i8*) #1

declare dso_local i32 @rtw_iterate_vifs_atomic(%struct.rtw_dev*, i32, %struct.rtw_dev*) #1

declare dso_local i32 @rtw_coex_ips_notify(%struct.rtw_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
