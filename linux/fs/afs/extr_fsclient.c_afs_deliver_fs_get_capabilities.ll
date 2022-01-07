; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_fsclient.c_afs_deliver_fs_get_capabilities.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_fsclient.c_afs_deliver_fs_get_capabilities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_call = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"{%u,%zu}\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c" = 0 [done]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.afs_call*)* @afs_deliver_fs_get_capabilities to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afs_deliver_fs_get_capabilities(%struct.afs_call* %0) #0 {
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
  %11 = call i32 @iov_iter_count(i32* %10)
  %12 = call i32 @_enter(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %11)
  %13 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %14 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %63 [
    i32 0, label %16
    i32 1, label %23
    i32 2, label %51
  ]

16:                                               ; preds = %1
  %17 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %18 = call i32 @afs_extract_to_tmp(%struct.afs_call* %17)
  %19 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %20 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 4
  br label %23

23:                                               ; preds = %1, %16
  %24 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %25 = call i32 @afs_extract_data(%struct.afs_call* %24, i32 1)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* %5, align 4
  store i32 %29, i32* %2, align 4
  br label %65

30:                                               ; preds = %23
  %31 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %32 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ntohl(i32 %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %37 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %40 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  %41 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = mul i64 %43, 4
  %45 = trunc i64 %44 to i32
  %46 = call i32 @afs_extract_discard(%struct.afs_call* %41, i32 %45)
  %47 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %48 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %1, %30
  %52 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %53 = call i32 @afs_extract_data(%struct.afs_call* %52, i32 0)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load i32, i32* %5, align 4
  store i32 %57, i32* %2, align 4
  br label %65

58:                                               ; preds = %51
  %59 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %60 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %1, %58
  %64 = call i32 @_leave(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %63, %56, %28
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @_enter(i8*, i32, i32) #1

declare dso_local i32 @iov_iter_count(i32*) #1

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
