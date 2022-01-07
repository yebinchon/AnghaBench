; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_configfs.c_nvmet_param_inline_data_size_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_configfs.c_nvmet_param_inline_data_size_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.nvmet_port = type { i32, i64 }

@.str = private unnamed_addr constant [51 x i8] c"Cannot modify inline_data_size while port enabled\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Disable the port before modifying\0A\00", align 1
@EACCES = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [41 x i8] c"Invalid value '%s' for inline_data_size\0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.config_item*, i8*, i64)* @nvmet_param_inline_data_size_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nvmet_param_inline_data_size_store(%struct.config_item* %0, i8* %1, i64 %2) #0 {
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
  %17 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %18 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i64, i64* @EACCES, align 8
  %20 = sub i64 0, %19
  store i64 %20, i64* %4, align 8
  br label %35

21:                                               ; preds = %3
  %22 = load i8*, i8** %6, align 8
  %23 = load %struct.nvmet_port*, %struct.nvmet_port** %8, align 8
  %24 = getelementptr inbounds %struct.nvmet_port, %struct.nvmet_port* %23, i32 0, i32 0
  %25 = call i32 @kstrtoint(i8* %22, i32 0, i32* %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %21
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8* %29)
  %31 = load i64, i64* @EINVAL, align 8
  %32 = sub i64 0, %31
  store i64 %32, i64* %4, align 8
  br label %35

33:                                               ; preds = %21
  %34 = load i64, i64* %7, align 8
  store i64 %34, i64* %4, align 8
  br label %35

35:                                               ; preds = %33, %28, %16
  %36 = load i64, i64* %4, align 8
  ret i64 %36
}

declare dso_local %struct.nvmet_port* @to_nvmet_port(%struct.config_item*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @kstrtoint(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
