; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_scsi.c_lpfc_create_device_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_scsi.c_lpfc_create_device_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_device_data = type { i32, i32, i32, %struct.TYPE_2__, i32*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.lpfc_hba = type { i32, i32 }
%struct.lpfc_name = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.lpfc_device_data* @lpfc_create_device_data(%struct.lpfc_hba* %0, %struct.lpfc_name* %1, %struct.lpfc_name* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.lpfc_device_data*, align 8
  %8 = alloca %struct.lpfc_hba*, align 8
  %9 = alloca %struct.lpfc_name*, align 8
  %10 = alloca %struct.lpfc_name*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.lpfc_device_data*, align 8
  %15 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %8, align 8
  store %struct.lpfc_name* %1, %struct.lpfc_name** %9, align 8
  store %struct.lpfc_name* %2, %struct.lpfc_name** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %17 = icmp ne %struct.lpfc_hba* %16, null
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %33, label %22

22:                                               ; preds = %6
  %23 = load %struct.lpfc_name*, %struct.lpfc_name** %9, align 8
  %24 = icmp ne %struct.lpfc_name* %23, null
  br i1 %24, label %25, label %33

25:                                               ; preds = %22
  %26 = load %struct.lpfc_name*, %struct.lpfc_name** %10, align 8
  %27 = icmp ne %struct.lpfc_name* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %30 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %28, %25, %22, %6
  store %struct.lpfc_device_data* null, %struct.lpfc_device_data** %7, align 8
  br label %78

34:                                               ; preds = %28
  %35 = load i32, i32* %13, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32, i32* @GFP_ATOMIC, align 4
  store i32 %38, i32* %15, align 4
  br label %41

39:                                               ; preds = %34
  %40 = load i32, i32* @GFP_KERNEL, align 4
  store i32 %40, i32* %15, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %43 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %15, align 4
  %46 = call %struct.lpfc_device_data* @mempool_alloc(i32 %44, i32 %45)
  store %struct.lpfc_device_data* %46, %struct.lpfc_device_data** %14, align 8
  %47 = load %struct.lpfc_device_data*, %struct.lpfc_device_data** %14, align 8
  %48 = icmp ne %struct.lpfc_device_data* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %41
  store %struct.lpfc_device_data* null, %struct.lpfc_device_data** %7, align 8
  br label %78

50:                                               ; preds = %41
  %51 = load %struct.lpfc_device_data*, %struct.lpfc_device_data** %14, align 8
  %52 = getelementptr inbounds %struct.lpfc_device_data, %struct.lpfc_device_data* %51, i32 0, i32 5
  %53 = call i32 @INIT_LIST_HEAD(i32* %52)
  %54 = load %struct.lpfc_device_data*, %struct.lpfc_device_data** %14, align 8
  %55 = getelementptr inbounds %struct.lpfc_device_data, %struct.lpfc_device_data* %54, i32 0, i32 4
  store i32* null, i32** %55, align 8
  %56 = load %struct.lpfc_device_data*, %struct.lpfc_device_data** %14, align 8
  %57 = getelementptr inbounds %struct.lpfc_device_data, %struct.lpfc_device_data* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  %59 = load %struct.lpfc_name*, %struct.lpfc_name** %9, align 8
  %60 = call i32 @memcpy(i32* %58, %struct.lpfc_name* %59, i32 4)
  %61 = load %struct.lpfc_device_data*, %struct.lpfc_device_data** %14, align 8
  %62 = getelementptr inbounds %struct.lpfc_device_data, %struct.lpfc_device_data* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load %struct.lpfc_name*, %struct.lpfc_name** %10, align 8
  %65 = call i32 @memcpy(i32* %63, %struct.lpfc_name* %64, i32 4)
  %66 = load i32, i32* %11, align 4
  %67 = load %struct.lpfc_device_data*, %struct.lpfc_device_data** %14, align 8
  %68 = getelementptr inbounds %struct.lpfc_device_data, %struct.lpfc_device_data* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  store i32 %66, i32* %69, align 4
  %70 = load %struct.lpfc_device_data*, %struct.lpfc_device_data** %14, align 8
  %71 = getelementptr inbounds %struct.lpfc_device_data, %struct.lpfc_device_data* %70, i32 0, i32 0
  store i32 0, i32* %71, align 8
  %72 = load i32, i32* %12, align 4
  %73 = load %struct.lpfc_device_data*, %struct.lpfc_device_data** %14, align 8
  %74 = getelementptr inbounds %struct.lpfc_device_data, %struct.lpfc_device_data* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  %75 = load %struct.lpfc_device_data*, %struct.lpfc_device_data** %14, align 8
  %76 = getelementptr inbounds %struct.lpfc_device_data, %struct.lpfc_device_data* %75, i32 0, i32 1
  store i32 0, i32* %76, align 4
  %77 = load %struct.lpfc_device_data*, %struct.lpfc_device_data** %14, align 8
  store %struct.lpfc_device_data* %77, %struct.lpfc_device_data** %7, align 8
  br label %78

78:                                               ; preds = %50, %49, %33
  %79 = load %struct.lpfc_device_data*, %struct.lpfc_device_data** %7, align 8
  ret %struct.lpfc_device_data* %79
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.lpfc_device_data* @mempool_alloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @memcpy(i32*, %struct.lpfc_name*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
