; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/unisys/visorhba/extr_visorhba_main.c_set_no_disk_inquiry_result.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/unisys/visorhba/extr_visorhba_main.c_set_no_disk_inquiry_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NO_DISK_INQUIRY_RESULT_LEN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@SCSI_SPC2_VER = common dso_local global i8 0, align 1
@DEV_DISK_CAPABLE_NOT_PRESENT = common dso_local global i8 0, align 1
@DEV_HISUPPORT = common dso_local global i8 0, align 1
@DEV_NOT_CAPABLE = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [20 x i8] c"DELLPSEUDO DEVICE .\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i32)* @set_no_disk_inquiry_result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_no_disk_inquiry_result(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i64, i64* %6, align 8
  %9 = load i64, i64* @NO_DISK_INQUIRY_RESULT_LEN, align 8
  %10 = icmp ult i64 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %4, align 4
  br label %45

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8
  %16 = load i64, i64* @NO_DISK_INQUIRY_RESULT_LEN, align 8
  %17 = call i32 @memset(i8* %15, i32 0, i64 %16)
  %18 = load i8, i8* @SCSI_SPC2_VER, align 1
  %19 = load i8*, i8** %5, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 2
  store i8 %18, i8* %20, align 1
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %14
  %24 = load i8, i8* @DEV_DISK_CAPABLE_NOT_PRESENT, align 1
  %25 = load i8*, i8** %5, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  store i8 %24, i8* %26, align 1
  %27 = load i8, i8* @DEV_HISUPPORT, align 1
  %28 = load i8*, i8** %5, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 3
  store i8 %27, i8* %29, align 1
  br label %34

30:                                               ; preds = %14
  %31 = load i8, i8* @DEV_NOT_CAPABLE, align 1
  %32 = load i8*, i8** %5, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  store i8 %31, i8* %33, align 1
  br label %34

34:                                               ; preds = %30, %23
  %35 = load i64, i64* @NO_DISK_INQUIRY_RESULT_LEN, align 8
  %36 = sub i64 %35, 5
  %37 = trunc i64 %36 to i8
  %38 = load i8*, i8** %5, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 4
  store i8 %37, i8* %39, align 1
  %40 = load i8*, i8** %5, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 8
  %42 = load i64, i64* @NO_DISK_INQUIRY_RESULT_LEN, align 8
  %43 = sub i64 %42, 8
  %44 = call i32 @strncpy(i8* %41, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %43)
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %34, %11
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @strncpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
