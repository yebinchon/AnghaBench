; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_..hostnvme.h_nvme_end_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_..hostnvme.h_nvme_end_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32 }
%union.nvme_result = type { i32 }
%struct.nvme_request = type { i32, %union.nvme_result }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request*, i32, i32)* @nvme_end_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_end_request(%struct.request* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %union.nvme_result, align 4
  %5 = alloca %struct.request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvme_request*, align 8
  %8 = getelementptr inbounds %union.nvme_result, %union.nvme_result* %4, i32 0, i32 0
  store i32 %2, i32* %8, align 4
  store %struct.request* %0, %struct.request** %5, align 8
  store i32 %1, i32* %6, align 4
  %9 = load %struct.request*, %struct.request** %5, align 8
  %10 = call %struct.nvme_request* @nvme_req(%struct.request* %9)
  store %struct.nvme_request* %10, %struct.nvme_request** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @le16_to_cpu(i32 %11)
  %13 = ashr i32 %12, 1
  %14 = load %struct.nvme_request*, %struct.nvme_request** %7, align 8
  %15 = getelementptr inbounds %struct.nvme_request, %struct.nvme_request* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load %struct.nvme_request*, %struct.nvme_request** %7, align 8
  %17 = getelementptr inbounds %struct.nvme_request, %struct.nvme_request* %16, i32 0, i32 1
  %18 = bitcast %union.nvme_result* %17 to i8*
  %19 = bitcast %union.nvme_result* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 %19, i64 4, i1 false)
  %20 = load %struct.request*, %struct.request** %5, align 8
  %21 = call i32 @nvme_should_fail(%struct.request* %20)
  %22 = load %struct.request*, %struct.request** %5, align 8
  %23 = call i32 @blk_mq_complete_request(%struct.request* %22)
  ret void
}

declare dso_local %struct.nvme_request* @nvme_req(%struct.request*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @nvme_should_fail(%struct.request*) #1

declare dso_local i32 @blk_mq_complete_request(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
