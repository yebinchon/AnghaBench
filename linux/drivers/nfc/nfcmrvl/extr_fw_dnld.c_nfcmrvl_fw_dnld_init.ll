; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/nfcmrvl/extr_fw_dnld.c_nfcmrvl_fw_dnld_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/nfcmrvl/extr_fw_dnld.c_nfcmrvl_fw_dnld_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfcmrvl_private = type { %struct.TYPE_4__, %struct.TYPE_6__* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@fw_dnld_rx_work = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"%s_nfcmrvl_fw_dnld_rx_wq\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfcmrvl_fw_dnld_init(%struct.nfcmrvl_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfcmrvl_private*, align 8
  %4 = alloca [32 x i8], align 16
  store %struct.nfcmrvl_private* %0, %struct.nfcmrvl_private** %3, align 8
  %5 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %3, align 8
  %6 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 2
  %8 = load i32, i32* @fw_dnld_rx_work, align 4
  %9 = call i32 @INIT_WORK(i32* %7, i32 %8)
  %10 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %11 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %3, align 8
  %12 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %11, i32 0, i32 1
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = call i8* @dev_name(i32* %16)
  %18 = call i32 @snprintf(i8* %10, i32 32, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %17)
  %19 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %20 = call i32 @create_singlethread_workqueue(i8* %19)
  %21 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %3, align 8
  %22 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  store i32 %20, i32* %23, align 4
  %24 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %3, align 8
  %25 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %1
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %37

32:                                               ; preds = %1
  %33 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %3, align 8
  %34 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = call i32 @skb_queue_head_init(i32* %35)
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %32, %29
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i8* @dev_name(i32*) #1

declare dso_local i32 @create_singlethread_workqueue(i8*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
