; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_configfs.c_nvmet_addr_trsvcid_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_configfs.c_nvmet_addr_trsvcid_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.nvmet_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.config_item*, i8*)* @nvmet_addr_trsvcid_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvmet_addr_trsvcid_show(%struct.config_item* %0, i8* %1) #0 {
  %3 = alloca %struct.config_item*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.nvmet_port*, align 8
  store %struct.config_item* %0, %struct.config_item** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.config_item*, %struct.config_item** %3, align 8
  %7 = call %struct.nvmet_port* @to_nvmet_port(%struct.config_item* %6)
  store %struct.nvmet_port* %7, %struct.nvmet_port** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = load i32, i32* @PAGE_SIZE, align 4
  %10 = load %struct.nvmet_port*, %struct.nvmet_port** %5, align 8
  %11 = getelementptr inbounds %struct.nvmet_port, %struct.nvmet_port* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = call i32 @snprintf(i8* %8, i32 %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %13)
  ret i32 %14
}

declare dso_local %struct.nvmet_port* @to_nvmet_port(%struct.config_item*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
