; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v2_hw.c_link_timeout_enable_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v2_hw.c_link_timeout_enable_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_hba = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.timer_list = type { i32 }

@timer = common dso_local global i32 0, align 4
@CON_CONTROL = common dso_local global i32 0, align 4
@link_timeout_disable_link = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@hisi_hba = common dso_local global %struct.hisi_hba* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @link_timeout_enable_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @link_timeout_enable_link(%struct.timer_list* %0) #0 {
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
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %41, %1
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %14 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %44

17:                                               ; preds = %11
  %18 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %19 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @BIT(i32 %21)
  %23 = and i32 %20, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  br label %41

26:                                               ; preds = %17
  %27 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @CON_CONTROL, align 4
  %30 = call i32 @hisi_sas_phy_read32(%struct.hisi_hba* %27, i32 %28, i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @BIT(i32 0)
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %26
  %36 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @CON_CONTROL, align 4
  %39 = call i32 @hisi_sas_phy_write32(%struct.hisi_hba* %36, i32 %37, i32 %38, i32 7)
  br label %44

40:                                               ; preds = %26
  br label %41

41:                                               ; preds = %40, %25
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %4, align 4
  br label %11

44:                                               ; preds = %35, %11
  %45 = load i32, i32* @link_timeout_disable_link, align 4
  %46 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %47 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 4
  %49 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %50 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %49, i32 0, i32 2
  %51 = load i64, i64* @jiffies, align 8
  %52 = call i64 @msecs_to_jiffies(i32 900)
  %53 = add nsw i64 %51, %52
  %54 = call i32 @mod_timer(%struct.TYPE_2__* %50, i64 %53)
  ret void
}

declare dso_local %struct.hisi_hba* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @hisi_sas_phy_read32(%struct.hisi_hba*, i32, i32) #1

declare dso_local i32 @hisi_sas_phy_write32(%struct.hisi_hba*, i32, i32, i32) #1

declare dso_local i32 @mod_timer(%struct.TYPE_2__*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
