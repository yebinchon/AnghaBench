; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_mesh.c_mesh_queue_lck.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_mesh.c_mesh_queue_lck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { void (%struct.scsi_cmnd*)*, i32*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.mesh_state = type { i64, %struct.scsi_cmnd*, %struct.scsi_cmnd* }

@idle = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, void (%struct.scsi_cmnd*)*)* @mesh_queue_lck to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mesh_queue_lck(%struct.scsi_cmnd* %0, void (%struct.scsi_cmnd*)* %1) #0 {
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca void (%struct.scsi_cmnd*)*, align 8
  %5 = alloca %struct.mesh_state*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  store void (%struct.scsi_cmnd*)* %1, void (%struct.scsi_cmnd*)** %4, align 8
  %6 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %4, align 8
  %7 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %8 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %7, i32 0, i32 0
  store void (%struct.scsi_cmnd*)* %6, void (%struct.scsi_cmnd*)** %8, align 8
  %9 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %10 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %9, i32 0, i32 1
  store i32* null, i32** %10, align 8
  %11 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %12 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %11, i32 0, i32 2
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.mesh_state*
  store %struct.mesh_state* %18, %struct.mesh_state** %5, align 8
  %19 = load %struct.mesh_state*, %struct.mesh_state** %5, align 8
  %20 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %19, i32 0, i32 2
  %21 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %20, align 8
  %22 = icmp eq %struct.scsi_cmnd* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %25 = load %struct.mesh_state*, %struct.mesh_state** %5, align 8
  %26 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %25, i32 0, i32 2
  store %struct.scsi_cmnd* %24, %struct.scsi_cmnd** %26, align 8
  br label %35

27:                                               ; preds = %2
  %28 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %29 = bitcast %struct.scsi_cmnd* %28 to i8*
  %30 = bitcast i8* %29 to i32*
  %31 = load %struct.mesh_state*, %struct.mesh_state** %5, align 8
  %32 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %31, i32 0, i32 1
  %33 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %32, align 8
  %34 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %33, i32 0, i32 1
  store i32* %30, i32** %34, align 8
  br label %35

35:                                               ; preds = %27, %23
  %36 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %37 = load %struct.mesh_state*, %struct.mesh_state** %5, align 8
  %38 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %37, i32 0, i32 1
  store %struct.scsi_cmnd* %36, %struct.scsi_cmnd** %38, align 8
  %39 = load %struct.mesh_state*, %struct.mesh_state** %5, align 8
  %40 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @idle, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %35
  %45 = load %struct.mesh_state*, %struct.mesh_state** %5, align 8
  %46 = call i32 @mesh_start(%struct.mesh_state* %45)
  br label %47

47:                                               ; preds = %44, %35
  ret i32 0
}

declare dso_local i32 @mesh_start(%struct.mesh_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
