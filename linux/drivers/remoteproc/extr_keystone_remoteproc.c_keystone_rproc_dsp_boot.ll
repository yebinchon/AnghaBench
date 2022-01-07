; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_keystone_remoteproc.c_keystone_rproc_dsp_boot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_keystone_remoteproc.c_keystone_rproc_dsp_boot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.keystone_rproc = type { i32, i32, i32, i32 }

@SZ_1K = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"invalid boot address 0x%x, must be aligned on a 1KB boundary\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"regmap_write of boot address failed, status = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.keystone_rproc*, i32)* @keystone_rproc_dsp_boot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @keystone_rproc_dsp_boot(%struct.keystone_rproc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.keystone_rproc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.keystone_rproc* %0, %struct.keystone_rproc** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @SZ_1K, align 4
  %9 = sub nsw i32 %8, 1
  %10 = and i32 %7, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load %struct.keystone_rproc*, %struct.keystone_rproc** %4, align 8
  %14 = getelementptr inbounds %struct.keystone_rproc, %struct.keystone_rproc* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @dev_err(i32 %15, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %43

20:                                               ; preds = %2
  %21 = load %struct.keystone_rproc*, %struct.keystone_rproc** %4, align 8
  %22 = getelementptr inbounds %struct.keystone_rproc, %struct.keystone_rproc* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.keystone_rproc*, %struct.keystone_rproc** %4, align 8
  %25 = getelementptr inbounds %struct.keystone_rproc, %struct.keystone_rproc* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @regmap_write(i32 %23, i32 %26, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %20
  %32 = load %struct.keystone_rproc*, %struct.keystone_rproc** %4, align 8
  %33 = getelementptr inbounds %struct.keystone_rproc, %struct.keystone_rproc* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @dev_err(i32 %34, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %3, align 4
  br label %43

38:                                               ; preds = %20
  %39 = load %struct.keystone_rproc*, %struct.keystone_rproc** %4, align 8
  %40 = getelementptr inbounds %struct.keystone_rproc, %struct.keystone_rproc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @reset_control_deassert(i32 %41)
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %38, %31, %12
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @reset_control_deassert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
