; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/intel_speed_select_if/extr_isst_if_mbox_msr.c_isst_if_send_mbox_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/intel_speed_select_if/extr_isst_if_mbox_msr.c_isst_if_send_mbox_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OS_MAILBOX_RETRY_COUNT = common dso_local global i32 0, align 4
@MSR_OS_MAILBOX_INTERFACE = common dso_local global i32 0, align 4
@MSR_OS_MAILBOX_BUSY_BIT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@MSR_OS_MAILBOX_DATA = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32*)* @isst_if_send_mbox_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isst_if_send_mbox_cmd(i32 %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %15 = load i32, i32* @OS_MAILBOX_RETRY_COUNT, align 4
  store i32 %15, i32* %12, align 4
  br label %16

16:                                               ; preds = %29, %5
  %17 = load i32, i32* @MSR_OS_MAILBOX_INTERFACE, align 4
  %18 = load i32, i32* %13, align 4
  %19 = call i32 @rdmsrl(i32 %17, i32 %18)
  %20 = load i32, i32* %13, align 4
  %21 = load i32, i32* @MSR_OS_MAILBOX_BUSY_BIT, align 4
  %22 = call i32 @BIT_ULL(i32 %21)
  %23 = and i32 %20, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %16
  %26 = load i32, i32* @EBUSY, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %14, align 4
  br label %29

28:                                               ; preds = %16
  store i32 0, i32* %14, align 4
  br label %33

29:                                               ; preds = %25
  %30 = load i32, i32* %12, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %12, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %16, label %33

33:                                               ; preds = %29, %28
  %34 = load i32, i32* %14, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load i32, i32* %14, align 4
  store i32 %37, i32* %6, align 4
  br label %93

38:                                               ; preds = %33
  %39 = load i32, i32* @MSR_OS_MAILBOX_DATA, align 4
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @wrmsrl(i32 %39, i32 %40)
  %42 = load i32, i32* @MSR_OS_MAILBOX_BUSY_BIT, align 4
  %43 = call i32 @BIT_ULL(i32 %42)
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @GENMASK_ULL(i32 13, i32 0)
  %46 = and i32 %44, %45
  %47 = shl i32 %46, 16
  %48 = or i32 %43, %47
  %49 = load i32, i32* %8, align 4
  %50 = shl i32 %49, 8
  %51 = or i32 %48, %50
  %52 = load i32, i32* %7, align 4
  %53 = or i32 %51, %52
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* @MSR_OS_MAILBOX_INTERFACE, align 4
  %55 = load i32, i32* %13, align 4
  %56 = call i32 @wrmsrl(i32 %54, i32 %55)
  %57 = load i32, i32* @OS_MAILBOX_RETRY_COUNT, align 4
  store i32 %57, i32* %12, align 4
  br label %58

58:                                               ; preds = %87, %38
  %59 = load i32, i32* @MSR_OS_MAILBOX_INTERFACE, align 4
  %60 = load i32, i32* %13, align 4
  %61 = call i32 @rdmsrl(i32 %59, i32 %60)
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* @MSR_OS_MAILBOX_BUSY_BIT, align 4
  %64 = call i32 @BIT_ULL(i32 %63)
  %65 = and i32 %62, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %58
  %68 = load i32, i32* @EBUSY, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %14, align 4
  br label %87

70:                                               ; preds = %58
  %71 = load i32, i32* %13, align 4
  %72 = and i32 %71, 255
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %70
  %75 = load i32, i32* @ENXIO, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %6, align 4
  br label %93

77:                                               ; preds = %70
  %78 = load i32*, i32** %11, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %86

80:                                               ; preds = %77
  %81 = load i32, i32* @MSR_OS_MAILBOX_DATA, align 4
  %82 = load i32, i32* %13, align 4
  %83 = call i32 @rdmsrl(i32 %81, i32 %82)
  %84 = load i32, i32* %13, align 4
  %85 = load i32*, i32** %11, align 8
  store i32 %84, i32* %85, align 4
  br label %86

86:                                               ; preds = %80, %77
  store i32 0, i32* %14, align 4
  br label %91

87:                                               ; preds = %67
  %88 = load i32, i32* %12, align 4
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %12, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %58, label %91

91:                                               ; preds = %87, %86
  %92 = load i32, i32* %14, align 4
  store i32 %92, i32* %6, align 4
  br label %93

93:                                               ; preds = %91, %74, %36
  %94 = load i32, i32* %6, align 4
  ret i32 %94
}

declare dso_local i32 @rdmsrl(i32, i32) #1

declare dso_local i32 @BIT_ULL(i32) #1

declare dso_local i32 @wrmsrl(i32, i32) #1

declare dso_local i32 @GENMASK_ULL(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
