; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_reqlist.h_zfcp_reqlist_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_reqlist.h_zfcp_reqlist_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_reqlist = type { i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ZFCP_REQ_LIST_BUCKETS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.zfcp_reqlist* ()* @zfcp_reqlist_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.zfcp_reqlist* @zfcp_reqlist_alloc() #0 {
  %1 = alloca %struct.zfcp_reqlist*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.zfcp_reqlist*, align 8
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = call %struct.zfcp_reqlist* @kzalloc(i32 16, i32 %4)
  store %struct.zfcp_reqlist* %5, %struct.zfcp_reqlist** %3, align 8
  %6 = load %struct.zfcp_reqlist*, %struct.zfcp_reqlist** %3, align 8
  %7 = icmp ne %struct.zfcp_reqlist* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  store %struct.zfcp_reqlist* null, %struct.zfcp_reqlist** %1, align 8
  br label %30

9:                                                ; preds = %0
  %10 = load %struct.zfcp_reqlist*, %struct.zfcp_reqlist** %3, align 8
  %11 = getelementptr inbounds %struct.zfcp_reqlist, %struct.zfcp_reqlist* %10, i32 0, i32 1
  %12 = call i32 @spin_lock_init(i32* %11)
  store i32 0, i32* %2, align 4
  br label %13

13:                                               ; preds = %25, %9
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @ZFCP_REQ_LIST_BUCKETS, align 4
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %17, label %28

17:                                               ; preds = %13
  %18 = load %struct.zfcp_reqlist*, %struct.zfcp_reqlist** %3, align 8
  %19 = getelementptr inbounds %struct.zfcp_reqlist, %struct.zfcp_reqlist* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %2, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = call i32 @INIT_LIST_HEAD(i32* %23)
  br label %25

25:                                               ; preds = %17
  %26 = load i32, i32* %2, align 4
  %27 = add i32 %26, 1
  store i32 %27, i32* %2, align 4
  br label %13

28:                                               ; preds = %13
  %29 = load %struct.zfcp_reqlist*, %struct.zfcp_reqlist** %3, align 8
  store %struct.zfcp_reqlist* %29, %struct.zfcp_reqlist** %1, align 8
  br label %30

30:                                               ; preds = %28, %8
  %31 = load %struct.zfcp_reqlist*, %struct.zfcp_reqlist** %1, align 8
  ret %struct.zfcp_reqlist* %31
}

declare dso_local %struct.zfcp_reqlist* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
