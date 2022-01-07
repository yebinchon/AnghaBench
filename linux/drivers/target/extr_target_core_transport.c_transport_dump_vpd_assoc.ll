; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_transport.c_transport_dump_vpd_assoc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_transport.c_transport_dump_vpd_assoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t10_vpd = type { i32 }

@VPD_TMP_BUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"T10 VPD Identifier Association: \00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"addressed logical unit\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"target port\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"SCSI target device\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"Unknown 0x%02x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @transport_dump_vpd_assoc(%struct.t10_vpd* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.t10_vpd*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.t10_vpd* %0, %struct.t10_vpd** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* @VPD_TMP_BUF_SIZE, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %7, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %15 = load i32, i32* @VPD_TMP_BUF_SIZE, align 4
  %16 = call i32 @memset(i8* %14, i32 0, i32 %15)
  %17 = call i32 (i8*, i8*, ...) @sprintf(i8* %14, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32 %17, i32* %10, align 4
  %18 = load %struct.t10_vpd*, %struct.t10_vpd** %4, align 8
  %19 = getelementptr inbounds %struct.t10_vpd, %struct.t10_vpd* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %36 [
    i32 0, label %21
    i32 16, label %26
    i32 32, label %31
  ]

21:                                               ; preds = %3
  %22 = load i32, i32* %10, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %14, i64 %23
  %25 = call i32 (i8*, i8*, ...) @sprintf(i8* %24, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %46

26:                                               ; preds = %3
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %14, i64 %28
  %30 = call i32 (i8*, i8*, ...) @sprintf(i8* %29, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %46

31:                                               ; preds = %3
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %14, i64 %33
  %35 = call i32 (i8*, i8*, ...) @sprintf(i8* %34, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  br label %46

36:                                               ; preds = %3
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %14, i64 %38
  %40 = load %struct.t10_vpd*, %struct.t10_vpd** %4, align 8
  %41 = getelementptr inbounds %struct.t10_vpd, %struct.t10_vpd* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (i8*, i8*, ...) @sprintf(i8* %39, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %9, align 4
  br label %46

46:                                               ; preds = %36, %31, %26, %21
  %47 = load i8*, i8** %5, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load i8*, i8** %5, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @strncpy(i8* %50, i8* %14, i32 %51)
  br label %55

53:                                               ; preds = %46
  %54 = call i32 @pr_debug(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %14)
  br label %55

55:                                               ; preds = %53, %49
  %56 = load i32, i32* %9, align 4
  %57 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %57)
  ret i32 %56
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @sprintf(i8*, i8*, ...) #2

declare dso_local i32 @strncpy(i8*, i8*, i32) #2

declare dso_local i32 @pr_debug(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
