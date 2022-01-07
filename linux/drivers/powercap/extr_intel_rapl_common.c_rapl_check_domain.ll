; ModuleID = '/home/carl/AnghaBench/linux/drivers/powercap/extr_intel_rapl_common.c_rapl_check_domain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/powercap/extr_intel_rapl_common.c_rapl_check_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rapl_package = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (i32, %struct.reg_action*)*, i32** }
%struct.reg_action = type { i32, i32, i32 }

@RAPL_DOMAIN_REG_STATUS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"invalid domain id %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.rapl_package*)* @rapl_check_domain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rapl_check_domain(i32 %0, i32 %1, %struct.rapl_package* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rapl_package*, align 8
  %8 = alloca %struct.reg_action, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.rapl_package* %2, %struct.rapl_package** %7, align 8
  %9 = load i32, i32* %6, align 4
  switch i32 %9, label %27 [
    i32 131, label %10
    i32 129, label %10
    i32 128, label %10
    i32 132, label %10
    i32 130, label %24
  ]

10:                                               ; preds = %3, %3, %3, %3
  %11 = load %struct.rapl_package*, %struct.rapl_package** %7, align 8
  %12 = getelementptr inbounds %struct.rapl_package, %struct.rapl_package* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32**, i32*** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32*, i32** %15, i64 %17
  %19 = load i32*, i32** %18, align 8
  %20 = load i64, i64* @RAPL_DOMAIN_REG_STATUS, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.reg_action, %struct.reg_action* %8, i32 0, i32 2
  store i32 %22, i32* %23, align 4
  br label %32

24:                                               ; preds = %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %50

27:                                               ; preds = %3
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %50

32:                                               ; preds = %10
  %33 = getelementptr inbounds %struct.reg_action, %struct.reg_action* %8, i32 0, i32 1
  store i32 -1, i32* %33, align 4
  %34 = load %struct.rapl_package*, %struct.rapl_package** %7, align 8
  %35 = getelementptr inbounds %struct.rapl_package, %struct.rapl_package* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64 (i32, %struct.reg_action*)*, i64 (i32, %struct.reg_action*)** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i64 %38(i32 %39, %struct.reg_action* %8)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %32
  %43 = getelementptr inbounds %struct.reg_action, %struct.reg_action* %8, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %42, %32
  %47 = load i32, i32* @ENODEV, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %50

49:                                               ; preds = %42
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %49, %46, %27, %24
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
