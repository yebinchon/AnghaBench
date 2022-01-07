; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_target.c_qlt_unmap_sg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_target.c_qlt_unmap_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32 }
%struct.qla_tgt_cmd = type { %struct.TYPE_5__*, i64, i32, i32, i32, i64, i32, i32, %struct.qla_qpair* }
%struct.TYPE_5__ = type { i32 }
%struct.qla_qpair = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_qla_host*, %struct.qla_tgt_cmd*)* @qlt_unmap_sg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlt_unmap_sg(%struct.scsi_qla_host* %0, %struct.qla_tgt_cmd* %1) #0 {
  %3 = alloca %struct.scsi_qla_host*, align 8
  %4 = alloca %struct.qla_tgt_cmd*, align 8
  %5 = alloca %struct.qla_hw_data*, align 8
  %6 = alloca %struct.qla_qpair*, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %3, align 8
  store %struct.qla_tgt_cmd* %1, %struct.qla_tgt_cmd** %4, align 8
  %7 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %4, align 8
  %8 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %7, i32 0, i32 5
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %84

12:                                               ; preds = %2
  %13 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %4, align 8
  %14 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %13, i32 0, i32 8
  %15 = load %struct.qla_qpair*, %struct.qla_qpair** %14, align 8
  store %struct.qla_qpair* %15, %struct.qla_qpair** %6, align 8
  %16 = load %struct.qla_qpair*, %struct.qla_qpair** %6, align 8
  %17 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %4, align 8
  %21 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %20, i32 0, i32 7
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %4, align 8
  %24 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %4, align 8
  %27 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @dma_unmap_sg(i32* %19, i32 %22, i32 %25, i32 %28)
  %30 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %4, align 8
  %31 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %30, i32 0, i32 5
  store i64 0, i64* %31, align 8
  %32 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %4, align 8
  %33 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %12
  %37 = load %struct.qla_qpair*, %struct.qla_qpair** %6, align 8
  %38 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %4, align 8
  %42 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %4, align 8
  %45 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %4, align 8
  %48 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @dma_unmap_sg(i32* %40, i32 %43, i32 %46, i32 %49)
  br label %51

51:                                               ; preds = %36, %12
  %52 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %4, align 8
  %53 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %52, i32 0, i32 0
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = icmp ne %struct.TYPE_5__* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %51
  br label %84

57:                                               ; preds = %51
  %58 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %59 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %58, i32 0, i32 0
  %60 = load %struct.qla_hw_data*, %struct.qla_hw_data** %59, align 8
  store %struct.qla_hw_data* %60, %struct.qla_hw_data** %5, align 8
  %61 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %4, align 8
  %62 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %57
  %66 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %67 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %4, align 8
  %68 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %67, i32 0, i32 0
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = call i32 @qla2x00_clean_dsd_pool(%struct.qla_hw_data* %66, %struct.TYPE_5__* %69)
  br label %71

71:                                               ; preds = %65, %57
  %72 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %73 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %4, align 8
  %76 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %75, i32 0, i32 0
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %4, align 8
  %79 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %78, i32 0, i32 0
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @dma_pool_free(i32 %74, %struct.TYPE_5__* %77, i32 %82)
  br label %84

84:                                               ; preds = %71, %56, %11
  ret void
}

declare dso_local i32 @dma_unmap_sg(i32*, i32, i32, i32) #1

declare dso_local i32 @qla2x00_clean_dsd_pool(%struct.qla_hw_data*, %struct.TYPE_5__*) #1

declare dso_local i32 @dma_pool_free(i32, %struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
