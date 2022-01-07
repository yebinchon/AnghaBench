; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/most/i2c/extr_i2c.c_do_rx_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/most/i2c/extr_i2c.c_do_rx_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdm_i2c = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.mbo = type { i32 (%struct.mbo*)*, i32, i32, i32, i32, i32 }

@MAX_BUF_SIZE_CONTROL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Failed to receive PML\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to receive a Port Message\0A\00", align 1
@MBO_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hdm_i2c*)* @do_rx_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_rx_work(%struct.hdm_i2c* %0) #0 {
  %2 = alloca %struct.hdm_i2c*, align 8
  %3 = alloca %struct.mbo*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hdm_i2c* %0, %struct.hdm_i2c** %2, align 8
  %10 = load i32, i32* @MAX_BUF_SIZE_CONTROL, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %4, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %5, align 8
  %14 = load %struct.hdm_i2c*, %struct.hdm_i2c** %2, align 8
  %15 = getelementptr inbounds %struct.hdm_i2c, %struct.hdm_i2c* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @i2c_master_recv(i32 %16, i8* %13, i32 2)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp sle i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = call i32 @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %76

22:                                               ; preds = %1
  %23 = getelementptr inbounds i8, i8* %13, i64 0
  %24 = load i8, i8* %23, align 16
  %25 = zext i8 %24 to i32
  %26 = shl i32 %25, 8
  %27 = getelementptr inbounds i8, i8* %13, i64 1
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = or i32 %26, %29
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %22
  store i32 1, i32* %9, align 4
  br label %76

34:                                               ; preds = %22
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, 2
  store i32 %36, i32* %8, align 4
  %37 = load %struct.hdm_i2c*, %struct.hdm_i2c** %2, align 8
  %38 = getelementptr inbounds %struct.hdm_i2c, %struct.hdm_i2c* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @i2c_master_recv(i32 %39, i8* %13, i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp sle i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %34
  %45 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %76

46:                                               ; preds = %34
  %47 = load %struct.hdm_i2c*, %struct.hdm_i2c** %2, align 8
  %48 = getelementptr inbounds %struct.hdm_i2c, %struct.hdm_i2c* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = call %struct.mbo* @list_first_mbo(i32* %49)
  store %struct.mbo* %50, %struct.mbo** %3, align 8
  %51 = load %struct.mbo*, %struct.mbo** %3, align 8
  %52 = getelementptr inbounds %struct.mbo, %struct.mbo* %51, i32 0, i32 5
  %53 = call i32 @list_del(i32* %52)
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.mbo*, %struct.mbo** %3, align 8
  %56 = getelementptr inbounds %struct.mbo, %struct.mbo* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @min(i32 %54, i32 %57)
  %59 = load %struct.mbo*, %struct.mbo** %3, align 8
  %60 = getelementptr inbounds %struct.mbo, %struct.mbo* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 4
  %61 = load %struct.mbo*, %struct.mbo** %3, align 8
  %62 = getelementptr inbounds %struct.mbo, %struct.mbo* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.mbo*, %struct.mbo** %3, align 8
  %65 = getelementptr inbounds %struct.mbo, %struct.mbo* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @memcpy(i32 %63, i8* %13, i32 %66)
  %68 = load i32, i32* @MBO_SUCCESS, align 4
  %69 = load %struct.mbo*, %struct.mbo** %3, align 8
  %70 = getelementptr inbounds %struct.mbo, %struct.mbo* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 8
  %71 = load %struct.mbo*, %struct.mbo** %3, align 8
  %72 = getelementptr inbounds %struct.mbo, %struct.mbo* %71, i32 0, i32 0
  %73 = load i32 (%struct.mbo*)*, i32 (%struct.mbo*)** %72, align 8
  %74 = load %struct.mbo*, %struct.mbo** %3, align 8
  %75 = call i32 %73(%struct.mbo* %74)
  store i32 0, i32* %9, align 4
  br label %76

76:                                               ; preds = %46, %44, %33, %20
  %77 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %77)
  %78 = load i32, i32* %9, align 4
  switch i32 %78, label %80 [
    i32 0, label %79
    i32 1, label %79
  ]

79:                                               ; preds = %76, %76
  ret void

80:                                               ; preds = %76
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @i2c_master_recv(i32, i8*, i32) #2

declare dso_local i32 @pr_err(i8*) #2

declare dso_local %struct.mbo* @list_first_mbo(i32*) #2

declare dso_local i32 @list_del(i32*) #2

declare dso_local i32 @min(i32, i32) #2

declare dso_local i32 @memcpy(i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
