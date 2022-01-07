; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_transport.c_transport_dump_vpd_ident_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_transport.c_transport_dump_vpd_ident_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t10_vpd = type { i32 }

@VPD_TMP_BUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"T10 VPD Identifier Type: \00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Vendor specific\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"T10 Vendor ID based\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"EUI-64 based\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"NAA\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Relative target port identifier\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"SCSI name string\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"Unsupported: 0x%02x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @transport_dump_vpd_ident_type(%struct.t10_vpd* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.t10_vpd*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.t10_vpd* %0, %struct.t10_vpd** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* @VPD_TMP_BUF_SIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %17 = load i32, i32* @VPD_TMP_BUF_SIZE, align 4
  %18 = call i32 @memset(i8* %16, i32 0, i32 %17)
  %19 = call i32 (i8*, i8*, ...) @sprintf(i8* %16, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 %19, i32* %11, align 4
  %20 = load %struct.t10_vpd*, %struct.t10_vpd** %5, align 8
  %21 = getelementptr inbounds %struct.t10_vpd, %struct.t10_vpd* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %53 [
    i32 0, label %23
    i32 1, label %28
    i32 2, label %33
    i32 3, label %38
    i32 4, label %43
    i32 8, label %48
  ]

23:                                               ; preds = %3
  %24 = load i32, i32* %11, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %16, i64 %25
  %27 = call i32 (i8*, i8*, ...) @sprintf(i8* %26, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %63

28:                                               ; preds = %3
  %29 = load i32, i32* %11, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %16, i64 %30
  %32 = call i32 (i8*, i8*, ...) @sprintf(i8* %31, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %63

33:                                               ; preds = %3
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %16, i64 %35
  %37 = call i32 (i8*, i8*, ...) @sprintf(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %63

38:                                               ; preds = %3
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %16, i64 %40
  %42 = call i32 (i8*, i8*, ...) @sprintf(i8* %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  br label %63

43:                                               ; preds = %3
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %16, i64 %45
  %47 = call i32 (i8*, i8*, ...) @sprintf(i8* %46, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  br label %63

48:                                               ; preds = %3
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %16, i64 %50
  %52 = call i32 (i8*, i8*, ...) @sprintf(i8* %51, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  br label %63

53:                                               ; preds = %3
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %16, i64 %55
  %57 = load %struct.t10_vpd*, %struct.t10_vpd** %5, align 8
  %58 = getelementptr inbounds %struct.t10_vpd, %struct.t10_vpd* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 (i8*, i8*, ...) @sprintf(i8* %56, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %10, align 4
  br label %63

63:                                               ; preds = %53, %48, %43, %38, %33, %28, %23
  %64 = load i8*, i8** %6, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %78

66:                                               ; preds = %63
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @strlen(i8* %16)
  %69 = add nsw i32 %68, 1
  %70 = icmp slt i32 %67, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %82

74:                                               ; preds = %66
  %75 = load i8*, i8** %6, align 8
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @strncpy(i8* %75, i8* %16, i32 %76)
  br label %80

78:                                               ; preds = %63
  %79 = call i32 @pr_debug(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* %16)
  br label %80

80:                                               ; preds = %78, %74
  %81 = load i32, i32* %10, align 4
  store i32 %81, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %82

82:                                               ; preds = %80, %71
  %83 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %83)
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @sprintf(i8*, i8*, ...) #2

declare dso_local i32 @strlen(i8*) #2

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
