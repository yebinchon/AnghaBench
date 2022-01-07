; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/s3fwrn5/extr_firmware.c_s3fwrn5_fw_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/s3fwrn5/extr_firmware.c_s3fwrn5_fw_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3fwrn5_fw_info = type { %struct.TYPE_6__, i32, i32, i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.s3fwrn5_fw_cmd_get_bootinfo_rsp = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"Failed to get fw file, ret=%02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to get bootinfo, ret=%02x\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Unknown hardware version\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @s3fwrn5_fw_setup(%struct.s3fwrn5_fw_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.s3fwrn5_fw_info*, align 8
  %4 = alloca %struct.s3fwrn5_fw_cmd_get_bootinfo_rsp, align 4
  %5 = alloca i32, align 4
  store %struct.s3fwrn5_fw_info* %0, %struct.s3fwrn5_fw_info** %3, align 8
  %6 = load %struct.s3fwrn5_fw_info*, %struct.s3fwrn5_fw_info** %3, align 8
  %7 = call i32 @s3fwrn5_fw_request_firmware(%struct.s3fwrn5_fw_info* %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %1
  %11 = load %struct.s3fwrn5_fw_info*, %struct.s3fwrn5_fw_info** %3, align 8
  %12 = getelementptr inbounds %struct.s3fwrn5_fw_info, %struct.s3fwrn5_fw_info* %11, i32 0, i32 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %5, align 4
  %18 = call i32 (i32*, i8*, ...) @dev_err(i32* %16, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %2, align 4
  br label %89

20:                                               ; preds = %1
  %21 = load %struct.s3fwrn5_fw_info*, %struct.s3fwrn5_fw_info** %3, align 8
  %22 = call i32 @s3fwrn5_fw_get_bootinfo(%struct.s3fwrn5_fw_info* %21, %struct.s3fwrn5_fw_cmd_get_bootinfo_rsp* %4)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %20
  %26 = load %struct.s3fwrn5_fw_info*, %struct.s3fwrn5_fw_info** %3, align 8
  %27 = getelementptr inbounds %struct.s3fwrn5_fw_info, %struct.s3fwrn5_fw_info* %26, i32 0, i32 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %5, align 4
  %33 = call i32 (i32*, i8*, ...) @dev_err(i32* %31, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  br label %85

34:                                               ; preds = %20
  %35 = load %struct.s3fwrn5_fw_info*, %struct.s3fwrn5_fw_info** %3, align 8
  %36 = getelementptr inbounds %struct.s3fwrn5_fw_info, %struct.s3fwrn5_fw_info* %35, i32 0, i32 5
  %37 = call i32 @s3fwrn5_fw_get_base_addr(%struct.s3fwrn5_fw_cmd_get_bootinfo_rsp* %4, i32* %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %34
  %41 = load %struct.s3fwrn5_fw_info*, %struct.s3fwrn5_fw_info** %3, align 8
  %42 = getelementptr inbounds %struct.s3fwrn5_fw_info, %struct.s3fwrn5_fw_info* %41, i32 0, i32 4
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = call i32 (i32*, i8*, ...) @dev_err(i32* %46, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %85

48:                                               ; preds = %34
  %49 = getelementptr inbounds %struct.s3fwrn5_fw_cmd_get_bootinfo_rsp, %struct.s3fwrn5_fw_cmd_get_bootinfo_rsp* %4, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.s3fwrn5_fw_info*, %struct.s3fwrn5_fw_info** %3, align 8
  %52 = getelementptr inbounds %struct.s3fwrn5_fw_info, %struct.s3fwrn5_fw_info* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 8
  %53 = call i64 @s3fwrn5_fw_is_custom(%struct.s3fwrn5_fw_cmd_get_bootinfo_rsp* %4)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %48
  %56 = load %struct.s3fwrn5_fw_info*, %struct.s3fwrn5_fw_info** %3, align 8
  %57 = getelementptr inbounds %struct.s3fwrn5_fw_info, %struct.s3fwrn5_fw_info* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  br label %65

60:                                               ; preds = %48
  %61 = load %struct.s3fwrn5_fw_info*, %struct.s3fwrn5_fw_info** %3, align 8
  %62 = getelementptr inbounds %struct.s3fwrn5_fw_info, %struct.s3fwrn5_fw_info* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  br label %65

65:                                               ; preds = %60, %55
  %66 = phi i32 [ %59, %55 ], [ %64, %60 ]
  %67 = load %struct.s3fwrn5_fw_info*, %struct.s3fwrn5_fw_info** %3, align 8
  %68 = getelementptr inbounds %struct.s3fwrn5_fw_info, %struct.s3fwrn5_fw_info* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 4
  %69 = call i64 @s3fwrn5_fw_is_custom(%struct.s3fwrn5_fw_cmd_get_bootinfo_rsp* %4)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %65
  %72 = load %struct.s3fwrn5_fw_info*, %struct.s3fwrn5_fw_info** %3, align 8
  %73 = getelementptr inbounds %struct.s3fwrn5_fw_info, %struct.s3fwrn5_fw_info* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  br label %81

76:                                               ; preds = %65
  %77 = load %struct.s3fwrn5_fw_info*, %struct.s3fwrn5_fw_info** %3, align 8
  %78 = getelementptr inbounds %struct.s3fwrn5_fw_info, %struct.s3fwrn5_fw_info* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  br label %81

81:                                               ; preds = %76, %71
  %82 = phi i32 [ %75, %71 ], [ %80, %76 ]
  %83 = load %struct.s3fwrn5_fw_info*, %struct.s3fwrn5_fw_info** %3, align 8
  %84 = getelementptr inbounds %struct.s3fwrn5_fw_info, %struct.s3fwrn5_fw_info* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 8
  store i32 0, i32* %2, align 4
  br label %89

85:                                               ; preds = %40, %25
  %86 = load %struct.s3fwrn5_fw_info*, %struct.s3fwrn5_fw_info** %3, align 8
  %87 = call i32 @s3fwrn5_fw_release_firmware(%struct.s3fwrn5_fw_info* %86)
  %88 = load i32, i32* %5, align 4
  store i32 %88, i32* %2, align 4
  br label %89

89:                                               ; preds = %85, %81, %10
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local i32 @s3fwrn5_fw_request_firmware(%struct.s3fwrn5_fw_info*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @s3fwrn5_fw_get_bootinfo(%struct.s3fwrn5_fw_info*, %struct.s3fwrn5_fw_cmd_get_bootinfo_rsp*) #1

declare dso_local i32 @s3fwrn5_fw_get_base_addr(%struct.s3fwrn5_fw_cmd_get_bootinfo_rsp*, i32*) #1

declare dso_local i64 @s3fwrn5_fw_is_custom(%struct.s3fwrn5_fw_cmd_get_bootinfo_rsp*) #1

declare dso_local i32 @s3fwrn5_fw_release_firmware(%struct.s3fwrn5_fw_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
