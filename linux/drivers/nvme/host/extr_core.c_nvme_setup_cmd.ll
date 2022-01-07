; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_setup_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_setup_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ns = type { i32 }
%struct.request = type { i32 }
%struct.nvme_command = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@BLK_STS_OK = common dso_local global i32 0, align 4
@BLK_STS_IOERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvme_setup_cmd(%struct.nvme_ns* %0, %struct.request* %1, %struct.nvme_command* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvme_ns*, align 8
  %6 = alloca %struct.request*, align 8
  %7 = alloca %struct.nvme_command*, align 8
  %8 = alloca i32, align 4
  store %struct.nvme_ns* %0, %struct.nvme_ns** %5, align 8
  store %struct.request* %1, %struct.request** %6, align 8
  store %struct.nvme_command* %2, %struct.nvme_command** %7, align 8
  %9 = load i32, i32* @BLK_STS_OK, align 4
  store i32 %9, i32* %8, align 4
  %10 = load %struct.request*, %struct.request** %6, align 8
  %11 = call i32 @nvme_clear_nvme_request(%struct.request* %10)
  %12 = load %struct.nvme_command*, %struct.nvme_command** %7, align 8
  %13 = call i32 @memset(%struct.nvme_command* %12, i32 0, i32 4)
  %14 = load %struct.request*, %struct.request** %6, align 8
  %15 = call i32 @req_op(%struct.request* %14)
  switch i32 %15, label %42 [
    i32 133, label %16
    i32 132, label %16
    i32 131, label %23
    i32 128, label %27
    i32 134, label %32
    i32 130, label %37
    i32 129, label %37
  ]

16:                                               ; preds = %3, %3
  %17 = load %struct.nvme_command*, %struct.nvme_command** %7, align 8
  %18 = load %struct.request*, %struct.request** %6, align 8
  %19 = call %struct.TYPE_4__* @nvme_req(%struct.request* %18)
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @memcpy(%struct.nvme_command* %17, i32 %21, i32 4)
  br label %45

23:                                               ; preds = %3
  %24 = load %struct.nvme_ns*, %struct.nvme_ns** %5, align 8
  %25 = load %struct.nvme_command*, %struct.nvme_command** %7, align 8
  %26 = call i32 @nvme_setup_flush(%struct.nvme_ns* %24, %struct.nvme_command* %25)
  br label %45

27:                                               ; preds = %3
  %28 = load %struct.nvme_ns*, %struct.nvme_ns** %5, align 8
  %29 = load %struct.request*, %struct.request** %6, align 8
  %30 = load %struct.nvme_command*, %struct.nvme_command** %7, align 8
  %31 = call i32 @nvme_setup_write_zeroes(%struct.nvme_ns* %28, %struct.request* %29, %struct.nvme_command* %30)
  store i32 %31, i32* %8, align 4
  br label %45

32:                                               ; preds = %3
  %33 = load %struct.nvme_ns*, %struct.nvme_ns** %5, align 8
  %34 = load %struct.request*, %struct.request** %6, align 8
  %35 = load %struct.nvme_command*, %struct.nvme_command** %7, align 8
  %36 = call i32 @nvme_setup_discard(%struct.nvme_ns* %33, %struct.request* %34, %struct.nvme_command* %35)
  store i32 %36, i32* %8, align 4
  br label %45

37:                                               ; preds = %3, %3
  %38 = load %struct.nvme_ns*, %struct.nvme_ns** %5, align 8
  %39 = load %struct.request*, %struct.request** %6, align 8
  %40 = load %struct.nvme_command*, %struct.nvme_command** %7, align 8
  %41 = call i32 @nvme_setup_rw(%struct.nvme_ns* %38, %struct.request* %39, %struct.nvme_command* %40)
  store i32 %41, i32* %8, align 4
  br label %45

42:                                               ; preds = %3
  %43 = call i32 @WARN_ON_ONCE(i32 1)
  %44 = load i32, i32* @BLK_STS_IOERR, align 4
  store i32 %44, i32* %4, align 4
  br label %56

45:                                               ; preds = %37, %32, %27, %23, %16
  %46 = load %struct.request*, %struct.request** %6, align 8
  %47 = getelementptr inbounds %struct.request, %struct.request* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.nvme_command*, %struct.nvme_command** %7, align 8
  %50 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 4
  %52 = load %struct.request*, %struct.request** %6, align 8
  %53 = load %struct.nvme_command*, %struct.nvme_command** %7, align 8
  %54 = call i32 @trace_nvme_setup_cmd(%struct.request* %52, %struct.nvme_command* %53)
  %55 = load i32, i32* %8, align 4
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %45, %42
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @nvme_clear_nvme_request(%struct.request*) #1

declare dso_local i32 @memset(%struct.nvme_command*, i32, i32) #1

declare dso_local i32 @req_op(%struct.request*) #1

declare dso_local i32 @memcpy(%struct.nvme_command*, i32, i32) #1

declare dso_local %struct.TYPE_4__* @nvme_req(%struct.request*) #1

declare dso_local i32 @nvme_setup_flush(%struct.nvme_ns*, %struct.nvme_command*) #1

declare dso_local i32 @nvme_setup_write_zeroes(%struct.nvme_ns*, %struct.request*, %struct.nvme_command*) #1

declare dso_local i32 @nvme_setup_discard(%struct.nvme_ns*, %struct.request*, %struct.nvme_command*) #1

declare dso_local i32 @nvme_setup_rw(%struct.nvme_ns*, %struct.request*, %struct.nvme_command*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @trace_nvme_setup_cmd(%struct.request*, %struct.nvme_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
