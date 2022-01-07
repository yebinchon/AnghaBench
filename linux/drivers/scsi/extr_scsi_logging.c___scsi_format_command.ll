; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_logging.c___scsi_format_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_logging.c___scsi_format_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c" %02x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @__scsi_format_command(i8* %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call i64 @scsi_format_opcode_name(i8* %13, i64 %14, i8* %15)
  store i64 %16, i64* %12, align 8
  %17 = load i64, i64* %12, align 8
  %18 = load i64, i64* %7, align 8
  %19 = icmp uge i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i64, i64* %12, align 8
  store i64 %21, i64* %5, align 8
  br label %63

22:                                               ; preds = %4
  %23 = load i8*, i8** %8, align 8
  %24 = call i32 @scsi_command_size(i8* %23)
  store i32 %24, i32* %10, align 4
  %25 = load i64, i64* %9, align 8
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = icmp ult i64 %25, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load i64, i64* %9, align 8
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %10, align 4
  br label %32

32:                                               ; preds = %29, %22
  store i32 0, i32* %11, align 4
  br label %33

33:                                               ; preds = %58, %32
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %61

37:                                               ; preds = %33
  %38 = load i64, i64* %12, align 8
  %39 = load i64, i64* %7, align 8
  %40 = sub i64 %39, 3
  %41 = icmp ugt i64 %38, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %61

43:                                               ; preds = %37
  %44 = load i8*, i8** %6, align 8
  %45 = load i64, i64* %12, align 8
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  %47 = load i64, i64* %7, align 8
  %48 = load i64, i64* %12, align 8
  %49 = sub i64 %47, %48
  %50 = load i8*, i8** %8, align 8
  %51 = load i32, i32* %11, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = call i64 @scnprintf(i8* %46, i64 %49, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8 zeroext %54)
  %56 = load i64, i64* %12, align 8
  %57 = add i64 %56, %55
  store i64 %57, i64* %12, align 8
  br label %58

58:                                               ; preds = %43
  %59 = load i32, i32* %11, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %11, align 4
  br label %33

61:                                               ; preds = %42, %33
  %62 = load i64, i64* %12, align 8
  store i64 %62, i64* %5, align 8
  br label %63

63:                                               ; preds = %61, %20
  %64 = load i64, i64* %5, align 8
  ret i64 %64
}

declare dso_local i64 @scsi_format_opcode_name(i8*, i64, i8*) #1

declare dso_local i32 @scsi_command_size(i8*) #1

declare dso_local i64 @scnprintf(i8*, i64, i8*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
