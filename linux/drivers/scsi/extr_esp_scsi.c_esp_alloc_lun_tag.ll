; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_esp_scsi.c_esp_alloc_lun_tag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_esp_scsi.c_esp_alloc_lun_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esp_cmd_entry = type { i64* }
%struct.esp_lun_data = type { i32, i64, %struct.esp_cmd_entry**, %struct.esp_cmd_entry* }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.esp_cmd_entry*, %struct.esp_lun_data*)* @esp_alloc_lun_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esp_alloc_lun_tag(%struct.esp_cmd_entry* %0, %struct.esp_lun_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.esp_cmd_entry*, align 8
  %5 = alloca %struct.esp_lun_data*, align 8
  store %struct.esp_cmd_entry* %0, %struct.esp_cmd_entry** %4, align 8
  store %struct.esp_lun_data* %1, %struct.esp_lun_data** %5, align 8
  %6 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %4, align 8
  %7 = getelementptr inbounds %struct.esp_cmd_entry, %struct.esp_cmd_entry* %6, i32 0, i32 0
  %8 = load i64*, i64** %7, align 8
  %9 = getelementptr inbounds i64, i64* %8, i64 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %51, label %12

12:                                               ; preds = %2
  %13 = load %struct.esp_lun_data*, %struct.esp_lun_data** %5, align 8
  %14 = getelementptr inbounds %struct.esp_lun_data, %struct.esp_lun_data* %13, i32 0, i32 3
  %15 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %14, align 8
  %16 = icmp ne %struct.esp_cmd_entry* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load i32, i32* @EBUSY, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %90

20:                                               ; preds = %12
  %21 = load %struct.esp_lun_data*, %struct.esp_lun_data** %5, align 8
  %22 = getelementptr inbounds %struct.esp_lun_data, %struct.esp_lun_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %20
  %26 = load %struct.esp_lun_data*, %struct.esp_lun_data** %5, align 8
  %27 = getelementptr inbounds %struct.esp_lun_data, %struct.esp_lun_data* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* @EBUSY, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %90

33:                                               ; preds = %25
  %34 = load %struct.esp_lun_data*, %struct.esp_lun_data** %5, align 8
  %35 = getelementptr inbounds %struct.esp_lun_data, %struct.esp_lun_data* %34, i32 0, i32 0
  store i32 0, i32* %35, align 8
  br label %47

36:                                               ; preds = %20
  %37 = load %struct.esp_lun_data*, %struct.esp_lun_data** %5, align 8
  %38 = getelementptr inbounds %struct.esp_lun_data, %struct.esp_lun_data* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load %struct.esp_lun_data*, %struct.esp_lun_data** %5, align 8
  %43 = getelementptr inbounds %struct.esp_lun_data, %struct.esp_lun_data* %42, i32 0, i32 0
  store i32 1, i32* %43, align 8
  %44 = load i32, i32* @EBUSY, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %90

46:                                               ; preds = %36
  br label %47

47:                                               ; preds = %46, %33
  %48 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %4, align 8
  %49 = load %struct.esp_lun_data*, %struct.esp_lun_data** %5, align 8
  %50 = getelementptr inbounds %struct.esp_lun_data, %struct.esp_lun_data* %49, i32 0, i32 3
  store %struct.esp_cmd_entry* %48, %struct.esp_cmd_entry** %50, align 8
  store i32 0, i32* %3, align 4
  br label %90

51:                                               ; preds = %2
  %52 = load %struct.esp_lun_data*, %struct.esp_lun_data** %5, align 8
  %53 = getelementptr inbounds %struct.esp_lun_data, %struct.esp_lun_data* %52, i32 0, i32 3
  %54 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %53, align 8
  %55 = icmp ne %struct.esp_cmd_entry* %54, null
  br i1 %55, label %61, label %56

56:                                               ; preds = %51
  %57 = load %struct.esp_lun_data*, %struct.esp_lun_data** %5, align 8
  %58 = getelementptr inbounds %struct.esp_lun_data, %struct.esp_lun_data* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56, %51
  %62 = load i32, i32* @EBUSY, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %90

64:                                               ; preds = %56
  %65 = load %struct.esp_lun_data*, %struct.esp_lun_data** %5, align 8
  %66 = getelementptr inbounds %struct.esp_lun_data, %struct.esp_lun_data* %65, i32 0, i32 2
  %67 = load %struct.esp_cmd_entry**, %struct.esp_cmd_entry*** %66, align 8
  %68 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %4, align 8
  %69 = getelementptr inbounds %struct.esp_cmd_entry, %struct.esp_cmd_entry* %68, i32 0, i32 0
  %70 = load i64*, i64** %69, align 8
  %71 = getelementptr inbounds i64, i64* %70, i64 1
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %67, i64 %72
  %74 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %73, align 8
  %75 = call i32 @BUG_ON(%struct.esp_cmd_entry* %74)
  %76 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %4, align 8
  %77 = load %struct.esp_lun_data*, %struct.esp_lun_data** %5, align 8
  %78 = getelementptr inbounds %struct.esp_lun_data, %struct.esp_lun_data* %77, i32 0, i32 2
  %79 = load %struct.esp_cmd_entry**, %struct.esp_cmd_entry*** %78, align 8
  %80 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %4, align 8
  %81 = getelementptr inbounds %struct.esp_cmd_entry, %struct.esp_cmd_entry* %80, i32 0, i32 0
  %82 = load i64*, i64** %81, align 8
  %83 = getelementptr inbounds i64, i64* %82, i64 1
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %79, i64 %84
  store %struct.esp_cmd_entry* %76, %struct.esp_cmd_entry** %85, align 8
  %86 = load %struct.esp_lun_data*, %struct.esp_lun_data** %5, align 8
  %87 = getelementptr inbounds %struct.esp_lun_data, %struct.esp_lun_data* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %88, 1
  store i64 %89, i64* %87, align 8
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %64, %61, %47, %41, %30, %17
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @BUG_ON(%struct.esp_cmd_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
