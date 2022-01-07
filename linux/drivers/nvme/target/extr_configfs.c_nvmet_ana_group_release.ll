; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_configfs.c_nvmet_ana_group_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_configfs.c_nvmet_ana_group_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.nvmet_ana_group = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32*, %struct.nvmet_ana_group }

@nvmet_ana_sem = common dso_local global i32 0, align 4
@NVME_ANA_INACCESSIBLE = common dso_local global i32 0, align 4
@nvmet_ana_group_enabled = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.config_item*)* @nvmet_ana_group_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvmet_ana_group_release(%struct.config_item* %0) #0 {
  %2 = alloca %struct.config_item*, align 8
  %3 = alloca %struct.nvmet_ana_group*, align 8
  store %struct.config_item* %0, %struct.config_item** %2, align 8
  %4 = load %struct.config_item*, %struct.config_item** %2, align 8
  %5 = call %struct.nvmet_ana_group* @to_ana_group(%struct.config_item* %4)
  store %struct.nvmet_ana_group* %5, %struct.nvmet_ana_group** %3, align 8
  %6 = load %struct.nvmet_ana_group*, %struct.nvmet_ana_group** %3, align 8
  %7 = load %struct.nvmet_ana_group*, %struct.nvmet_ana_group** %3, align 8
  %8 = getelementptr inbounds %struct.nvmet_ana_group, %struct.nvmet_ana_group* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = icmp eq %struct.nvmet_ana_group* %6, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %39

13:                                               ; preds = %1
  %14 = call i32 @down_write(i32* @nvmet_ana_sem)
  %15 = load i32, i32* @NVME_ANA_INACCESSIBLE, align 4
  %16 = load %struct.nvmet_ana_group*, %struct.nvmet_ana_group** %3, align 8
  %17 = getelementptr inbounds %struct.nvmet_ana_group, %struct.nvmet_ana_group* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.nvmet_ana_group*, %struct.nvmet_ana_group** %3, align 8
  %22 = getelementptr inbounds %struct.nvmet_ana_group, %struct.nvmet_ana_group* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds i32, i32* %20, i64 %23
  store i32 %15, i32* %24, align 4
  %25 = load i32*, i32** @nvmet_ana_group_enabled, align 8
  %26 = load %struct.nvmet_ana_group*, %struct.nvmet_ana_group** %3, align 8
  %27 = getelementptr inbounds %struct.nvmet_ana_group, %struct.nvmet_ana_group* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds i32, i32* %25, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %29, align 4
  %32 = call i32 @up_write(i32* @nvmet_ana_sem)
  %33 = load %struct.nvmet_ana_group*, %struct.nvmet_ana_group** %3, align 8
  %34 = getelementptr inbounds %struct.nvmet_ana_group, %struct.nvmet_ana_group* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = call i32 @nvmet_port_send_ana_event(%struct.TYPE_2__* %35)
  %37 = load %struct.nvmet_ana_group*, %struct.nvmet_ana_group** %3, align 8
  %38 = call i32 @kfree(%struct.nvmet_ana_group* %37)
  br label %39

39:                                               ; preds = %13, %12
  ret void
}

declare dso_local %struct.nvmet_ana_group* @to_ana_group(%struct.config_item*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @nvmet_port_send_ana_event(%struct.TYPE_2__*) #1

declare dso_local i32 @kfree(%struct.nvmet_ana_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
