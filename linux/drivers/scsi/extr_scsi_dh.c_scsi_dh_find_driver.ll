; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_dh.c_scsi_dh_find_driver.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_dh.c_scsi_dh_find_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_dh_blist = type { i8*, i64, i64 }
%struct.scsi_device = type { i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"alua\00", align 1
@scsi_dh_blist = common dso_local global %struct.scsi_dh_blist* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.scsi_device*)* @scsi_dh_find_driver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @scsi_dh_find_driver(%struct.scsi_device* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca %struct.scsi_dh_blist*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %3, align 8
  %5 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %6 = call i64 @scsi_device_tpgs(%struct.scsi_device* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %51

9:                                                ; preds = %1
  %10 = load %struct.scsi_dh_blist*, %struct.scsi_dh_blist** @scsi_dh_blist, align 8
  store %struct.scsi_dh_blist* %10, %struct.scsi_dh_blist** %4, align 8
  br label %11

11:                                               ; preds = %47, %9
  %12 = load %struct.scsi_dh_blist*, %struct.scsi_dh_blist** %4, align 8
  %13 = getelementptr inbounds %struct.scsi_dh_blist, %struct.scsi_dh_blist* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %50

16:                                               ; preds = %11
  %17 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %18 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.scsi_dh_blist*, %struct.scsi_dh_blist** %4, align 8
  %21 = getelementptr inbounds %struct.scsi_dh_blist, %struct.scsi_dh_blist* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.scsi_dh_blist*, %struct.scsi_dh_blist** %4, align 8
  %24 = getelementptr inbounds %struct.scsi_dh_blist, %struct.scsi_dh_blist* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @strlen(i64 %25)
  %27 = call i32 @strncmp(i32 %19, i64 %22, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %46, label %29

29:                                               ; preds = %16
  %30 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %31 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.scsi_dh_blist*, %struct.scsi_dh_blist** %4, align 8
  %34 = getelementptr inbounds %struct.scsi_dh_blist, %struct.scsi_dh_blist* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.scsi_dh_blist*, %struct.scsi_dh_blist** %4, align 8
  %37 = getelementptr inbounds %struct.scsi_dh_blist, %struct.scsi_dh_blist* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @strlen(i64 %38)
  %40 = call i32 @strncmp(i32 %32, i64 %35, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %29
  %43 = load %struct.scsi_dh_blist*, %struct.scsi_dh_blist** %4, align 8
  %44 = getelementptr inbounds %struct.scsi_dh_blist, %struct.scsi_dh_blist* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  store i8* %45, i8** %2, align 8
  br label %51

46:                                               ; preds = %29, %16
  br label %47

47:                                               ; preds = %46
  %48 = load %struct.scsi_dh_blist*, %struct.scsi_dh_blist** %4, align 8
  %49 = getelementptr inbounds %struct.scsi_dh_blist, %struct.scsi_dh_blist* %48, i32 1
  store %struct.scsi_dh_blist* %49, %struct.scsi_dh_blist** %4, align 8
  br label %11

50:                                               ; preds = %11
  store i8* null, i8** %2, align 8
  br label %51

51:                                               ; preds = %50, %42, %8
  %52 = load i8*, i8** %2, align 8
  ret i8* %52
}

declare dso_local i64 @scsi_device_tpgs(%struct.scsi_device*) #1

declare dso_local i32 @strncmp(i32, i64, i32) #1

declare dso_local i32 @strlen(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
