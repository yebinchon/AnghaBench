; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_lib.c_scsi_mq_init_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_lib.c_scsi_mq_init_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_mq_tag_set = type { %struct.Scsi_Host* }
%struct.Scsi_Host = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.request = type { i32 }
%struct.scsi_cmnd = type { i8*, i64, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.scatterlist = type { i32 }

@SCMD_UNCHECKED_ISA_DMA = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blk_mq_tag_set*, %struct.request*, i32, i32)* @scsi_mq_init_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scsi_mq_init_request(%struct.blk_mq_tag_set* %0, %struct.request* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.blk_mq_tag_set*, align 8
  %7 = alloca %struct.request*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.Scsi_Host*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.scsi_cmnd*, align 8
  %13 = alloca %struct.scatterlist*, align 8
  store %struct.blk_mq_tag_set* %0, %struct.blk_mq_tag_set** %6, align 8
  store %struct.request* %1, %struct.request** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %6, align 8
  %15 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %14, i32 0, i32 0
  %16 = load %struct.Scsi_Host*, %struct.Scsi_Host** %15, align 8
  store %struct.Scsi_Host* %16, %struct.Scsi_Host** %10, align 8
  %17 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %18 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %11, align 4
  %20 = load %struct.request*, %struct.request** %7, align 8
  %21 = call %struct.scsi_cmnd* @blk_mq_rq_to_pdu(%struct.request* %20)
  store %struct.scsi_cmnd* %21, %struct.scsi_cmnd** %12, align 8
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %4
  %25 = load i32, i32* @SCMD_UNCHECKED_ISA_DMA, align 4
  %26 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %12, align 8
  %27 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 8
  br label %30

30:                                               ; preds = %24, %4
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i64 @scsi_alloc_sense_buffer(i32 %31, i32 %32, i32 %33)
  %35 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %12, align 8
  %36 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %35, i32 0, i32 1
  store i64 %34, i64* %36, align 8
  %37 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %12, align 8
  %38 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %30
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %75

44:                                               ; preds = %30
  %45 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %12, align 8
  %46 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %12, align 8
  %49 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  store i64 %47, i64* %50, align 8
  %51 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %52 = call i64 @scsi_host_get_prot(%struct.Scsi_Host* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %74

54:                                               ; preds = %44
  %55 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %12, align 8
  %56 = bitcast %struct.scsi_cmnd* %55 to i8*
  %57 = getelementptr i8, i8* %56, i64 32
  %58 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %59 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %58, i32 0, i32 1
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr i8, i8* %57, i64 %63
  %65 = bitcast i8* %64 to %struct.scatterlist*
  store %struct.scatterlist* %65, %struct.scatterlist** %13, align 8
  %66 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %67 = bitcast %struct.scatterlist* %66 to i8*
  %68 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %69 = call i32 @scsi_mq_inline_sgl_size(%struct.Scsi_Host* %68)
  %70 = sext i32 %69 to i64
  %71 = getelementptr i8, i8* %67, i64 %70
  %72 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %12, align 8
  %73 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %72, i32 0, i32 0
  store i8* %71, i8** %73, align 8
  br label %74

74:                                               ; preds = %54, %44
  store i32 0, i32* %5, align 4
  br label %75

75:                                               ; preds = %74, %41
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local %struct.scsi_cmnd* @blk_mq_rq_to_pdu(%struct.request*) #1

declare dso_local i64 @scsi_alloc_sense_buffer(i32, i32, i32) #1

declare dso_local i64 @scsi_host_get_prot(%struct.Scsi_Host*) #1

declare dso_local i32 @scsi_mq_inline_sgl_size(%struct.Scsi_Host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
