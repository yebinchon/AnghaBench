; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_storage_common.c_fsg_store_file.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_storage_common.c_fsg_store_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsg_lun = type { i32, i64 }
%struct.rw_semaphore = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"eject attempt prevented\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@SS_NOT_READY_TO_READY_TRANSITION = common dso_local global i32 0, align 4
@SS_MEDIUM_NOT_PRESENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fsg_store_file(%struct.fsg_lun* %0, %struct.rw_semaphore* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fsg_lun*, align 8
  %7 = alloca %struct.rw_semaphore*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.fsg_lun* %0, %struct.fsg_lun** %6, align 8
  store %struct.rw_semaphore* %1, %struct.rw_semaphore** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.fsg_lun*, %struct.fsg_lun** %6, align 8
  %12 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %4
  %16 = load %struct.fsg_lun*, %struct.fsg_lun** %6, align 8
  %17 = call i64 @fsg_lun_is_open(%struct.fsg_lun* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = load %struct.fsg_lun*, %struct.fsg_lun** %6, align 8
  %21 = call i32 @LDBG(%struct.fsg_lun* %20, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EBUSY, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %86

24:                                               ; preds = %15, %4
  %25 = load i64, i64* %9, align 8
  %26 = icmp ugt i64 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %24
  %28 = load i8*, i8** %8, align 8
  %29 = load i64, i64* %9, align 8
  %30 = sub i64 %29, 1
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 10
  br i1 %34, label %35, label %40

35:                                               ; preds = %27
  %36 = load i8*, i8** %8, align 8
  %37 = load i64, i64* %9, align 8
  %38 = sub i64 %37, 1
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  store i8 0, i8* %39, align 1
  br label %40

40:                                               ; preds = %35, %27, %24
  %41 = load %struct.rw_semaphore*, %struct.rw_semaphore** %7, align 8
  %42 = call i32 @down_write(%struct.rw_semaphore* %41)
  %43 = load i64, i64* %9, align 8
  %44 = icmp ugt i64 %43, 0
  br i1 %44, label %45, label %62

45:                                               ; preds = %40
  %46 = load i8*, i8** %8, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 0
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %45
  %52 = load %struct.fsg_lun*, %struct.fsg_lun** %6, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = call i32 @fsg_lun_open(%struct.fsg_lun* %52, i8* %53)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = load i32, i32* @SS_NOT_READY_TO_READY_TRANSITION, align 4
  %59 = load %struct.fsg_lun*, %struct.fsg_lun** %6, align 8
  %60 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  br label %61

61:                                               ; preds = %57, %51
  br label %73

62:                                               ; preds = %45, %40
  %63 = load %struct.fsg_lun*, %struct.fsg_lun** %6, align 8
  %64 = call i64 @fsg_lun_is_open(%struct.fsg_lun* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %62
  %67 = load %struct.fsg_lun*, %struct.fsg_lun** %6, align 8
  %68 = call i32 @fsg_lun_close(%struct.fsg_lun* %67)
  %69 = load i32, i32* @SS_MEDIUM_NOT_PRESENT, align 4
  %70 = load %struct.fsg_lun*, %struct.fsg_lun** %6, align 8
  %71 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  br label %72

72:                                               ; preds = %66, %62
  br label %73

73:                                               ; preds = %72, %61
  %74 = load %struct.rw_semaphore*, %struct.rw_semaphore** %7, align 8
  %75 = call i32 @up_write(%struct.rw_semaphore* %74)
  %76 = load i32, i32* %10, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load i32, i32* %10, align 4
  %80 = sext i32 %79 to i64
  br label %83

81:                                               ; preds = %73
  %82 = load i64, i64* %9, align 8
  br label %83

83:                                               ; preds = %81, %78
  %84 = phi i64 [ %80, %78 ], [ %82, %81 ]
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %5, align 4
  br label %86

86:                                               ; preds = %83, %19
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local i64 @fsg_lun_is_open(%struct.fsg_lun*) #1

declare dso_local i32 @LDBG(%struct.fsg_lun*, i8*) #1

declare dso_local i32 @down_write(%struct.rw_semaphore*) #1

declare dso_local i32 @fsg_lun_open(%struct.fsg_lun*, i8*) #1

declare dso_local i32 @fsg_lun_close(%struct.fsg_lun*) #1

declare dso_local i32 @up_write(%struct.rw_semaphore*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
