; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_fabrics.c___nvmf_check_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_fabrics.c___nvmf_check_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ctrl = type { i32 }
%struct.request = type { i32 }
%struct.nvme_request = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@NVME_REQ_USERCMD = common dso_local global i32 0, align 4
@nvme_fabrics_type_connect = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__nvmf_check_ready(%struct.nvme_ctrl* %0, %struct.request* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvme_ctrl*, align 8
  %6 = alloca %struct.request*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nvme_request*, align 8
  store %struct.nvme_ctrl* %0, %struct.nvme_ctrl** %5, align 8
  store %struct.request* %1, %struct.request** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.request*, %struct.request** %6, align 8
  %10 = call %struct.nvme_request* @nvme_req(%struct.request* %9)
  store %struct.nvme_request* %10, %struct.nvme_request** %8, align 8
  %11 = load %struct.request*, %struct.request** %6, align 8
  %12 = call i32 @blk_rq_is_passthrough(%struct.request* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %3
  %15 = load %struct.nvme_request*, %struct.nvme_request** %8, align 8
  %16 = getelementptr inbounds %struct.nvme_request, %struct.nvme_request* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @NVME_REQ_USERCMD, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14, %3
  store i32 0, i32* %4, align 4
  br label %47

22:                                               ; preds = %14
  %23 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %5, align 8
  %24 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %43 [
    i32 128, label %26
    i32 130, label %26
    i32 129, label %44
  ]

26:                                               ; preds = %22, %22
  %27 = load %struct.nvme_request*, %struct.nvme_request** %8, align 8
  %28 = getelementptr inbounds %struct.nvme_request, %struct.nvme_request* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = call i32 @nvme_is_fabrics(%struct.TYPE_4__* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %26
  %33 = load %struct.nvme_request*, %struct.nvme_request** %8, align 8
  %34 = getelementptr inbounds %struct.nvme_request, %struct.nvme_request* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @nvme_fabrics_type_connect, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  store i32 1, i32* %4, align 4
  br label %47

42:                                               ; preds = %32, %26
  br label %45

43:                                               ; preds = %22
  br label %45

44:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %47

45:                                               ; preds = %43, %42
  %46 = load i32, i32* %7, align 4
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %45, %44, %41, %21
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local %struct.nvme_request* @nvme_req(%struct.request*) #1

declare dso_local i32 @blk_rq_is_passthrough(%struct.request*) #1

declare dso_local i32 @nvme_is_fabrics(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
