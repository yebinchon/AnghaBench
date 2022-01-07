; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_tcp.c_nvme_tcp_advance_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_tcp.c_nvme_tcp_advance_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_tcp_request = type { i64, i32, i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.TYPE_2__* }

@WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvme_tcp_request*, i32)* @nvme_tcp_advance_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_tcp_advance_req(%struct.nvme_tcp_request* %0, i32 %1) #0 {
  %3 = alloca %struct.nvme_tcp_request*, align 8
  %4 = alloca i32, align 4
  store %struct.nvme_tcp_request* %0, %struct.nvme_tcp_request** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = sext i32 %5 to i64
  %7 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %3, align 8
  %8 = getelementptr inbounds %struct.nvme_tcp_request, %struct.nvme_tcp_request* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = add nsw i64 %9, %6
  store i64 %10, i64* %8, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %3, align 8
  %13 = getelementptr inbounds %struct.nvme_tcp_request, %struct.nvme_tcp_request* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = add nsw i32 %14, %11
  store i32 %15, i32* %13, align 8
  %16 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %3, align 8
  %17 = getelementptr inbounds %struct.nvme_tcp_request, %struct.nvme_tcp_request* %16, i32 0, i32 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @iov_iter_advance(i32* %17, i32 %18)
  %20 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %3, align 8
  %21 = getelementptr inbounds %struct.nvme_tcp_request, %struct.nvme_tcp_request* %20, i32 0, i32 4
  %22 = call i32 @iov_iter_count(i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %43, label %24

24:                                               ; preds = %2
  %25 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %3, align 8
  %26 = getelementptr inbounds %struct.nvme_tcp_request, %struct.nvme_tcp_request* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %3, align 8
  %29 = getelementptr inbounds %struct.nvme_tcp_request, %struct.nvme_tcp_request* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp slt i64 %27, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %24
  %33 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %3, align 8
  %34 = getelementptr inbounds %struct.nvme_tcp_request, %struct.nvme_tcp_request* %33, i32 0, i32 3
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %3, align 8
  %39 = getelementptr inbounds %struct.nvme_tcp_request, %struct.nvme_tcp_request* %38, i32 0, i32 3
  store %struct.TYPE_2__* %37, %struct.TYPE_2__** %39, align 8
  %40 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %3, align 8
  %41 = load i32, i32* @WRITE, align 4
  %42 = call i32 @nvme_tcp_init_iter(%struct.nvme_tcp_request* %40, i32 %41)
  br label %43

43:                                               ; preds = %32, %24, %2
  ret void
}

declare dso_local i32 @iov_iter_advance(i32*, i32) #1

declare dso_local i32 @iov_iter_count(i32*) #1

declare dso_local i32 @nvme_tcp_init_iter(%struct.nvme_tcp_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
