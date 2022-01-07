; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_mass_storage.c_do_prevent_allow.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_mass_storage.c_do_prevent_allow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsg_common = type { i32*, %struct.fsg_lun* }
%struct.fsg_lun = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@SS_INVALID_COMMAND = common dso_local global i32 0, align 4
@SS_INVALID_FIELD_IN_CDB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsg_common*)* @do_prevent_allow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_prevent_allow(%struct.fsg_common* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fsg_common*, align 8
  %4 = alloca %struct.fsg_lun*, align 8
  %5 = alloca i32, align 4
  store %struct.fsg_common* %0, %struct.fsg_common** %3, align 8
  %6 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %7 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %6, i32 0, i32 1
  %8 = load %struct.fsg_lun*, %struct.fsg_lun** %7, align 8
  store %struct.fsg_lun* %8, %struct.fsg_lun** %4, align 8
  %9 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %10 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %9, i32 0, i32 1
  %11 = load %struct.fsg_lun*, %struct.fsg_lun** %10, align 8
  %12 = icmp ne %struct.fsg_lun* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %67

16:                                               ; preds = %1
  %17 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %18 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %17, i32 0, i32 1
  %19 = load %struct.fsg_lun*, %struct.fsg_lun** %18, align 8
  %20 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %16
  %24 = load i32, i32* @SS_INVALID_COMMAND, align 4
  %25 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %26 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %25, i32 0, i32 1
  %27 = load %struct.fsg_lun*, %struct.fsg_lun** %26, align 8
  %28 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %27, i32 0, i32 1
  store i32 %24, i32* %28, align 4
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %67

31:                                               ; preds = %16
  br label %32

32:                                               ; preds = %31
  %33 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %34 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 4
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, 1
  store i32 %38, i32* %5, align 4
  %39 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %40 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 4
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, -2
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %32
  %47 = load i32, i32* @SS_INVALID_FIELD_IN_CDB, align 4
  %48 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %49 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %67

52:                                               ; preds = %32
  %53 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %54 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %57
  %61 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %62 = call i32 @fsg_lun_fsync_sub(%struct.fsg_lun* %61)
  br label %63

63:                                               ; preds = %60, %57, %52
  %64 = load i32, i32* %5, align 4
  %65 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %66 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %63, %46, %23, %13
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @fsg_lun_fsync_sub(%struct.fsg_lun*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
