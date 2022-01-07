; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_vlclient.c_afs_deliver_vl_get_capabilities.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_vlclient.c_afs_deliver_vl_get_capabilities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_call = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"{%u,%zu/%u}\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c" = 0 [done]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.afs_call*)* @afs_deliver_vl_get_capabilities to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afs_deliver_vl_get_capabilities(%struct.afs_call* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.afs_call*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.afs_call* %0, %struct.afs_call** %3, align 8
  %6 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %7 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %10 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @iov_iter_count(i32 %11)
  %13 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %14 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @_enter(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %12, i32 %15)
  %17 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %18 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %67 [
    i32 0, label %20
    i32 1, label %27
    i32 2, label %55
  ]

20:                                               ; preds = %1
  %21 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %22 = call i32 @afs_extract_to_tmp(%struct.afs_call* %21)
  %23 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %24 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 4
  br label %27

27:                                               ; preds = %1, %20
  %28 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %29 = call i32 @afs_extract_data(%struct.afs_call* %28, i32 1)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* %5, align 4
  store i32 %33, i32* %2, align 4
  br label %69

34:                                               ; preds = %27
  %35 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %36 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @ntohl(i32 %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %41 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %4, align 4
  %43 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %44 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %46 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  %49 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = mul i64 %51, 4
  %53 = trunc i64 %52 to i32
  %54 = call i32 @afs_extract_discard(%struct.afs_call* %49, i32 %53)
  br label %55

55:                                               ; preds = %1, %34
  %56 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %57 = call i32 @afs_extract_data(%struct.afs_call* %56, i32 0)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = load i32, i32* %5, align 4
  store i32 %61, i32* %2, align 4
  br label %69

62:                                               ; preds = %55
  %63 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %64 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %1, %62
  %68 = call i32 @_leave(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %67, %60, %32
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @_enter(i8*, i32, i32, i32) #1

declare dso_local i32 @iov_iter_count(i32) #1

declare dso_local i32 @afs_extract_to_tmp(%struct.afs_call*) #1

declare dso_local i32 @afs_extract_data(%struct.afs_call*, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @afs_extract_discard(%struct.afs_call*, i32) #1

declare dso_local i32 @_leave(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
