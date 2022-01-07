; ModuleID = '/home/carl/AnghaBench/linux/drivers/vhost/extr_scsi.c_vhost_scsi_get_tag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vhost/extr_scsi.c_vhost_scsi_get_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhost_scsi_cmd = type { i32, i32, i32, %struct.vhost_scsi_nexus*, i32, i32, i32, i32, %struct.TYPE_2__, %struct.page**, %struct.scatterlist*, %struct.scatterlist* }
%struct.vhost_scsi_nexus = type { %struct.se_session* }
%struct.se_session = type { i64, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.page = type { i32 }
%struct.scatterlist = type { i32 }
%struct.vhost_virtqueue = type { i32 }
%struct.vhost_scsi_tpg = type { %struct.vhost_scsi_nexus* }

@.str = private unnamed_addr constant [49 x i8] c"Unable to locate active struct vhost_scsi_nexus\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Unable to obtain tag for vhost_scsi_cmd\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@VHOST_SCSI_MAX_CDB_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vhost_scsi_cmd* (%struct.vhost_virtqueue*, %struct.vhost_scsi_tpg*, i8*, i32, i32, i32, i32, i32)* @vhost_scsi_get_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vhost_scsi_cmd* @vhost_scsi_get_tag(%struct.vhost_virtqueue* %0, %struct.vhost_scsi_tpg* %1, i8* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.vhost_scsi_cmd*, align 8
  %10 = alloca %struct.vhost_virtqueue*, align 8
  %11 = alloca %struct.vhost_scsi_tpg*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.vhost_scsi_cmd*, align 8
  %19 = alloca %struct.vhost_scsi_nexus*, align 8
  %20 = alloca %struct.se_session*, align 8
  %21 = alloca %struct.scatterlist*, align 8
  %22 = alloca %struct.scatterlist*, align 8
  %23 = alloca %struct.page**, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.vhost_virtqueue* %0, %struct.vhost_virtqueue** %10, align 8
  store %struct.vhost_scsi_tpg* %1, %struct.vhost_scsi_tpg** %11, align 8
  store i8* %2, i8** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %26 = load %struct.vhost_scsi_tpg*, %struct.vhost_scsi_tpg** %11, align 8
  %27 = getelementptr inbounds %struct.vhost_scsi_tpg, %struct.vhost_scsi_tpg* %26, i32 0, i32 0
  %28 = load %struct.vhost_scsi_nexus*, %struct.vhost_scsi_nexus** %27, align 8
  store %struct.vhost_scsi_nexus* %28, %struct.vhost_scsi_nexus** %19, align 8
  %29 = load %struct.vhost_scsi_nexus*, %struct.vhost_scsi_nexus** %19, align 8
  %30 = icmp ne %struct.vhost_scsi_nexus* %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %8
  %32 = call i32 @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @EIO, align 4
  %34 = sub nsw i32 0, %33
  %35 = call %struct.vhost_scsi_cmd* @ERR_PTR(i32 %34)
  store %struct.vhost_scsi_cmd* %35, %struct.vhost_scsi_cmd** %9, align 8
  br label %115

36:                                               ; preds = %8
  %37 = load %struct.vhost_scsi_nexus*, %struct.vhost_scsi_nexus** %19, align 8
  %38 = getelementptr inbounds %struct.vhost_scsi_nexus, %struct.vhost_scsi_nexus* %37, i32 0, i32 0
  %39 = load %struct.se_session*, %struct.se_session** %38, align 8
  store %struct.se_session* %39, %struct.se_session** %20, align 8
  %40 = load %struct.se_session*, %struct.se_session** %20, align 8
  %41 = getelementptr inbounds %struct.se_session, %struct.se_session* %40, i32 0, i32 1
  %42 = call i32 @sbitmap_queue_get(i32* %41, i32* %25)
  store i32 %42, i32* %24, align 4
  %43 = load i32, i32* %24, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %36
  %46 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  %49 = call %struct.vhost_scsi_cmd* @ERR_PTR(i32 %48)
  store %struct.vhost_scsi_cmd* %49, %struct.vhost_scsi_cmd** %9, align 8
  br label %115

50:                                               ; preds = %36
  %51 = load %struct.se_session*, %struct.se_session** %20, align 8
  %52 = getelementptr inbounds %struct.se_session, %struct.se_session* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to %struct.vhost_scsi_cmd*
  %55 = load i32, i32* %24, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.vhost_scsi_cmd, %struct.vhost_scsi_cmd* %54, i64 %56
  store %struct.vhost_scsi_cmd* %57, %struct.vhost_scsi_cmd** %18, align 8
  %58 = load %struct.vhost_scsi_cmd*, %struct.vhost_scsi_cmd** %18, align 8
  %59 = getelementptr inbounds %struct.vhost_scsi_cmd, %struct.vhost_scsi_cmd* %58, i32 0, i32 11
  %60 = load %struct.scatterlist*, %struct.scatterlist** %59, align 8
  store %struct.scatterlist* %60, %struct.scatterlist** %21, align 8
  %61 = load %struct.vhost_scsi_cmd*, %struct.vhost_scsi_cmd** %18, align 8
  %62 = getelementptr inbounds %struct.vhost_scsi_cmd, %struct.vhost_scsi_cmd* %61, i32 0, i32 10
  %63 = load %struct.scatterlist*, %struct.scatterlist** %62, align 8
  store %struct.scatterlist* %63, %struct.scatterlist** %22, align 8
  %64 = load %struct.vhost_scsi_cmd*, %struct.vhost_scsi_cmd** %18, align 8
  %65 = getelementptr inbounds %struct.vhost_scsi_cmd, %struct.vhost_scsi_cmd* %64, i32 0, i32 9
  %66 = load %struct.page**, %struct.page*** %65, align 8
  store %struct.page** %66, %struct.page*** %23, align 8
  %67 = load %struct.vhost_scsi_cmd*, %struct.vhost_scsi_cmd** %18, align 8
  %68 = call i32 @memset(%struct.vhost_scsi_cmd* %67, i32 0, i32 72)
  %69 = load %struct.scatterlist*, %struct.scatterlist** %21, align 8
  %70 = load %struct.vhost_scsi_cmd*, %struct.vhost_scsi_cmd** %18, align 8
  %71 = getelementptr inbounds %struct.vhost_scsi_cmd, %struct.vhost_scsi_cmd* %70, i32 0, i32 11
  store %struct.scatterlist* %69, %struct.scatterlist** %71, align 8
  %72 = load %struct.scatterlist*, %struct.scatterlist** %22, align 8
  %73 = load %struct.vhost_scsi_cmd*, %struct.vhost_scsi_cmd** %18, align 8
  %74 = getelementptr inbounds %struct.vhost_scsi_cmd, %struct.vhost_scsi_cmd* %73, i32 0, i32 10
  store %struct.scatterlist* %72, %struct.scatterlist** %74, align 8
  %75 = load %struct.page**, %struct.page*** %23, align 8
  %76 = load %struct.vhost_scsi_cmd*, %struct.vhost_scsi_cmd** %18, align 8
  %77 = getelementptr inbounds %struct.vhost_scsi_cmd, %struct.vhost_scsi_cmd* %76, i32 0, i32 9
  store %struct.page** %75, %struct.page*** %77, align 8
  %78 = load i32, i32* %24, align 4
  %79 = load %struct.vhost_scsi_cmd*, %struct.vhost_scsi_cmd** %18, align 8
  %80 = getelementptr inbounds %struct.vhost_scsi_cmd, %struct.vhost_scsi_cmd* %79, i32 0, i32 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  store i32 %78, i32* %81, align 8
  %82 = load i32, i32* %25, align 4
  %83 = load %struct.vhost_scsi_cmd*, %struct.vhost_scsi_cmd** %18, align 8
  %84 = getelementptr inbounds %struct.vhost_scsi_cmd, %struct.vhost_scsi_cmd* %83, i32 0, i32 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  store i32 %82, i32* %85, align 4
  %86 = load i32, i32* %13, align 4
  %87 = load %struct.vhost_scsi_cmd*, %struct.vhost_scsi_cmd** %18, align 8
  %88 = getelementptr inbounds %struct.vhost_scsi_cmd, %struct.vhost_scsi_cmd* %87, i32 0, i32 7
  store i32 %86, i32* %88, align 4
  %89 = load i32, i32* %14, align 4
  %90 = load %struct.vhost_scsi_cmd*, %struct.vhost_scsi_cmd** %18, align 8
  %91 = getelementptr inbounds %struct.vhost_scsi_cmd, %struct.vhost_scsi_cmd* %90, i32 0, i32 6
  store i32 %89, i32* %91, align 8
  %92 = load i32, i32* %15, align 4
  %93 = load %struct.vhost_scsi_cmd*, %struct.vhost_scsi_cmd** %18, align 8
  %94 = getelementptr inbounds %struct.vhost_scsi_cmd, %struct.vhost_scsi_cmd* %93, i32 0, i32 5
  store i32 %92, i32* %94, align 4
  %95 = load i32, i32* %16, align 4
  %96 = load %struct.vhost_scsi_cmd*, %struct.vhost_scsi_cmd** %18, align 8
  %97 = getelementptr inbounds %struct.vhost_scsi_cmd, %struct.vhost_scsi_cmd* %96, i32 0, i32 4
  store i32 %95, i32* %97, align 8
  %98 = load i32, i32* %17, align 4
  %99 = load %struct.vhost_scsi_cmd*, %struct.vhost_scsi_cmd** %18, align 8
  %100 = getelementptr inbounds %struct.vhost_scsi_cmd, %struct.vhost_scsi_cmd* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  %101 = load %struct.vhost_scsi_nexus*, %struct.vhost_scsi_nexus** %19, align 8
  %102 = load %struct.vhost_scsi_cmd*, %struct.vhost_scsi_cmd** %18, align 8
  %103 = getelementptr inbounds %struct.vhost_scsi_cmd, %struct.vhost_scsi_cmd* %102, i32 0, i32 3
  store %struct.vhost_scsi_nexus* %101, %struct.vhost_scsi_nexus** %103, align 8
  %104 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %10, align 8
  %105 = call i32 @vhost_scsi_get_inflight(%struct.vhost_virtqueue* %104)
  %106 = load %struct.vhost_scsi_cmd*, %struct.vhost_scsi_cmd** %18, align 8
  %107 = getelementptr inbounds %struct.vhost_scsi_cmd, %struct.vhost_scsi_cmd* %106, i32 0, i32 2
  store i32 %105, i32* %107, align 8
  %108 = load %struct.vhost_scsi_cmd*, %struct.vhost_scsi_cmd** %18, align 8
  %109 = getelementptr inbounds %struct.vhost_scsi_cmd, %struct.vhost_scsi_cmd* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load i8*, i8** %12, align 8
  %112 = load i32, i32* @VHOST_SCSI_MAX_CDB_SIZE, align 4
  %113 = call i32 @memcpy(i32 %110, i8* %111, i32 %112)
  %114 = load %struct.vhost_scsi_cmd*, %struct.vhost_scsi_cmd** %18, align 8
  store %struct.vhost_scsi_cmd* %114, %struct.vhost_scsi_cmd** %9, align 8
  br label %115

115:                                              ; preds = %50, %45, %31
  %116 = load %struct.vhost_scsi_cmd*, %struct.vhost_scsi_cmd** %9, align 8
  ret %struct.vhost_scsi_cmd* %116
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local %struct.vhost_scsi_cmd* @ERR_PTR(i32) #1

declare dso_local i32 @sbitmap_queue_get(i32*, i32*) #1

declare dso_local i32 @memset(%struct.vhost_scsi_cmd*, i32, i32) #1

declare dso_local i32 @vhost_scsi_get_inflight(%struct.vhost_virtqueue*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
