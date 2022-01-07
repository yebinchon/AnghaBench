; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mvsas/extr_mv_sas.c_mvs_sig_time_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mvsas/extr_mv_sas.c_mvs_sig_time_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.mvs_info*, i64, i32)* }
%struct.mvs_info = type { i64, %struct.TYPE_3__*, %struct.mvs_phy* }
%struct.TYPE_3__ = type { i64 }
%struct.mvs_phy = type { %struct.mvs_info* }
%struct.timer_list = type { i32 }

@timer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Get signature time out, reset phy %d\0A\00", align 1
@MVS_CHIP_DISP = common dso_local global %struct.TYPE_4__* null, align 8
@MVS_HARD_RESET = common dso_local global i32 0, align 4
@phy = common dso_local global %struct.mvs_phy* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @mvs_sig_time_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvs_sig_time_out(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.mvs_phy*, align 8
  %4 = alloca %struct.mvs_info*, align 8
  %5 = alloca i64, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %6 = load %struct.mvs_phy*, %struct.mvs_phy** %3, align 8
  %7 = ptrtoint %struct.mvs_phy* %6 to i32
  %8 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %9 = load i32, i32* @timer, align 4
  %10 = call %struct.mvs_phy* @from_timer(i32 %7, %struct.timer_list* %8, i32 %9)
  store %struct.mvs_phy* %10, %struct.mvs_phy** %3, align 8
  %11 = load %struct.mvs_phy*, %struct.mvs_phy** %3, align 8
  %12 = getelementptr inbounds %struct.mvs_phy, %struct.mvs_phy* %11, i32 0, i32 0
  %13 = load %struct.mvs_info*, %struct.mvs_info** %12, align 8
  store %struct.mvs_info* %13, %struct.mvs_info** %4, align 8
  store i64 0, i64* %5, align 8
  br label %14

14:                                               ; preds = %51, %1
  %15 = load i64, i64* %5, align 8
  %16 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %17 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %16, i32 0, i32 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ult i64 %15, %20
  br i1 %21, label %22, label %54

22:                                               ; preds = %14
  %23 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %24 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %23, i32 0, i32 2
  %25 = load %struct.mvs_phy*, %struct.mvs_phy** %24, align 8
  %26 = load i64, i64* %5, align 8
  %27 = getelementptr inbounds %struct.mvs_phy, %struct.mvs_phy* %25, i64 %26
  %28 = load %struct.mvs_phy*, %struct.mvs_phy** %3, align 8
  %29 = icmp eq %struct.mvs_phy* %27, %28
  br i1 %29, label %30, label %50

30:                                               ; preds = %22
  %31 = load i64, i64* %5, align 8
  %32 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %33 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %36 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %35, i32 0, i32 1
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = mul i64 %34, %39
  %41 = add i64 %31, %40
  %42 = call i32 @mv_dprintk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %41)
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** @MVS_CHIP_DISP, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32 (%struct.mvs_info*, i64, i32)*, i32 (%struct.mvs_info*, i64, i32)** %44, align 8
  %46 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %47 = load i64, i64* %5, align 8
  %48 = load i32, i32* @MVS_HARD_RESET, align 4
  %49 = call i32 %45(%struct.mvs_info* %46, i64 %47, i32 %48)
  br label %50

50:                                               ; preds = %30, %22
  br label %51

51:                                               ; preds = %50
  %52 = load i64, i64* %5, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %5, align 8
  br label %14

54:                                               ; preds = %14
  ret void
}

declare dso_local %struct.mvs_phy* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @mv_dprintk(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
