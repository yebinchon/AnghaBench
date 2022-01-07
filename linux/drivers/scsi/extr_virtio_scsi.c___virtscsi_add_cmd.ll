; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_virtio_scsi.c___virtscsi_add_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_virtio_scsi.c___virtscsi_add_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtqueue = type { i32 }
%struct.virtio_scsi_cmd = type { i32, i32, %struct.scsi_cmnd* }
%struct.scsi_cmnd = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.sg_table }
%struct.sg_table = type { %struct.scatterlist* }
%struct.scatterlist = type { i32 }

@DMA_NONE = common dso_local global i64 0, align 8
@DMA_FROM_DEVICE = common dso_local global i64 0, align 8
@DMA_TO_DEVICE = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.virtqueue*, %struct.virtio_scsi_cmd*, i64, i64)* @__virtscsi_add_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__virtscsi_add_cmd(%struct.virtqueue* %0, %struct.virtio_scsi_cmd* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.virtqueue*, align 8
  %6 = alloca %struct.virtio_scsi_cmd*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.scsi_cmnd*, align 8
  %10 = alloca [6 x %struct.scatterlist*], align 16
  %11 = alloca %struct.scatterlist, align 4
  %12 = alloca %struct.scatterlist, align 4
  %13 = alloca %struct.sg_table*, align 8
  %14 = alloca %struct.sg_table*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.virtqueue* %0, %struct.virtqueue** %5, align 8
  store %struct.virtio_scsi_cmd* %1, %struct.virtio_scsi_cmd** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %17 = load %struct.virtio_scsi_cmd*, %struct.virtio_scsi_cmd** %6, align 8
  %18 = getelementptr inbounds %struct.virtio_scsi_cmd, %struct.virtio_scsi_cmd* %17, i32 0, i32 2
  %19 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %18, align 8
  store %struct.scsi_cmnd* %19, %struct.scsi_cmnd** %9, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store %struct.sg_table* null, %struct.sg_table** %14, align 8
  store %struct.sg_table* null, %struct.sg_table** %13, align 8
  %20 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %21 = icmp ne %struct.scsi_cmnd* %20, null
  br i1 %21, label %22, label %49

22:                                               ; preds = %4
  %23 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %24 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @DMA_NONE, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %49

28:                                               ; preds = %22
  %29 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %30 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @DMA_FROM_DEVICE, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %36 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store %struct.sg_table* %37, %struct.sg_table** %13, align 8
  br label %38

38:                                               ; preds = %34, %28
  %39 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %40 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @DMA_TO_DEVICE, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %46 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store %struct.sg_table* %47, %struct.sg_table** %14, align 8
  br label %48

48:                                               ; preds = %44, %38
  br label %49

49:                                               ; preds = %48, %22, %4
  %50 = load %struct.virtio_scsi_cmd*, %struct.virtio_scsi_cmd** %6, align 8
  %51 = getelementptr inbounds %struct.virtio_scsi_cmd, %struct.virtio_scsi_cmd* %50, i32 0, i32 1
  %52 = load i64, i64* %7, align 8
  %53 = call i32 @sg_init_one(%struct.scatterlist* %11, i32* %51, i64 %52)
  %54 = load i32, i32* %15, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %15, align 4
  %56 = zext i32 %54 to i64
  %57 = getelementptr inbounds [6 x %struct.scatterlist*], [6 x %struct.scatterlist*]* %10, i64 0, i64 %56
  store %struct.scatterlist* %11, %struct.scatterlist** %57, align 8
  %58 = load %struct.sg_table*, %struct.sg_table** %13, align 8
  %59 = icmp ne %struct.sg_table* %58, null
  br i1 %59, label %60, label %79

60:                                               ; preds = %49
  %61 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %62 = call i64 @scsi_prot_sg_count(%struct.scsi_cmnd* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %60
  %65 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %66 = call %struct.scatterlist* @scsi_prot_sglist(%struct.scsi_cmnd* %65)
  %67 = load i32, i32* %15, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %15, align 4
  %69 = zext i32 %67 to i64
  %70 = getelementptr inbounds [6 x %struct.scatterlist*], [6 x %struct.scatterlist*]* %10, i64 0, i64 %69
  store %struct.scatterlist* %66, %struct.scatterlist** %70, align 8
  br label %71

71:                                               ; preds = %64, %60
  %72 = load %struct.sg_table*, %struct.sg_table** %13, align 8
  %73 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %72, i32 0, i32 0
  %74 = load %struct.scatterlist*, %struct.scatterlist** %73, align 8
  %75 = load i32, i32* %15, align 4
  %76 = add i32 %75, 1
  store i32 %76, i32* %15, align 4
  %77 = zext i32 %75 to i64
  %78 = getelementptr inbounds [6 x %struct.scatterlist*], [6 x %struct.scatterlist*]* %10, i64 0, i64 %77
  store %struct.scatterlist* %74, %struct.scatterlist** %78, align 8
  br label %79

79:                                               ; preds = %71, %49
  %80 = load %struct.virtio_scsi_cmd*, %struct.virtio_scsi_cmd** %6, align 8
  %81 = getelementptr inbounds %struct.virtio_scsi_cmd, %struct.virtio_scsi_cmd* %80, i32 0, i32 0
  %82 = load i64, i64* %8, align 8
  %83 = call i32 @sg_init_one(%struct.scatterlist* %12, i32* %81, i64 %82)
  %84 = load i32, i32* %15, align 4
  %85 = load i32, i32* %16, align 4
  %86 = add i32 %85, 1
  store i32 %86, i32* %16, align 4
  %87 = add i32 %84, %85
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds [6 x %struct.scatterlist*], [6 x %struct.scatterlist*]* %10, i64 0, i64 %88
  store %struct.scatterlist* %12, %struct.scatterlist** %89, align 8
  %90 = load %struct.sg_table*, %struct.sg_table** %14, align 8
  %91 = icmp ne %struct.sg_table* %90, null
  br i1 %91, label %92, label %115

92:                                               ; preds = %79
  %93 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %94 = call i64 @scsi_prot_sg_count(%struct.scsi_cmnd* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %105

96:                                               ; preds = %92
  %97 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %98 = call %struct.scatterlist* @scsi_prot_sglist(%struct.scsi_cmnd* %97)
  %99 = load i32, i32* %15, align 4
  %100 = load i32, i32* %16, align 4
  %101 = add i32 %100, 1
  store i32 %101, i32* %16, align 4
  %102 = add i32 %99, %100
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds [6 x %struct.scatterlist*], [6 x %struct.scatterlist*]* %10, i64 0, i64 %103
  store %struct.scatterlist* %98, %struct.scatterlist** %104, align 8
  br label %105

105:                                              ; preds = %96, %92
  %106 = load %struct.sg_table*, %struct.sg_table** %14, align 8
  %107 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %106, i32 0, i32 0
  %108 = load %struct.scatterlist*, %struct.scatterlist** %107, align 8
  %109 = load i32, i32* %15, align 4
  %110 = load i32, i32* %16, align 4
  %111 = add i32 %110, 1
  store i32 %111, i32* %16, align 4
  %112 = add i32 %109, %110
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds [6 x %struct.scatterlist*], [6 x %struct.scatterlist*]* %10, i64 0, i64 %113
  store %struct.scatterlist* %108, %struct.scatterlist** %114, align 8
  br label %115

115:                                              ; preds = %105, %79
  %116 = load %struct.virtqueue*, %struct.virtqueue** %5, align 8
  %117 = getelementptr inbounds [6 x %struct.scatterlist*], [6 x %struct.scatterlist*]* %10, i64 0, i64 0
  %118 = load i32, i32* %15, align 4
  %119 = load i32, i32* %16, align 4
  %120 = load %struct.virtio_scsi_cmd*, %struct.virtio_scsi_cmd** %6, align 8
  %121 = load i32, i32* @GFP_ATOMIC, align 4
  %122 = call i32 @virtqueue_add_sgs(%struct.virtqueue* %116, %struct.scatterlist** %117, i32 %118, i32 %119, %struct.virtio_scsi_cmd* %120, i32 %121)
  ret i32 %122
}

declare dso_local i32 @sg_init_one(%struct.scatterlist*, i32*, i64) #1

declare dso_local i64 @scsi_prot_sg_count(%struct.scsi_cmnd*) #1

declare dso_local %struct.scatterlist* @scsi_prot_sglist(%struct.scsi_cmnd*) #1

declare dso_local i32 @virtqueue_add_sgs(%struct.virtqueue*, %struct.scatterlist**, i32, i32, %struct.virtio_scsi_cmd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
