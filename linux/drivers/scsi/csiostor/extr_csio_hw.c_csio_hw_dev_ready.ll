; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_hw.c_csio_hw_dev_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_hw.c_csio_hw_dev_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_hw = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PL_WHOAMI_A = common dso_local global i32 0, align 4
@CSIO_HW_CHIP_MASK = common dso_local global i32 0, align 4
@CSIO_MAX_PFN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"PL_WHOAMI returned 0x%x, cnt:%d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.csio_hw*)* @csio_hw_dev_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csio_hw_dev_ready(%struct.csio_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.csio_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.csio_hw* %0, %struct.csio_hw** %3, align 8
  store i32 6, i32* %5, align 4
  br label %7

7:                                                ; preds = %18, %1
  %8 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %9 = load i32, i32* @PL_WHOAMI_A, align 4
  %10 = call i32 @csio_rd_reg32(%struct.csio_hw* %8, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %16

12:                                               ; preds = %7
  %13 = load i32, i32* %5, align 4
  %14 = add nsw i32 %13, -1
  store i32 %14, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br label %16

16:                                               ; preds = %12, %7
  %17 = phi i1 [ false, %7 ], [ %15, %12 ]
  br i1 %17, label %18, label %20

18:                                               ; preds = %16
  %19 = call i32 @mdelay(i32 100)
  br label %7

20:                                               ; preds = %16
  %21 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %22 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @CSIO_HW_CHIP_MASK, align 4
  %27 = and i32 %25, %26
  %28 = call i64 @csio_is_t5(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %20
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @SOURCEPF_G(i32 %31)
  store i32 %32, i32* %6, align 4
  br label %36

33:                                               ; preds = %20
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @T6_SOURCEPF_G(i32 %34)
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %33, %30
  %37 = load i32, i32* %5, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %54

39:                                               ; preds = %36
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @CSIO_MAX_PFN, align 4
  %46 = icmp sge i32 %44, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %43, %39
  %48 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @csio_err(%struct.csio_hw* %48, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %50)
  %52 = load i32, i32* @EIO, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %58

54:                                               ; preds = %43, %36
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %57 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %54, %47
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @csio_rd_reg32(%struct.csio_hw*, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i64 @csio_is_t5(i32) #1

declare dso_local i32 @SOURCEPF_G(i32) #1

declare dso_local i32 @T6_SOURCEPF_G(i32) #1

declare dso_local i32 @csio_err(%struct.csio_hw*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
