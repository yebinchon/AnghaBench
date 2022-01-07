; ModuleID = '/home/carl/AnghaBench/linux/fs/erofs/extr_zmap.c_vle_load_cluster_from_disk.c'
source_filename = "/home/carl/AnghaBench/linux/fs/erofs/extr_zmap.c_vle_load_cluster_from_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.z_erofs_maprecorder = type { i32 }
%struct.TYPE_2__ = type { i32 }

@EROFS_INODE_FLAT_COMPRESSION_LEGACY = common dso_local global i32 0, align 4
@EROFS_INODE_FLAT_COMPRESSION = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.z_erofs_maprecorder*, i32)* @vle_load_cluster_from_disk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vle_load_cluster_from_disk(%struct.z_erofs_maprecorder* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.z_erofs_maprecorder*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.z_erofs_maprecorder* %0, %struct.z_erofs_maprecorder** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.z_erofs_maprecorder*, %struct.z_erofs_maprecorder** %4, align 8
  %8 = getelementptr inbounds %struct.z_erofs_maprecorder, %struct.z_erofs_maprecorder* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.TYPE_2__* @EROFS_I(i32 %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @EROFS_INODE_FLAT_COMPRESSION_LEGACY, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct.z_erofs_maprecorder*, %struct.z_erofs_maprecorder** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @vle_legacy_load_cluster_from_disk(%struct.z_erofs_maprecorder* %17, i32 %18)
  store i32 %19, i32* %3, align 4
  br label %31

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @EROFS_INODE_FLAT_COMPRESSION, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load %struct.z_erofs_maprecorder*, %struct.z_erofs_maprecorder** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @compacted_load_cluster_from_disk(%struct.z_erofs_maprecorder* %25, i32 %26)
  store i32 %27, i32* %3, align 4
  br label %31

28:                                               ; preds = %20
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %28, %24, %16
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local %struct.TYPE_2__* @EROFS_I(i32) #1

declare dso_local i32 @vle_legacy_load_cluster_from_disk(%struct.z_erofs_maprecorder*, i32) #1

declare dso_local i32 @compacted_load_cluster_from_disk(%struct.z_erofs_maprecorder*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
