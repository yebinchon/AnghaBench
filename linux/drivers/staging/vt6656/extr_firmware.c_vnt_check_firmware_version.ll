; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_firmware.c_vnt_check_firmware_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_firmware.c_vnt_check_firmware_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnt_private = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MESSAGE_TYPE_READ = common dso_local global i32 0, align 4
@MESSAGE_REQUEST_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Could not get firmware version: %d.\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Firmware Version [%04x]\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"In Loader.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@FIRMWARE_VERSION = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"Could not branch to SRAM: %d.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vnt_check_firmware_version(%struct.vnt_private* %0) #0 {
  %2 = alloca %struct.vnt_private*, align 8
  %3 = alloca i32, align 4
  store %struct.vnt_private* %0, %struct.vnt_private** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %5 = load i32, i32* @MESSAGE_TYPE_READ, align 4
  %6 = load i32, i32* @MESSAGE_REQUEST_VERSION, align 4
  %7 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %8 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %7, i32 0, i32 0
  %9 = call i32 @vnt_control_in(%struct.vnt_private* %4, i32 %5, i32 0, i32 %6, i32 2, i32* %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %14 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %3, align 4
  %18 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %16, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %17)
  br label %63

19:                                               ; preds = %1
  %20 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %21 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %25 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %23, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %29 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp eq i32 %30, 65535
  br i1 %31, label %32, label %40

32:                                               ; preds = %19
  %33 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %34 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %36, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %63

40:                                               ; preds = %19
  %41 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %42 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @FIRMWARE_VERSION, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %62

46:                                               ; preds = %40
  %47 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %48 = call i32 @vnt_firmware_branch_to_sram(%struct.vnt_private* %47)
  store i32 %48, i32* %3, align 4
  %49 = load i32, i32* %3, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %46
  %52 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %53 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %3, align 4
  %57 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %55, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %56)
  br label %61

58:                                               ; preds = %46
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %58, %51
  br label %62

62:                                               ; preds = %61, %40
  br label %63

63:                                               ; preds = %62, %32, %12
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @vnt_control_in(%struct.vnt_private*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @vnt_firmware_branch_to_sram(%struct.vnt_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
