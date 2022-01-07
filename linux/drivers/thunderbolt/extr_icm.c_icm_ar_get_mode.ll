; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_icm.c_icm_ar_get_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_icm.c_icm_ar_get_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb = type { %struct.tb_nhi* }
%struct.tb_nhi = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@REG_FW_STS = common dso_local global i64 0, align 8
@REG_FW_STS_NVM_AUTH_DONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"ICM firmware not authenticated\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tb*)* @icm_ar_get_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icm_ar_get_mode(%struct.tb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tb*, align 8
  %4 = alloca %struct.tb_nhi*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tb* %0, %struct.tb** %3, align 8
  %7 = load %struct.tb*, %struct.tb** %3, align 8
  %8 = getelementptr inbounds %struct.tb, %struct.tb* %7, i32 0, i32 0
  %9 = load %struct.tb_nhi*, %struct.tb_nhi** %8, align 8
  store %struct.tb_nhi* %9, %struct.tb_nhi** %4, align 8
  store i32 60, i32* %5, align 4
  br label %10

10:                                               ; preds = %24, %1
  %11 = load %struct.tb_nhi*, %struct.tb_nhi** %4, align 8
  %12 = getelementptr inbounds %struct.tb_nhi, %struct.tb_nhi* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @REG_FW_STS, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @ioread32(i64 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @REG_FW_STS_NVM_AUTH_DONE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %10
  br label %28

22:                                               ; preds = %10
  %23 = call i32 @msleep(i32 50)
  br label %24

24:                                               ; preds = %22
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %10, label %28

28:                                               ; preds = %24, %21
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %28
  %32 = load %struct.tb_nhi*, %struct.tb_nhi** %4, align 8
  %33 = getelementptr inbounds %struct.tb_nhi, %struct.tb_nhi* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = call i32 @dev_err(i32* %35, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @ENODEV, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %42

39:                                               ; preds = %28
  %40 = load %struct.tb_nhi*, %struct.tb_nhi** %4, align 8
  %41 = call i32 @nhi_mailbox_mode(%struct.tb_nhi* %40)
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %39, %31
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @nhi_mailbox_mode(%struct.tb_nhi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
