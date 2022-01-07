; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_storage_common.c__fsg_store_ro.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_storage_common.c__fsg_store_ro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsg_lun = type { i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"read-only status change prevented\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"read-only status set to %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsg_lun*, i32)* @_fsg_store_ro to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_fsg_store_ro(%struct.fsg_lun* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fsg_lun*, align 8
  %5 = alloca i32, align 4
  store %struct.fsg_lun* %0, %struct.fsg_lun** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %7 = call i64 @fsg_lun_is_open(%struct.fsg_lun* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %11 = call i32 (%struct.fsg_lun*, i8*, ...) @LDBG(%struct.fsg_lun* %10, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @EBUSY, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %26

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %17 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %20 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %22 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %23 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 (%struct.fsg_lun*, i8*, ...) @LDBG(%struct.fsg_lun* %21, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %14, %9
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i64 @fsg_lun_is_open(%struct.fsg_lun*) #1

declare dso_local i32 @LDBG(%struct.fsg_lun*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
