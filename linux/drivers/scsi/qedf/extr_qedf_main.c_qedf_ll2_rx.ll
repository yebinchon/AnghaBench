; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_main.c_qedf_ll2_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_main.c_qedf_ll2_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.qedf_ctx = type { i32, i32, i32 }
%struct.qedf_skb_work = type { i32, %struct.qedf_ctx*, %struct.sk_buff* }

@QEDF_LINK_DOWN = common dso_local global i64 0, align 8
@QEDF_LOG_LL2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Dropping frame as link state is down.\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Could not allocate skb_work so dropping frame.\0A\00", align 1
@qedf_ll2_process_skb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.sk_buff*, i32, i32)* @qedf_ll2_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qedf_ll2_rx(i8* %0, %struct.sk_buff* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.qedf_ctx*, align 8
  %11 = alloca %struct.qedf_skb_work*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.qedf_ctx*
  store %struct.qedf_ctx* %13, %struct.qedf_ctx** %10, align 8
  %14 = load %struct.qedf_ctx*, %struct.qedf_ctx** %10, align 8
  %15 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %14, i32 0, i32 2
  %16 = call i64 @atomic_read(i32* %15)
  %17 = load i64, i64* @QEDF_LINK_DOWN, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %4
  %20 = load %struct.qedf_ctx*, %struct.qedf_ctx** %10, align 8
  %21 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %20, i32 0, i32 1
  %22 = load i32, i32* @QEDF_LOG_LL2, align 4
  %23 = call i32 @QEDF_INFO(i32* %21, i32 %22, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %25 = call i32 @kfree_skb(%struct.sk_buff* %24)
  store i32 0, i32* %5, align 4
  br label %54

26:                                               ; preds = %4
  %27 = load i32, i32* @GFP_ATOMIC, align 4
  %28 = call %struct.qedf_skb_work* @kzalloc(i32 24, i32 %27)
  store %struct.qedf_skb_work* %28, %struct.qedf_skb_work** %11, align 8
  %29 = load %struct.qedf_skb_work*, %struct.qedf_skb_work** %11, align 8
  %30 = icmp ne %struct.qedf_skb_work* %29, null
  br i1 %30, label %37, label %31

31:                                               ; preds = %26
  %32 = load %struct.qedf_ctx*, %struct.qedf_ctx** %10, align 8
  %33 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %32, i32 0, i32 1
  %34 = call i32 @QEDF_WARN(i32* %33, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %35 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %36 = call i32 @kfree_skb(%struct.sk_buff* %35)
  store i32 0, i32* %5, align 4
  br label %54

37:                                               ; preds = %26
  %38 = load %struct.qedf_skb_work*, %struct.qedf_skb_work** %11, align 8
  %39 = getelementptr inbounds %struct.qedf_skb_work, %struct.qedf_skb_work* %38, i32 0, i32 0
  %40 = load i32, i32* @qedf_ll2_process_skb, align 4
  %41 = call i32 @INIT_WORK(i32* %39, i32 %40)
  %42 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %43 = load %struct.qedf_skb_work*, %struct.qedf_skb_work** %11, align 8
  %44 = getelementptr inbounds %struct.qedf_skb_work, %struct.qedf_skb_work* %43, i32 0, i32 2
  store %struct.sk_buff* %42, %struct.sk_buff** %44, align 8
  %45 = load %struct.qedf_ctx*, %struct.qedf_ctx** %10, align 8
  %46 = load %struct.qedf_skb_work*, %struct.qedf_skb_work** %11, align 8
  %47 = getelementptr inbounds %struct.qedf_skb_work, %struct.qedf_skb_work* %46, i32 0, i32 1
  store %struct.qedf_ctx* %45, %struct.qedf_ctx** %47, align 8
  %48 = load %struct.qedf_ctx*, %struct.qedf_ctx** %10, align 8
  %49 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.qedf_skb_work*, %struct.qedf_skb_work** %11, align 8
  %52 = getelementptr inbounds %struct.qedf_skb_work, %struct.qedf_skb_work* %51, i32 0, i32 0
  %53 = call i32 @queue_work(i32 %50, i32* %52)
  store i32 0, i32* %5, align 4
  br label %54

54:                                               ; preds = %37, %31, %19
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @QEDF_INFO(i32*, i32, i8*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local %struct.qedf_skb_work* @kzalloc(i32, i32) #1

declare dso_local i32 @QEDF_WARN(i32*, i8*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
