; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_lightnvm.c_nvme_nvm_rqtocmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_lightnvm.c_nvme_nvm_rqtocmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvm_rq = type { i64, i64, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.nvme_ns = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.nvme_nvm_command = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8*, i8*, i8*, i8*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvm_rq*, %struct.nvme_ns*, %struct.nvme_nvm_command*)* @nvme_nvm_rqtocmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_nvm_rqtocmd(%struct.nvm_rq* %0, %struct.nvme_ns* %1, %struct.nvme_nvm_command* %2) #0 {
  %4 = alloca %struct.nvm_rq*, align 8
  %5 = alloca %struct.nvme_ns*, align 8
  %6 = alloca %struct.nvme_nvm_command*, align 8
  store %struct.nvm_rq* %0, %struct.nvm_rq** %4, align 8
  store %struct.nvme_ns* %1, %struct.nvme_ns** %5, align 8
  store %struct.nvme_nvm_command* %2, %struct.nvme_nvm_command** %6, align 8
  %7 = load %struct.nvm_rq*, %struct.nvm_rq** %4, align 8
  %8 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.nvme_nvm_command*, %struct.nvme_nvm_command** %6, align 8
  %11 = getelementptr inbounds %struct.nvme_nvm_command, %struct.nvme_nvm_command* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 5
  store i32 %9, i32* %12, align 4
  %13 = load %struct.nvme_ns*, %struct.nvme_ns** %5, align 8
  %14 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @cpu_to_le32(i32 %17)
  %19 = load %struct.nvme_nvm_command*, %struct.nvme_nvm_command** %6, align 8
  %20 = getelementptr inbounds %struct.nvme_nvm_command, %struct.nvme_nvm_command* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 4
  store i32 %18, i32* %21, align 8
  %22 = load %struct.nvm_rq*, %struct.nvm_rq** %4, align 8
  %23 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @cpu_to_le64(i32 %25)
  %27 = load %struct.nvme_nvm_command*, %struct.nvme_nvm_command** %6, align 8
  %28 = getelementptr inbounds %struct.nvme_nvm_command, %struct.nvme_nvm_command* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 3
  store i8* %26, i8** %29, align 8
  %30 = load %struct.nvm_rq*, %struct.nvm_rq** %4, align 8
  %31 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i8* @cpu_to_le64(i32 %32)
  %34 = load %struct.nvme_nvm_command*, %struct.nvme_nvm_command** %6, align 8
  %35 = getelementptr inbounds %struct.nvme_nvm_command, %struct.nvme_nvm_command* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 2
  store i8* %33, i8** %36, align 8
  %37 = load %struct.nvm_rq*, %struct.nvm_rq** %4, align 8
  %38 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = call i8* @cpu_to_le16(i64 %39)
  %41 = load %struct.nvme_nvm_command*, %struct.nvme_nvm_command** %6, align 8
  %42 = getelementptr inbounds %struct.nvme_nvm_command, %struct.nvme_nvm_command* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  store i8* %40, i8** %43, align 8
  %44 = load %struct.nvm_rq*, %struct.nvm_rq** %4, align 8
  %45 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = sub nsw i64 %46, 1
  %48 = call i8* @cpu_to_le16(i64 %47)
  %49 = load %struct.nvme_nvm_command*, %struct.nvme_nvm_command** %6, align 8
  %50 = getelementptr inbounds %struct.nvme_nvm_command, %struct.nvme_nvm_command* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  store i8* %48, i8** %51, align 8
  ret void
}

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local i8* @cpu_to_le16(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
