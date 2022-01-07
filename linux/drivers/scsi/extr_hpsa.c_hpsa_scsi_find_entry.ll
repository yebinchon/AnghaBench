; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_scsi_find_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_scsi_find_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpsa_scsi_dev_t = type { i64, i32 }

@DEVICE_CHANGED = common dso_local global i32 0, align 4
@DEVICE_NOT_FOUND = common dso_local global i32 0, align 4
@DEVICE_SAME = common dso_local global i32 0, align 4
@DEVICE_UPDATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t**, i32, i32*)* @hpsa_scsi_find_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpsa_scsi_find_entry(%struct.hpsa_scsi_dev_t* %0, %struct.hpsa_scsi_dev_t** %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hpsa_scsi_dev_t*, align 8
  %7 = alloca %struct.hpsa_scsi_dev_t**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.hpsa_scsi_dev_t* %0, %struct.hpsa_scsi_dev_t** %6, align 8
  store %struct.hpsa_scsi_dev_t** %1, %struct.hpsa_scsi_dev_t*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %11 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %6, align 8
  %12 = icmp eq %struct.hpsa_scsi_dev_t* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %75

14:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %15

15:                                               ; preds = %70, %14
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %73

19:                                               ; preds = %15
  %20 = load %struct.hpsa_scsi_dev_t**, %struct.hpsa_scsi_dev_t*** %7, align 8
  %21 = load i32, i32* %10, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %20, i64 %22
  %24 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %23, align 8
  %25 = icmp eq %struct.hpsa_scsi_dev_t* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %70

27:                                               ; preds = %19
  %28 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %6, align 8
  %29 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.hpsa_scsi_dev_t**, %struct.hpsa_scsi_dev_t*** %7, align 8
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %31, i64 %33
  %35 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %34, align 8
  %36 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @SCSI3ADDR_EQ(i32 %30, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %69

40:                                               ; preds = %27
  %41 = load i32, i32* %10, align 4
  %42 = load i32*, i32** %9, align 8
  store i32 %41, i32* %42, align 4
  %43 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %6, align 8
  %44 = load %struct.hpsa_scsi_dev_t**, %struct.hpsa_scsi_dev_t*** %7, align 8
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %44, i64 %46
  %48 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %47, align 8
  %49 = call i64 @device_is_the_same(%struct.hpsa_scsi_dev_t* %43, %struct.hpsa_scsi_dev_t* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %40
  %52 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %6, align 8
  %53 = load %struct.hpsa_scsi_dev_t**, %struct.hpsa_scsi_dev_t*** %7, align 8
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %53, i64 %55
  %57 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %56, align 8
  %58 = call i64 @device_updated(%struct.hpsa_scsi_dev_t* %52, %struct.hpsa_scsi_dev_t* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %51
  store i32 3, i32* %5, align 4
  br label %75

61:                                               ; preds = %51
  store i32 2, i32* %5, align 4
  br label %75

62:                                               ; preds = %40
  %63 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %6, align 8
  %64 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  store i32 0, i32* %5, align 4
  br label %75

68:                                               ; preds = %62
  store i32 1, i32* %5, align 4
  br label %75

69:                                               ; preds = %27
  br label %70

70:                                               ; preds = %69, %26
  %71 = load i32, i32* %10, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %10, align 4
  br label %15

73:                                               ; preds = %15
  %74 = load i32*, i32** %9, align 8
  store i32 -1, i32* %74, align 4
  store i32 0, i32* %5, align 4
  br label %75

75:                                               ; preds = %73, %68, %67, %61, %60, %13
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local i64 @SCSI3ADDR_EQ(i32, i32) #1

declare dso_local i64 @device_is_the_same(%struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t*) #1

declare dso_local i64 @device_updated(%struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
