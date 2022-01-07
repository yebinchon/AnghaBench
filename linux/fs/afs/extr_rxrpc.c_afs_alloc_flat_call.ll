; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_rxrpc.c_afs_alloc_flat_call.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_rxrpc.c_afs_alloc_flat_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_call = type { i64, i64, i32, i32, i8*, i8* }
%struct.afs_net = type { i32 }
%struct.afs_call_type = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.afs_call* @afs_alloc_flat_call(%struct.afs_net* %0, %struct.afs_call_type* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.afs_call*, align 8
  %6 = alloca %struct.afs_net*, align 8
  %7 = alloca %struct.afs_call_type*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.afs_call*, align 8
  store %struct.afs_net* %0, %struct.afs_net** %6, align 8
  store %struct.afs_call_type* %1, %struct.afs_call_type** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load %struct.afs_net*, %struct.afs_net** %6, align 8
  %12 = load %struct.afs_call_type*, %struct.afs_call_type** %7, align 8
  %13 = load i32, i32* @GFP_NOFS, align 4
  %14 = call %struct.afs_call* @afs_alloc_call(%struct.afs_net* %11, %struct.afs_call_type* %12, i32 %13)
  store %struct.afs_call* %14, %struct.afs_call** %10, align 8
  %15 = load %struct.afs_call*, %struct.afs_call** %10, align 8
  %16 = icmp ne %struct.afs_call* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  br label %72

18:                                               ; preds = %4
  %19 = load i64, i64* %8, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %18
  %22 = load i64, i64* %8, align 8
  %23 = load %struct.afs_call*, %struct.afs_call** %10, align 8
  %24 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  %25 = load i64, i64* %8, align 8
  %26 = load i32, i32* @GFP_NOFS, align 4
  %27 = call i8* @kmalloc(i64 %25, i32 %26)
  %28 = load %struct.afs_call*, %struct.afs_call** %10, align 8
  %29 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %28, i32 0, i32 5
  store i8* %27, i8** %29, align 8
  %30 = load %struct.afs_call*, %struct.afs_call** %10, align 8
  %31 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %30, i32 0, i32 5
  %32 = load i8*, i8** %31, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %21
  br label %69

35:                                               ; preds = %21
  br label %36

36:                                               ; preds = %35, %18
  %37 = load i64, i64* %9, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %54

39:                                               ; preds = %36
  %40 = load i64, i64* %9, align 8
  %41 = load %struct.afs_call*, %struct.afs_call** %10, align 8
  %42 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %41, i32 0, i32 1
  store i64 %40, i64* %42, align 8
  %43 = load i64, i64* %9, align 8
  %44 = load i32, i32* @GFP_NOFS, align 4
  %45 = call i8* @kmalloc(i64 %43, i32 %44)
  %46 = load %struct.afs_call*, %struct.afs_call** %10, align 8
  %47 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %46, i32 0, i32 4
  store i8* %45, i8** %47, align 8
  %48 = load %struct.afs_call*, %struct.afs_call** %10, align 8
  %49 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %48, i32 0, i32 4
  %50 = load i8*, i8** %49, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %39
  br label %69

53:                                               ; preds = %39
  br label %54

54:                                               ; preds = %53, %36
  %55 = load %struct.afs_call*, %struct.afs_call** %10, align 8
  %56 = load %struct.afs_call*, %struct.afs_call** %10, align 8
  %57 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @afs_extract_to_buf(%struct.afs_call* %55, i64 %58)
  %60 = load %struct.afs_call_type*, %struct.afs_call_type** %7, align 8
  %61 = getelementptr inbounds %struct.afs_call_type, %struct.afs_call_type* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.afs_call*, %struct.afs_call** %10, align 8
  %64 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 4
  %65 = load %struct.afs_call*, %struct.afs_call** %10, align 8
  %66 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %65, i32 0, i32 2
  %67 = call i32 @init_waitqueue_head(i32* %66)
  %68 = load %struct.afs_call*, %struct.afs_call** %10, align 8
  store %struct.afs_call* %68, %struct.afs_call** %5, align 8
  br label %73

69:                                               ; preds = %52, %34
  %70 = load %struct.afs_call*, %struct.afs_call** %10, align 8
  %71 = call i32 @afs_put_call(%struct.afs_call* %70)
  br label %72

72:                                               ; preds = %69, %17
  store %struct.afs_call* null, %struct.afs_call** %5, align 8
  br label %73

73:                                               ; preds = %72, %54
  %74 = load %struct.afs_call*, %struct.afs_call** %5, align 8
  ret %struct.afs_call* %74
}

declare dso_local %struct.afs_call* @afs_alloc_call(%struct.afs_net*, %struct.afs_call_type*, i32) #1

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i32 @afs_extract_to_buf(%struct.afs_call*, i64) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @afs_put_call(%struct.afs_call*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
