; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_scsi.c_lpfc_enable_oas_lun.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_scsi.c_lpfc_enable_oas_lun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i32, i32 }
%struct.lpfc_name = type { i32 }
%struct.lpfc_device_data = type { i32, i32, i32, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_enable_oas_lun(%struct.lpfc_hba* %0, %struct.lpfc_name* %1, %struct.lpfc_name* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.lpfc_hba*, align 8
  %8 = alloca %struct.lpfc_name*, align 8
  %9 = alloca %struct.lpfc_name*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.lpfc_device_data*, align 8
  %13 = alloca i64, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %7, align 8
  store %struct.lpfc_name* %1, %struct.lpfc_name** %8, align 8
  store %struct.lpfc_name* %2, %struct.lpfc_name** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %14 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %15 = icmp ne %struct.lpfc_hba* %14, null
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %31, label %20

20:                                               ; preds = %5
  %21 = load %struct.lpfc_name*, %struct.lpfc_name** %8, align 8
  %22 = icmp ne %struct.lpfc_name* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %20
  %24 = load %struct.lpfc_name*, %struct.lpfc_name** %9, align 8
  %25 = icmp ne %struct.lpfc_name* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %28 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26, %23, %20, %5
  store i32 0, i32* %6, align 4
  br label %93

32:                                               ; preds = %26
  %33 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %34 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %33, i32 0, i32 0
  %35 = load i64, i64* %13, align 8
  %36 = call i32 @spin_lock_irqsave(i32* %34, i64 %35)
  %37 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %38 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %39 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %38, i32 0, i32 1
  %40 = load %struct.lpfc_name*, %struct.lpfc_name** %8, align 8
  %41 = load %struct.lpfc_name*, %struct.lpfc_name** %9, align 8
  %42 = load i32, i32* %10, align 4
  %43 = call %struct.lpfc_device_data* @__lpfc_get_device_data(%struct.lpfc_hba* %37, i32* %39, %struct.lpfc_name* %40, %struct.lpfc_name* %41, i32 %42)
  store %struct.lpfc_device_data* %43, %struct.lpfc_device_data** %12, align 8
  %44 = load %struct.lpfc_device_data*, %struct.lpfc_device_data** %12, align 8
  %45 = icmp ne %struct.lpfc_device_data* %44, null
  br i1 %45, label %46, label %62

46:                                               ; preds = %32
  %47 = load %struct.lpfc_device_data*, %struct.lpfc_device_data** %12, align 8
  %48 = getelementptr inbounds %struct.lpfc_device_data, %struct.lpfc_device_data* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %46
  %52 = load %struct.lpfc_device_data*, %struct.lpfc_device_data** %12, align 8
  %53 = getelementptr inbounds %struct.lpfc_device_data, %struct.lpfc_device_data* %52, i32 0, i32 0
  store i32 1, i32* %53, align 8
  br label %54

54:                                               ; preds = %51, %46
  %55 = load i8*, i8** %11, align 8
  %56 = load %struct.lpfc_device_data*, %struct.lpfc_device_data** %12, align 8
  %57 = getelementptr inbounds %struct.lpfc_device_data, %struct.lpfc_device_data* %56, i32 0, i32 3
  store i8* %55, i8** %57, align 8
  %58 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %59 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %58, i32 0, i32 0
  %60 = load i64, i64* %13, align 8
  %61 = call i32 @spin_unlock_irqrestore(i32* %59, i64 %60)
  store i32 1, i32* %6, align 4
  br label %93

62:                                               ; preds = %32
  %63 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %64 = load %struct.lpfc_name*, %struct.lpfc_name** %8, align 8
  %65 = load %struct.lpfc_name*, %struct.lpfc_name** %9, align 8
  %66 = load i32, i32* %10, align 4
  %67 = load i8*, i8** %11, align 8
  %68 = call %struct.lpfc_device_data* @lpfc_create_device_data(%struct.lpfc_hba* %63, %struct.lpfc_name* %64, %struct.lpfc_name* %65, i32 %66, i8* %67, i32 1)
  store %struct.lpfc_device_data* %68, %struct.lpfc_device_data** %12, align 8
  %69 = load %struct.lpfc_device_data*, %struct.lpfc_device_data** %12, align 8
  %70 = icmp ne %struct.lpfc_device_data* %69, null
  br i1 %70, label %71, label %88

71:                                               ; preds = %62
  %72 = load %struct.lpfc_device_data*, %struct.lpfc_device_data** %12, align 8
  %73 = getelementptr inbounds %struct.lpfc_device_data, %struct.lpfc_device_data* %72, i32 0, i32 0
  store i32 1, i32* %73, align 8
  %74 = load i8*, i8** %11, align 8
  %75 = load %struct.lpfc_device_data*, %struct.lpfc_device_data** %12, align 8
  %76 = getelementptr inbounds %struct.lpfc_device_data, %struct.lpfc_device_data* %75, i32 0, i32 3
  store i8* %74, i8** %76, align 8
  %77 = load %struct.lpfc_device_data*, %struct.lpfc_device_data** %12, align 8
  %78 = getelementptr inbounds %struct.lpfc_device_data, %struct.lpfc_device_data* %77, i32 0, i32 1
  store i32 0, i32* %78, align 4
  %79 = load %struct.lpfc_device_data*, %struct.lpfc_device_data** %12, align 8
  %80 = getelementptr inbounds %struct.lpfc_device_data, %struct.lpfc_device_data* %79, i32 0, i32 2
  %81 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %82 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %81, i32 0, i32 1
  %83 = call i32 @list_add_tail(i32* %80, i32* %82)
  %84 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %85 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %84, i32 0, i32 0
  %86 = load i64, i64* %13, align 8
  %87 = call i32 @spin_unlock_irqrestore(i32* %85, i64 %86)
  store i32 1, i32* %6, align 4
  br label %93

88:                                               ; preds = %62
  %89 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %90 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %89, i32 0, i32 0
  %91 = load i64, i64* %13, align 8
  %92 = call i32 @spin_unlock_irqrestore(i32* %90, i64 %91)
  store i32 0, i32* %6, align 4
  br label %93

93:                                               ; preds = %88, %71, %54, %31
  %94 = load i32, i32* %6, align 4
  ret i32 %94
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.lpfc_device_data* @__lpfc_get_device_data(%struct.lpfc_hba*, i32*, %struct.lpfc_name*, %struct.lpfc_name*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.lpfc_device_data* @lpfc_create_device_data(%struct.lpfc_hba*, %struct.lpfc_name*, %struct.lpfc_name*, i32, i8*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
