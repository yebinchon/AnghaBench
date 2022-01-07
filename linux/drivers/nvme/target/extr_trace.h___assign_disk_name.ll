; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_trace.h___assign_disk_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_trace.h___assign_disk_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmet_req = type { %struct.TYPE_8__*, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }
%struct.nvmet_ctrl = type { i32 }
%struct.nvmet_ns = type { i32 }

@DISK_NAME_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.nvmet_req*, i32)* @__assign_disk_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__assign_disk_name(i8* %0, %struct.nvmet_req* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.nvmet_req*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvmet_ctrl*, align 8
  %8 = alloca %struct.nvmet_ns*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.nvmet_req* %1, %struct.nvmet_req** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.nvmet_req*, %struct.nvmet_req** %5, align 8
  %10 = call %struct.nvmet_ctrl* @nvmet_req_to_ctrl(%struct.nvmet_req* %9)
  store %struct.nvmet_ctrl* %10, %struct.nvmet_ctrl** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %3
  %14 = load %struct.nvmet_req*, %struct.nvmet_req** %5, align 8
  %15 = getelementptr inbounds %struct.nvmet_req, %struct.nvmet_req* %14, i32 0, i32 2
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %13, %3
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %45, label %23

23:                                               ; preds = %20
  %24 = load %struct.nvmet_req*, %struct.nvmet_req** %5, align 8
  %25 = getelementptr inbounds %struct.nvmet_req, %struct.nvmet_req* %24, i32 0, i32 1
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %23, %13
  %31 = load %struct.nvmet_ctrl*, %struct.nvmet_ctrl** %7, align 8
  %32 = load %struct.nvmet_req*, %struct.nvmet_req** %5, align 8
  %33 = getelementptr inbounds %struct.nvmet_req, %struct.nvmet_req* %32, i32 0, i32 0
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call %struct.nvmet_ns* @nvmet_find_namespace(%struct.nvmet_ctrl* %31, i32 %37)
  store %struct.nvmet_ns* %38, %struct.nvmet_ns** %8, align 8
  %39 = load i8*, i8** %4, align 8
  %40 = load %struct.nvmet_ns*, %struct.nvmet_ns** %8, align 8
  %41 = getelementptr inbounds %struct.nvmet_ns, %struct.nvmet_ns* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @DISK_NAME_LEN, align 4
  %44 = call i32 @strncpy(i8* %39, i32 %42, i32 %43)
  br label %49

45:                                               ; preds = %23, %20
  %46 = load i8*, i8** %4, align 8
  %47 = load i32, i32* @DISK_NAME_LEN, align 4
  %48 = call i32 @memset(i8* %46, i32 0, i32 %47)
  br label %49

49:                                               ; preds = %45, %30
  ret void
}

declare dso_local %struct.nvmet_ctrl* @nvmet_req_to_ctrl(%struct.nvmet_req*) #1

declare dso_local %struct.nvmet_ns* @nvmet_find_namespace(%struct.nvmet_ctrl*, i32) #1

declare dso_local i32 @strncpy(i8*, i32, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
