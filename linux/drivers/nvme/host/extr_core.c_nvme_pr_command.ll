; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_pr_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_pr_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { i32 }
%struct.nvme_ns_head = type { i32 }
%struct.nvme_ns = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.nvme_command = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i8*, i32 }

@EWOULDBLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.block_device*, i32, i32, i32, i32)* @nvme_pr_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_pr_command(%struct.block_device* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.block_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.nvme_ns_head*, align 8
  %13 = alloca %struct.nvme_ns*, align 8
  %14 = alloca %struct.nvme_command, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [16 x i32], align 16
  store %struct.block_device* %0, %struct.block_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.nvme_ns_head* null, %struct.nvme_ns_head** %12, align 8
  %18 = bitcast [16 x i32]* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %18, i8 0, i64 64, i1 false)
  %19 = load %struct.block_device*, %struct.block_device** %7, align 8
  %20 = getelementptr inbounds %struct.block_device, %struct.block_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.nvme_ns* @nvme_get_ns_from_disk(i32 %21, %struct.nvme_ns_head** %12, i32* %15)
  store %struct.nvme_ns* %22, %struct.nvme_ns** %13, align 8
  %23 = load %struct.nvme_ns*, %struct.nvme_ns** %13, align 8
  %24 = icmp ne %struct.nvme_ns* %23, null
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %5
  %30 = load i32, i32* @EWOULDBLOCK, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  br label %64

32:                                               ; preds = %5
  %33 = load i32, i32* %9, align 4
  %34 = getelementptr inbounds [16 x i32], [16 x i32]* %17, i64 0, i64 0
  %35 = call i32 @put_unaligned_le64(i32 %33, i32* %34)
  %36 = load i32, i32* %10, align 4
  %37 = getelementptr inbounds [16 x i32], [16 x i32]* %17, i64 0, i64 8
  %38 = call i32 @put_unaligned_le64(i32 %36, i32* %37)
  %39 = call i32 @memset(%struct.nvme_command* %14, i32 0, i32 24)
  %40 = load i32, i32* %11, align 4
  %41 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %14, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  %43 = load %struct.nvme_ns*, %struct.nvme_ns** %13, align 8
  %44 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %43, i32 0, i32 1
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @cpu_to_le32(i32 %47)
  %49 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %14, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  store i8* %48, i8** %50, align 8
  %51 = load i32, i32* %8, align 4
  %52 = call i8* @cpu_to_le32(i32 %51)
  %53 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %14, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store i8* %52, i8** %54, align 8
  %55 = load %struct.nvme_ns*, %struct.nvme_ns** %13, align 8
  %56 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = getelementptr inbounds [16 x i32], [16 x i32]* %17, i64 0, i64 0
  %59 = call i32 @nvme_submit_sync_cmd(i32 %57, %struct.nvme_command* %14, i32* %58, i32 16)
  store i32 %59, i32* %16, align 4
  %60 = load %struct.nvme_ns_head*, %struct.nvme_ns_head** %12, align 8
  %61 = load i32, i32* %15, align 4
  %62 = call i32 @nvme_put_ns_from_disk(%struct.nvme_ns_head* %60, i32 %61)
  %63 = load i32, i32* %16, align 4
  store i32 %63, i32* %6, align 4
  br label %64

64:                                               ; preds = %32, %29
  %65 = load i32, i32* %6, align 4
  ret i32 %65
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.nvme_ns* @nvme_get_ns_from_disk(i32, %struct.nvme_ns_head**, i32*) #2

declare dso_local i64 @unlikely(i32) #2

declare dso_local i32 @put_unaligned_le64(i32, i32*) #2

declare dso_local i32 @memset(%struct.nvme_command*, i32, i32) #2

declare dso_local i8* @cpu_to_le32(i32) #2

declare dso_local i32 @nvme_submit_sync_cmd(i32, %struct.nvme_command*, i32*, i32) #2

declare dso_local i32 @nvme_put_ns_from_disk(%struct.nvme_ns_head*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
