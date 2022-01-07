; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_usb.c_check_read_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_usb.c_check_read_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zd_usb = type { %struct.zd_usb_interrupt }
%struct.zd_usb_interrupt = type { %struct.read_regs_int }
%struct.read_regs_int = type { i32, i64 }
%struct.usb_req_read_regs = type { i64* }
%struct.usb_int_regs = type { %struct.reg_data* }
%struct.reg_data = type { i64 }

@.str = private unnamed_addr constant [48 x i8] c"error: actual length %d less than expected %zu\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"error: actual length %d exceeds buffer size %zu\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"rd[%d] addr %#06hx expected %#06hx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zd_usb*, %struct.usb_req_read_regs*, i32)* @check_read_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_read_regs(%struct.zd_usb* %0, %struct.usb_req_read_regs* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.zd_usb*, align 8
  %6 = alloca %struct.usb_req_read_regs*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.zd_usb_interrupt*, align 8
  %10 = alloca %struct.read_regs_int*, align 8
  %11 = alloca %struct.usb_int_regs*, align 8
  %12 = alloca %struct.reg_data*, align 8
  store %struct.zd_usb* %0, %struct.zd_usb** %5, align 8
  store %struct.usb_req_read_regs* %1, %struct.usb_req_read_regs** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.zd_usb*, %struct.zd_usb** %5, align 8
  %14 = getelementptr inbounds %struct.zd_usb, %struct.zd_usb* %13, i32 0, i32 0
  store %struct.zd_usb_interrupt* %14, %struct.zd_usb_interrupt** %9, align 8
  %15 = load %struct.zd_usb_interrupt*, %struct.zd_usb_interrupt** %9, align 8
  %16 = getelementptr inbounds %struct.zd_usb_interrupt, %struct.zd_usb_interrupt* %15, i32 0, i32 0
  store %struct.read_regs_int* %16, %struct.read_regs_int** %10, align 8
  %17 = load %struct.read_regs_int*, %struct.read_regs_int** %10, align 8
  %18 = getelementptr inbounds %struct.read_regs_int, %struct.read_regs_int* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.usb_int_regs*
  store %struct.usb_int_regs* %20, %struct.usb_int_regs** %11, align 8
  %21 = load %struct.read_regs_int*, %struct.read_regs_int** %10, align 8
  %22 = getelementptr inbounds %struct.read_regs_int, %struct.read_regs_int* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.usb_int_regs*, %struct.usb_int_regs** %11, align 8
  %25 = load %struct.usb_int_regs*, %struct.usb_int_regs** %11, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @struct_size(%struct.usb_int_regs* %24, %struct.usb_int_regs* %25, i32 %26)
  %28 = icmp slt i32 %23, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %3
  %30 = load %struct.zd_usb*, %struct.zd_usb** %5, align 8
  %31 = call i32 @zd_usb_dev(%struct.zd_usb* %30)
  %32 = load %struct.read_regs_int*, %struct.read_regs_int** %10, align 8
  %33 = getelementptr inbounds %struct.read_regs_int, %struct.read_regs_int* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.usb_int_regs*, %struct.usb_int_regs** %11, align 8
  %36 = load %struct.usb_int_regs*, %struct.usb_int_regs** %11, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @struct_size(%struct.usb_int_regs* %35, %struct.usb_int_regs* %36, i32 %37)
  %39 = call i32 (i32, i8*, i32, i32, ...) @dev_dbg_f(i32 %31, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %38)
  store i32 0, i32* %4, align 4
  br label %98

40:                                               ; preds = %3
  %41 = load %struct.read_regs_int*, %struct.read_regs_int** %10, align 8
  %42 = getelementptr inbounds %struct.read_regs_int, %struct.read_regs_int* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = icmp ugt i64 %44, 8
  br i1 %45, label %46, label %53

46:                                               ; preds = %40
  %47 = load %struct.zd_usb*, %struct.zd_usb** %5, align 8
  %48 = call i32 @zd_usb_dev(%struct.zd_usb* %47)
  %49 = load %struct.read_regs_int*, %struct.read_regs_int** %10, align 8
  %50 = getelementptr inbounds %struct.read_regs_int, %struct.read_regs_int* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 (i32, i8*, i32, i32, ...) @dev_dbg_f(i32 %48, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %51, i32 8)
  store i32 0, i32* %4, align 4
  br label %98

53:                                               ; preds = %40
  store i32 0, i32* %8, align 4
  br label %54

54:                                               ; preds = %94, %53
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp ult i32 %55, %56
  br i1 %57, label %58, label %97

58:                                               ; preds = %54
  %59 = load %struct.usb_int_regs*, %struct.usb_int_regs** %11, align 8
  %60 = getelementptr inbounds %struct.usb_int_regs, %struct.usb_int_regs* %59, i32 0, i32 0
  %61 = load %struct.reg_data*, %struct.reg_data** %60, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.reg_data, %struct.reg_data* %61, i64 %63
  store %struct.reg_data* %64, %struct.reg_data** %12, align 8
  %65 = load %struct.reg_data*, %struct.reg_data** %12, align 8
  %66 = getelementptr inbounds %struct.reg_data, %struct.reg_data* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.usb_req_read_regs*, %struct.usb_req_read_regs** %6, align 8
  %69 = getelementptr inbounds %struct.usb_req_read_regs, %struct.usb_req_read_regs* %68, i32 0, i32 0
  %70 = load i64*, i64** %69, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %70, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %67, %74
  br i1 %75, label %76, label %93

76:                                               ; preds = %58
  %77 = load %struct.zd_usb*, %struct.zd_usb** %5, align 8
  %78 = call i32 @zd_usb_dev(%struct.zd_usb* %77)
  %79 = load i32, i32* %8, align 4
  %80 = load %struct.reg_data*, %struct.reg_data** %12, align 8
  %81 = getelementptr inbounds %struct.reg_data, %struct.reg_data* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @le16_to_cpu(i64 %82)
  %84 = load %struct.usb_req_read_regs*, %struct.usb_req_read_regs** %6, align 8
  %85 = getelementptr inbounds %struct.usb_req_read_regs, %struct.usb_req_read_regs* %84, i32 0, i32 0
  %86 = load i64*, i64** %85, align 8
  %87 = load i32, i32* %8, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i64, i64* %86, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @le16_to_cpu(i64 %90)
  %92 = call i32 (i32, i8*, i32, i32, ...) @dev_dbg_f(i32 %78, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %79, i32 %83, i32 %91)
  store i32 0, i32* %4, align 4
  br label %98

93:                                               ; preds = %58
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %8, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %8, align 4
  br label %54

97:                                               ; preds = %54
  store i32 1, i32* %4, align 4
  br label %98

98:                                               ; preds = %97, %76, %46, %29
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local i32 @struct_size(%struct.usb_int_regs*, %struct.usb_int_regs*, i32) #1

declare dso_local i32 @dev_dbg_f(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @zd_usb_dev(%struct.zd_usb*) #1

declare dso_local i32 @le16_to_cpu(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
