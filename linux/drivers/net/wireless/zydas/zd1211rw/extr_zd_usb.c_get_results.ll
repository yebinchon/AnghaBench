; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_usb.c_get_results.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_usb.c_get_results.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zd_usb = type { %struct.zd_usb_interrupt }
%struct.zd_usb_interrupt = type { i32, i32, %struct.read_regs_int }
%struct.read_regs_int = type { i64 }
%struct.usb_req_read_regs = type { i32 }
%struct.usb_int_regs = type { %struct.reg_data* }
%struct.reg_data = type { i32 }

@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"error: invalid read regs\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zd_usb*, i32*, %struct.usb_req_read_regs*, i32, i32*)* @get_results to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_results(%struct.zd_usb* %0, i32* %1, %struct.usb_req_read_regs* %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.zd_usb*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.usb_req_read_regs*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.zd_usb_interrupt*, align 8
  %14 = alloca %struct.read_regs_int*, align 8
  %15 = alloca %struct.usb_int_regs*, align 8
  %16 = alloca %struct.reg_data*, align 8
  store %struct.zd_usb* %0, %struct.zd_usb** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.usb_req_read_regs* %2, %struct.usb_req_read_regs** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %17 = load %struct.zd_usb*, %struct.zd_usb** %6, align 8
  %18 = getelementptr inbounds %struct.zd_usb, %struct.zd_usb* %17, i32 0, i32 0
  store %struct.zd_usb_interrupt* %18, %struct.zd_usb_interrupt** %13, align 8
  %19 = load %struct.zd_usb_interrupt*, %struct.zd_usb_interrupt** %13, align 8
  %20 = getelementptr inbounds %struct.zd_usb_interrupt, %struct.zd_usb_interrupt* %19, i32 0, i32 2
  store %struct.read_regs_int* %20, %struct.read_regs_int** %14, align 8
  %21 = load %struct.read_regs_int*, %struct.read_regs_int** %14, align 8
  %22 = getelementptr inbounds %struct.read_regs_int, %struct.read_regs_int* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.usb_int_regs*
  store %struct.usb_int_regs* %24, %struct.usb_int_regs** %15, align 8
  %25 = load %struct.zd_usb_interrupt*, %struct.zd_usb_interrupt** %13, align 8
  %26 = getelementptr inbounds %struct.zd_usb_interrupt, %struct.zd_usb_interrupt* %25, i32 0, i32 0
  %27 = call i32 @spin_lock_irq(i32* %26)
  %28 = load i32, i32* @EIO, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %11, align 4
  %30 = load %struct.zd_usb_interrupt*, %struct.zd_usb_interrupt** %13, align 8
  %31 = getelementptr inbounds %struct.zd_usb_interrupt, %struct.zd_usb_interrupt* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = load i32*, i32** %10, align 8
  store i32 %36, i32* %37, align 4
  %38 = load i32*, i32** %10, align 8
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %5
  br label %76

42:                                               ; preds = %5
  %43 = load %struct.zd_usb*, %struct.zd_usb** %6, align 8
  %44 = load %struct.usb_req_read_regs*, %struct.usb_req_read_regs** %8, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @check_read_regs(%struct.zd_usb* %43, %struct.usb_req_read_regs* %44, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %42
  %49 = load %struct.zd_usb*, %struct.zd_usb** %6, align 8
  %50 = call i32 @zd_usb_dev(%struct.zd_usb* %49)
  %51 = call i32 @dev_dbg_f(i32 %50, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %76

52:                                               ; preds = %42
  store i32 0, i32* %12, align 4
  br label %53

53:                                               ; preds = %72, %52
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp ult i32 %54, %55
  br i1 %56, label %57, label %75

57:                                               ; preds = %53
  %58 = load %struct.usb_int_regs*, %struct.usb_int_regs** %15, align 8
  %59 = getelementptr inbounds %struct.usb_int_regs, %struct.usb_int_regs* %58, i32 0, i32 0
  %60 = load %struct.reg_data*, %struct.reg_data** %59, align 8
  %61 = load i32, i32* %12, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.reg_data, %struct.reg_data* %60, i64 %62
  store %struct.reg_data* %63, %struct.reg_data** %16, align 8
  %64 = load %struct.reg_data*, %struct.reg_data** %16, align 8
  %65 = getelementptr inbounds %struct.reg_data, %struct.reg_data* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @le16_to_cpu(i32 %66)
  %68 = load i32*, i32** %7, align 8
  %69 = load i32, i32* %12, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  store i32 %67, i32* %71, align 4
  br label %72

72:                                               ; preds = %57
  %73 = load i32, i32* %12, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %12, align 4
  br label %53

75:                                               ; preds = %53
  store i32 0, i32* %11, align 4
  br label %76

76:                                               ; preds = %75, %48, %41
  %77 = load %struct.zd_usb_interrupt*, %struct.zd_usb_interrupt** %13, align 8
  %78 = getelementptr inbounds %struct.zd_usb_interrupt, %struct.zd_usb_interrupt* %77, i32 0, i32 0
  %79 = call i32 @spin_unlock_irq(i32* %78)
  %80 = load i32, i32* %11, align 4
  ret i32 %80
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @check_read_regs(%struct.zd_usb*, %struct.usb_req_read_regs*, i32) #1

declare dso_local i32 @dev_dbg_f(i32, i8*) #1

declare dso_local i32 @zd_usb_dev(%struct.zd_usb*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
