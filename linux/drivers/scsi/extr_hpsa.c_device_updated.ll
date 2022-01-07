; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_device_updated.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_device_updated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpsa_scsi_dev_t = type { i64, i64, i64, i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t*)* @device_updated to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @device_updated(%struct.hpsa_scsi_dev_t* %0, %struct.hpsa_scsi_dev_t* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hpsa_scsi_dev_t*, align 8
  %5 = alloca %struct.hpsa_scsi_dev_t*, align 8
  store %struct.hpsa_scsi_dev_t* %0, %struct.hpsa_scsi_dev_t** %4, align 8
  store %struct.hpsa_scsi_dev_t* %1, %struct.hpsa_scsi_dev_t** %5, align 8
  %6 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %4, align 8
  %7 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %5, align 8
  %10 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %8, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %58

14:                                               ; preds = %2
  %15 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %4, align 8
  %16 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %5, align 8
  %19 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %17, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  store i32 1, i32* %3, align 4
  br label %58

23:                                               ; preds = %14
  %24 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %4, align 8
  %25 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %5, align 8
  %28 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %26, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  store i32 1, i32* %3, align 4
  br label %58

32:                                               ; preds = %23
  %33 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %4, align 8
  %34 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @is_logical_dev_addr_mode(i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %48, label %38

38:                                               ; preds = %32
  %39 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %4, align 8
  %40 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %5, align 8
  %43 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %41, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  store i32 1, i32* %3, align 4
  br label %58

47:                                               ; preds = %38
  br label %48

48:                                               ; preds = %47, %32
  %49 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %4, align 8
  %50 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %49, i32 0, i32 4
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %5, align 8
  %53 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %52, i32 0, i32 4
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %51, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  store i32 1, i32* %3, align 4
  br label %58

57:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %57, %56, %46, %31, %22, %13
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @is_logical_dev_addr_mode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
