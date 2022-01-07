; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_switch.c_register_nvmem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_switch.c_register_nvmem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmem_device = type { i32 }
%struct.tb_switch = type { i32 }
%struct.nvmem_config = type { i8*, i32, i32, i32, i32, i32, i64, %struct.tb_switch*, i32, i32*, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"nvm_active\00", align 1
@tb_switch_nvm_read = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"nvm_non_active\00", align 1
@tb_switch_nvm_write = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nvmem_device* (%struct.tb_switch*, i32, i64, i32)* @register_nvmem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nvmem_device* @register_nvmem(%struct.tb_switch* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.tb_switch*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nvmem_config, align 8
  store %struct.tb_switch* %0, %struct.tb_switch** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = call i32 @memset(%struct.nvmem_config* %9, i32 0, i32 72)
  %11 = load i32, i32* %8, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %9, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  %15 = load i32, i32* @tb_switch_nvm_read, align 4
  %16 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %9, i32 0, i32 11
  store i32 %15, i32* %16, align 4
  %17 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %9, i32 0, i32 1
  store i32 1, i32* %17, align 8
  br label %23

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %9, i32 0, i32 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8** %19, align 8
  %20 = load i32, i32* @tb_switch_nvm_write, align 4
  %21 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %9, i32 0, i32 10
  store i32 %20, i32* %21, align 8
  %22 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %9, i32 0, i32 2
  store i32 1, i32* %22, align 4
  br label %23

23:                                               ; preds = %18, %13
  %24 = load i32, i32* %6, align 4
  %25 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %9, i32 0, i32 3
  store i32 %24, i32* %25, align 8
  %26 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %9, i32 0, i32 4
  store i32 4, i32* %26, align 4
  %27 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %9, i32 0, i32 5
  store i32 4, i32* %27, align 8
  %28 = load i64, i64* %7, align 8
  %29 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %9, i32 0, i32 6
  store i64 %28, i64* %29, align 8
  %30 = load %struct.tb_switch*, %struct.tb_switch** %5, align 8
  %31 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %9, i32 0, i32 9
  store i32* %31, i32** %32, align 8
  %33 = load i32, i32* @THIS_MODULE, align 4
  %34 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %9, i32 0, i32 8
  store i32 %33, i32* %34, align 8
  %35 = load %struct.tb_switch*, %struct.tb_switch** %5, align 8
  %36 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %9, i32 0, i32 7
  store %struct.tb_switch* %35, %struct.tb_switch** %36, align 8
  %37 = call %struct.nvmem_device* @nvmem_register(%struct.nvmem_config* %9)
  ret %struct.nvmem_device* %37
}

declare dso_local i32 @memset(%struct.nvmem_config*, i32, i32) #1

declare dso_local %struct.nvmem_device* @nvmem_register(%struct.nvmem_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
