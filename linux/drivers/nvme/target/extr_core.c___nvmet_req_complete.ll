; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_core.c___nvmet_req_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_core.c___nvmet_req_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmet_req = type { %struct.TYPE_8__*, i64, %struct.TYPE_7__*, %struct.TYPE_9__*, %struct.TYPE_10__* }
%struct.TYPE_8__ = type { i32 (%struct.nvmet_req*)* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvmet_req*, i32)* @__nvmet_req_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__nvmet_req_complete(%struct.nvmet_req* %0, i32 %1) #0 {
  %3 = alloca %struct.nvmet_req*, align 8
  %4 = alloca i32, align 4
  store %struct.nvmet_req* %0, %struct.nvmet_req** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.nvmet_req*, %struct.nvmet_req** %3, align 8
  %6 = getelementptr inbounds %struct.nvmet_req, %struct.nvmet_req* %5, i32 0, i32 4
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load %struct.nvmet_req*, %struct.nvmet_req** %3, align 8
  %13 = call i32 @nvmet_update_sq_head(%struct.nvmet_req* %12)
  br label %14

14:                                               ; preds = %11, %2
  %15 = load %struct.nvmet_req*, %struct.nvmet_req** %3, align 8
  %16 = getelementptr inbounds %struct.nvmet_req, %struct.nvmet_req* %15, i32 0, i32 4
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @cpu_to_le16(i32 %19)
  %21 = load %struct.nvmet_req*, %struct.nvmet_req** %3, align 8
  %22 = getelementptr inbounds %struct.nvmet_req, %struct.nvmet_req* %21, i32 0, i32 3
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 1
  store i32 %20, i32* %24, align 4
  %25 = load %struct.nvmet_req*, %struct.nvmet_req** %3, align 8
  %26 = getelementptr inbounds %struct.nvmet_req, %struct.nvmet_req* %25, i32 0, i32 2
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.nvmet_req*, %struct.nvmet_req** %3, align 8
  %32 = getelementptr inbounds %struct.nvmet_req, %struct.nvmet_req* %31, i32 0, i32 3
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  store i32 %30, i32* %34, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %14
  %39 = load %struct.nvmet_req*, %struct.nvmet_req** %3, align 8
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @nvmet_set_error(%struct.nvmet_req* %39, i32 %40)
  br label %42

42:                                               ; preds = %38, %14
  %43 = load %struct.nvmet_req*, %struct.nvmet_req** %3, align 8
  %44 = call i32 @trace_nvmet_req_complete(%struct.nvmet_req* %43)
  %45 = load %struct.nvmet_req*, %struct.nvmet_req** %3, align 8
  %46 = getelementptr inbounds %struct.nvmet_req, %struct.nvmet_req* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %42
  %50 = load %struct.nvmet_req*, %struct.nvmet_req** %3, align 8
  %51 = getelementptr inbounds %struct.nvmet_req, %struct.nvmet_req* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @nvmet_put_namespace(i64 %52)
  br label %54

54:                                               ; preds = %49, %42
  %55 = load %struct.nvmet_req*, %struct.nvmet_req** %3, align 8
  %56 = getelementptr inbounds %struct.nvmet_req, %struct.nvmet_req* %55, i32 0, i32 0
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i32 (%struct.nvmet_req*)*, i32 (%struct.nvmet_req*)** %58, align 8
  %60 = load %struct.nvmet_req*, %struct.nvmet_req** %3, align 8
  %61 = call i32 %59(%struct.nvmet_req* %60)
  ret void
}

declare dso_local i32 @nvmet_update_sq_head(%struct.nvmet_req*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @nvmet_set_error(%struct.nvmet_req*, i32) #1

declare dso_local i32 @trace_nvmet_req_complete(%struct.nvmet_req*) #1

declare dso_local i32 @nvmet_put_namespace(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
