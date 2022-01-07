; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_stm32_rproc.c_stm32_rproc_mem_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_stm32_rproc.c_stm32_rproc_mem_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rproc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.rproc_mem_entry = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"map memory: %pa+%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Unable to map memory region: %pa+%x\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rproc*, %struct.rproc_mem_entry*)* @stm32_rproc_mem_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_rproc_mem_alloc(%struct.rproc* %0, %struct.rproc_mem_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rproc*, align 8
  %5 = alloca %struct.rproc_mem_entry*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i8*, align 8
  store %struct.rproc* %0, %struct.rproc** %4, align 8
  store %struct.rproc_mem_entry* %1, %struct.rproc_mem_entry** %5, align 8
  %8 = load %struct.rproc*, %struct.rproc** %4, align 8
  %9 = getelementptr inbounds %struct.rproc, %struct.rproc* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.device*, %struct.device** %10, align 8
  store %struct.device* %11, %struct.device** %6, align 8
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = load %struct.rproc_mem_entry*, %struct.rproc_mem_entry** %5, align 8
  %14 = getelementptr inbounds %struct.rproc_mem_entry, %struct.rproc_mem_entry* %13, i32 0, i32 2
  %15 = load %struct.rproc_mem_entry*, %struct.rproc_mem_entry** %5, align 8
  %16 = getelementptr inbounds %struct.rproc_mem_entry, %struct.rproc_mem_entry* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @dev_dbg(%struct.device* %12, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32* %14, i32 %17)
  %19 = load %struct.rproc_mem_entry*, %struct.rproc_mem_entry** %5, align 8
  %20 = getelementptr inbounds %struct.rproc_mem_entry, %struct.rproc_mem_entry* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.rproc_mem_entry*, %struct.rproc_mem_entry** %5, align 8
  %23 = getelementptr inbounds %struct.rproc_mem_entry, %struct.rproc_mem_entry* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i8* @ioremap_wc(i32 %21, i32 %24)
  store i8* %25, i8** %7, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = call i64 @IS_ERR_OR_NULL(i8* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %2
  %30 = load %struct.device*, %struct.device** %6, align 8
  %31 = load %struct.rproc_mem_entry*, %struct.rproc_mem_entry** %5, align 8
  %32 = getelementptr inbounds %struct.rproc_mem_entry, %struct.rproc_mem_entry* %31, i32 0, i32 2
  %33 = load %struct.rproc_mem_entry*, %struct.rproc_mem_entry** %5, align 8
  %34 = getelementptr inbounds %struct.rproc_mem_entry, %struct.rproc_mem_entry* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @dev_err(%struct.device* %30, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32* %32, i32 %35)
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %43

39:                                               ; preds = %2
  %40 = load i8*, i8** %7, align 8
  %41 = load %struct.rproc_mem_entry*, %struct.rproc_mem_entry** %5, align 8
  %42 = getelementptr inbounds %struct.rproc_mem_entry, %struct.rproc_mem_entry* %41, i32 0, i32 0
  store i8* %40, i8** %42, align 8
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %39, %29
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32*, i32) #1

declare dso_local i8* @ioremap_wc(i32, i32) #1

declare dso_local i64 @IS_ERR_OR_NULL(i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
