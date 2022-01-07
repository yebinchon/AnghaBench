; ModuleID = '/home/carl/AnghaBench/linux/drivers/rapidio/extr_rio_cm.c_riocm_queue_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rapidio/extr_rio_cm.c_riocm_queue_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cm_dev = type { i32, i32 }
%struct.rio_dev = type { i32 }
%struct.tx_req = type { i64, i32, i8*, %struct.rio_dev* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cm_dev*, %struct.rio_dev*, i8*, i64)* @riocm_queue_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @riocm_queue_req(%struct.cm_dev* %0, %struct.rio_dev* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cm_dev*, align 8
  %7 = alloca %struct.rio_dev*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.tx_req*, align 8
  store %struct.cm_dev* %0, %struct.cm_dev** %6, align 8
  store %struct.rio_dev* %1, %struct.rio_dev** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.tx_req* @kzalloc(i32 32, i32 %12)
  store %struct.tx_req* %13, %struct.tx_req** %11, align 8
  %14 = load %struct.tx_req*, %struct.tx_req** %11, align 8
  %15 = icmp eq %struct.tx_req* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %42

19:                                               ; preds = %4
  %20 = load %struct.rio_dev*, %struct.rio_dev** %7, align 8
  %21 = load %struct.tx_req*, %struct.tx_req** %11, align 8
  %22 = getelementptr inbounds %struct.tx_req, %struct.tx_req* %21, i32 0, i32 3
  store %struct.rio_dev* %20, %struct.rio_dev** %22, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = load %struct.tx_req*, %struct.tx_req** %11, align 8
  %25 = getelementptr inbounds %struct.tx_req, %struct.tx_req* %24, i32 0, i32 2
  store i8* %23, i8** %25, align 8
  %26 = load i64, i64* %9, align 8
  %27 = load %struct.tx_req*, %struct.tx_req** %11, align 8
  %28 = getelementptr inbounds %struct.tx_req, %struct.tx_req* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load %struct.cm_dev*, %struct.cm_dev** %6, align 8
  %30 = getelementptr inbounds %struct.cm_dev, %struct.cm_dev* %29, i32 0, i32 0
  %31 = load i64, i64* %10, align 8
  %32 = call i32 @spin_lock_irqsave(i32* %30, i64 %31)
  %33 = load %struct.tx_req*, %struct.tx_req** %11, align 8
  %34 = getelementptr inbounds %struct.tx_req, %struct.tx_req* %33, i32 0, i32 1
  %35 = load %struct.cm_dev*, %struct.cm_dev** %6, align 8
  %36 = getelementptr inbounds %struct.cm_dev, %struct.cm_dev* %35, i32 0, i32 1
  %37 = call i32 @list_add_tail(i32* %34, i32* %36)
  %38 = load %struct.cm_dev*, %struct.cm_dev** %6, align 8
  %39 = getelementptr inbounds %struct.cm_dev, %struct.cm_dev* %38, i32 0, i32 0
  %40 = load i64, i64* %10, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* %39, i64 %40)
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %19, %16
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local %struct.tx_req* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
