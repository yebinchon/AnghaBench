; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_lightnvm.c_nvme_nvm_set_bb_tbl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_lightnvm.c_nvme_nvm_set_bb_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvm_dev = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.nvme_ns* }
%struct.nvme_ns = type { %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.ppa_addr = type { i32 }
%struct.nvme_nvm_command = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }
%struct.nvme_command = type { i32 }

@nvme_nvm_admin_set_bb_tbl = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"set bad block table failed (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvm_dev*, %struct.ppa_addr*, i32, i32)* @nvme_nvm_set_bb_tbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_nvm_set_bb_tbl(%struct.nvm_dev* %0, %struct.ppa_addr* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.nvm_dev*, align 8
  %6 = alloca %struct.ppa_addr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.nvme_ns*, align 8
  %10 = alloca %struct.nvme_nvm_command, align 4
  %11 = alloca i32, align 4
  store %struct.nvm_dev* %0, %struct.nvm_dev** %5, align 8
  store %struct.ppa_addr* %1, %struct.ppa_addr** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.nvm_dev*, %struct.nvm_dev** %5, align 8
  %13 = getelementptr inbounds %struct.nvm_dev, %struct.nvm_dev* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.nvme_ns*, %struct.nvme_ns** %15, align 8
  store %struct.nvme_ns* %16, %struct.nvme_ns** %9, align 8
  %17 = bitcast %struct.nvme_nvm_command* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %17, i8 0, i64 20, i1 false)
  store i32 0, i32* %11, align 4
  %18 = load i32, i32* @nvme_nvm_admin_set_bb_tbl, align 4
  %19 = getelementptr inbounds %struct.nvme_nvm_command, %struct.nvme_nvm_command* %10, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 4
  store i32 %18, i32* %20, align 4
  %21 = load %struct.nvme_ns*, %struct.nvme_ns** %9, align 8
  %22 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %21, i32 0, i32 1
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @cpu_to_le32(i32 %25)
  %27 = getelementptr inbounds %struct.nvme_nvm_command, %struct.nvme_nvm_command* %10, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 4
  %29 = load %struct.ppa_addr*, %struct.ppa_addr** %6, align 8
  %30 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @cpu_to_le64(i32 %31)
  %33 = getelementptr inbounds %struct.nvme_nvm_command, %struct.nvme_nvm_command* %10, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %7, align 4
  %36 = sub nsw i32 %35, 1
  %37 = call i32 @cpu_to_le16(i32 %36)
  %38 = getelementptr inbounds %struct.nvme_nvm_command, %struct.nvme_nvm_command* %10, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* %8, align 4
  %41 = getelementptr inbounds %struct.nvme_nvm_command, %struct.nvme_nvm_command* %10, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load %struct.nvme_ns*, %struct.nvme_ns** %9, align 8
  %44 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %43, i32 0, i32 0
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = bitcast %struct.nvme_nvm_command* %10 to %struct.nvme_command*
  %49 = call i32 @nvme_submit_sync_cmd(i32 %47, %struct.nvme_command* %48, i32* null, i32 0)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %4
  %53 = load %struct.nvme_ns*, %struct.nvme_ns** %9, align 8
  %54 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %53, i32 0, i32 0
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @dev_err(i32 %57, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %58)
  br label %60

60:                                               ; preds = %52, %4
  %61 = load i32, i32* %11, align 4
  ret i32 %61
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cpu_to_le32(i32) #2

declare dso_local i32 @cpu_to_le64(i32) #2

declare dso_local i32 @cpu_to_le16(i32) #2

declare dso_local i32 @nvme_submit_sync_cmd(i32, %struct.nvme_command*, i32*, i32) #2

declare dso_local i32 @dev_err(i32, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
