; ModuleID = '/home/carl/AnghaBench/linux/drivers/vhost/extr_vsock.c_vhost_vsock_set_cid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vhost/extr_vsock.c_vhost_vsock_set_cid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhost_vsock = type { i64, i32 }

@VMADDR_CID_HOST = common dso_local global i64 0, align 8
@U32_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@vhost_vsock_mutex = common dso_local global i32 0, align 4
@EADDRINUSE = common dso_local global i32 0, align 4
@vhost_vsock_hash = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vhost_vsock*, i64)* @vhost_vsock_set_cid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vhost_vsock_set_cid(%struct.vhost_vsock* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vhost_vsock*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.vhost_vsock*, align 8
  store %struct.vhost_vsock* %0, %struct.vhost_vsock** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = load i64, i64* @VMADDR_CID_HOST, align 8
  %9 = icmp sle i64 %7, %8
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* @U32_MAX, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %10, %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %59

17:                                               ; preds = %10
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* @U32_MAX, align 8
  %20 = icmp sgt i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %59

24:                                               ; preds = %17
  %25 = call i32 @mutex_lock(i32* @vhost_vsock_mutex)
  %26 = load i64, i64* %5, align 8
  %27 = call %struct.vhost_vsock* @vhost_vsock_get(i64 %26)
  store %struct.vhost_vsock* %27, %struct.vhost_vsock** %6, align 8
  %28 = load %struct.vhost_vsock*, %struct.vhost_vsock** %6, align 8
  %29 = icmp ne %struct.vhost_vsock* %28, null
  br i1 %29, label %30, label %38

30:                                               ; preds = %24
  %31 = load %struct.vhost_vsock*, %struct.vhost_vsock** %6, align 8
  %32 = load %struct.vhost_vsock*, %struct.vhost_vsock** %4, align 8
  %33 = icmp ne %struct.vhost_vsock* %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = call i32 @mutex_unlock(i32* @vhost_vsock_mutex)
  %36 = load i32, i32* @EADDRINUSE, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %59

38:                                               ; preds = %30, %24
  %39 = load %struct.vhost_vsock*, %struct.vhost_vsock** %4, align 8
  %40 = getelementptr inbounds %struct.vhost_vsock, %struct.vhost_vsock* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load %struct.vhost_vsock*, %struct.vhost_vsock** %4, align 8
  %45 = getelementptr inbounds %struct.vhost_vsock, %struct.vhost_vsock* %44, i32 0, i32 1
  %46 = call i32 @hash_del_rcu(i32* %45)
  br label %47

47:                                               ; preds = %43, %38
  %48 = load i64, i64* %5, align 8
  %49 = load %struct.vhost_vsock*, %struct.vhost_vsock** %4, align 8
  %50 = getelementptr inbounds %struct.vhost_vsock, %struct.vhost_vsock* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  %51 = load i32, i32* @vhost_vsock_hash, align 4
  %52 = load %struct.vhost_vsock*, %struct.vhost_vsock** %4, align 8
  %53 = getelementptr inbounds %struct.vhost_vsock, %struct.vhost_vsock* %52, i32 0, i32 1
  %54 = load %struct.vhost_vsock*, %struct.vhost_vsock** %4, align 8
  %55 = getelementptr inbounds %struct.vhost_vsock, %struct.vhost_vsock* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @hash_add_rcu(i32 %51, i32* %53, i64 %56)
  %58 = call i32 @mutex_unlock(i32* @vhost_vsock_mutex)
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %47, %34, %21, %14
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.vhost_vsock* @vhost_vsock_get(i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @hash_del_rcu(i32*) #1

declare dso_local i32 @hash_add_rcu(i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
