; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_lpc.c_cros_ec_lpc_readmem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_lpc.c_cros_ec_lpc_readmem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i64, i32, i8*)* }
%struct.cros_ec_device = type { i32 }

@EC_MEMMAP_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@cros_ec_lpc_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@EC_LPC_ADDR_MEMMAP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cros_ec_device*, i32, i32, i8*)* @cros_ec_lpc_readmem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cros_ec_lpc_readmem(%struct.cros_ec_device* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cros_ec_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.cros_ec_device* %0, %struct.cros_ec_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* %10, align 4
  %14 = load i8*, i8** %9, align 8
  store i8* %14, i8** %11, align 8
  store i32 0, i32* %12, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @EC_MEMMAP_SIZE, align 4
  %17 = load i32, i32* %8, align 4
  %18 = sub i32 %16, %17
  %19 = icmp uge i32 %15, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %63

23:                                               ; preds = %4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %23
  %27 = load i32 (i64, i32, i8*)*, i32 (i64, i32, i8*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cros_ec_lpc_ops, i32 0, i32 0), align 8
  %28 = load i64, i64* @EC_LPC_ADDR_MEMMAP, align 8
  %29 = load i32, i32* %7, align 4
  %30 = zext i32 %29 to i64
  %31 = add nsw i64 %28, %30
  %32 = load i32, i32* %8, align 4
  %33 = load i8*, i8** %11, align 8
  %34 = call i32 %27(i64 %31, i32 %32, i8* %33)
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %5, align 4
  br label %63

36:                                               ; preds = %23
  br label %37

37:                                               ; preds = %56, %36
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @EC_MEMMAP_SIZE, align 4
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %41, label %61

41:                                               ; preds = %37
  %42 = load i32 (i64, i32, i8*)*, i32 (i64, i32, i8*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cros_ec_lpc_ops, i32 0, i32 0), align 8
  %43 = load i64, i64* @EC_LPC_ADDR_MEMMAP, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %43, %45
  %47 = load i8*, i8** %11, align 8
  %48 = call i32 %42(i64 %46, i32 1, i8* %47)
  %49 = load i32, i32* %12, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %12, align 4
  %51 = load i8*, i8** %11, align 8
  %52 = load i8, i8* %51, align 1
  %53 = icmp ne i8 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %41
  br label %61

55:                                               ; preds = %41
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %10, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %10, align 4
  %59 = load i8*, i8** %11, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %11, align 8
  br label %37

61:                                               ; preds = %54, %37
  %62 = load i32, i32* %12, align 4
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %61, %26, %20
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
