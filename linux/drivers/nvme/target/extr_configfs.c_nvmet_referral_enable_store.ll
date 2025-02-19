; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_configfs.c_nvmet_referral_enable_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_configfs.c_nvmet_referral_enable_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.config_item* }
%struct.nvmet_port = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"Invalid value '%s' for enable\0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.config_item*, i8*, i64)* @nvmet_referral_enable_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nvmet_referral_enable_store(%struct.config_item* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.config_item*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.nvmet_port*, align 8
  %9 = alloca %struct.nvmet_port*, align 8
  %10 = alloca i32, align 4
  store %struct.config_item* %0, %struct.config_item** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.config_item*, %struct.config_item** %5, align 8
  %12 = getelementptr inbounds %struct.config_item, %struct.config_item* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.config_item*, %struct.config_item** %14, align 8
  %16 = call %struct.nvmet_port* @to_nvmet_port(%struct.config_item* %15)
  store %struct.nvmet_port* %16, %struct.nvmet_port** %8, align 8
  %17 = load %struct.config_item*, %struct.config_item** %5, align 8
  %18 = call %struct.nvmet_port* @to_nvmet_port(%struct.config_item* %17)
  store %struct.nvmet_port* %18, %struct.nvmet_port** %9, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = call i64 @strtobool(i8* %19, i32* %10)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  br label %36

23:                                               ; preds = %3
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load %struct.nvmet_port*, %struct.nvmet_port** %8, align 8
  %28 = load %struct.nvmet_port*, %struct.nvmet_port** %9, align 8
  %29 = call i32 @nvmet_referral_enable(%struct.nvmet_port* %27, %struct.nvmet_port* %28)
  br label %34

30:                                               ; preds = %23
  %31 = load %struct.nvmet_port*, %struct.nvmet_port** %8, align 8
  %32 = load %struct.nvmet_port*, %struct.nvmet_port** %9, align 8
  %33 = call i32 @nvmet_referral_disable(%struct.nvmet_port* %31, %struct.nvmet_port* %32)
  br label %34

34:                                               ; preds = %30, %26
  %35 = load i64, i64* %7, align 8
  store i64 %35, i64* %4, align 8
  br label %41

36:                                               ; preds = %22
  %37 = load i8*, i8** %6, align 8
  %38 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %37)
  %39 = load i64, i64* @EINVAL, align 8
  %40 = sub i64 0, %39
  store i64 %40, i64* %4, align 8
  br label %41

41:                                               ; preds = %36, %34
  %42 = load i64, i64* %4, align 8
  ret i64 %42
}

declare dso_local %struct.nvmet_port* @to_nvmet_port(%struct.config_item*) #1

declare dso_local i64 @strtobool(i8*, i32*) #1

declare dso_local i32 @nvmet_referral_enable(%struct.nvmet_port*, %struct.nvmet_port*) #1

declare dso_local i32 @nvmet_referral_disable(%struct.nvmet_port*, %struct.nvmet_port*) #1

declare dso_local i32 @pr_err(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
