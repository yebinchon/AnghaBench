; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_io.c_snic_free_wq_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_io.c_snic_free_wq_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnic_wq = type { i32 }
%struct.vnic_wq_buf = type { i32, i32, %struct.snic_host_req* }
%struct.snic_host_req = type { i32 }
%struct.snic = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.snic_req_info = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"snic_free_wq_buf .. freed.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snic_free_wq_buf(%struct.vnic_wq* %0, %struct.vnic_wq_buf* %1) #0 {
  %3 = alloca %struct.vnic_wq*, align 8
  %4 = alloca %struct.vnic_wq_buf*, align 8
  %5 = alloca %struct.snic_host_req*, align 8
  %6 = alloca %struct.snic*, align 8
  %7 = alloca %struct.snic_req_info*, align 8
  %8 = alloca i64, align 8
  store %struct.vnic_wq* %0, %struct.vnic_wq** %3, align 8
  store %struct.vnic_wq_buf* %1, %struct.vnic_wq_buf** %4, align 8
  %9 = load %struct.vnic_wq_buf*, %struct.vnic_wq_buf** %4, align 8
  %10 = getelementptr inbounds %struct.vnic_wq_buf, %struct.vnic_wq_buf* %9, i32 0, i32 2
  %11 = load %struct.snic_host_req*, %struct.snic_host_req** %10, align 8
  store %struct.snic_host_req* %11, %struct.snic_host_req** %5, align 8
  %12 = load %struct.vnic_wq*, %struct.vnic_wq** %3, align 8
  %13 = getelementptr inbounds %struct.vnic_wq, %struct.vnic_wq* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.snic* @svnic_dev_priv(i32 %14)
  store %struct.snic* %15, %struct.snic** %6, align 8
  store %struct.snic_req_info* null, %struct.snic_req_info** %7, align 8
  %16 = load %struct.snic*, %struct.snic** %6, align 8
  %17 = getelementptr inbounds %struct.snic, %struct.snic* %16, i32 0, i32 2
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.vnic_wq_buf*, %struct.vnic_wq_buf** %4, align 8
  %21 = getelementptr inbounds %struct.vnic_wq_buf, %struct.vnic_wq_buf* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.vnic_wq_buf*, %struct.vnic_wq_buf** %4, align 8
  %24 = getelementptr inbounds %struct.vnic_wq_buf, %struct.vnic_wq_buf* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @DMA_TO_DEVICE, align 4
  %27 = call i32 @dma_unmap_single(i32* %19, i32 %22, i32 %25, i32 %26)
  %28 = load %struct.snic_host_req*, %struct.snic_host_req** %5, align 8
  %29 = call %struct.snic_req_info* @req_to_rqi(%struct.snic_host_req* %28)
  store %struct.snic_req_info* %29, %struct.snic_req_info** %7, align 8
  %30 = load %struct.snic*, %struct.snic** %6, align 8
  %31 = getelementptr inbounds %struct.snic, %struct.snic* %30, i32 0, i32 1
  %32 = load i64, i64* %8, align 8
  %33 = call i32 @spin_lock_irqsave(i32* %31, i64 %32)
  %34 = load %struct.snic_req_info*, %struct.snic_req_info** %7, align 8
  %35 = getelementptr inbounds %struct.snic_req_info, %struct.snic_req_info* %34, i32 0, i32 1
  %36 = call i64 @list_empty(%struct.TYPE_5__* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %2
  %39 = load %struct.snic*, %struct.snic** %6, align 8
  %40 = getelementptr inbounds %struct.snic, %struct.snic* %39, i32 0, i32 1
  %41 = load i64, i64* %8, align 8
  %42 = call i32 @spin_unlock_irqrestore(i32* %40, i64 %41)
  br label %81

43:                                               ; preds = %2
  %44 = load %struct.snic_req_info*, %struct.snic_req_info** %7, align 8
  %45 = getelementptr inbounds %struct.snic_req_info, %struct.snic_req_info* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = icmp eq i32* %47, null
  %49 = zext i1 %48 to i32
  %50 = call i32 @SNIC_BUG_ON(i32 %49)
  %51 = load %struct.snic_req_info*, %struct.snic_req_info** %7, align 8
  %52 = getelementptr inbounds %struct.snic_req_info, %struct.snic_req_info* %51, i32 0, i32 1
  %53 = call i32 @list_del_init(%struct.TYPE_5__* %52)
  %54 = load %struct.snic*, %struct.snic** %6, align 8
  %55 = getelementptr inbounds %struct.snic, %struct.snic* %54, i32 0, i32 1
  %56 = load i64, i64* %8, align 8
  %57 = call i32 @spin_unlock_irqrestore(i32* %55, i64 %56)
  %58 = load %struct.snic_req_info*, %struct.snic_req_info** %7, align 8
  %59 = getelementptr inbounds %struct.snic_req_info, %struct.snic_req_info* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %43
  %63 = load %struct.snic*, %struct.snic** %6, align 8
  %64 = load %struct.snic_req_info*, %struct.snic_req_info** %7, align 8
  %65 = call i32 @snic_pci_unmap_rsp_buf(%struct.snic* %63, %struct.snic_req_info* %64)
  %66 = load %struct.snic_req_info*, %struct.snic_req_info** %7, align 8
  %67 = getelementptr inbounds %struct.snic_req_info, %struct.snic_req_info* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = inttoptr i64 %68 to i8*
  %70 = call i32 @kfree(i8* %69)
  %71 = load %struct.snic_req_info*, %struct.snic_req_info** %7, align 8
  %72 = getelementptr inbounds %struct.snic_req_info, %struct.snic_req_info* %71, i32 0, i32 0
  store i64 0, i64* %72, align 8
  br label %73

73:                                               ; preds = %62, %43
  %74 = load %struct.snic*, %struct.snic** %6, align 8
  %75 = load %struct.snic_req_info*, %struct.snic_req_info** %7, align 8
  %76 = call i32 @snic_req_free(%struct.snic* %74, %struct.snic_req_info* %75)
  %77 = load %struct.snic*, %struct.snic** %6, align 8
  %78 = getelementptr inbounds %struct.snic, %struct.snic* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @SNIC_HOST_INFO(i32 %79, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %81

81:                                               ; preds = %73, %38
  ret void
}

declare dso_local %struct.snic* @svnic_dev_priv(i32) #1

declare dso_local i32 @dma_unmap_single(i32*, i32, i32, i32) #1

declare dso_local %struct.snic_req_info* @req_to_rqi(%struct.snic_host_req*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @list_empty(%struct.TYPE_5__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @SNIC_BUG_ON(i32) #1

declare dso_local i32 @list_del_init(%struct.TYPE_5__*) #1

declare dso_local i32 @snic_pci_unmap_rsp_buf(%struct.snic*, %struct.snic_req_info*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @snic_req_free(%struct.snic*, %struct.snic_req_info*) #1

declare dso_local i32 @SNIC_HOST_INFO(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
