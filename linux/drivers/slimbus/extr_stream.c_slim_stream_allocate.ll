; ModuleID = '/home/carl/AnghaBench/linux/drivers/slimbus/extr_stream.c_slim_stream_allocate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/slimbus/extr_stream.c_slim_stream_allocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slim_stream_runtime = type { i32, %struct.slim_device*, i32 }
%struct.slim_device = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"slim-%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.slim_stream_runtime* @slim_stream_allocate(%struct.slim_device* %0, i8* %1) #0 {
  %3 = alloca %struct.slim_stream_runtime*, align 8
  %4 = alloca %struct.slim_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.slim_stream_runtime*, align 8
  store %struct.slim_device* %0, %struct.slim_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.slim_stream_runtime* @kzalloc(i32 24, i32 %7)
  store %struct.slim_stream_runtime* %8, %struct.slim_stream_runtime** %6, align 8
  %9 = load %struct.slim_stream_runtime*, %struct.slim_stream_runtime** %6, align 8
  %10 = icmp ne %struct.slim_stream_runtime* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  %14 = call %struct.slim_stream_runtime* @ERR_PTR(i32 %13)
  store %struct.slim_stream_runtime* %14, %struct.slim_stream_runtime** %3, align 8
  br label %47

15:                                               ; preds = %2
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @kasprintf(i32 %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %17)
  %19 = load %struct.slim_stream_runtime*, %struct.slim_stream_runtime** %6, align 8
  %20 = getelementptr inbounds %struct.slim_stream_runtime, %struct.slim_stream_runtime* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 8
  %21 = load %struct.slim_stream_runtime*, %struct.slim_stream_runtime** %6, align 8
  %22 = getelementptr inbounds %struct.slim_stream_runtime, %struct.slim_stream_runtime* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %15
  %26 = load %struct.slim_stream_runtime*, %struct.slim_stream_runtime** %6, align 8
  %27 = call i32 @kfree(%struct.slim_stream_runtime* %26)
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  %30 = call %struct.slim_stream_runtime* @ERR_PTR(i32 %29)
  store %struct.slim_stream_runtime* %30, %struct.slim_stream_runtime** %3, align 8
  br label %47

31:                                               ; preds = %15
  %32 = load %struct.slim_device*, %struct.slim_device** %4, align 8
  %33 = load %struct.slim_stream_runtime*, %struct.slim_stream_runtime** %6, align 8
  %34 = getelementptr inbounds %struct.slim_stream_runtime, %struct.slim_stream_runtime* %33, i32 0, i32 1
  store %struct.slim_device* %32, %struct.slim_device** %34, align 8
  %35 = load %struct.slim_device*, %struct.slim_device** %4, align 8
  %36 = getelementptr inbounds %struct.slim_device, %struct.slim_device* %35, i32 0, i32 0
  %37 = call i32 @spin_lock(i32* %36)
  %38 = load %struct.slim_stream_runtime*, %struct.slim_stream_runtime** %6, align 8
  %39 = getelementptr inbounds %struct.slim_stream_runtime, %struct.slim_stream_runtime* %38, i32 0, i32 0
  %40 = load %struct.slim_device*, %struct.slim_device** %4, align 8
  %41 = getelementptr inbounds %struct.slim_device, %struct.slim_device* %40, i32 0, i32 1
  %42 = call i32 @list_add_tail(i32* %39, i32* %41)
  %43 = load %struct.slim_device*, %struct.slim_device** %4, align 8
  %44 = getelementptr inbounds %struct.slim_device, %struct.slim_device* %43, i32 0, i32 0
  %45 = call i32 @spin_unlock(i32* %44)
  %46 = load %struct.slim_stream_runtime*, %struct.slim_stream_runtime** %6, align 8
  store %struct.slim_stream_runtime* %46, %struct.slim_stream_runtime** %3, align 8
  br label %47

47:                                               ; preds = %31, %25, %11
  %48 = load %struct.slim_stream_runtime*, %struct.slim_stream_runtime** %3, align 8
  ret %struct.slim_stream_runtime* %48
}

declare dso_local %struct.slim_stream_runtime* @kzalloc(i32, i32) #1

declare dso_local %struct.slim_stream_runtime* @ERR_PTR(i32) #1

declare dso_local i32 @kasprintf(i32, i8*, i8*) #1

declare dso_local i32 @kfree(%struct.slim_stream_runtime*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
