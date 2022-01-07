; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_lightnvm.c_nvme_nvm_submit_io.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_lightnvm.c_nvme_nvm_submit_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvm_dev = type { %struct.request_queue*, %struct.nvm_geo }
%struct.request_queue = type { i32 }
%struct.nvm_geo = type { i32 }
%struct.nvm_rq = type { i32 }
%struct.nvme_nvm_command = type { i32 }
%struct.request = type { %struct.nvm_rq* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nvme_nvm_end_io = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvm_dev*, %struct.nvm_rq*, i8*)* @nvme_nvm_submit_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_nvm_submit_io(%struct.nvm_dev* %0, %struct.nvm_rq* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvm_dev*, align 8
  %6 = alloca %struct.nvm_rq*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.nvm_geo*, align 8
  %9 = alloca %struct.request_queue*, align 8
  %10 = alloca %struct.nvme_nvm_command*, align 8
  %11 = alloca %struct.request*, align 8
  %12 = alloca i32, align 4
  store %struct.nvm_dev* %0, %struct.nvm_dev** %5, align 8
  store %struct.nvm_rq* %1, %struct.nvm_rq** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load %struct.nvm_dev*, %struct.nvm_dev** %5, align 8
  %14 = getelementptr inbounds %struct.nvm_dev, %struct.nvm_dev* %13, i32 0, i32 1
  store %struct.nvm_geo* %14, %struct.nvm_geo** %8, align 8
  %15 = load %struct.nvm_dev*, %struct.nvm_dev** %5, align 8
  %16 = getelementptr inbounds %struct.nvm_dev, %struct.nvm_dev* %15, i32 0, i32 0
  %17 = load %struct.request_queue*, %struct.request_queue** %16, align 8
  store %struct.request_queue* %17, %struct.request_queue** %9, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.nvme_nvm_command* @kzalloc(i32 4, i32 %18)
  store %struct.nvme_nvm_command* %19, %struct.nvme_nvm_command** %10, align 8
  %20 = load %struct.nvme_nvm_command*, %struct.nvme_nvm_command** %10, align 8
  %21 = icmp ne %struct.nvme_nvm_command* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %68

25:                                               ; preds = %3
  %26 = load %struct.request_queue*, %struct.request_queue** %9, align 8
  %27 = load %struct.nvm_rq*, %struct.nvm_rq** %6, align 8
  %28 = load %struct.nvme_nvm_command*, %struct.nvme_nvm_command** %10, align 8
  %29 = call %struct.request* @nvme_nvm_alloc_request(%struct.request_queue* %26, %struct.nvm_rq* %27, %struct.nvme_nvm_command* %28)
  store %struct.request* %29, %struct.request** %11, align 8
  %30 = load %struct.request*, %struct.request** %11, align 8
  %31 = call i64 @IS_ERR(%struct.request* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %25
  %34 = load %struct.request*, %struct.request** %11, align 8
  %35 = call i32 @PTR_ERR(%struct.request* %34)
  store i32 %35, i32* %12, align 4
  br label %64

36:                                               ; preds = %25
  %37 = load i8*, i8** %7, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %56

39:                                               ; preds = %36
  %40 = load %struct.request_queue*, %struct.request_queue** %9, align 8
  %41 = load %struct.request*, %struct.request** %11, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = load %struct.nvm_geo*, %struct.nvm_geo** %8, align 8
  %44 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.nvm_rq*, %struct.nvm_rq** %6, align 8
  %47 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = mul nsw i32 %45, %48
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = call i32 @blk_rq_map_kern(%struct.request_queue* %40, %struct.request* %41, i8* %42, i32 %49, i32 %50)
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %12, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %39
  br label %64

55:                                               ; preds = %39
  br label %56

56:                                               ; preds = %55, %36
  %57 = load %struct.nvm_rq*, %struct.nvm_rq** %6, align 8
  %58 = load %struct.request*, %struct.request** %11, align 8
  %59 = getelementptr inbounds %struct.request, %struct.request* %58, i32 0, i32 0
  store %struct.nvm_rq* %57, %struct.nvm_rq** %59, align 8
  %60 = load %struct.request_queue*, %struct.request_queue** %9, align 8
  %61 = load %struct.request*, %struct.request** %11, align 8
  %62 = load i32, i32* @nvme_nvm_end_io, align 4
  %63 = call i32 @blk_execute_rq_nowait(%struct.request_queue* %60, i32* null, %struct.request* %61, i32 0, i32 %62)
  store i32 0, i32* %4, align 4
  br label %68

64:                                               ; preds = %54, %33
  %65 = load %struct.nvme_nvm_command*, %struct.nvme_nvm_command** %10, align 8
  %66 = call i32 @kfree(%struct.nvme_nvm_command* %65)
  %67 = load i32, i32* %12, align 4
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %64, %56, %22
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local %struct.nvme_nvm_command* @kzalloc(i32, i32) #1

declare dso_local %struct.request* @nvme_nvm_alloc_request(%struct.request_queue*, %struct.nvm_rq*, %struct.nvme_nvm_command*) #1

declare dso_local i64 @IS_ERR(%struct.request*) #1

declare dso_local i32 @PTR_ERR(%struct.request*) #1

declare dso_local i32 @blk_rq_map_kern(%struct.request_queue*, %struct.request*, i8*, i32, i32) #1

declare dso_local i32 @blk_execute_rq_nowait(%struct.request_queue*, i32*, %struct.request*, i32, i32) #1

declare dso_local i32 @kfree(%struct.nvme_nvm_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
