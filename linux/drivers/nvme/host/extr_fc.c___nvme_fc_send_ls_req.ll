; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_fc.c___nvme_fc_send_ls_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_fc.c___nvme_fc_send_ls_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_fc_rport = type { i32, i32, %struct.TYPE_6__, %struct.TYPE_5__*, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (i32*, %struct.TYPE_6__*, %struct.nvmefc_ls_req*)* }
%struct.nvmefc_ls_req = type { void (%struct.nvmefc_ls_req*, i32)*, i64, i64, i64, i64, i32 }
%struct.nvmefc_ls_req_op = type { i32, i32, i32, i32, %struct.nvme_fc_rport*, %struct.nvmefc_ls_req }

@FC_OBJSTATE_ONLINE = common dso_local global i64 0, align 8
@ECONNREFUSED = common dso_local global i32 0, align 4
@ESHUTDOWN = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_fc_rport*, %struct.nvmefc_ls_req_op*, void (%struct.nvmefc_ls_req*, i32)*)* @__nvme_fc_send_ls_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__nvme_fc_send_ls_req(%struct.nvme_fc_rport* %0, %struct.nvmefc_ls_req_op* %1, void (%struct.nvmefc_ls_req*, i32)* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvme_fc_rport*, align 8
  %6 = alloca %struct.nvmefc_ls_req_op*, align 8
  %7 = alloca void (%struct.nvmefc_ls_req*, i32)*, align 8
  %8 = alloca %struct.nvmefc_ls_req*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.nvme_fc_rport* %0, %struct.nvme_fc_rport** %5, align 8
  store %struct.nvmefc_ls_req_op* %1, %struct.nvmefc_ls_req_op** %6, align 8
  store void (%struct.nvmefc_ls_req*, i32)* %2, void (%struct.nvmefc_ls_req*, i32)** %7, align 8
  %11 = load %struct.nvmefc_ls_req_op*, %struct.nvmefc_ls_req_op** %6, align 8
  %12 = getelementptr inbounds %struct.nvmefc_ls_req_op, %struct.nvmefc_ls_req_op* %11, i32 0, i32 5
  store %struct.nvmefc_ls_req* %12, %struct.nvmefc_ls_req** %8, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.nvme_fc_rport*, %struct.nvme_fc_rport** %5, align 8
  %14 = getelementptr inbounds %struct.nvme_fc_rport, %struct.nvme_fc_rport* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @FC_OBJSTATE_ONLINE, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @ECONNREFUSED, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %152

22:                                               ; preds = %3
  %23 = load %struct.nvme_fc_rport*, %struct.nvme_fc_rport** %5, align 8
  %24 = call i32 @nvme_fc_rport_get(%struct.nvme_fc_rport* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* @ESHUTDOWN, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %152

29:                                               ; preds = %22
  %30 = load void (%struct.nvmefc_ls_req*, i32)*, void (%struct.nvmefc_ls_req*, i32)** %7, align 8
  %31 = load %struct.nvmefc_ls_req*, %struct.nvmefc_ls_req** %8, align 8
  %32 = getelementptr inbounds %struct.nvmefc_ls_req, %struct.nvmefc_ls_req* %31, i32 0, i32 0
  store void (%struct.nvmefc_ls_req*, i32)* %30, void (%struct.nvmefc_ls_req*, i32)** %32, align 8
  %33 = load %struct.nvme_fc_rport*, %struct.nvme_fc_rport** %5, align 8
  %34 = load %struct.nvmefc_ls_req_op*, %struct.nvmefc_ls_req_op** %6, align 8
  %35 = getelementptr inbounds %struct.nvmefc_ls_req_op, %struct.nvmefc_ls_req_op* %34, i32 0, i32 4
  store %struct.nvme_fc_rport* %33, %struct.nvme_fc_rport** %35, align 8
  %36 = load %struct.nvmefc_ls_req_op*, %struct.nvmefc_ls_req_op** %6, align 8
  %37 = getelementptr inbounds %struct.nvmefc_ls_req_op, %struct.nvmefc_ls_req_op* %36, i32 0, i32 0
  store i32 0, i32* %37, align 8
  %38 = load %struct.nvmefc_ls_req_op*, %struct.nvmefc_ls_req_op** %6, align 8
  %39 = getelementptr inbounds %struct.nvmefc_ls_req_op, %struct.nvmefc_ls_req_op* %38, i32 0, i32 2
  %40 = call i32 @INIT_LIST_HEAD(i32* %39)
  %41 = load %struct.nvmefc_ls_req_op*, %struct.nvmefc_ls_req_op** %6, align 8
  %42 = getelementptr inbounds %struct.nvmefc_ls_req_op, %struct.nvmefc_ls_req_op* %41, i32 0, i32 3
  %43 = call i32 @init_completion(i32* %42)
  %44 = load %struct.nvme_fc_rport*, %struct.nvme_fc_rport** %5, align 8
  %45 = getelementptr inbounds %struct.nvme_fc_rport, %struct.nvme_fc_rport* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.nvmefc_ls_req*, %struct.nvmefc_ls_req** %8, align 8
  %48 = getelementptr inbounds %struct.nvmefc_ls_req, %struct.nvmefc_ls_req* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.nvmefc_ls_req*, %struct.nvmefc_ls_req** %8, align 8
  %51 = getelementptr inbounds %struct.nvmefc_ls_req, %struct.nvmefc_ls_req* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.nvmefc_ls_req*, %struct.nvmefc_ls_req** %8, align 8
  %54 = getelementptr inbounds %struct.nvmefc_ls_req, %struct.nvmefc_ls_req* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %52, %55
  %57 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %58 = call i64 @fc_dma_map_single(i32 %46, i32 %49, i64 %56, i32 %57)
  %59 = load %struct.nvmefc_ls_req*, %struct.nvmefc_ls_req** %8, align 8
  %60 = getelementptr inbounds %struct.nvmefc_ls_req, %struct.nvmefc_ls_req* %59, i32 0, i32 3
  store i64 %58, i64* %60, align 8
  %61 = load %struct.nvme_fc_rport*, %struct.nvme_fc_rport** %5, align 8
  %62 = getelementptr inbounds %struct.nvme_fc_rport, %struct.nvme_fc_rport* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.nvmefc_ls_req*, %struct.nvmefc_ls_req** %8, align 8
  %65 = getelementptr inbounds %struct.nvmefc_ls_req, %struct.nvmefc_ls_req* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = call i64 @fc_dma_mapping_error(i32 %63, i64 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %29
  %70 = load i32, i32* @EFAULT, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %10, align 4
  br label %148

72:                                               ; preds = %29
  %73 = load %struct.nvmefc_ls_req*, %struct.nvmefc_ls_req** %8, align 8
  %74 = getelementptr inbounds %struct.nvmefc_ls_req, %struct.nvmefc_ls_req* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.nvmefc_ls_req*, %struct.nvmefc_ls_req** %8, align 8
  %77 = getelementptr inbounds %struct.nvmefc_ls_req, %struct.nvmefc_ls_req* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %75, %78
  %80 = load %struct.nvmefc_ls_req*, %struct.nvmefc_ls_req** %8, align 8
  %81 = getelementptr inbounds %struct.nvmefc_ls_req, %struct.nvmefc_ls_req* %80, i32 0, i32 4
  store i64 %79, i64* %81, align 8
  %82 = load %struct.nvme_fc_rport*, %struct.nvme_fc_rport** %5, align 8
  %83 = getelementptr inbounds %struct.nvme_fc_rport, %struct.nvme_fc_rport* %82, i32 0, i32 1
  %84 = load i64, i64* %9, align 8
  %85 = call i32 @spin_lock_irqsave(i32* %83, i64 %84)
  %86 = load %struct.nvmefc_ls_req_op*, %struct.nvmefc_ls_req_op** %6, align 8
  %87 = getelementptr inbounds %struct.nvmefc_ls_req_op, %struct.nvmefc_ls_req_op* %86, i32 0, i32 2
  %88 = load %struct.nvme_fc_rport*, %struct.nvme_fc_rport** %5, align 8
  %89 = getelementptr inbounds %struct.nvme_fc_rport, %struct.nvme_fc_rport* %88, i32 0, i32 4
  %90 = call i32 @list_add_tail(i32* %87, i32* %89)
  %91 = load %struct.nvmefc_ls_req_op*, %struct.nvmefc_ls_req_op** %6, align 8
  %92 = getelementptr inbounds %struct.nvmefc_ls_req_op, %struct.nvmefc_ls_req_op* %91, i32 0, i32 0
  store i32 1, i32* %92, align 8
  %93 = load %struct.nvme_fc_rport*, %struct.nvme_fc_rport** %5, align 8
  %94 = getelementptr inbounds %struct.nvme_fc_rport, %struct.nvme_fc_rport* %93, i32 0, i32 1
  %95 = load i64, i64* %9, align 8
  %96 = call i32 @spin_unlock_irqrestore(i32* %94, i64 %95)
  %97 = load %struct.nvme_fc_rport*, %struct.nvme_fc_rport** %5, align 8
  %98 = getelementptr inbounds %struct.nvme_fc_rport, %struct.nvme_fc_rport* %97, i32 0, i32 3
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i32 (i32*, %struct.TYPE_6__*, %struct.nvmefc_ls_req*)*, i32 (i32*, %struct.TYPE_6__*, %struct.nvmefc_ls_req*)** %102, align 8
  %104 = load %struct.nvme_fc_rport*, %struct.nvme_fc_rport** %5, align 8
  %105 = getelementptr inbounds %struct.nvme_fc_rport, %struct.nvme_fc_rport* %104, i32 0, i32 3
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  %108 = load %struct.nvme_fc_rport*, %struct.nvme_fc_rport** %5, align 8
  %109 = getelementptr inbounds %struct.nvme_fc_rport, %struct.nvme_fc_rport* %108, i32 0, i32 2
  %110 = load %struct.nvmefc_ls_req*, %struct.nvmefc_ls_req** %8, align 8
  %111 = call i32 %103(i32* %107, %struct.TYPE_6__* %109, %struct.nvmefc_ls_req* %110)
  store i32 %111, i32* %10, align 4
  %112 = load i32, i32* %10, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %72
  br label %116

115:                                              ; preds = %72
  store i32 0, i32* %4, align 4
  br label %152

116:                                              ; preds = %114
  %117 = load i32, i32* %10, align 4
  %118 = load %struct.nvmefc_ls_req_op*, %struct.nvmefc_ls_req_op** %6, align 8
  %119 = getelementptr inbounds %struct.nvmefc_ls_req_op, %struct.nvmefc_ls_req_op* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 4
  %120 = load %struct.nvme_fc_rport*, %struct.nvme_fc_rport** %5, align 8
  %121 = getelementptr inbounds %struct.nvme_fc_rport, %struct.nvme_fc_rport* %120, i32 0, i32 1
  %122 = load i64, i64* %9, align 8
  %123 = call i32 @spin_lock_irqsave(i32* %121, i64 %122)
  %124 = load %struct.nvmefc_ls_req_op*, %struct.nvmefc_ls_req_op** %6, align 8
  %125 = getelementptr inbounds %struct.nvmefc_ls_req_op, %struct.nvmefc_ls_req_op* %124, i32 0, i32 0
  store i32 0, i32* %125, align 8
  %126 = load %struct.nvmefc_ls_req_op*, %struct.nvmefc_ls_req_op** %6, align 8
  %127 = getelementptr inbounds %struct.nvmefc_ls_req_op, %struct.nvmefc_ls_req_op* %126, i32 0, i32 2
  %128 = call i32 @list_del(i32* %127)
  %129 = load %struct.nvme_fc_rport*, %struct.nvme_fc_rport** %5, align 8
  %130 = getelementptr inbounds %struct.nvme_fc_rport, %struct.nvme_fc_rport* %129, i32 0, i32 1
  %131 = load i64, i64* %9, align 8
  %132 = call i32 @spin_unlock_irqrestore(i32* %130, i64 %131)
  %133 = load %struct.nvme_fc_rport*, %struct.nvme_fc_rport** %5, align 8
  %134 = getelementptr inbounds %struct.nvme_fc_rport, %struct.nvme_fc_rport* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.nvmefc_ls_req*, %struct.nvmefc_ls_req** %8, align 8
  %137 = getelementptr inbounds %struct.nvmefc_ls_req, %struct.nvmefc_ls_req* %136, i32 0, i32 3
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.nvmefc_ls_req*, %struct.nvmefc_ls_req** %8, align 8
  %140 = getelementptr inbounds %struct.nvmefc_ls_req, %struct.nvmefc_ls_req* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.nvmefc_ls_req*, %struct.nvmefc_ls_req** %8, align 8
  %143 = getelementptr inbounds %struct.nvmefc_ls_req, %struct.nvmefc_ls_req* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = add nsw i64 %141, %144
  %146 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %147 = call i32 @fc_dma_unmap_single(i32 %135, i64 %138, i64 %145, i32 %146)
  br label %148

148:                                              ; preds = %116, %69
  %149 = load %struct.nvme_fc_rport*, %struct.nvme_fc_rport** %5, align 8
  %150 = call i32 @nvme_fc_rport_put(%struct.nvme_fc_rport* %149)
  %151 = load i32, i32* %10, align 4
  store i32 %151, i32* %4, align 4
  br label %152

152:                                              ; preds = %148, %115, %26, %19
  %153 = load i32, i32* %4, align 4
  ret i32 %153
}

declare dso_local i32 @nvme_fc_rport_get(%struct.nvme_fc_rport*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i64 @fc_dma_map_single(i32, i32, i64, i32) #1

declare dso_local i64 @fc_dma_mapping_error(i32, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @fc_dma_unmap_single(i32, i64, i64, i32) #1

declare dso_local i32 @nvme_fc_rport_put(%struct.nvme_fc_rport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
