; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_req_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_req_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_fsf_req = type { i32, %struct.zfcp_fsf_req*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@zfcp_fsf_qtcb_cache = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfcp_fsf_req_free(%struct.zfcp_fsf_req* %0) #0 {
  %2 = alloca %struct.zfcp_fsf_req*, align 8
  store %struct.zfcp_fsf_req* %0, %struct.zfcp_fsf_req** %2, align 8
  %3 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %4 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = call i64 @likely(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %33

8:                                                ; preds = %1
  %9 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %10 = call i32 @zfcp_fsf_req_is_status_read_buffer(%struct.zfcp_fsf_req* %9)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i64 @likely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %8
  %17 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %18 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %17, i32 0, i32 1
  %19 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %18, align 8
  %20 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %21 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %20, i32 0, i32 2
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @mempool_free(%struct.zfcp_fsf_req* %19, i32 %25)
  br label %27

27:                                               ; preds = %16, %8
  %28 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %29 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %30 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @mempool_free(%struct.zfcp_fsf_req* %28, i32 %31)
  br label %50

33:                                               ; preds = %1
  %34 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %35 = call i32 @zfcp_fsf_req_is_status_read_buffer(%struct.zfcp_fsf_req* %34)
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i64 @likely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %33
  %42 = load i32, i32* @zfcp_fsf_qtcb_cache, align 4
  %43 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %44 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %43, i32 0, i32 1
  %45 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %44, align 8
  %46 = call i32 @kmem_cache_free(i32 %42, %struct.zfcp_fsf_req* %45)
  br label %47

47:                                               ; preds = %41, %33
  %48 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %49 = call i32 @kfree(%struct.zfcp_fsf_req* %48)
  br label %50

50:                                               ; preds = %47, %27
  ret void
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @zfcp_fsf_req_is_status_read_buffer(%struct.zfcp_fsf_req*) #1

declare dso_local i32 @mempool_free(%struct.zfcp_fsf_req*, i32) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.zfcp_fsf_req*) #1

declare dso_local i32 @kfree(%struct.zfcp_fsf_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
