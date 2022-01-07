; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_virtio_scsi.c_virtscsi_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_virtio_scsi.c_virtscsi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_affinity = type { i32 }
%struct.virtio_device = type { i32 }
%struct.virtio_scsi = type { i64, i32*, i32, i32 }
%struct.virtqueue = type opaque

@__const.virtscsi_init.desc = private unnamed_addr constant %struct.irq_affinity { i32 2 }, align 4
@VIRTIO_SCSI_VQ_BASE = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@virtscsi_ctrl_done = common dso_local global i8* null, align 8
@virtscsi_event_done = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"control\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"event\00", align 1
@virtscsi_req_done = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"request\00", align 1
@cdb_size = common dso_local global i32 0, align 4
@VIRTIO_SCSI_CDB_SIZE = common dso_local global i32 0, align 4
@sense_size = common dso_local global i32 0, align 4
@VIRTIO_SCSI_SENSE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.virtio_device*, %struct.virtio_scsi*)* @virtscsi_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @virtscsi_init(%struct.virtio_device* %0, %struct.virtio_scsi* %1) #0 {
  %3 = alloca %struct.virtio_device*, align 8
  %4 = alloca %struct.virtio_scsi*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.virtqueue**, align 8
  %11 = alloca %struct.irq_affinity, align 4
  store %struct.virtio_device* %0, %struct.virtio_device** %3, align 8
  store %struct.virtio_scsi* %1, %struct.virtio_scsi** %4, align 8
  %12 = bitcast %struct.irq_affinity* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 bitcast (%struct.irq_affinity* @__const.virtscsi_init.desc to i8*), i64 4, i1 false)
  %13 = load %struct.virtio_scsi*, %struct.virtio_scsi** %4, align 8
  %14 = getelementptr inbounds %struct.virtio_scsi, %struct.virtio_scsi* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @VIRTIO_SCSI_VQ_BASE, align 8
  %17 = add i64 %15, %16
  store i64 %17, i64* %7, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i8** @kmalloc_array(i64 %18, i32 8, i32 %19)
  %21 = bitcast i8** %20 to %struct.virtqueue**
  store %struct.virtqueue** %21, %struct.virtqueue*** %10, align 8
  %22 = load i64, i64* %7, align 8
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i8** @kmalloc_array(i64 %22, i32 8, i32 %23)
  store i8** %24, i8*** %8, align 8
  %25 = load i64, i64* %7, align 8
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i8** @kmalloc_array(i64 %25, i32 8, i32 %26)
  store i8** %27, i8*** %9, align 8
  %28 = load i8**, i8*** %8, align 8
  %29 = icmp ne i8** %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %2
  %31 = load %struct.virtqueue**, %struct.virtqueue*** %10, align 8
  %32 = icmp ne %struct.virtqueue** %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i8**, i8*** %9, align 8
  %35 = icmp ne i8** %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %33, %30, %2
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %123

39:                                               ; preds = %33
  %40 = load i8*, i8** @virtscsi_ctrl_done, align 8
  %41 = load i8**, i8*** %8, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 0
  store i8* %40, i8** %42, align 8
  %43 = load i8*, i8** @virtscsi_event_done, align 8
  %44 = load i8**, i8*** %8, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 1
  store i8* %43, i8** %45, align 8
  %46 = load i8**, i8*** %9, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %47, align 8
  %48 = load i8**, i8*** %9, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %49, align 8
  %50 = load i64, i64* @VIRTIO_SCSI_VQ_BASE, align 8
  store i64 %50, i64* %6, align 8
  br label %51

51:                                               ; preds = %63, %39
  %52 = load i64, i64* %6, align 8
  %53 = load i64, i64* %7, align 8
  %54 = icmp ult i64 %52, %53
  br i1 %54, label %55, label %66

55:                                               ; preds = %51
  %56 = load i8*, i8** @virtscsi_req_done, align 8
  %57 = load i8**, i8*** %8, align 8
  %58 = load i64, i64* %6, align 8
  %59 = getelementptr inbounds i8*, i8** %57, i64 %58
  store i8* %56, i8** %59, align 8
  %60 = load i8**, i8*** %9, align 8
  %61 = load i64, i64* %6, align 8
  %62 = getelementptr inbounds i8*, i8** %60, i64 %61
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %62, align 8
  br label %63

63:                                               ; preds = %55
  %64 = load i64, i64* %6, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %6, align 8
  br label %51

66:                                               ; preds = %51
  %67 = load %struct.virtio_device*, %struct.virtio_device** %3, align 8
  %68 = load i64, i64* %7, align 8
  %69 = load %struct.virtqueue**, %struct.virtqueue*** %10, align 8
  %70 = bitcast %struct.virtqueue** %69 to i8**
  %71 = load i8**, i8*** %8, align 8
  %72 = load i8**, i8*** %9, align 8
  %73 = call i32 @virtio_find_vqs(%struct.virtio_device* %67, i64 %68, i8** %70, i8** %71, i8** %72, %struct.irq_affinity* %11)
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* %5, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %66
  br label %123

77:                                               ; preds = %66
  %78 = load %struct.virtio_scsi*, %struct.virtio_scsi** %4, align 8
  %79 = getelementptr inbounds %struct.virtio_scsi, %struct.virtio_scsi* %78, i32 0, i32 3
  %80 = load %struct.virtqueue**, %struct.virtqueue*** %10, align 8
  %81 = getelementptr inbounds %struct.virtqueue*, %struct.virtqueue** %80, i64 0
  %82 = load %struct.virtqueue*, %struct.virtqueue** %81, align 8
  %83 = bitcast %struct.virtqueue* %82 to i8*
  %84 = call i32 @virtscsi_init_vq(i32* %79, i8* %83)
  %85 = load %struct.virtio_scsi*, %struct.virtio_scsi** %4, align 8
  %86 = getelementptr inbounds %struct.virtio_scsi, %struct.virtio_scsi* %85, i32 0, i32 2
  %87 = load %struct.virtqueue**, %struct.virtqueue*** %10, align 8
  %88 = getelementptr inbounds %struct.virtqueue*, %struct.virtqueue** %87, i64 1
  %89 = load %struct.virtqueue*, %struct.virtqueue** %88, align 8
  %90 = bitcast %struct.virtqueue* %89 to i8*
  %91 = call i32 @virtscsi_init_vq(i32* %86, i8* %90)
  %92 = load i64, i64* @VIRTIO_SCSI_VQ_BASE, align 8
  store i64 %92, i64* %6, align 8
  br label %93

93:                                               ; preds = %111, %77
  %94 = load i64, i64* %6, align 8
  %95 = load i64, i64* %7, align 8
  %96 = icmp ult i64 %94, %95
  br i1 %96, label %97, label %114

97:                                               ; preds = %93
  %98 = load %struct.virtio_scsi*, %struct.virtio_scsi** %4, align 8
  %99 = getelementptr inbounds %struct.virtio_scsi, %struct.virtio_scsi* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = load i64, i64* %6, align 8
  %102 = load i64, i64* @VIRTIO_SCSI_VQ_BASE, align 8
  %103 = sub i64 %101, %102
  %104 = getelementptr inbounds i32, i32* %100, i64 %103
  %105 = load %struct.virtqueue**, %struct.virtqueue*** %10, align 8
  %106 = load i64, i64* %6, align 8
  %107 = getelementptr inbounds %struct.virtqueue*, %struct.virtqueue** %105, i64 %106
  %108 = load %struct.virtqueue*, %struct.virtqueue** %107, align 8
  %109 = bitcast %struct.virtqueue* %108 to i8*
  %110 = call i32 @virtscsi_init_vq(i32* %104, i8* %109)
  br label %111

111:                                              ; preds = %97
  %112 = load i64, i64* %6, align 8
  %113 = add i64 %112, 1
  store i64 %113, i64* %6, align 8
  br label %93

114:                                              ; preds = %93
  %115 = load %struct.virtio_device*, %struct.virtio_device** %3, align 8
  %116 = load i32, i32* @cdb_size, align 4
  %117 = load i32, i32* @VIRTIO_SCSI_CDB_SIZE, align 4
  %118 = call i32 @virtscsi_config_set(%struct.virtio_device* %115, i32 %116, i32 %117)
  %119 = load %struct.virtio_device*, %struct.virtio_device** %3, align 8
  %120 = load i32, i32* @sense_size, align 4
  %121 = load i32, i32* @VIRTIO_SCSI_SENSE_SIZE, align 4
  %122 = call i32 @virtscsi_config_set(%struct.virtio_device* %119, i32 %120, i32 %121)
  store i32 0, i32* %5, align 4
  br label %123

123:                                              ; preds = %114, %76, %36
  %124 = load i8**, i8*** %9, align 8
  %125 = call i32 @kfree(i8** %124)
  %126 = load i8**, i8*** %8, align 8
  %127 = call i32 @kfree(i8** %126)
  %128 = load %struct.virtqueue**, %struct.virtqueue*** %10, align 8
  %129 = bitcast %struct.virtqueue** %128 to i8**
  %130 = call i32 @kfree(i8** %129)
  %131 = load i32, i32* %5, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %123
  %134 = load %struct.virtio_device*, %struct.virtio_device** %3, align 8
  %135 = call i32 @virtscsi_remove_vqs(%struct.virtio_device* %134)
  br label %136

136:                                              ; preds = %133, %123
  %137 = load i32, i32* %5, align 4
  ret i32 %137
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8** @kmalloc_array(i64, i32, i32) #2

declare dso_local i32 @virtio_find_vqs(%struct.virtio_device*, i64, i8**, i8**, i8**, %struct.irq_affinity*) #2

declare dso_local i32 @virtscsi_init_vq(i32*, i8*) #2

declare dso_local i32 @virtscsi_config_set(%struct.virtio_device*, i32, i32) #2

declare dso_local i32 @kfree(i8**) #2

declare dso_local i32 @virtscsi_remove_vqs(%struct.virtio_device*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
