; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_rf_al7230b.c_zd1211b_al7230b_finalize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_rf_al7230b.c_zd1211b_al7230b_finalize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zd_ioreq16 = type { i32, i32 }
%struct.zd_chip = type { i64 }

@zd1211b_al7230b_finalize.ioreqs = internal constant [9 x %struct.zd_ioreq16] [%struct.zd_ioreq16 { i32 129, i32 48 }, %struct.zd_ioreq16 { i32 128, i32 48 }, %struct.zd_ioreq16 { i32 130, i32 88 }, %struct.zd_ioreq16 { i32 135, i32 240 }, %struct.zd_ioreq16 { i32 132, i32 27 }, %struct.zd_ioreq16 { i32 131, i32 88 }, %struct.zd_ioreq16 { i32 134, i32 4 }, %struct.zd_ioreq16 zeroinitializer, %struct.zd_ioreq16 { i32 133, i32 128 }], align 16
@ZD_CR9 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zd_chip*)* @zd1211b_al7230b_finalize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zd1211b_al7230b_finalize(%struct.zd_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zd_chip*, align 8
  %4 = alloca i32, align 4
  store %struct.zd_chip* %0, %struct.zd_chip** %3, align 8
  %5 = load %struct.zd_chip*, %struct.zd_chip** %3, align 8
  %6 = call i32 @ARRAY_SIZE(%struct.zd_ioreq16* getelementptr inbounds ([9 x %struct.zd_ioreq16], [9 x %struct.zd_ioreq16]* @zd1211b_al7230b_finalize.ioreqs, i64 0, i64 0))
  %7 = call i32 @zd_iowrite16a_locked(%struct.zd_chip* %5, %struct.zd_ioreq16* getelementptr inbounds ([9 x %struct.zd_ioreq16], [9 x %struct.zd_ioreq16]* @zd1211b_al7230b_finalize.ioreqs, i64 0, i64 0), i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %2, align 4
  br label %29

12:                                               ; preds = %1
  %13 = load %struct.zd_chip*, %struct.zd_chip** %3, align 8
  %14 = getelementptr inbounds %struct.zd_chip, %struct.zd_chip* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %12
  %18 = load %struct.zd_chip*, %struct.zd_chip** %3, align 8
  %19 = load i32, i32* @ZD_CR9, align 4
  %20 = call i32 @zd_iowrite16_locked(%struct.zd_chip* %18, i32 229, i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* %2, align 4
  br label %29

25:                                               ; preds = %17
  br label %26

26:                                               ; preds = %25, %12
  %27 = load %struct.zd_chip*, %struct.zd_chip** %3, align 8
  %28 = call i32 @zd_iowrite16_locked(%struct.zd_chip* %27, i32 4, i32 134)
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %26, %23, %10
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @zd_iowrite16a_locked(%struct.zd_chip*, %struct.zd_ioreq16*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.zd_ioreq16*) #1

declare dso_local i32 @zd_iowrite16_locked(%struct.zd_chip*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
