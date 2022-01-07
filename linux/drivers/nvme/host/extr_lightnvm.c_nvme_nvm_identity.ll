; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_lightnvm.c_nvme_nvm_identity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_lightnvm.c_nvme_nvm_identity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvm_dev = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.nvme_ns* }
%struct.nvme_ns = type { %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.nvme_nvm_id12 = type { i32 }
%struct.nvme_nvm_command = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.nvme_command = type { i32 }
%struct.nvme_nvm_id20 = type { i32 }

@nvme_nvm_admin_identity = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"OCSSD revision not supported (%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvm_dev*)* @nvme_nvm_identity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_nvm_identity(%struct.nvm_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvm_dev*, align 8
  %4 = alloca %struct.nvme_ns*, align 8
  %5 = alloca %struct.nvme_nvm_id12*, align 8
  %6 = alloca %struct.nvme_nvm_command, align 4
  %7 = alloca i32, align 4
  store %struct.nvm_dev* %0, %struct.nvm_dev** %3, align 8
  %8 = load %struct.nvm_dev*, %struct.nvm_dev** %3, align 8
  %9 = getelementptr inbounds %struct.nvm_dev, %struct.nvm_dev* %8, i32 0, i32 1
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load %struct.nvme_ns*, %struct.nvme_ns** %11, align 8
  store %struct.nvme_ns* %12, %struct.nvme_ns** %4, align 8
  %13 = bitcast %struct.nvme_nvm_command* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 8, i1 false)
  %14 = load i32, i32* @nvme_nvm_admin_identity, align 4
  %15 = getelementptr inbounds %struct.nvme_nvm_command, %struct.nvme_nvm_command* %6, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load %struct.nvme_ns*, %struct.nvme_ns** %4, align 8
  %18 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %17, i32 0, i32 1
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @cpu_to_le32(i32 %21)
  %23 = getelementptr inbounds %struct.nvme_nvm_command, %struct.nvme_nvm_command* %6, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.nvme_nvm_id12* @kmalloc(i32 4, i32 %25)
  store %struct.nvme_nvm_id12* %26, %struct.nvme_nvm_id12** %5, align 8
  %27 = load %struct.nvme_nvm_id12*, %struct.nvme_nvm_id12** %5, align 8
  %28 = icmp ne %struct.nvme_nvm_id12* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %1
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %78

32:                                               ; preds = %1
  %33 = load %struct.nvme_ns*, %struct.nvme_ns** %4, align 8
  %34 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %33, i32 0, i32 0
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = bitcast %struct.nvme_nvm_command* %6 to %struct.nvme_command*
  %39 = load %struct.nvme_nvm_id12*, %struct.nvme_nvm_id12** %5, align 8
  %40 = call i32 @nvme_submit_sync_cmd(i32 %37, %struct.nvme_command* %38, %struct.nvme_nvm_id12* %39, i32 4)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %32
  %44 = load i32, i32* @EIO, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %7, align 4
  br label %74

46:                                               ; preds = %32
  %47 = load %struct.nvme_nvm_id12*, %struct.nvme_nvm_id12** %5, align 8
  %48 = getelementptr inbounds %struct.nvme_nvm_id12, %struct.nvme_nvm_id12* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  switch i32 %49, label %61 [
    i32 1, label %50
    i32 2, label %55
  ]

50:                                               ; preds = %46
  %51 = load %struct.nvme_nvm_id12*, %struct.nvme_nvm_id12** %5, align 8
  %52 = load %struct.nvm_dev*, %struct.nvm_dev** %3, align 8
  %53 = getelementptr inbounds %struct.nvm_dev, %struct.nvm_dev* %52, i32 0, i32 0
  %54 = call i32 @nvme_nvm_setup_12(%struct.nvme_nvm_id12* %51, i32* %53)
  store i32 %54, i32* %7, align 4
  br label %73

55:                                               ; preds = %46
  %56 = load %struct.nvme_nvm_id12*, %struct.nvme_nvm_id12** %5, align 8
  %57 = bitcast %struct.nvme_nvm_id12* %56 to %struct.nvme_nvm_id20*
  %58 = load %struct.nvm_dev*, %struct.nvm_dev** %3, align 8
  %59 = getelementptr inbounds %struct.nvm_dev, %struct.nvm_dev* %58, i32 0, i32 0
  %60 = call i32 @nvme_nvm_setup_20(%struct.nvme_nvm_id20* %57, i32* %59)
  store i32 %60, i32* %7, align 4
  br label %73

61:                                               ; preds = %46
  %62 = load %struct.nvme_ns*, %struct.nvme_ns** %4, align 8
  %63 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %62, i32 0, i32 0
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.nvme_nvm_id12*, %struct.nvme_nvm_id12** %5, align 8
  %68 = getelementptr inbounds %struct.nvme_nvm_id12, %struct.nvme_nvm_id12* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @dev_err(i32 %66, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %7, align 4
  br label %73

73:                                               ; preds = %61, %55, %50
  br label %74

74:                                               ; preds = %73, %43
  %75 = load %struct.nvme_nvm_id12*, %struct.nvme_nvm_id12** %5, align 8
  %76 = call i32 @kfree(%struct.nvme_nvm_id12* %75)
  %77 = load i32, i32* %7, align 4
  store i32 %77, i32* %2, align 4
  br label %78

78:                                               ; preds = %74, %29
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cpu_to_le32(i32) #2

declare dso_local %struct.nvme_nvm_id12* @kmalloc(i32, i32) #2

declare dso_local i32 @nvme_submit_sync_cmd(i32, %struct.nvme_command*, %struct.nvme_nvm_id12*, i32) #2

declare dso_local i32 @nvme_nvm_setup_12(%struct.nvme_nvm_id12*, i32*) #2

declare dso_local i32 @nvme_nvm_setup_20(%struct.nvme_nvm_id20*, i32*) #2

declare dso_local i32 @dev_err(i32, i8*, i32) #2

declare dso_local i32 @kfree(%struct.nvme_nvm_id12*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
