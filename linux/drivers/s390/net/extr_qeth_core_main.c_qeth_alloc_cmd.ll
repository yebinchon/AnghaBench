; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_alloc_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_alloc_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_cmd_buffer = type { i64, i32, %struct.qeth_channel*, i32, i32, i32, i32, i8* }
%struct.qeth_channel = type { i32 }

@QETH_BUFSIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.qeth_cmd_buffer* @qeth_alloc_cmd(%struct.qeth_channel* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.qeth_cmd_buffer*, align 8
  %6 = alloca %struct.qeth_channel*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.qeth_cmd_buffer*, align 8
  store %struct.qeth_channel* %0, %struct.qeth_channel** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @QETH_BUFSIZE, align 4
  %13 = icmp ugt i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  store %struct.qeth_cmd_buffer* null, %struct.qeth_cmd_buffer** %5, align 8
  br label %67

15:                                               ; preds = %4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i8* @kzalloc(i32 48, i32 %16)
  %18 = bitcast i8* %17 to %struct.qeth_cmd_buffer*
  store %struct.qeth_cmd_buffer* %18, %struct.qeth_cmd_buffer** %10, align 8
  %19 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %10, align 8
  %20 = icmp ne %struct.qeth_cmd_buffer* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %15
  store %struct.qeth_cmd_buffer* null, %struct.qeth_cmd_buffer** %5, align 8
  br label %67

22:                                               ; preds = %15
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @ALIGN(i32 %23, i32 8)
  %25 = zext i32 %24 to i64
  %26 = load i32, i32* %8, align 4
  %27 = zext i32 %26 to i64
  %28 = mul i64 %27, 4
  %29 = add i64 %25, %28
  %30 = trunc i64 %29 to i32
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = load i32, i32* @GFP_DMA, align 4
  %33 = or i32 %31, %32
  %34 = call i8* @kzalloc(i32 %30, i32 %33)
  %35 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %10, align 8
  %36 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %35, i32 0, i32 7
  store i8* %34, i8** %36, align 8
  %37 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %10, align 8
  %38 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %37, i32 0, i32 7
  %39 = load i8*, i8** %38, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %22
  %42 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %10, align 8
  %43 = call i32 @kfree(%struct.qeth_cmd_buffer* %42)
  store %struct.qeth_cmd_buffer* null, %struct.qeth_cmd_buffer** %5, align 8
  br label %67

44:                                               ; preds = %22
  %45 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %10, align 8
  %46 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %45, i32 0, i32 6
  %47 = call i32 @init_completion(i32* %46)
  %48 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %10, align 8
  %49 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %48, i32 0, i32 5
  %50 = call i32 @spin_lock_init(i32* %49)
  %51 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %10, align 8
  %52 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %51, i32 0, i32 4
  %53 = call i32 @INIT_LIST_HEAD(i32* %52)
  %54 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %10, align 8
  %55 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %54, i32 0, i32 3
  %56 = call i32 @refcount_set(i32* %55, i32 1)
  %57 = load %struct.qeth_channel*, %struct.qeth_channel** %6, align 8
  %58 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %10, align 8
  %59 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %58, i32 0, i32 2
  store %struct.qeth_channel* %57, %struct.qeth_channel** %59, align 8
  %60 = load i64, i64* %9, align 8
  %61 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %10, align 8
  %62 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %10, align 8
  %65 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 8
  %66 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %10, align 8
  store %struct.qeth_cmd_buffer* %66, %struct.qeth_cmd_buffer** %5, align 8
  br label %67

67:                                               ; preds = %44, %41, %21, %14
  %68 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %5, align 8
  ret %struct.qeth_cmd_buffer* %68
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @kfree(%struct.qeth_cmd_buffer*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
