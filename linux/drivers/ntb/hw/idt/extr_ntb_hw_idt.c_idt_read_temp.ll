; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/hw/idt/extr_ntb_hw_idt.c_idt_read_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/hw/idt/extr_ntb_hw_idt.c_idt_read_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idt_ntb_dev = type { i32 }

@TMPSTS_TEMP = common dso_local global i32 0, align 4
@IDT_SW_TMPSTS = common dso_local global i32 0, align 4
@TMPSTS_LTEMP = common dso_local global i32 0, align 4
@TMPSTS_HTEMP = common dso_local global i32 0, align 4
@TMPADJ_OFFSET = common dso_local global i32 0, align 4
@IDT_SW_TMPADJ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.idt_ntb_dev*, i32, i64*)* @idt_read_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @idt_read_temp(%struct.idt_ntb_dev* %0, i32 %1, i64* %2) #0 {
  %4 = alloca %struct.idt_ntb_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  store %struct.idt_ntb_dev* %0, %struct.idt_ntb_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64* %2, i64** %6, align 8
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %36 [
    i32 131, label %9
    i32 129, label %15
    i32 130, label %21
    i32 128, label %27
  ]

9:                                                ; preds = %3
  %10 = load i32, i32* @TMPSTS_TEMP, align 4
  %11 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %4, align 8
  %12 = load i32, i32* @IDT_SW_TMPSTS, align 4
  %13 = call i32 @idt_sw_read(%struct.idt_ntb_dev* %11, i32 %12)
  %14 = call i32 @GET_FIELD(i32 %10, i32 %13)
  store i32 %14, i32* %7, align 4
  br label %42

15:                                               ; preds = %3
  %16 = load i32, i32* @TMPSTS_LTEMP, align 4
  %17 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %4, align 8
  %18 = load i32, i32* @IDT_SW_TMPSTS, align 4
  %19 = call i32 @idt_sw_read(%struct.idt_ntb_dev* %17, i32 %18)
  %20 = call i32 @GET_FIELD(i32 %16, i32 %19)
  store i32 %20, i32* %7, align 4
  br label %42

21:                                               ; preds = %3
  %22 = load i32, i32* @TMPSTS_HTEMP, align 4
  %23 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %4, align 8
  %24 = load i32, i32* @IDT_SW_TMPSTS, align 4
  %25 = call i32 @idt_sw_read(%struct.idt_ntb_dev* %23, i32 %24)
  %26 = call i32 @GET_FIELD(i32 %22, i32 %25)
  store i32 %26, i32* %7, align 4
  br label %42

27:                                               ; preds = %3
  %28 = load i32, i32* @TMPADJ_OFFSET, align 4
  %29 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %4, align 8
  %30 = load i32, i32* @IDT_SW_TMPADJ, align 4
  %31 = call i32 @idt_sw_read(%struct.idt_ntb_dev* %29, i32 %30)
  %32 = call i32 @GET_FIELD(i32 %28, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i64 @idt_get_temp_sval(i32 %33)
  %35 = load i64*, i64** %6, align 8
  store i64 %34, i64* %35, align 8
  br label %46

36:                                               ; preds = %3
  %37 = load i32, i32* @TMPSTS_TEMP, align 4
  %38 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %4, align 8
  %39 = load i32, i32* @IDT_SW_TMPSTS, align 4
  %40 = call i32 @idt_sw_read(%struct.idt_ntb_dev* %38, i32 %39)
  %41 = call i32 @GET_FIELD(i32 %37, i32 %40)
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %36, %21, %15, %9
  %43 = load i32, i32* %7, align 4
  %44 = call i64 @idt_get_temp_uval(i32 %43)
  %45 = load i64*, i64** %6, align 8
  store i64 %44, i64* %45, align 8
  br label %46

46:                                               ; preds = %42, %27
  ret void
}

declare dso_local i32 @GET_FIELD(i32, i32) #1

declare dso_local i32 @idt_sw_read(%struct.idt_ntb_dev*, i32) #1

declare dso_local i64 @idt_get_temp_sval(i32) #1

declare dso_local i64 @idt_get_temp_uval(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
