; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_logging.c_scsi_format_extd_sense.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_logging.c_scsi_format_extd_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"Add. Sense: %s\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"(%s%x)\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"<<vendor>>\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"ASC=0x%x \00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"ASCQ=0x%x \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i8, i8)* @scsi_format_extd_sense to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @scsi_format_extd_sense(i8* %0, i64 %1, i8 zeroext %2, i8 zeroext %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8 %2, i8* %7, align 1
  store i8 %3, i8* %8, align 1
  store i64 0, i64* %9, align 8
  store i8* null, i8** %10, align 8
  %12 = load i8, i8* %7, align 1
  %13 = load i8, i8* %8, align 1
  %14 = call i8* @scsi_extd_sense_format(i8 zeroext %12, i8 zeroext %13, i8** %10)
  store i8* %14, i8** %11, align 8
  %15 = load i8*, i8** %11, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %38

17:                                               ; preds = %4
  %18 = load i8*, i8** %5, align 8
  %19 = load i64, i64* %6, align 8
  %20 = load i8*, i8** %11, align 8
  %21 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %18, i64 %19, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %20)
  store i64 %21, i64* %9, align 8
  %22 = load i8*, i8** %10, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %37

24:                                               ; preds = %17
  %25 = load i8*, i8** %5, align 8
  %26 = load i64, i64* %9, align 8
  %27 = getelementptr inbounds i8, i8* %25, i64 %26
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* %9, align 8
  %30 = sub i64 %28, %29
  %31 = load i8*, i8** %10, align 8
  %32 = load i8, i8* %8, align 1
  %33 = zext i8 %32 to i32
  %34 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %27, i64 %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %31, i32 %33)
  %35 = load i64, i64* %9, align 8
  %36 = add i64 %35, %34
  store i64 %36, i64* %9, align 8
  br label %37

37:                                               ; preds = %24, %17
  br label %83

38:                                               ; preds = %4
  %39 = load i8, i8* %7, align 1
  %40 = zext i8 %39 to i32
  %41 = icmp sge i32 %40, 128
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load i8*, i8** %5, align 8
  %44 = load i64, i64* %6, align 8
  %45 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %43, i64 %44, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  store i64 %45, i64* %9, align 8
  br label %46

46:                                               ; preds = %42, %38
  %47 = load i8*, i8** %5, align 8
  %48 = load i64, i64* %9, align 8
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  %50 = load i64, i64* %6, align 8
  %51 = load i64, i64* %9, align 8
  %52 = sub i64 %50, %51
  %53 = load i8, i8* %7, align 1
  %54 = zext i8 %53 to i32
  %55 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %49, i64 %52, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %54)
  %56 = load i64, i64* %9, align 8
  %57 = add i64 %56, %55
  store i64 %57, i64* %9, align 8
  %58 = load i8, i8* %8, align 1
  %59 = zext i8 %58 to i32
  %60 = icmp sge i32 %59, 128
  br i1 %60, label %61, label %71

61:                                               ; preds = %46
  %62 = load i8*, i8** %5, align 8
  %63 = load i64, i64* %9, align 8
  %64 = getelementptr inbounds i8, i8* %62, i64 %63
  %65 = load i64, i64* %6, align 8
  %66 = load i64, i64* %9, align 8
  %67 = sub i64 %65, %66
  %68 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %64, i64 %67, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %69 = load i64, i64* %9, align 8
  %70 = add i64 %69, %68
  store i64 %70, i64* %9, align 8
  br label %71

71:                                               ; preds = %61, %46
  %72 = load i8*, i8** %5, align 8
  %73 = load i64, i64* %9, align 8
  %74 = getelementptr inbounds i8, i8* %72, i64 %73
  %75 = load i64, i64* %6, align 8
  %76 = load i64, i64* %9, align 8
  %77 = sub i64 %75, %76
  %78 = load i8, i8* %8, align 1
  %79 = zext i8 %78 to i32
  %80 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %74, i64 %77, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %79)
  %81 = load i64, i64* %9, align 8
  %82 = add i64 %81, %80
  store i64 %82, i64* %9, align 8
  br label %83

83:                                               ; preds = %71, %37
  %84 = load i64, i64* %9, align 8
  ret i64 %84
}

declare dso_local i8* @scsi_extd_sense_format(i8 zeroext, i8 zeroext, i8**) #1

declare dso_local i64 @scnprintf(i8*, i64, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
