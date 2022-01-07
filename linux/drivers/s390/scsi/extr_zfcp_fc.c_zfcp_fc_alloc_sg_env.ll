; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fc.c_zfcp_fc_alloc_sg_env.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fc.c_zfcp_fc_alloc_sg_env.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_fc_req = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@zfcp_fc_req_cache = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.zfcp_fc_req* (i32)* @zfcp_fc_alloc_sg_env to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.zfcp_fc_req* @zfcp_fc_alloc_sg_env(i32 %0) #0 {
  %2 = alloca %struct.zfcp_fc_req*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.zfcp_fc_req*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* @zfcp_fc_req_cache, align 4
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.zfcp_fc_req* @kmem_cache_zalloc(i32 %5, i32 %6)
  store %struct.zfcp_fc_req* %7, %struct.zfcp_fc_req** %4, align 8
  %8 = load %struct.zfcp_fc_req*, %struct.zfcp_fc_req** %4, align 8
  %9 = icmp ne %struct.zfcp_fc_req* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.zfcp_fc_req* null, %struct.zfcp_fc_req** %2, align 8
  br label %30

11:                                               ; preds = %1
  %12 = load %struct.zfcp_fc_req*, %struct.zfcp_fc_req** %4, align 8
  %13 = getelementptr inbounds %struct.zfcp_fc_req, %struct.zfcp_fc_req* %12, i32 0, i32 2
  %14 = load i32, i32* %3, align 4
  %15 = call i64 @zfcp_fc_sg_setup_table(i32* %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %11
  %18 = load i32, i32* @zfcp_fc_req_cache, align 4
  %19 = load %struct.zfcp_fc_req*, %struct.zfcp_fc_req** %4, align 8
  %20 = call i32 @kmem_cache_free(i32 %18, %struct.zfcp_fc_req* %19)
  store %struct.zfcp_fc_req* null, %struct.zfcp_fc_req** %2, align 8
  br label %30

21:                                               ; preds = %11
  %22 = load %struct.zfcp_fc_req*, %struct.zfcp_fc_req** %4, align 8
  %23 = getelementptr inbounds %struct.zfcp_fc_req, %struct.zfcp_fc_req* %22, i32 0, i32 1
  %24 = load %struct.zfcp_fc_req*, %struct.zfcp_fc_req** %4, align 8
  %25 = getelementptr inbounds %struct.zfcp_fc_req, %struct.zfcp_fc_req* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = call i32 @sg_init_one(i32* %23, i32* %27, i32 4)
  %29 = load %struct.zfcp_fc_req*, %struct.zfcp_fc_req** %4, align 8
  store %struct.zfcp_fc_req* %29, %struct.zfcp_fc_req** %2, align 8
  br label %30

30:                                               ; preds = %21, %17, %10
  %31 = load %struct.zfcp_fc_req*, %struct.zfcp_fc_req** %2, align 8
  ret %struct.zfcp_fc_req* %31
}

declare dso_local %struct.zfcp_fc_req* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i64 @zfcp_fc_sg_setup_table(i32*, i32) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.zfcp_fc_req*) #1

declare dso_local i32 @sg_init_one(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
