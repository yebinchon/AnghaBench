; ModuleID = '/home/carl/AnghaBench/linux/drivers/vhost/extr_scsi.c_vhost_scsi_send_evt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vhost/extr_scsi.c_vhost_scsi_send_evt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhost_scsi = type { i32, i32, i32 }
%struct.vhost_scsi_tpg = type { i32 }
%struct.se_lun = type { i32 }
%struct.vhost_scsi_evt = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vhost_scsi*, %struct.vhost_scsi_tpg*, %struct.se_lun*, i32, i32)* @vhost_scsi_send_evt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vhost_scsi_send_evt(%struct.vhost_scsi* %0, %struct.vhost_scsi_tpg* %1, %struct.se_lun* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.vhost_scsi*, align 8
  %7 = alloca %struct.vhost_scsi_tpg*, align 8
  %8 = alloca %struct.se_lun*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.vhost_scsi_evt*, align 8
  store %struct.vhost_scsi* %0, %struct.vhost_scsi** %6, align 8
  store %struct.vhost_scsi_tpg* %1, %struct.vhost_scsi_tpg** %7, align 8
  store %struct.se_lun* %2, %struct.se_lun** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.vhost_scsi*, %struct.vhost_scsi** %6, align 8
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* %10, align 4
  %15 = call %struct.vhost_scsi_evt* @vhost_scsi_allocate_evt(%struct.vhost_scsi* %12, i32 %13, i32 %14)
  store %struct.vhost_scsi_evt* %15, %struct.vhost_scsi_evt** %11, align 8
  %16 = load %struct.vhost_scsi_evt*, %struct.vhost_scsi_evt** %11, align 8
  %17 = icmp ne %struct.vhost_scsi_evt* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %5
  br label %75

19:                                               ; preds = %5
  %20 = load %struct.vhost_scsi_tpg*, %struct.vhost_scsi_tpg** %7, align 8
  %21 = icmp ne %struct.vhost_scsi_tpg* %20, null
  br i1 %21, label %22, label %64

22:                                               ; preds = %19
  %23 = load %struct.se_lun*, %struct.se_lun** %8, align 8
  %24 = icmp ne %struct.se_lun* %23, null
  br i1 %24, label %25, label %64

25:                                               ; preds = %22
  %26 = load %struct.vhost_scsi_evt*, %struct.vhost_scsi_evt** %11, align 8
  %27 = getelementptr inbounds %struct.vhost_scsi_evt, %struct.vhost_scsi_evt* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  store i32 1, i32* %30, align 4
  %31 = load %struct.vhost_scsi_tpg*, %struct.vhost_scsi_tpg** %7, align 8
  %32 = getelementptr inbounds %struct.vhost_scsi_tpg, %struct.vhost_scsi_tpg* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.vhost_scsi_evt*, %struct.vhost_scsi_evt** %11, align 8
  %35 = getelementptr inbounds %struct.vhost_scsi_evt, %struct.vhost_scsi_evt* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  store i32 %33, i32* %38, align 4
  %39 = load %struct.se_lun*, %struct.se_lun** %8, align 8
  %40 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp sge i32 %41, 256
  br i1 %42, label %43, label %54

43:                                               ; preds = %25
  %44 = load %struct.se_lun*, %struct.se_lun** %8, align 8
  %45 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = ashr i32 %46, 8
  %48 = or i32 %47, 64
  %49 = load %struct.vhost_scsi_evt*, %struct.vhost_scsi_evt** %11, align 8
  %50 = getelementptr inbounds %struct.vhost_scsi_evt, %struct.vhost_scsi_evt* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 2
  store i32 %48, i32* %53, align 4
  br label %54

54:                                               ; preds = %43, %25
  %55 = load %struct.se_lun*, %struct.se_lun** %8, align 8
  %56 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, 255
  %59 = load %struct.vhost_scsi_evt*, %struct.vhost_scsi_evt** %11, align 8
  %60 = getelementptr inbounds %struct.vhost_scsi_evt, %struct.vhost_scsi_evt* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 3
  store i32 %58, i32* %63, align 4
  br label %64

64:                                               ; preds = %54, %22, %19
  %65 = load %struct.vhost_scsi_evt*, %struct.vhost_scsi_evt** %11, align 8
  %66 = getelementptr inbounds %struct.vhost_scsi_evt, %struct.vhost_scsi_evt* %65, i32 0, i32 0
  %67 = load %struct.vhost_scsi*, %struct.vhost_scsi** %6, align 8
  %68 = getelementptr inbounds %struct.vhost_scsi, %struct.vhost_scsi* %67, i32 0, i32 2
  %69 = call i32 @llist_add(i32* %66, i32* %68)
  %70 = load %struct.vhost_scsi*, %struct.vhost_scsi** %6, align 8
  %71 = getelementptr inbounds %struct.vhost_scsi, %struct.vhost_scsi* %70, i32 0, i32 1
  %72 = load %struct.vhost_scsi*, %struct.vhost_scsi** %6, align 8
  %73 = getelementptr inbounds %struct.vhost_scsi, %struct.vhost_scsi* %72, i32 0, i32 0
  %74 = call i32 @vhost_work_queue(i32* %71, i32* %73)
  br label %75

75:                                               ; preds = %64, %18
  ret void
}

declare dso_local %struct.vhost_scsi_evt* @vhost_scsi_allocate_evt(%struct.vhost_scsi*, i32, i32) #1

declare dso_local i32 @llist_add(i32*, i32*) #1

declare dso_local i32 @vhost_work_queue(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
