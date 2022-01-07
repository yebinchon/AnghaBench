; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c___nvme_revalidate_disk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c___nvme_revalidate_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gendisk = type { i32, %struct.nvme_ns* }
%struct.nvme_ns = type { i32, i32, i32, i32, %struct.TYPE_4__*, i32, i8* }
%struct.TYPE_4__ = type { %struct.gendisk* }
%struct.nvme_id_ns = type { i64, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@NVME_NS_FLBAS_LBA_MASK = common dso_local global i64 0, align 8
@NVME_NS_FLBAS_META_EXT = common dso_local global i32 0, align 4
@NVME_NS_DPS_PI_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gendisk*, %struct.nvme_id_ns*)* @__nvme_revalidate_disk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__nvme_revalidate_disk(%struct.gendisk* %0, %struct.nvme_id_ns* %1) #0 {
  %3 = alloca %struct.gendisk*, align 8
  %4 = alloca %struct.nvme_id_ns*, align 8
  %5 = alloca %struct.nvme_ns*, align 8
  store %struct.gendisk* %0, %struct.gendisk** %3, align 8
  store %struct.nvme_id_ns* %1, %struct.nvme_id_ns** %4, align 8
  %6 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %7 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %6, i32 0, i32 1
  %8 = load %struct.nvme_ns*, %struct.nvme_ns** %7, align 8
  store %struct.nvme_ns* %8, %struct.nvme_ns** %5, align 8
  %9 = load %struct.nvme_id_ns*, %struct.nvme_id_ns** %4, align 8
  %10 = getelementptr inbounds %struct.nvme_id_ns, %struct.nvme_id_ns* %9, i32 0, i32 2
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = load %struct.nvme_id_ns*, %struct.nvme_id_ns** %4, align 8
  %13 = getelementptr inbounds %struct.nvme_id_ns, %struct.nvme_id_ns* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @NVME_NS_FLBAS_LBA_MASK, align 8
  %16 = and i64 %14, %15
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.nvme_ns*, %struct.nvme_ns** %5, align 8
  %21 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.nvme_ns*, %struct.nvme_ns** %5, align 8
  %23 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load %struct.nvme_ns*, %struct.nvme_ns** %5, align 8
  %28 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %27, i32 0, i32 0
  store i32 9, i32* %28, align 8
  br label %29

29:                                               ; preds = %26, %2
  %30 = load %struct.nvme_id_ns*, %struct.nvme_id_ns** %4, align 8
  %31 = getelementptr inbounds %struct.nvme_id_ns, %struct.nvme_id_ns* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = call i8* @le16_to_cpu(i32 %32)
  %34 = load %struct.nvme_ns*, %struct.nvme_ns** %5, align 8
  %35 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %34, i32 0, i32 6
  store i8* %33, i8** %35, align 8
  %36 = load %struct.nvme_id_ns*, %struct.nvme_id_ns** %4, align 8
  %37 = getelementptr inbounds %struct.nvme_id_ns, %struct.nvme_id_ns* %36, i32 0, i32 2
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = load %struct.nvme_id_ns*, %struct.nvme_id_ns** %4, align 8
  %40 = getelementptr inbounds %struct.nvme_id_ns, %struct.nvme_id_ns* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @NVME_NS_FLBAS_LBA_MASK, align 8
  %43 = and i64 %41, %42
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i8* @le16_to_cpu(i32 %46)
  %48 = ptrtoint i8* %47 to i32
  %49 = load %struct.nvme_ns*, %struct.nvme_ns** %5, align 8
  %50 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.nvme_ns*, %struct.nvme_ns** %5, align 8
  %52 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %29
  %56 = load %struct.nvme_id_ns*, %struct.nvme_id_ns** %4, align 8
  %57 = getelementptr inbounds %struct.nvme_id_ns, %struct.nvme_id_ns* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i32, i32* @NVME_NS_FLBAS_META_EXT, align 4
  %60 = sext i32 %59 to i64
  %61 = and i64 %58, %60
  %62 = icmp ne i64 %61, 0
  br label %63

63:                                               ; preds = %55, %29
  %64 = phi i1 [ false, %29 ], [ %62, %55 ]
  %65 = zext i1 %64 to i32
  %66 = load %struct.nvme_ns*, %struct.nvme_ns** %5, align 8
  %67 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 8
  %68 = load %struct.nvme_ns*, %struct.nvme_ns** %5, align 8
  %69 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = sext i32 %70 to i64
  %72 = icmp eq i64 %71, 4
  br i1 %72, label %73, label %81

73:                                               ; preds = %63
  %74 = load %struct.nvme_id_ns*, %struct.nvme_id_ns** %4, align 8
  %75 = getelementptr inbounds %struct.nvme_id_ns, %struct.nvme_id_ns* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @NVME_NS_DPS_PI_MASK, align 4
  %78 = and i32 %76, %77
  %79 = load %struct.nvme_ns*, %struct.nvme_ns** %5, align 8
  %80 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %79, i32 0, i32 3
  store i32 %78, i32* %80, align 4
  br label %84

81:                                               ; preds = %63
  %82 = load %struct.nvme_ns*, %struct.nvme_ns** %5, align 8
  %83 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %82, i32 0, i32 3
  store i32 0, i32* %83, align 4
  br label %84

84:                                               ; preds = %81, %73
  %85 = load %struct.nvme_ns*, %struct.nvme_ns** %5, align 8
  %86 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %85, i32 0, i32 6
  %87 = load i8*, i8** %86, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load %struct.nvme_ns*, %struct.nvme_ns** %5, align 8
  %91 = call i32 @nvme_set_chunk_size(%struct.nvme_ns* %90)
  br label %92

92:                                               ; preds = %89, %84
  %93 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %94 = load %struct.nvme_ns*, %struct.nvme_ns** %5, align 8
  %95 = load %struct.nvme_id_ns*, %struct.nvme_id_ns** %4, align 8
  %96 = call i32 @nvme_update_disk_info(%struct.gendisk* %93, %struct.nvme_ns* %94, %struct.nvme_id_ns* %95)
  ret void
}

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @nvme_set_chunk_size(%struct.nvme_ns*) #1

declare dso_local i32 @nvme_update_disk_info(%struct.gendisk*, %struct.nvme_ns*, %struct.nvme_id_ns*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
