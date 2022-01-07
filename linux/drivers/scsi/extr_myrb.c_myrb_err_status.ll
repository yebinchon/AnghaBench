; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_myrb.c_myrb_err_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_myrb.c_myrb_err_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.myrb_hba = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"Physical Device %d:%d Not Responding\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Spinning Up Drives\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Configuration Checksum Error\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Mirror Race Recovery Failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Mirror Race Recovery In Progress\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Physical Device %d:%d COD Mismatch\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"Logical Drive Installation Aborted\0A\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"Mirror Race On A Critical Logical Drive\0A\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"New Controller Configuration Found\0A\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"Fatal Memory Parity Error\0A\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"Unknown Initialization Error %02X\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @myrb_err_status(%struct.myrb_hba* %0, i8 zeroext %1, i8 zeroext %2, i8 zeroext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.myrb_hba*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca %struct.pci_dev*, align 8
  store %struct.myrb_hba* %0, %struct.myrb_hba** %6, align 8
  store i8 %1, i8* %7, align 1
  store i8 %2, i8* %8, align 1
  store i8 %3, i8* %9, align 1
  %11 = load %struct.myrb_hba*, %struct.myrb_hba** %6, align 8
  %12 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %11, i32 0, i32 0
  %13 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  store %struct.pci_dev* %13, %struct.pci_dev** %10, align 8
  %14 = load i8, i8* %7, align 1
  %15 = zext i8 %14 to i32
  switch i32 %15, label %62 [
    i32 0, label %16
    i32 8, label %22
    i32 48, label %26
    i32 96, label %30
    i32 112, label %34
    i32 144, label %38
    i32 160, label %46
    i32 176, label %50
    i32 208, label %54
    i32 240, label %58
  ]

16:                                               ; preds = %4
  %17 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %18 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %17, i32 0, i32 0
  %19 = load i8, i8* %9, align 1
  %20 = load i8, i8* %8, align 1
  %21 = call i32 @dev_info(i32* %18, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8 zeroext %19, i8 zeroext %20)
  br label %68

22:                                               ; preds = %4
  %23 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %24 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %23, i32 0, i32 0
  %25 = call i32 (i32*, i8*, ...) @dev_notice(i32* %24, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %68

26:                                               ; preds = %4
  %27 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %28 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %27, i32 0, i32 0
  %29 = call i32 (i32*, i8*, ...) @dev_notice(i32* %28, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %68

30:                                               ; preds = %4
  %31 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %32 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %31, i32 0, i32 0
  %33 = call i32 (i32*, i8*, ...) @dev_notice(i32* %32, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %68

34:                                               ; preds = %4
  %35 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %36 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %35, i32 0, i32 0
  %37 = call i32 (i32*, i8*, ...) @dev_notice(i32* %36, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  br label %68

38:                                               ; preds = %4
  %39 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %40 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %39, i32 0, i32 0
  %41 = load i8, i8* %9, align 1
  %42 = zext i8 %41 to i32
  %43 = load i8, i8* %8, align 1
  %44 = zext i8 %43 to i32
  %45 = call i32 (i32*, i8*, ...) @dev_notice(i32* %40, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %42, i32 %44)
  br label %68

46:                                               ; preds = %4
  %47 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %48 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %47, i32 0, i32 0
  %49 = call i32 (i32*, i8*, ...) @dev_notice(i32* %48, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  br label %68

50:                                               ; preds = %4
  %51 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %52 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %51, i32 0, i32 0
  %53 = call i32 (i32*, i8*, ...) @dev_notice(i32* %52, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0))
  br label %68

54:                                               ; preds = %4
  %55 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %56 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %55, i32 0, i32 0
  %57 = call i32 (i32*, i8*, ...) @dev_notice(i32* %56, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0))
  br label %68

58:                                               ; preds = %4
  %59 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %60 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %59, i32 0, i32 0
  %61 = call i32 (i32*, i8*, ...) @dev_err(i32* %60, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %69

62:                                               ; preds = %4
  %63 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %64 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %63, i32 0, i32 0
  %65 = load i8, i8* %7, align 1
  %66 = zext i8 %65 to i32
  %67 = call i32 (i32*, i8*, ...) @dev_err(i32* %64, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0), i32 %66)
  store i32 1, i32* %5, align 4
  br label %69

68:                                               ; preds = %54, %50, %46, %38, %34, %30, %26, %22, %16
  store i32 0, i32* %5, align 4
  br label %69

69:                                               ; preds = %68, %62, %58
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local i32 @dev_info(i32*, i8*, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @dev_notice(i32*, i8*, ...) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
