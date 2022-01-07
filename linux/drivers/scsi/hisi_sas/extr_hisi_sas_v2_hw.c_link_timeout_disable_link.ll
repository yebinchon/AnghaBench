; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v2_hw.c_link_timeout_disable_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v2_hw.c_link_timeout_disable_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_hba = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.timer_list = type { i32 }

@timer = common dso_local global i32 0, align 4
@PHY_STATE = common dso_local global i32 0, align 4
@CON_CONTROL = common dso_local global i32 0, align 4
@link_timeout_enable_link = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@hisi_hba = common dso_local global %struct.hisi_hba* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @link_timeout_disable_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @link_timeout_disable_link(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.hisi_hba*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %6 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %7 = ptrtoint %struct.hisi_hba* %6 to i32
  %8 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %9 = load i32, i32* @timer, align 4
  %10 = call %struct.hisi_hba* @from_timer(i32 %7, %struct.timer_list* %8, i32 %9)
  store %struct.hisi_hba* %10, %struct.hisi_hba** %3, align 8
  %11 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %12 = load i32, i32* @PHY_STATE, align 4
  %13 = call i32 @hisi_sas_read32(%struct.hisi_hba* %11, i32 %12)
  store i32 %13, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %46, %1
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %17 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br label %23

23:                                               ; preds = %20, %14
  %24 = phi i1 [ false, %14 ], [ %22, %20 ]
  br i1 %24, label %25, label %49

25:                                               ; preds = %23
  %26 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %27 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @BIT(i32 %29)
  %31 = and i32 %28, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %46

34:                                               ; preds = %25
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @BIT(i32 %36)
  %38 = and i32 %35, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @CON_CONTROL, align 4
  %44 = call i32 @hisi_sas_phy_write32(%struct.hisi_hba* %41, i32 %42, i32 %43, i32 6)
  br label %49

45:                                               ; preds = %34
  br label %46

46:                                               ; preds = %45, %33
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %4, align 4
  br label %14

49:                                               ; preds = %40, %23
  %50 = load i32, i32* @link_timeout_enable_link, align 4
  %51 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %52 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i32 %50, i32* %53, align 4
  %54 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %55 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %54, i32 0, i32 2
  %56 = load i64, i64* @jiffies, align 8
  %57 = call i64 @msecs_to_jiffies(i32 100)
  %58 = add nsw i64 %56, %57
  %59 = call i32 @mod_timer(%struct.TYPE_2__* %55, i64 %58)
  ret void
}

declare dso_local %struct.hisi_hba* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @hisi_sas_read32(%struct.hisi_hba*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @hisi_sas_phy_write32(%struct.hisi_hba*, i32, i32, i32) #1

declare dso_local i32 @mod_timer(%struct.TYPE_2__*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
