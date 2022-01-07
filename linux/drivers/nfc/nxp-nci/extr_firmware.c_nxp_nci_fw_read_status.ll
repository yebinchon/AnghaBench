; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/nxp-nci/extr_firmware.c_nxp_nci_fw_read_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/nxp-nci/extr_firmware.c_nxp_nci_fw_read_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@ENOKEY = common dso_local global i32 0, align 4
@EKEYREJECTED = common dso_local global i32 0, align 4
@EALREADY = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@EHWPOISON = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @nxp_nci_fw_read_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nxp_nci_fw_read_status(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %41 [
    i32 135, label %5
    i32 137, label %6
    i32 128, label %9
    i32 141, label %12
    i32 140, label %15
    i32 139, label %18
    i32 136, label %21
    i32 129, label %24
    i32 138, label %27
    i32 131, label %30
    i32 130, label %33
    i32 134, label %36
    i32 132, label %37
    i32 133, label %38
  ]

5:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %44

6:                                                ; preds = %1
  %7 = load i32, i32* @EINVAL, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %2, align 4
  br label %44

9:                                                ; preds = %1
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %44

12:                                               ; preds = %1
  %13 = load i32, i32* @EMSGSIZE, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %44

15:                                               ; preds = %1
  %16 = load i32, i32* @EADDRNOTAVAIL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %44

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOBUFS, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %44

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOKEY, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %44

24:                                               ; preds = %1
  %25 = load i32, i32* @EKEYREJECTED, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %44

27:                                               ; preds = %1
  %28 = load i32, i32* @EALREADY, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %44

30:                                               ; preds = %1
  %31 = load i32, i32* @EPROTO, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %44

33:                                               ; preds = %1
  %34 = load i32, i32* @EHWPOISON, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %44

36:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %44

37:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %44

38:                                               ; preds = %1
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %44

41:                                               ; preds = %1
  %42 = load i32, i32* @EIO, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %41, %38, %37, %36, %33, %30, %27, %24, %21, %18, %15, %12, %9, %6, %5
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
