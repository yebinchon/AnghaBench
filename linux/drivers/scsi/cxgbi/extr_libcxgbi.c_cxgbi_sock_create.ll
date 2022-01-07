; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/cxgbi/extr_libcxgbi.c_cxgbi_sock_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/cxgbi/extr_libcxgbi.c_cxgbi_sock_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbi_sock = type { i64, %struct.cxgbi_device*, i32, i32, i32, i32, i32, i32, i32 }
%struct.cxgbi_device = type { i64 (%struct.cxgbi_sock*)* }

@GFP_NOIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"alloc csk %zu failed.\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"csk 0x%p, alloc cpls failed.\0A\00", align 1
@CTP_CLOSED = common dso_local global i32 0, align 4
@CXGBI_DBG_SOCK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"cdev 0x%p, new csk 0x%p.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cxgbi_sock* (%struct.cxgbi_device*)* @cxgbi_sock_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cxgbi_sock* @cxgbi_sock_create(%struct.cxgbi_device* %0) #0 {
  %2 = alloca %struct.cxgbi_sock*, align 8
  %3 = alloca %struct.cxgbi_device*, align 8
  %4 = alloca %struct.cxgbi_sock*, align 8
  store %struct.cxgbi_device* %0, %struct.cxgbi_device** %3, align 8
  %5 = load i32, i32* @GFP_NOIO, align 4
  %6 = call %struct.cxgbi_sock* @kzalloc(i32 48, i32 %5)
  store %struct.cxgbi_sock* %6, %struct.cxgbi_sock** %4, align 8
  %7 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %4, align 8
  %8 = icmp ne %struct.cxgbi_sock* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 48)
  store %struct.cxgbi_sock* null, %struct.cxgbi_sock** %2, align 8
  br label %59

11:                                               ; preds = %1
  %12 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %13 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %12, i32 0, i32 0
  %14 = load i64 (%struct.cxgbi_sock*)*, i64 (%struct.cxgbi_sock*)** %13, align 8
  %15 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %4, align 8
  %16 = call i64 %14(%struct.cxgbi_sock* %15)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %11
  %19 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %4, align 8
  %20 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), %struct.cxgbi_sock* %19)
  %21 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %4, align 8
  %22 = call i32 @kfree(%struct.cxgbi_sock* %21)
  store %struct.cxgbi_sock* null, %struct.cxgbi_sock** %2, align 8
  br label %59

23:                                               ; preds = %11
  %24 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %4, align 8
  %25 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %24, i32 0, i32 8
  %26 = call i32 @spin_lock_init(i32* %25)
  %27 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %4, align 8
  %28 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %27, i32 0, i32 7
  %29 = call i32 @kref_init(i32* %28)
  %30 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %4, align 8
  %31 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %30, i32 0, i32 6
  %32 = call i32 @skb_queue_head_init(i32* %31)
  %33 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %4, align 8
  %34 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %33, i32 0, i32 5
  %35 = call i32 @skb_queue_head_init(i32* %34)
  %36 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %4, align 8
  %37 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %36, i32 0, i32 4
  %38 = call i32 @timer_setup(i32* %37, i32* null, i32 0)
  %39 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %4, align 8
  %40 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %39, i32 0, i32 3
  %41 = call i32 @init_completion(i32* %40)
  %42 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %4, align 8
  %43 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %42, i32 0, i32 2
  %44 = call i32 @rwlock_init(i32* %43)
  %45 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %46 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %4, align 8
  %47 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %46, i32 0, i32 1
  store %struct.cxgbi_device* %45, %struct.cxgbi_device** %47, align 8
  %48 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %4, align 8
  %49 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %48, i32 0, i32 0
  store i64 0, i64* %49, align 8
  %50 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %4, align 8
  %51 = load i32, i32* @CTP_CLOSED, align 4
  %52 = call i32 @cxgbi_sock_set_state(%struct.cxgbi_sock* %50, i32 %51)
  %53 = load i32, i32* @CXGBI_DBG_SOCK, align 4
  %54 = shl i32 1, %53
  %55 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %56 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %4, align 8
  %57 = call i32 @log_debug(i32 %54, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), %struct.cxgbi_device* %55, %struct.cxgbi_sock* %56)
  %58 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %4, align 8
  store %struct.cxgbi_sock* %58, %struct.cxgbi_sock** %2, align 8
  br label %59

59:                                               ; preds = %23, %18, %9
  %60 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  ret %struct.cxgbi_sock* %60
}

declare dso_local %struct.cxgbi_sock* @kzalloc(i32, i32) #1

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32 @kfree(%struct.cxgbi_sock*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32*, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @rwlock_init(i32*) #1

declare dso_local i32 @cxgbi_sock_set_state(%struct.cxgbi_sock*, i32) #1

declare dso_local i32 @log_debug(i32, i8*, %struct.cxgbi_device*, %struct.cxgbi_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
