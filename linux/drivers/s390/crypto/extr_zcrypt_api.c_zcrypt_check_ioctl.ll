; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_zcrypt_api.c_zcrypt_check_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_zcrypt_api.c_zcrypt_check_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ap_perms = type { i32 }

@EPERM = common dso_local global i32 0, align 4
@_IOC_NRMASK = common dso_local global i32 0, align 4
@_IOC_NRSHIFT = common dso_local global i32 0, align 4
@AP_IOCTLS = common dso_local global i32 0, align 4
@DBF_WARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"ioctl check failed: ioctlnr=0x%04x rc=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ap_perms*, i32)* @zcrypt_check_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zcrypt_check_ioctl(%struct.ap_perms* %0, i32 %1) #0 {
  %3 = alloca %struct.ap_perms*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ap_perms* %0, %struct.ap_perms** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @EPERM, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @_IOC_NRMASK, align 4
  %11 = and i32 %9, %10
  %12 = load i32, i32* @_IOC_NRSHIFT, align 4
  %13 = lshr i32 %11, %12
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @AP_IOCTLS, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %16
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.ap_perms*, %struct.ap_perms** %3, align 8
  %23 = getelementptr inbounds %struct.ap_perms, %struct.ap_perms* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @test_bit_inv(i32 %21, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %27, %20
  br label %29

29:                                               ; preds = %28, %16, %2
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load i32, i32* @DBF_WARN, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @ZCRYPT_DBF(i32 %33, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %32, %29
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local i64 @test_bit_inv(i32, i32) #1

declare dso_local i32 @ZCRYPT_DBF(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
