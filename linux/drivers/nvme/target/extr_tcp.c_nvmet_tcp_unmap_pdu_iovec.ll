; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_tcp.c_nvmet_tcp_unmap_pdu_iovec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_tcp.c_nvmet_tcp_unmap_pdu_iovec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmet_tcp_cmd = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.scatterlist* }
%struct.scatterlist = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvmet_tcp_cmd*)* @nvmet_tcp_unmap_pdu_iovec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvmet_tcp_unmap_pdu_iovec(%struct.nvmet_tcp_cmd* %0) #0 {
  %2 = alloca %struct.nvmet_tcp_cmd*, align 8
  %3 = alloca %struct.scatterlist*, align 8
  %4 = alloca i32, align 4
  store %struct.nvmet_tcp_cmd* %0, %struct.nvmet_tcp_cmd** %2, align 8
  %5 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %2, align 8
  %6 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %9 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %2, align 8
  %10 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %8, i64 %11
  store %struct.scatterlist* %12, %struct.scatterlist** %3, align 8
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %26, %1
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %2, align 8
  %16 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %13
  %20 = load %struct.scatterlist*, %struct.scatterlist** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %20, i64 %22
  %24 = call i32 @sg_page(%struct.scatterlist* %23)
  %25 = call i32 @kunmap(i32 %24)
  br label %26

26:                                               ; preds = %19
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %4, align 4
  br label %13

29:                                               ; preds = %13
  ret void
}

declare dso_local i32 @kunmap(i32) #1

declare dso_local i32 @sg_page(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
