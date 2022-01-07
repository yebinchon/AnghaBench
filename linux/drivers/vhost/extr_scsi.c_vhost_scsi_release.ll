; ModuleID = '/home/carl/AnghaBench/linux/drivers/vhost/extr_scsi.c_vhost_scsi_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vhost/extr_scsi.c_vhost_scsi_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.vhost_scsi* }
%struct.vhost_scsi = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.vhost_scsi_target = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @vhost_scsi_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vhost_scsi_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.vhost_scsi*, align 8
  %6 = alloca %struct.vhost_scsi_target, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %7 = load %struct.file*, %struct.file** %4, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 0
  %9 = load %struct.vhost_scsi*, %struct.vhost_scsi** %8, align 8
  store %struct.vhost_scsi* %9, %struct.vhost_scsi** %5, align 8
  %10 = load %struct.vhost_scsi*, %struct.vhost_scsi** %5, align 8
  %11 = getelementptr inbounds %struct.vhost_scsi, %struct.vhost_scsi* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = getelementptr inbounds %struct.vhost_scsi_target, %struct.vhost_scsi_target* %6, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.vhost_scsi*, %struct.vhost_scsi** %5, align 8
  %17 = getelementptr inbounds %struct.vhost_scsi, %struct.vhost_scsi* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @memcpy(i32 %15, i32 %18, i32 4)
  %20 = load %struct.vhost_scsi*, %struct.vhost_scsi** %5, align 8
  %21 = getelementptr inbounds %struct.vhost_scsi, %struct.vhost_scsi* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = call i32 @mutex_unlock(i32* %22)
  %24 = load %struct.vhost_scsi*, %struct.vhost_scsi** %5, align 8
  %25 = call i32 @vhost_scsi_clear_endpoint(%struct.vhost_scsi* %24, %struct.vhost_scsi_target* %6)
  %26 = load %struct.vhost_scsi*, %struct.vhost_scsi** %5, align 8
  %27 = getelementptr inbounds %struct.vhost_scsi, %struct.vhost_scsi* %26, i32 0, i32 0
  %28 = call i32 @vhost_dev_stop(%struct.TYPE_3__* %27)
  %29 = load %struct.vhost_scsi*, %struct.vhost_scsi** %5, align 8
  %30 = getelementptr inbounds %struct.vhost_scsi, %struct.vhost_scsi* %29, i32 0, i32 0
  %31 = call i32 @vhost_dev_cleanup(%struct.TYPE_3__* %30)
  %32 = load %struct.vhost_scsi*, %struct.vhost_scsi** %5, align 8
  %33 = call i32 @vhost_scsi_flush(%struct.vhost_scsi* %32)
  %34 = load %struct.vhost_scsi*, %struct.vhost_scsi** %5, align 8
  %35 = getelementptr inbounds %struct.vhost_scsi, %struct.vhost_scsi* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @kfree(i32 %37)
  %39 = load %struct.vhost_scsi*, %struct.vhost_scsi** %5, align 8
  %40 = call i32 @kvfree(%struct.vhost_scsi* %39)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @vhost_scsi_clear_endpoint(%struct.vhost_scsi*, %struct.vhost_scsi_target*) #1

declare dso_local i32 @vhost_dev_stop(%struct.TYPE_3__*) #1

declare dso_local i32 @vhost_dev_cleanup(%struct.TYPE_3__*) #1

declare dso_local i32 @vhost_scsi_flush(%struct.vhost_scsi*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @kvfree(%struct.vhost_scsi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
