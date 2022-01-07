; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/cxgbit/extr_cxgbit_ddp.c_cxgbit_unmap_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/cxgbit/extr_cxgbit_ddp.c_cxgbit_unmap_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { %struct.cxgbit_sock* }
%struct.cxgbit_sock = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.cxgbit_device* }
%struct.cxgbit_device = type { i32 }
%struct.iscsi_cmd = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.cxgbit_cmd = type { i32, i32, %struct.cxgbi_task_tag_info }
%struct.cxgbi_task_tag_info = type { i32, i64, i32 }
%struct.cxgbi_ppm = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cxgbit_unmap_cmd(%struct.iscsi_conn* %0, %struct.iscsi_cmd* %1) #0 {
  %3 = alloca %struct.iscsi_conn*, align 8
  %4 = alloca %struct.iscsi_cmd*, align 8
  %5 = alloca %struct.cxgbit_cmd*, align 8
  %6 = alloca %struct.cxgbi_task_tag_info*, align 8
  %7 = alloca %struct.cxgbit_sock*, align 8
  %8 = alloca %struct.cxgbit_device*, align 8
  %9 = alloca %struct.cxgbi_ppm*, align 8
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %3, align 8
  store %struct.iscsi_cmd* %1, %struct.iscsi_cmd** %4, align 8
  %10 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %11 = call %struct.cxgbit_cmd* @iscsit_priv_cmd(%struct.iscsi_cmd* %10)
  store %struct.cxgbit_cmd* %11, %struct.cxgbit_cmd** %5, align 8
  %12 = load %struct.cxgbit_cmd*, %struct.cxgbit_cmd** %5, align 8
  %13 = getelementptr inbounds %struct.cxgbit_cmd, %struct.cxgbit_cmd* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %73

16:                                               ; preds = %2
  %17 = load %struct.cxgbit_cmd*, %struct.cxgbit_cmd** %5, align 8
  %18 = getelementptr inbounds %struct.cxgbit_cmd, %struct.cxgbit_cmd* %17, i32 0, i32 2
  store %struct.cxgbi_task_tag_info* %18, %struct.cxgbi_task_tag_info** %6, align 8
  %19 = load %struct.cxgbi_task_tag_info*, %struct.cxgbi_task_tag_info** %6, align 8
  %20 = getelementptr inbounds %struct.cxgbi_task_tag_info, %struct.cxgbi_task_tag_info* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %65

23:                                               ; preds = %16
  %24 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %25 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %24, i32 0, i32 0
  %26 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %25, align 8
  store %struct.cxgbit_sock* %26, %struct.cxgbit_sock** %7, align 8
  %27 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %7, align 8
  %28 = getelementptr inbounds %struct.cxgbit_sock, %struct.cxgbit_sock* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.cxgbit_device*, %struct.cxgbit_device** %29, align 8
  store %struct.cxgbit_device* %30, %struct.cxgbit_device** %8, align 8
  %31 = load %struct.cxgbit_device*, %struct.cxgbit_device** %8, align 8
  %32 = call %struct.cxgbi_ppm* @cdev2ppm(%struct.cxgbit_device* %31)
  store %struct.cxgbi_ppm* %32, %struct.cxgbi_ppm** %9, align 8
  %33 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %34 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %37 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %35, %39
  %41 = zext i1 %40 to i32
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %23
  %45 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %7, align 8
  %46 = call i32 @cxgbit_abort_conn(%struct.cxgbit_sock* %45)
  br label %47

47:                                               ; preds = %44, %23
  %48 = load %struct.cxgbi_ppm*, %struct.cxgbi_ppm** %9, align 8
  %49 = load %struct.cxgbi_task_tag_info*, %struct.cxgbi_task_tag_info** %6, align 8
  %50 = getelementptr inbounds %struct.cxgbi_task_tag_info, %struct.cxgbi_task_tag_info* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @cxgbi_ppm_ppod_release(%struct.cxgbi_ppm* %48, i32 %51)
  %53 = load %struct.cxgbi_ppm*, %struct.cxgbi_ppm** %9, align 8
  %54 = getelementptr inbounds %struct.cxgbi_ppm, %struct.cxgbi_ppm* %53, i32 0, i32 0
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load %struct.cxgbi_task_tag_info*, %struct.cxgbi_task_tag_info** %6, align 8
  %58 = getelementptr inbounds %struct.cxgbi_task_tag_info, %struct.cxgbi_task_tag_info* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.cxgbi_task_tag_info*, %struct.cxgbi_task_tag_info** %6, align 8
  %61 = getelementptr inbounds %struct.cxgbi_task_tag_info, %struct.cxgbi_task_tag_info* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %64 = call i32 @dma_unmap_sg(i32* %56, i64 %59, i32 %62, i32 %63)
  br label %70

65:                                               ; preds = %16
  %66 = load %struct.cxgbit_cmd*, %struct.cxgbit_cmd** %5, align 8
  %67 = getelementptr inbounds %struct.cxgbit_cmd, %struct.cxgbit_cmd* %66, i32 0, i32 1
  %68 = call i32 @sg_page(i32* %67)
  %69 = call i32 @put_page(i32 %68)
  br label %70

70:                                               ; preds = %65, %47
  %71 = load %struct.cxgbit_cmd*, %struct.cxgbit_cmd** %5, align 8
  %72 = getelementptr inbounds %struct.cxgbit_cmd, %struct.cxgbit_cmd* %71, i32 0, i32 0
  store i32 0, i32* %72, align 8
  br label %73

73:                                               ; preds = %70, %2
  ret void
}

declare dso_local %struct.cxgbit_cmd* @iscsit_priv_cmd(%struct.iscsi_cmd*) #1

declare dso_local %struct.cxgbi_ppm* @cdev2ppm(%struct.cxgbit_device*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @cxgbit_abort_conn(%struct.cxgbit_sock*) #1

declare dso_local i32 @cxgbi_ppm_ppod_release(%struct.cxgbi_ppm*, i32) #1

declare dso_local i32 @dma_unmap_sg(i32*, i64, i32, i32) #1

declare dso_local i32 @put_page(i32) #1

declare dso_local i32 @sg_page(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
