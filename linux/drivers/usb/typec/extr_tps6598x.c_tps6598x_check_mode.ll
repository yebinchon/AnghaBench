; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/extr_tps6598x.c_tps6598x_check_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/extr_tps6598x.c_tps6598x_check_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tps6598x = type { i32 }

@TPS_REG_MODE = common dso_local global i32 0, align 4
@modes = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"dead-battery condition\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"controller in unsupported mode \22%s\22\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tps6598x*)* @tps6598x_check_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps6598x_check_mode(%struct.tps6598x* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tps6598x*, align 8
  %4 = alloca [5 x i8], align 1
  %5 = alloca i32, align 4
  store %struct.tps6598x* %0, %struct.tps6598x** %3, align 8
  %6 = bitcast [5 x i8]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %6, i8 0, i64 5, i1 false)
  %7 = load %struct.tps6598x*, %struct.tps6598x** %3, align 8
  %8 = load i32, i32* @TPS_REG_MODE, align 4
  %9 = getelementptr inbounds [5 x i8], [5 x i8]* %4, i64 0, i64 0
  %10 = call i32 @tps6598x_read32(%struct.tps6598x* %7, i32 %8, i8* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %2, align 4
  br label %37

15:                                               ; preds = %1
  %16 = load i32, i32* @modes, align 4
  %17 = load i32, i32* @modes, align 4
  %18 = call i32 @ARRAY_SIZE(i32 %17)
  %19 = getelementptr inbounds [5 x i8], [5 x i8]* %4, i64 0, i64 0
  %20 = call i32 @match_string(i32 %16, i32 %18, i8* %19)
  switch i32 %20, label %28 [
    i32 131, label %21
    i32 129, label %22
    i32 130, label %27
    i32 128, label %27
  ]

21:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %37

22:                                               ; preds = %15
  %23 = load %struct.tps6598x*, %struct.tps6598x** %3, align 8
  %24 = getelementptr inbounds %struct.tps6598x, %struct.tps6598x* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @dev_warn(i32 %25, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %37

27:                                               ; preds = %15, %15
  br label %28

28:                                               ; preds = %15, %27
  %29 = load %struct.tps6598x*, %struct.tps6598x** %3, align 8
  %30 = getelementptr inbounds %struct.tps6598x, %struct.tps6598x* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds [5 x i8], [5 x i8]* %4, i64 0, i64 0
  %33 = call i32 @dev_err(i32 %31, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %32)
  br label %34

34:                                               ; preds = %28
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %34, %22, %21, %13
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @tps6598x_read32(%struct.tps6598x*, i32, i8*) #2

declare dso_local i32 @match_string(i32, i32, i8*) #2

declare dso_local i32 @ARRAY_SIZE(i32) #2

declare dso_local i32 @dev_warn(i32, i8*) #2

declare dso_local i32 @dev_err(i32, i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
