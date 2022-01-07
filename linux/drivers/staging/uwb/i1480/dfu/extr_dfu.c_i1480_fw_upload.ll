; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/uwb/i1480/dfu/extr_dfu.c_i1480_fw_upload.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/uwb/i1480/dfu/extr_dfu.c_i1480_fw_upload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i1480 = type { {}*, i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Cannot locate MAC FW file '%s'\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"firmware uploaded successfully\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i1480_fw_upload(%struct.i1480* %0) #0 {
  %2 = alloca %struct.i1480*, align 8
  %3 = alloca i32, align 4
  store %struct.i1480* %0, %struct.i1480** %2, align 8
  %4 = load %struct.i1480*, %struct.i1480** %2, align 8
  %5 = call i32 @i1480_pre_fw_upload(%struct.i1480* %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @ENOENT, align 4
  %11 = sub nsw i32 0, %10
  %12 = icmp ne i32 %9, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = load %struct.i1480*, %struct.i1480** %2, align 8
  %15 = call i32 @i1480_print_state(%struct.i1480* %14)
  br label %70

16:                                               ; preds = %8, %1
  %17 = load %struct.i1480*, %struct.i1480** %2, align 8
  %18 = call i32 @i1480_mac_fw_upload(%struct.i1480* %17)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %38

21:                                               ; preds = %16
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @ENOENT, align 4
  %24 = sub nsw i32 0, %23
  %25 = icmp eq i32 %22, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %21
  %27 = load %struct.i1480*, %struct.i1480** %2, align 8
  %28 = getelementptr inbounds %struct.i1480, %struct.i1480* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.i1480*, %struct.i1480** %2, align 8
  %31 = getelementptr inbounds %struct.i1480, %struct.i1480* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @dev_err(i32 %29, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %37

34:                                               ; preds = %21
  %35 = load %struct.i1480*, %struct.i1480** %2, align 8
  %36 = call i32 @i1480_print_state(%struct.i1480* %35)
  br label %37

37:                                               ; preds = %34, %26
  br label %70

38:                                               ; preds = %16
  %39 = load %struct.i1480*, %struct.i1480** %2, align 8
  %40 = call i32 @i1480_phy_fw_upload(%struct.i1480* %39)
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* %3, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %38
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* @ENOENT, align 4
  %46 = sub nsw i32 0, %45
  %47 = icmp ne i32 %44, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load %struct.i1480*, %struct.i1480** %2, align 8
  %50 = call i32 @i1480_print_state(%struct.i1480* %49)
  br label %56

51:                                               ; preds = %43, %38
  %52 = load %struct.i1480*, %struct.i1480** %2, align 8
  %53 = getelementptr inbounds %struct.i1480, %struct.i1480* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @dev_info(i32 %54, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %56

56:                                               ; preds = %51, %48
  %57 = load %struct.i1480*, %struct.i1480** %2, align 8
  %58 = getelementptr inbounds %struct.i1480, %struct.i1480* %57, i32 0, i32 0
  %59 = bitcast {}** %58 to i32 (%struct.i1480*)**
  %60 = load i32 (%struct.i1480*)*, i32 (%struct.i1480*)** %59, align 8
  %61 = icmp ne i32 (%struct.i1480*)* %60, null
  br i1 %61, label %62, label %69

62:                                               ; preds = %56
  %63 = load %struct.i1480*, %struct.i1480** %2, align 8
  %64 = getelementptr inbounds %struct.i1480, %struct.i1480* %63, i32 0, i32 0
  %65 = bitcast {}** %64 to i32 (%struct.i1480*)**
  %66 = load i32 (%struct.i1480*)*, i32 (%struct.i1480*)** %65, align 8
  %67 = load %struct.i1480*, %struct.i1480** %2, align 8
  %68 = call i32 %66(%struct.i1480* %67)
  br label %69

69:                                               ; preds = %62, %56
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %69, %37, %13
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @i1480_pre_fw_upload(%struct.i1480*) #1

declare dso_local i32 @i1480_print_state(%struct.i1480*) #1

declare dso_local i32 @i1480_mac_fw_upload(%struct.i1480*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @i1480_phy_fw_upload(%struct.i1480*) #1

declare dso_local i32 @dev_info(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
