; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_hwio.c_cw1200_data_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_hwio.c_cw1200_data_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cw1200_common = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32)*, i32 (i32)* }

@MAX_RETRY = common dso_local global i32 0, align 4
@ST90TDS_IN_OUT_QUEUE_REG_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"error :[%d]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cw1200_data_write(%struct.cw1200_common* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.cw1200_common*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cw1200_common* %0, %struct.cw1200_common** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 1, i32* %8, align 4
  %10 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %11 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %9, align 4
  %13 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %14 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32 (i32)*, i32 (i32)** %16, align 8
  %18 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %19 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 %17(i32 %20)
  br label %22

22:                                               ; preds = %48, %3
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @MAX_RETRY, align 4
  %25 = icmp sle i32 %23, %24
  br i1 %25, label %26, label %49

26:                                               ; preds = %22
  %27 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %28 = load i32, i32* @ST90TDS_IN_OUT_QUEUE_REG_ID, align 4
  %29 = load i8*, i8** %5, align 8
  %30 = load i64, i64* %6, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @__cw1200_reg_write(%struct.cw1200_common* %27, i32 %28, i8* %29, i64 %30, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %26
  %36 = load i32, i32* %9, align 4
  %37 = add nsw i32 %36, 1
  %38 = and i32 %37, 31
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %41 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  br label %49

42:                                               ; preds = %26
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %8, align 4
  %45 = call i32 @mdelay(i32 1)
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @pr_err(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %42
  br label %22

49:                                               ; preds = %35, %22
  %50 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %51 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %50, i32 0, i32 2
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32 (i32)*, i32 (i32)** %53, align 8
  %55 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %56 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 %54(i32 %57)
  %59 = load i32, i32* %7, align 4
  ret i32 %59
}

declare dso_local i32 @__cw1200_reg_write(%struct.cw1200_common*, i32, i8*, i64, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
