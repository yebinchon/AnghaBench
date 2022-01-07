; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_configfs.c_nvmet_addr_trtype_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_configfs.c_nvmet_addr_trtype_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32 }
%struct.config_item = type { i32 }
%struct.nvmet_port = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i64, i32 }

@.str = private unnamed_addr constant [37 x i8] c"Cannot modify address while enabled\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Disable the address before modifying\0A\00", align 1
@EACCES = common dso_local global i64 0, align 8
@nvmet_transport_names = common dso_local global %struct.TYPE_5__* null, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"Invalid value '%s' for trtype\0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@NVMF_TSAS_SIZE = common dso_local global i32 0, align 4
@NVMF_TRTYPE_RDMA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.config_item*, i8*, i64)* @nvmet_addr_trtype_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nvmet_addr_trtype_store(%struct.config_item* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.config_item*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.nvmet_port*, align 8
  %9 = alloca i32, align 4
  store %struct.config_item* %0, %struct.config_item** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.config_item*, %struct.config_item** %5, align 8
  %11 = call %struct.nvmet_port* @to_nvmet_port(%struct.config_item* %10)
  store %struct.nvmet_port* %11, %struct.nvmet_port** %8, align 8
  %12 = load %struct.nvmet_port*, %struct.nvmet_port** %8, align 8
  %13 = getelementptr inbounds %struct.nvmet_port, %struct.nvmet_port* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %18 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i64, i64* @EACCES, align 8
  %20 = sub i64 0, %19
  store i64 %20, i64* %4, align 8
  br label %73

21:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %22

22:                                               ; preds = %39, %21
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** @nvmet_transport_names, align 8
  %25 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %24)
  %26 = icmp slt i32 %23, %25
  br i1 %26, label %27, label %42

27:                                               ; preds = %22
  %28 = load i8*, i8** %6, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** @nvmet_transport_names, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @sysfs_streq(i8* %28, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  br label %47

38:                                               ; preds = %27
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %9, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %9, align 4
  br label %22

42:                                               ; preds = %22
  %43 = load i8*, i8** %6, align 8
  %44 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %43)
  %45 = load i64, i64* @EINVAL, align 8
  %46 = sub i64 0, %45
  store i64 %46, i64* %4, align 8
  br label %73

47:                                               ; preds = %37
  %48 = load %struct.nvmet_port*, %struct.nvmet_port** %8, align 8
  %49 = getelementptr inbounds %struct.nvmet_port, %struct.nvmet_port* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i32, i32* @NVMF_TSAS_SIZE, align 4
  %52 = call i32 @memset(i32* %50, i32 0, i32 %51)
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** @nvmet_transport_names, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.nvmet_port*, %struct.nvmet_port** %8, align 8
  %60 = getelementptr inbounds %struct.nvmet_port, %struct.nvmet_port* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  store i64 %58, i64* %61, align 8
  %62 = load %struct.nvmet_port*, %struct.nvmet_port** %8, align 8
  %63 = getelementptr inbounds %struct.nvmet_port, %struct.nvmet_port* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @NVMF_TRTYPE_RDMA, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %47
  %69 = load %struct.nvmet_port*, %struct.nvmet_port** %8, align 8
  %70 = call i32 @nvmet_port_init_tsas_rdma(%struct.nvmet_port* %69)
  br label %71

71:                                               ; preds = %68, %47
  %72 = load i64, i64* %7, align 8
  store i64 %72, i64* %4, align 8
  br label %73

73:                                               ; preds = %71, %42, %16
  %74 = load i64, i64* %4, align 8
  ret i64 %74
}

declare dso_local %struct.nvmet_port* @to_nvmet_port(%struct.config_item*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__*) #1

declare dso_local i64 @sysfs_streq(i8*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @nvmet_port_init_tsas_rdma(%struct.nvmet_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
