; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_tcp.c_nvme_tcp_set_io_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_tcp.c_nvme_tcp_set_io_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ctrl = type { %struct.nvmf_ctrl_options* }
%struct.nvmf_ctrl_options = type { i32, i32, i32 }
%struct.nvme_tcp_ctrl = type { i32* }

@HCTX_TYPE_READ = common dso_local global i64 0, align 8
@HCTX_TYPE_DEFAULT = common dso_local global i64 0, align 8
@HCTX_TYPE_POLL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvme_ctrl*, i32)* @nvme_tcp_set_io_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_tcp_set_io_queues(%struct.nvme_ctrl* %0, i32 %1) #0 {
  %3 = alloca %struct.nvme_ctrl*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvme_tcp_ctrl*, align 8
  %6 = alloca %struct.nvmf_ctrl_options*, align 8
  store %struct.nvme_ctrl* %0, %struct.nvme_ctrl** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %8 = call %struct.nvme_tcp_ctrl* @to_tcp_ctrl(%struct.nvme_ctrl* %7)
  store %struct.nvme_tcp_ctrl* %8, %struct.nvme_tcp_ctrl** %5, align 8
  %9 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %10 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %9, i32 0, i32 0
  %11 = load %struct.nvmf_ctrl_options*, %struct.nvmf_ctrl_options** %10, align 8
  store %struct.nvmf_ctrl_options* %11, %struct.nvmf_ctrl_options** %6, align 8
  %12 = load %struct.nvmf_ctrl_options*, %struct.nvmf_ctrl_options** %6, align 8
  %13 = getelementptr inbounds %struct.nvmf_ctrl_options, %struct.nvmf_ctrl_options* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %58

16:                                               ; preds = %2
  %17 = load %struct.nvmf_ctrl_options*, %struct.nvmf_ctrl_options** %6, align 8
  %18 = getelementptr inbounds %struct.nvmf_ctrl_options, %struct.nvmf_ctrl_options* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %22, label %58

22:                                               ; preds = %16
  %23 = load %struct.nvmf_ctrl_options*, %struct.nvmf_ctrl_options** %6, align 8
  %24 = getelementptr inbounds %struct.nvmf_ctrl_options, %struct.nvmf_ctrl_options* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.nvme_tcp_ctrl*, %struct.nvme_tcp_ctrl** %5, align 8
  %27 = getelementptr inbounds %struct.nvme_tcp_ctrl, %struct.nvme_tcp_ctrl* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* @HCTX_TYPE_READ, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  store i32 %25, i32* %30, align 4
  %31 = load %struct.nvme_tcp_ctrl*, %struct.nvme_tcp_ctrl** %5, align 8
  %32 = getelementptr inbounds %struct.nvme_tcp_ctrl, %struct.nvme_tcp_ctrl* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* @HCTX_TYPE_READ, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %4, align 4
  %38 = sub i32 %37, %36
  store i32 %38, i32* %4, align 4
  %39 = load %struct.nvmf_ctrl_options*, %struct.nvmf_ctrl_options** %6, align 8
  %40 = getelementptr inbounds %struct.nvmf_ctrl_options, %struct.nvmf_ctrl_options* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %4, align 4
  %43 = call i8* @min(i32 %41, i32 %42)
  %44 = ptrtoint i8* %43 to i32
  %45 = load %struct.nvme_tcp_ctrl*, %struct.nvme_tcp_ctrl** %5, align 8
  %46 = getelementptr inbounds %struct.nvme_tcp_ctrl, %struct.nvme_tcp_ctrl* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* @HCTX_TYPE_DEFAULT, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  store i32 %44, i32* %49, align 4
  %50 = load %struct.nvme_tcp_ctrl*, %struct.nvme_tcp_ctrl** %5, align 8
  %51 = getelementptr inbounds %struct.nvme_tcp_ctrl, %struct.nvme_tcp_ctrl* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i64, i64* @HCTX_TYPE_DEFAULT, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %4, align 4
  %57 = sub i32 %56, %55
  store i32 %57, i32* %4, align 4
  br label %78

58:                                               ; preds = %16, %2
  %59 = load %struct.nvmf_ctrl_options*, %struct.nvmf_ctrl_options** %6, align 8
  %60 = getelementptr inbounds %struct.nvmf_ctrl_options, %struct.nvmf_ctrl_options* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %4, align 4
  %63 = call i8* @min(i32 %61, i32 %62)
  %64 = ptrtoint i8* %63 to i32
  %65 = load %struct.nvme_tcp_ctrl*, %struct.nvme_tcp_ctrl** %5, align 8
  %66 = getelementptr inbounds %struct.nvme_tcp_ctrl, %struct.nvme_tcp_ctrl* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i64, i64* @HCTX_TYPE_DEFAULT, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  store i32 %64, i32* %69, align 4
  %70 = load %struct.nvme_tcp_ctrl*, %struct.nvme_tcp_ctrl** %5, align 8
  %71 = getelementptr inbounds %struct.nvme_tcp_ctrl, %struct.nvme_tcp_ctrl* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i64, i64* @HCTX_TYPE_DEFAULT, align 8
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %4, align 4
  %77 = sub i32 %76, %75
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %58, %22
  %79 = load %struct.nvmf_ctrl_options*, %struct.nvmf_ctrl_options** %6, align 8
  %80 = getelementptr inbounds %struct.nvmf_ctrl_options, %struct.nvmf_ctrl_options* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %98

83:                                               ; preds = %78
  %84 = load i32, i32* %4, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %98

86:                                               ; preds = %83
  %87 = load %struct.nvmf_ctrl_options*, %struct.nvmf_ctrl_options** %6, align 8
  %88 = getelementptr inbounds %struct.nvmf_ctrl_options, %struct.nvmf_ctrl_options* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %4, align 4
  %91 = call i8* @min(i32 %89, i32 %90)
  %92 = ptrtoint i8* %91 to i32
  %93 = load %struct.nvme_tcp_ctrl*, %struct.nvme_tcp_ctrl** %5, align 8
  %94 = getelementptr inbounds %struct.nvme_tcp_ctrl, %struct.nvme_tcp_ctrl* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = load i64, i64* @HCTX_TYPE_POLL, align 8
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  store i32 %92, i32* %97, align 4
  br label %98

98:                                               ; preds = %86, %83, %78
  ret void
}

declare dso_local %struct.nvme_tcp_ctrl* @to_tcp_ctrl(%struct.nvme_ctrl*) #1

declare dso_local i8* @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
