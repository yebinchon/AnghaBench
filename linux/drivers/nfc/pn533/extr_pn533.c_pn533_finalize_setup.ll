; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/pn533/extr_pn533.c_pn533_finalize_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/pn533/extr_pn533.c_pn533_finalize_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pn533 = type { i32 }
%struct.pn533_fw_version = type { i32, i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"Unable to get FW version\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"NXP PN5%02X firmware ver %d.%d now attached\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pn533_finalize_setup(%struct.pn533* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pn533*, align 8
  %4 = alloca %struct.pn533_fw_version, align 4
  %5 = alloca i32, align 4
  store %struct.pn533* %0, %struct.pn533** %3, align 8
  %6 = call i32 @memset(%struct.pn533_fw_version* %4, i32 0, i32 12)
  %7 = load %struct.pn533*, %struct.pn533** %3, align 8
  %8 = call i32 @pn533_get_firmware_version(%struct.pn533* %7, %struct.pn533_fw_version* %4)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.pn533*, %struct.pn533** %3, align 8
  %13 = getelementptr inbounds %struct.pn533, %struct.pn533* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @nfc_err(i32 %14, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %2, align 4
  br label %35

17:                                               ; preds = %1
  %18 = load %struct.pn533*, %struct.pn533** %3, align 8
  %19 = getelementptr inbounds %struct.pn533, %struct.pn533* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.pn533_fw_version, %struct.pn533_fw_version* %4, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.pn533_fw_version, %struct.pn533_fw_version* %4, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.pn533_fw_version, %struct.pn533_fw_version* %4, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @nfc_info(i32 %20, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %22, i32 %24, i32 %26)
  %28 = load %struct.pn533*, %struct.pn533** %3, align 8
  %29 = call i32 @pn533_setup(%struct.pn533* %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %17
  %33 = load i32, i32* %5, align 4
  store i32 %33, i32* %2, align 4
  br label %35

34:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %34, %32, %11
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @memset(%struct.pn533_fw_version*, i32, i32) #1

declare dso_local i32 @pn533_get_firmware_version(%struct.pn533*, %struct.pn533_fw_version*) #1

declare dso_local i32 @nfc_err(i32, i8*) #1

declare dso_local i32 @nfc_info(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @pn533_setup(%struct.pn533*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
