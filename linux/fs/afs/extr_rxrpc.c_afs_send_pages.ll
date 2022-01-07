; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_rxrpc.c_afs_send_pages.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_rxrpc.c_afs_send_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_call = type { i64, i64, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.msghdr = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.bio_vec = type { i32 }

@AFS_BVEC_MAX = common dso_local global i32 0, align 4
@afs_notify_end_request_tx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.afs_call*, %struct.msghdr*)* @afs_send_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afs_send_pages(%struct.afs_call* %0, %struct.msghdr* %1) #0 {
  %3 = alloca %struct.afs_call*, align 8
  %4 = alloca %struct.msghdr*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.afs_call* %0, %struct.afs_call** %3, align 8
  store %struct.msghdr* %1, %struct.msghdr** %4, align 8
  %14 = load i32, i32* @AFS_BVEC_MAX, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %5, align 8
  %17 = alloca %struct.bio_vec, i64 %15, align 16
  store i64 %15, i64* %6, align 8
  %18 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %19 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %11, align 8
  %21 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %22 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %12, align 8
  %24 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %25 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %10, align 4
  %27 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %28 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %27, i32 0, i32 2
  store i32 0, i32* %28, align 8
  br label %29

29:                                               ; preds = %85, %2
  %30 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %31 = load %struct.msghdr*, %struct.msghdr** %4, align 8
  %32 = load i64, i64* %11, align 8
  %33 = load i64, i64* %12, align 8
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @afs_load_bvec(%struct.afs_call* %30, %struct.msghdr* %31, %struct.bio_vec* %17, i64 %32, i64 %33, i32 %34)
  %36 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %37 = load %struct.msghdr*, %struct.msghdr** %4, align 8
  %38 = load i64, i64* %11, align 8
  %39 = load i64, i64* %12, align 8
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @trace_afs_send_pages(%struct.afs_call* %36, %struct.msghdr* %37, i64 %38, i64 %39, i32 %40)
  store i32 0, i32* %10, align 4
  %42 = load %struct.msghdr*, %struct.msghdr** %4, align 8
  %43 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %7, align 4
  %46 = load %struct.msghdr*, %struct.msghdr** %4, align 8
  %47 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %8, align 4
  %50 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %51 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %50, i32 0, i32 4
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %56 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.msghdr*, %struct.msghdr** %4, align 8
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @afs_notify_end_request_tx, align 4
  %61 = call i32 @rxrpc_kernel_send_data(i32 %54, i32 %57, %struct.msghdr* %58, i32 %59, i32 %60)
  store i32 %61, i32* %13, align 4
  store i32 0, i32* %9, align 4
  br label %62

62:                                               ; preds = %73, %29
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp ult i32 %63, %64
  br i1 %65, label %66, label %76

66:                                               ; preds = %62
  %67 = load i32, i32* %9, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %17, i64 %68
  %70 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @put_page(i32 %71)
  br label %73

73:                                               ; preds = %66
  %74 = load i32, i32* %9, align 4
  %75 = add i32 %74, 1
  store i32 %75, i32* %9, align 4
  br label %62

76:                                               ; preds = %62
  %77 = load i32, i32* %13, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  br label %89

80:                                               ; preds = %76
  %81 = load i32, i32* %8, align 4
  %82 = zext i32 %81 to i64
  %83 = load i64, i64* %11, align 8
  %84 = add nsw i64 %83, %82
  store i64 %84, i64* %11, align 8
  br label %85

85:                                               ; preds = %80
  %86 = load i64, i64* %11, align 8
  %87 = load i64, i64* %12, align 8
  %88 = icmp sle i64 %86, %87
  br i1 %88, label %29, label %89

89:                                               ; preds = %85, %79
  %90 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %91 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %92 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* %12, align 8
  %95 = load i64, i64* %11, align 8
  %96 = load i32, i32* %13, align 4
  %97 = call i32 @trace_afs_sent_pages(%struct.afs_call* %90, i64 %93, i64 %94, i64 %95, i32 %96)
  %98 = load i32, i32* %13, align 4
  %99 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %99)
  ret i32 %98
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @afs_load_bvec(%struct.afs_call*, %struct.msghdr*, %struct.bio_vec*, i64, i64, i32) #2

declare dso_local i32 @trace_afs_send_pages(%struct.afs_call*, %struct.msghdr*, i64, i64, i32) #2

declare dso_local i32 @rxrpc_kernel_send_data(i32, i32, %struct.msghdr*, i32, i32) #2

declare dso_local i32 @put_page(i32) #2

declare dso_local i32 @trace_afs_sent_pages(%struct.afs_call*, i64, i64, i64, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
