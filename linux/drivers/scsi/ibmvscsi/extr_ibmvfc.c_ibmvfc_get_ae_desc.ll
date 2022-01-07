; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_get_ae_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_get_ae_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvfc_async_desc = type { i64 }

@ae_desc = common dso_local global %struct.ibmvfc_async_desc* null, align 8
@unknown_ae = common dso_local global %struct.ibmvfc_async_desc zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ibmvfc_async_desc* (i64)* @ibmvfc_get_ae_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ibmvfc_async_desc* @ibmvfc_get_ae_desc(i64 %0) #0 {
  %2 = alloca %struct.ibmvfc_async_desc*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %25, %1
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.ibmvfc_async_desc*, %struct.ibmvfc_async_desc** @ae_desc, align 8
  %8 = call i32 @ARRAY_SIZE(%struct.ibmvfc_async_desc* %7)
  %9 = icmp slt i32 %6, %8
  br i1 %9, label %10, label %28

10:                                               ; preds = %5
  %11 = load %struct.ibmvfc_async_desc*, %struct.ibmvfc_async_desc** @ae_desc, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.ibmvfc_async_desc, %struct.ibmvfc_async_desc* %11, i64 %13
  %15 = getelementptr inbounds %struct.ibmvfc_async_desc, %struct.ibmvfc_async_desc* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %3, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %10
  %20 = load %struct.ibmvfc_async_desc*, %struct.ibmvfc_async_desc** @ae_desc, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.ibmvfc_async_desc, %struct.ibmvfc_async_desc* %20, i64 %22
  store %struct.ibmvfc_async_desc* %23, %struct.ibmvfc_async_desc** %2, align 8
  br label %29

24:                                               ; preds = %10
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %4, align 4
  br label %5

28:                                               ; preds = %5
  store %struct.ibmvfc_async_desc* @unknown_ae, %struct.ibmvfc_async_desc** %2, align 8
  br label %29

29:                                               ; preds = %28, %19
  %30 = load %struct.ibmvfc_async_desc*, %struct.ibmvfc_async_desc** %2, align 8
  ret %struct.ibmvfc_async_desc* %30
}

declare dso_local i32 @ARRAY_SIZE(%struct.ibmvfc_async_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
