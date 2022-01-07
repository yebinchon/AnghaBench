; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/intel_speed_select_if/extr_isst_if_common.c_isst_store_new_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/intel_speed_select_if/extr_isst_if_common.c_isst_store_new_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isst_cmd = type { i32, i32, i32, i8*, i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@isst_hash = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i8*, i8*)* @isst_store_new_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isst_store_new_cmd(i32 %0, i8* %1, i32 %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.isst_cmd*, align 8
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.isst_cmd* @kmalloc(i32 40, i32 %13)
  store %struct.isst_cmd* %14, %struct.isst_cmd** %12, align 8
  %15 = load %struct.isst_cmd*, %struct.isst_cmd** %12, align 8
  %16 = icmp ne %struct.isst_cmd* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %5
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %6, align 4
  br label %43

20:                                               ; preds = %5
  %21 = load i8*, i8** %8, align 8
  %22 = load %struct.isst_cmd*, %struct.isst_cmd** %12, align 8
  %23 = getelementptr inbounds %struct.isst_cmd, %struct.isst_cmd* %22, i32 0, i32 5
  store i8* %21, i8** %23, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.isst_cmd*, %struct.isst_cmd** %12, align 8
  %26 = getelementptr inbounds %struct.isst_cmd, %struct.isst_cmd* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.isst_cmd*, %struct.isst_cmd** %12, align 8
  %29 = getelementptr inbounds %struct.isst_cmd, %struct.isst_cmd* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load i8*, i8** %10, align 8
  %31 = load %struct.isst_cmd*, %struct.isst_cmd** %12, align 8
  %32 = getelementptr inbounds %struct.isst_cmd, %struct.isst_cmd* %31, i32 0, i32 4
  store i8* %30, i8** %32, align 8
  %33 = load i8*, i8** %11, align 8
  %34 = load %struct.isst_cmd*, %struct.isst_cmd** %12, align 8
  %35 = getelementptr inbounds %struct.isst_cmd, %struct.isst_cmd* %34, i32 0, i32 3
  store i8* %33, i8** %35, align 8
  %36 = load i32, i32* @isst_hash, align 4
  %37 = load %struct.isst_cmd*, %struct.isst_cmd** %12, align 8
  %38 = getelementptr inbounds %struct.isst_cmd, %struct.isst_cmd* %37, i32 0, i32 2
  %39 = load %struct.isst_cmd*, %struct.isst_cmd** %12, align 8
  %40 = getelementptr inbounds %struct.isst_cmd, %struct.isst_cmd* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @hash_add(i32 %36, i32* %38, i32 %41)
  store i32 0, i32* %6, align 4
  br label %43

43:                                               ; preds = %20, %17
  %44 = load i32, i32* %6, align 4
  ret i32 %44
}

declare dso_local %struct.isst_cmd* @kmalloc(i32, i32) #1

declare dso_local i32 @hash_add(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
