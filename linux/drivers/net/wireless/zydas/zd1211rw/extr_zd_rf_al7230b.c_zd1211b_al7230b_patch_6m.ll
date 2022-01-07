; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_rf_al7230b.c_zd1211b_al7230b_patch_6m.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_rf_al7230b.c_zd1211b_al7230b_patch_6m.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zd_rf = type { i32 }
%struct.zd_chip = type { i32 }
%struct.zd_ioreq16 = type { i32, i32, i32 }

@ZD_CR128 = common dso_local global i32 0, align 4
@ZD_CR129 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"patching for channel %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zd_rf*, i32)* @zd1211b_al7230b_patch_6m to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zd1211b_al7230b_patch_6m(%struct.zd_rf* %0, i32 %1) #0 {
  %3 = alloca %struct.zd_rf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.zd_chip*, align 8
  %6 = alloca [2 x %struct.zd_ioreq16], align 16
  store %struct.zd_rf* %0, %struct.zd_rf** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.zd_rf*, %struct.zd_rf** %3, align 8
  %8 = call %struct.zd_chip* @zd_rf_to_chip(%struct.zd_rf* %7)
  store %struct.zd_chip* %8, %struct.zd_chip** %5, align 8
  %9 = getelementptr inbounds [2 x %struct.zd_ioreq16], [2 x %struct.zd_ioreq16]* %6, i64 0, i64 0
  %10 = getelementptr inbounds %struct.zd_ioreq16, %struct.zd_ioreq16* %9, i32 0, i32 0
  %11 = load i32, i32* @ZD_CR128, align 4
  store i32 %11, i32* %10, align 4
  %12 = getelementptr inbounds %struct.zd_ioreq16, %struct.zd_ioreq16* %9, i32 0, i32 1
  store i32 20, i32* %12, align 4
  %13 = getelementptr inbounds %struct.zd_ioreq16, %struct.zd_ioreq16* %9, i32 0, i32 2
  store i32 0, i32* %13, align 4
  %14 = getelementptr inbounds %struct.zd_ioreq16, %struct.zd_ioreq16* %9, i64 1
  %15 = getelementptr inbounds %struct.zd_ioreq16, %struct.zd_ioreq16* %14, i32 0, i32 0
  %16 = load i32, i32* @ZD_CR129, align 4
  store i32 %16, i32* %15, align 4
  %17 = getelementptr inbounds %struct.zd_ioreq16, %struct.zd_ioreq16* %14, i32 0, i32 1
  store i32 18, i32* %17, align 4
  %18 = getelementptr inbounds %struct.zd_ioreq16, %struct.zd_ioreq16* %14, i32 0, i32 2
  store i32 0, i32* %18, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %26

21:                                               ; preds = %2
  %22 = getelementptr inbounds [2 x %struct.zd_ioreq16], [2 x %struct.zd_ioreq16]* %6, i64 0, i64 0
  %23 = getelementptr inbounds %struct.zd_ioreq16, %struct.zd_ioreq16* %22, i32 0, i32 1
  store i32 14, i32* %23, align 4
  %24 = getelementptr inbounds [2 x %struct.zd_ioreq16], [2 x %struct.zd_ioreq16]* %6, i64 0, i64 1
  %25 = getelementptr inbounds %struct.zd_ioreq16, %struct.zd_ioreq16* %24, i32 0, i32 1
  store i32 16, i32* %25, align 4
  br label %35

26:                                               ; preds = %2
  %27 = load i32, i32* %4, align 4
  %28 = icmp eq i32 %27, 11
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = getelementptr inbounds [2 x %struct.zd_ioreq16], [2 x %struct.zd_ioreq16]* %6, i64 0, i64 0
  %31 = getelementptr inbounds %struct.zd_ioreq16, %struct.zd_ioreq16* %30, i32 0, i32 1
  store i32 16, i32* %31, align 4
  %32 = getelementptr inbounds [2 x %struct.zd_ioreq16], [2 x %struct.zd_ioreq16]* %6, i64 0, i64 1
  %33 = getelementptr inbounds %struct.zd_ioreq16, %struct.zd_ioreq16* %32, i32 0, i32 1
  store i32 16, i32* %33, align 4
  br label %34

34:                                               ; preds = %29, %26
  br label %35

35:                                               ; preds = %34, %21
  %36 = load %struct.zd_chip*, %struct.zd_chip** %5, align 8
  %37 = call i32 @zd_chip_dev(%struct.zd_chip* %36)
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @dev_dbg_f(i32 %37, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load %struct.zd_chip*, %struct.zd_chip** %5, align 8
  %41 = getelementptr inbounds [2 x %struct.zd_ioreq16], [2 x %struct.zd_ioreq16]* %6, i64 0, i64 0
  %42 = getelementptr inbounds [2 x %struct.zd_ioreq16], [2 x %struct.zd_ioreq16]* %6, i64 0, i64 0
  %43 = call i32 @ARRAY_SIZE(%struct.zd_ioreq16* %42)
  %44 = call i32 @zd_iowrite16a_locked(%struct.zd_chip* %40, %struct.zd_ioreq16* %41, i32 %43)
  ret i32 %44
}

declare dso_local %struct.zd_chip* @zd_rf_to_chip(%struct.zd_rf*) #1

declare dso_local i32 @dev_dbg_f(i32, i8*, i32) #1

declare dso_local i32 @zd_chip_dev(%struct.zd_chip*) #1

declare dso_local i32 @zd_iowrite16a_locked(%struct.zd_chip*, %struct.zd_ioreq16*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.zd_ioreq16*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
